import os
import requests
from typing import Dict
from symbol_details import SymbolDetails

HEADER_FOLDER = 'include'
XMAP_PATH = os.path.join('build', 'pmdsky.us', 'main.nef.xMAP')
XMAP_PATH_ARM7 = os.path.join('sub', 'build', 'arm7.nef.xMAP')
MAIN_LSF_PATH = 'main.lsf'
REMOTE_XMAP_URL = 'https://raw.githubusercontent.com/pret/pmd-sky/xmap/pmdskyus.xMAP'

# In the returned dictionary, outer key = region, inner key = symbol address, value = symbol details.
def read_xmap_symbols() -> Dict[str, Dict[int, SymbolDetails]]:
    xmap_symbols: Dict[str, Dict[int, SymbolDetails]] = {}
    overlay_names: Dict[str, int] = {}
    OVERLAY_START = 'Overlay '
    with open(MAIN_LSF_PATH, 'r') as main_lsf_file:
        for line in main_lsf_file.readlines():
            if line.startswith(OVERLAY_START):
                overlay_names[line[len(OVERLAY_START) : -1]] = len(overlay_names)

    SECTION_START = '# .'

    if os.path.exists(XMAP_PATH):
        print('Using local xMAP file.')
        with open(XMAP_PATH, 'r') as xmap_file:
            xmap_lines = xmap_file.readlines()
    else:
        print('No local xMAP file found. Using remote xMAP file from upstream repo.')
        remote_xmap_response = requests.get(REMOTE_XMAP_URL)
        if remote_xmap_response.status_code == 200:
            xmap_lines = remote_xmap_response.text.split('\n')
        else:
            raise Exception(f'Received error {remote_xmap_response.status_code} from {REMOTE_XMAP_URL}')

    def read_xmap_file(xmap_lines):
        current_section = None
        for line in xmap_lines:
            if line.startswith(SECTION_START):
                section_name = line[len(SECTION_START) : -1]
                if section_name in overlay_names:
                    current_section = str(overlay_names[section_name])
                elif section_name == 'main' or section_name == 'ITCM' or section_name == 'arm7':
                    current_section = section_name
                elif section_name == 'MAIN' or section_name == 'WRAM':
                    current_section = 'arm7'
                else:
                    current_section = None
                if current_section is not None and current_section not in xmap_symbols:
                    xmap_symbols[current_section]: Dict[str, int] = {}

            elif current_section is not None and line.startswith('  ') and '.text' in line and len(line) > 28 and line[28] not in NON_FUNCTION_SYMBOLS:
                symbol_split = line[28:-1].split('\t')
                symbol_name = symbol_split[0]
                symbol_address = int(line[2:10], 16)
                if '00000000' in line:
                    if not symbol_name.startswith('$'):
                        xmap_symbols[current_section][symbol_address] = SymbolDetails(symbol_name, symbol_split[1][1:-1], True)
                else:
                    xmap_symbols[current_section][symbol_address] = SymbolDetails(symbol_name, symbol_split[1][1:-1], False)

    NON_FUNCTION_SYMBOLS = set(['$', '.'])
    read_xmap_file(xmap_lines)

    if os.path.exists(XMAP_PATH_ARM7):
        print('Using local ARM7 xMAP file.')
        with open(XMAP_PATH_ARM7, 'r') as xmap_file:
            xmap_lines = xmap_file.readlines()
            read_xmap_file(xmap_lines)

    return xmap_symbols
