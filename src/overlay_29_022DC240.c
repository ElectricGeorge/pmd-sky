#include "overlay_29_022DC240.h"

extern void MemZero(void* ptr, u32 len);

void ov29_022DC240(struct unk_ov29_022DC240_t *param0)
{
    MemZero(param0, sizeof(struct unk_ov29_022DC240_t));
    param0->unk1962a.unk0 = 0;
    param0->unk1962a.unk2 = 0;
    param0->unk1962a.unk4 = 0x100;
    param0->unk1962a.unk6 = 0xc0;
    param0->unk1962a.unk8 = 0x40;
    param0->unk1962a.unka = 0x18;
    param0->unk1962a.unkc = 0x4;
    param0->unk1962a.unke = 0x8;
}
