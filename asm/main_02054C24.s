	.include "asm/macros.inc"
	.include "main_02054C24.inc"

	.text

	arm_func_start GetBaseFormCastformDeoxysCherrim
GetBaseFormCastformDeoxysCherrim: ; 0x02054C24
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl IsDeoxys
	cmp r0, #0
	ldrne r0, _02054CCC ; =0x000001A2
	ldmneia sp!, {r4, pc}
	ldr r1, _02054CD0 ; =0xFFFFFE85
	add r0, r4, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #3
	rsbls r0, r1, #0
	ldmlsia sp!, {r4, pc}
	sub r0, r1, #0x258
	add r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #3
	rsbls r0, r1, #0x258
	ldmlsia sp!, {r4, pc}
	sub r0, r4, #0x1cc
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	movls r0, #0x1cc
	ldmlsia sp!, {r4, pc}
	ldr r0, _02054CD4 ; =0xFFFFFBDC
	add r1, r4, r0
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r1, #1
	rsbls r4, r0, #0
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02054CCC: .word 0x000001A2
_02054CD0: .word 0xFFFFFE85
_02054CD4: .word 0xFFFFFBDC
	arm_func_end GetBaseFormCastformDeoxysCherrim

	arm_func_start BaseFormsEqual
BaseFormsEqual: ; 0x02054CD8
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r1
	bl Monster_FemaleToMaleForm
	mov r5, r0
	mov r0, r4
	bl Monster_FemaleToMaleForm
	mov r4, r0
	mov r0, r5
	bl GetBaseFormCastformDeoxysCherrim
	mov r5, r0
	mov r0, r4
	bl GetBaseFormCastformDeoxysCherrim
	mov r6, r0
	cmp r5, r6
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl IsUnown
	cmp r0, #0
	beq _02054D3C
	mov r0, r6
	bl IsUnown
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
_02054D3C:
	mov r0, r5
	bl GetBaseFormBurmyWormadamShellosGastrodonCherrim
	mov r4, r0
	mov r0, r6
	bl GetBaseFormBurmyWormadamShellosGastrodonCherrim
	ldr r1, _02054DB8 ; =0x000001BF
	cmp r4, r1
	cmpeq r0, r1
	beq _02054D8C
	ldr r1, _02054DBC ; =0x000001C2
	cmp r4, r1
	cmpeq r0, r1
	beq _02054D8C
	ldr r1, _02054DC0 ; =0x000001CE
	cmp r4, r1
	cmpeq r0, r1
	beq _02054D8C
	cmp r4, #0x1d0
	cmpeq r0, #0x1d0
	bne _02054D94
_02054D8C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02054D94:
	mov r0, r5
	bl GetDexNumber
	mov r4, r0
	mov r0, r6
	bl GetDexNumber
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02054DB8: .word 0x000001BF
_02054DBC: .word 0x000001C2
_02054DC0: .word 0x000001CE
	arm_func_end BaseFormsEqual

	arm_func_start DexNumbersEqual
DexNumbersEqual: ; 0x02054DC4
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r1
	bl Monster_FemaleToMaleForm
	mov r5, r0
	mov r0, r4
	bl Monster_FemaleToMaleForm
	mov r4, r0
	mov r0, r5
	bl GetBaseFormCastformDeoxysCherrim
	mov r5, r0
	mov r0, r4
	bl GetBaseFormCastformDeoxysCherrim
	mov r6, r0
	cmp r5, r6
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl IsUnown
	cmp r0, #0
	beq _02054E28
	mov r0, r6
	bl IsUnown
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
_02054E28:
	mov r0, r5
	bl GetDexNumber
	mov r4, r0
	mov r0, r6
	bl GetDexNumber
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end DexNumbersEqual

	arm_func_start GendersEqual
GendersEqual: ; 0x02054E4C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl GetMonsterGender
	mov r4, r0
	mov r0, r5
	bl GetMonsterGender
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end GendersEqual

	arm_func_start GendersEqualNotGenderless
GendersEqualNotGenderless: ; 0x02054E78
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl GetMonsterGender
	cmp r0, #3
	beq _02054EC0
	mov r0, r5
	bl GetMonsterGender
	cmp r0, #3
	beq _02054EC0
	mov r0, r4
	bl GetMonsterGender
	mov r4, r0
	mov r0, r5
	bl GetMonsterGender
	cmp r4, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
_02054EC0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end GendersEqualNotGenderless

	arm_func_start sub_02054EC8
sub_02054EC8: ; 0x02054EC8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl GetMonsterGender
	cmp r0, #3
	beq _02054F10
	mov r0, r5
	bl GetMonsterGender
	cmp r0, #3
	beq _02054F10
	mov r0, r4
	bl GetMonsterGender
	mov r4, r0
	mov r0, r5
	bl GetMonsterGender
	cmp r4, r0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_02054F10:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02054EC8

	arm_func_start sub_02054F18
sub_02054F18: ; 0x02054F18
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add r0, r0, #0xea
	add r0, r0, #0xfd00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #2
	movls r0, #1
	movhi r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_02054F18

	arm_func_start sub_02054F44
sub_02054F44: ; 0x02054F44
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	mov r4, r2
	add r0, sp, #0
	mov r2, #0xa
	bl StrncpySimpleNoPadSafe
	cmp r4, #0
	bne _02054F7C
	ldr r1, _02054F98 ; =_020A333C
	add r2, sp, #0
	mov r0, r5
	bl SprintfStatic__02054A60
	b _02054F90
_02054F7C:
	ldr r1, _02054F9C ; =_020A3340
	add r3, sp, #0
	mov r0, r5
	mov r2, r4
	bl SprintfStatic__02054A60
_02054F90:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02054F98: .word _020A333C
_02054F9C: .word _020A3340
	arm_func_end sub_02054F44

	arm_func_start sub_02054FA0
sub_02054FA0: ; 0x02054FA0
	ldr ip, _02054FB4 ; =sub_02054F44
	cmp r2, #0
	movne r2, #0x59
	moveq r2, #0x46
	bx ip
	.align 2, 0
_02054FB4: .word sub_02054F44
	arm_func_end sub_02054FA0

	arm_func_start sub_02054FB8
sub_02054FB8: ; 0x02054FB8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrsh r3, [r4]
	mov r2, #1
	add r0, sp, #0
	str r3, [sp]
	rsb r3, r2, #0x3e8
	bl sub_02055088
	ldr r1, [sp]
	strh r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_02054FB8

	arm_func_start sub_02054FEC
sub_02054FEC: ; 0x02054FEC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r3, [r4]
	add r0, sp, #0
	mov r2, #1
	str r3, [sp]
	mov r3, #0xff
	bl sub_02055088
	ldr r1, [sp]
	strb r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_02054FEC

	arm_func_start sub_02055020
sub_02055020: ; 0x02055020
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r3, [r4]
	add r0, sp, #0
	mov r2, #1
	str r3, [sp]
	mov r3, #0xff
	bl sub_02055088
	ldr r1, [sp]
	strb r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_02055020

	arm_func_start sub_02055054
sub_02055054: ; 0x02055054
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrsh r3, [r4]
	mov r2, #1
	add r0, sp, #0
	str r3, [sp]
	rsb r3, r2, #0x3e8
	bl sub_02055088
	ldr r1, [sp]
	strh r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_02055054

	arm_func_start sub_02055088
sub_02055088: ; 0x02055088
	cmp r1, #0
	ble _020550B4
	ldr r2, [r0]
	cmp r2, r3
	moveq r0, #0
	bxeq lr
	add r1, r2, r1
	str r1, [r0]
	cmp r1, r3
	strgt r3, [r0]
	b _020550D4
_020550B4:
	ldr r3, [r0]
	cmp r3, r2
	moveq r0, #0
	bxeq lr
	add r1, r3, r1
	str r1, [r0]
	cmp r1, r2
	strlt r2, [r0]
_020550D4:
	mov r0, #1
	bx lr
	arm_func_end sub_02055088

	arm_func_start sub_020550DC
sub_020550DC: ; 0x020550DC
	bx lr
	arm_func_end sub_020550DC

	arm_func_start sub_020550E0
sub_020550E0: ; 0x020550E0
	ldr r0, _0205510C ; =TEAM_MEMBER_TABLE_PTR
	mov r3, #0
	ldr r2, [r0]
	ldr r0, _02055110 ; =0x0000022B
	mov r1, r3
_020550F4:
	add r3, r3, #1
	cmp r3, r0
	strb r1, [r2], #0x44
	blt _020550F4
	ldr ip, _02055114 ; =sub_0205523C
	bx ip
	.align 2, 0
_0205510C: .word TEAM_MEMBER_TABLE_PTR
_02055110: .word 0x0000022B
_02055114: .word sub_0205523C
	arm_func_end sub_020550E0

	arm_func_start sub_02055118
sub_02055118: ; 0x02055118
	ldr r0, _02055140 ; =TEAM_MEMBER_TABLE_PTR
	mov r2, #0
	ldr r1, [r0]
	ldr ip, _02055144 ; =sub_0205523C
	strb r2, [r1, #0x88]
	ldr r1, [r0]
	strb r2, [r1, #0xcc]
	ldr r0, [r0]
	strb r2, [r0, #0x110]
	bx ip
	.align 2, 0
_02055140: .word TEAM_MEMBER_TABLE_PTR
_02055144: .word sub_0205523C
	arm_func_end sub_02055118

	arm_func_start IsMonsterOnTeam
IsMonsterOnTeam: ; 0x02055148
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov sb, r1
	bl GetGameMode
	cmp r0, #3
	bne _020551C0
	ldr r0, _02055230 ; =TEAM_MEMBER_TABLE_PTR
	mov r8, #0
	ldr r7, [r0]
	mov r5, r8
	mov r6, #1
	ldr r4, _02055234 ; =_020B0A4C
	b _020551B8
_0205517C:
	ldrb r0, [r7]
	tst r0, #1
	movne r0, r6
	moveq r0, r5
	tst r0, #0xff
	beq _020551B0
	ldrsh r0, [r7, #4]
	ldr r2, [r4, sb, lsl #2]
	mov r1, sl
	blx r2
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020551B0:
	add r8, r8, #1
	add r7, r7, #0x44
_020551B8:
	cmp r8, #2
	blt _0205517C
_020551C0:
	ldr r0, _02055230 ; =TEAM_MEMBER_TABLE_PTR
	mov r8, #5
	ldr r0, [r0]
	mov fp, #0
	add r7, r0, #0x154
	mov r6, #1
	ldr r5, _02055234 ; =_020B0A4C
	ldr r4, _02055238 ; =0x0000022B
	b _02055220
_020551E4:
	ldrb r0, [r7]
	tst r0, #1
	movne r0, r6
	moveq r0, fp
	tst r0, #0xff
	beq _02055218
	ldrsh r0, [r7, #4]
	ldr r2, [r5, sb, lsl #2]
	mov r1, sl
	blx r2
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02055218:
	add r8, r8, #1
	add r7, r7, #0x44
_02055220:
	cmp r8, r4
	blt _020551E4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02055230: .word TEAM_MEMBER_TABLE_PTR
_02055234: .word _020B0A4C
_02055238: .word 0x0000022B
	arm_func_end IsMonsterOnTeam

	arm_func_start sub_0205523C
sub_0205523C: ; 0x0205523C
	stmdb sp!, {r3, lr}
	mov r0, #0x214
	mov r1, #0
	bl IsMonsterOnTeam
	cmp r0, #0
	ldrne r1, _02055268 ; =0x0000022B
	ldrne r0, _0205526C ; =_022B5788
	ldreq r1, _02055270 ; =0x0000022A
	ldreq r0, _0205526C ; =_022B5788
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02055268: .word 0x0000022B
_0205526C: .word _022B5788
_02055270: .word 0x0000022A
	arm_func_end sub_0205523C

	arm_func_start GetNbRecruited
GetNbRecruited: ; 0x02055274
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02055384 ; =0x00000906
	mov r4, r0
	bl MemZero
	bl GetGameMode
	cmp r0, #3
	mov r3, #1
	bne _020552E0
	ldr r0, _02055388 ; =TEAM_MEMBER_TABLE_PTR
	mov lr, #0
	ldr ip, [r0]
	mov r2, lr
_020552A4:
	ldrb r0, [ip]
	add lr, lr, #1
	tst r0, #1
	movne r0, r3
	moveq r0, r2
	tst r0, #0xff
	ldrnesh r0, [ip, #4]
	add ip, ip, #0x44
	movne r1, r0, lsl #1
	ldrnesh r0, [r4, r1]
	addne r0, r0, #1
	strneh r0, [r4, r1]
	cmp lr, #2
	blt _020552A4
	b _0205532C
_020552E0:
	ldr r0, _02055388 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, #2
	ldr r0, [r0]
	mov r2, #0
	add ip, r0, #0x88
_020552F4:
	ldrb r0, [ip]
	add r5, r5, #1
	tst r0, #1
	movne r0, r3
	moveq r0, r2
	tst r0, #0xff
	ldrnesh r0, [ip, #4]
	add ip, ip, #0x44
	movne r1, r0, lsl #1
	ldrnesh r0, [r4, r1]
	addne r0, r0, #1
	strneh r0, [r4, r1]
	cmp r5, #5
	blt _020552F4
_0205532C:
	ldr r0, _02055388 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, #5
	ldr r0, [r0]
	mov r3, #0
	add lr, r0, #0x154
	ldr r0, _0205538C ; =0x0000022B
	mov ip, #1
_02055348:
	ldrb r1, [lr]
	add r5, r5, #1
	tst r1, #1
	movne r1, ip
	moveq r1, r3
	tst r1, #0xff
	ldrnesh r1, [lr, #4]
	add lr, lr, #0x44
	movne r2, r1, lsl #1
	ldrnesh r1, [r4, r2]
	addne r1, r1, #1
	strneh r1, [r4, r2]
	cmp r5, r0
	blt _02055348
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02055384: .word 0x00000906
_02055388: .word TEAM_MEMBER_TABLE_PTR
_0205538C: .word 0x0000022B
	arm_func_end GetNbRecruited

	arm_func_start IsValidTeamMember
IsValidTeamMember: ; 0x02055390
	stmdb sp!, {r4, lr}
	ldr r1, _0205540C ; =TEAM_MEMBER_TABLE_PTR
	mov r4, r0
	mov r0, #0x44
	smulbb r0, r4, r0
	ldr r1, [r1]
	ldrb r0, [r1, r0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02055404
	cmp r4, #5
	bge _020553FC
	bl GetGameMode
	cmp r0, #3
	bne _020553EC
	cmp r4, #2
	cmpne r4, #3
	cmpne r4, #4
	beq _020553FC
	mov r0, #0
	ldmia sp!, {r4, pc}
_020553EC:
	cmp r4, #0
	cmpne r4, #1
	movne r0, #0
	ldmneia sp!, {r4, pc}
_020553FC:
	mov r0, #1
	ldmia sp!, {r4, pc}
_02055404:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205540C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end IsValidTeamMember

	arm_func_start sub_02055410
sub_02055410: ; 0x02055410
	stmdb sp!, {r4, lr}
	ldr r1, _02055470 ; =TEAM_MEMBER_TABLE_PTR
	mov r4, r0
	mov r0, #0x44
	smulbb r0, r4, r0
	ldr r1, [r1]
	ldrb r0, [r1, r0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02055468
	bl GetGameMode
	cmp r0, #3
	bne _0205545C
	cmp r4, #2
	bne _02055468
	mov r0, #1
	ldmia sp!, {r4, pc}
_0205545C:
	cmp r4, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_02055468:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02055470: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02055410

	arm_func_start sub_02055474
sub_02055474: ; 0x02055474
	stmdb sp!, {r4, lr}
	ldr r1, _020554D4 ; =TEAM_MEMBER_TABLE_PTR
	mov r4, r0
	mov r0, #0x44
	smulbb r0, r4, r0
	ldr r1, [r1]
	ldrb r0, [r1, r0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _020554CC
	bl GetGameMode
	cmp r0, #3
	bne _020554C0
	cmp r4, #3
	bne _020554CC
	mov r0, #1
	ldmia sp!, {r4, pc}
_020554C0:
	cmp r4, #1
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_020554CC:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_020554D4: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02055474

	arm_func_start sub_020554D8
sub_020554D8: ; 0x020554D8
	stmdb sp!, {r4, lr}
	ldr r1, _02055524 ; =TEAM_MEMBER_TABLE_PTR
	mov r4, r0
	mov r0, #0x44
	smulbb r0, r4, r0
	ldr r1, [r1]
	ldrb r0, [r1, r0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0205551C
	bl GetGameMode
	cmp r0, #3
	cmpeq r4, #4
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_0205551C:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02055524: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_020554D8

	arm_func_start IsMainCharacter
IsMainCharacter: ; 0x02055528
	stmdb sp!, {r4, lr}
	ldr r1, _020555A4 ; =TEAM_MEMBER_TABLE_PTR
	mov r4, r0
	mov r0, #0x44
	smulbb r0, r4, r0
	ldr r1, [r1]
	ldrb r0, [r1, r0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0205559C
	cmp r4, #5
	bge _0205559C
	bl GetGameMode
	cmp r0, #3
	bne _02055584
	cmp r4, #2
	cmpne r4, #3
	cmpne r4, #4
	beq _02055594
	mov r0, #0
	ldmia sp!, {r4, pc}
_02055584:
	cmp r4, #0
	cmpne r4, #1
	movne r0, #0
	ldmneia sp!, {r4, pc}
_02055594:
	mov r0, #1
	ldmia sp!, {r4, pc}
_0205559C:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_020555A4: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end IsMainCharacter

	arm_func_start GetTeamMember
GetTeamMember: ; 0x020555A8
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	bxeq lr
	ldr r2, _020555CC ; =TEAM_MEMBER_TABLE_PTR
	mov r1, #0x44
	ldr r2, [r2]
	smlabb r0, r0, r1, r2
	bx lr
	.align 2, 0
_020555CC: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetTeamMember

	arm_func_start sub_020555D0
sub_020555D0: ; 0x020555D0
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _02055648 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, #0
	ldr r2, [r2]
	mov r6, #5
	add r4, r2, #0x154
	mov ip, r5
	mov lr, #1
	ldr r2, _0205564C ; =0x0000022B
	b _02055638
_020555F8:
	ldrb r3, [r4]
	tst r3, #1
	movne r3, lr
	moveq r3, ip
	tst r3, #0xff
	beq _02055630
	ldrsh r3, [r4, #4]
	cmp r3, r0
	bne _02055630
	cmp r5, r1
	moveq r0, r6, lsl #0x10
	moveq r0, r0, asr #0x10
	ldmeqia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
_02055630:
	add r6, r6, #1
	add r4, r4, #0x44
_02055638:
	cmp r6, r2
	blt _020555F8
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02055648: .word TEAM_MEMBER_TABLE_PTR
_0205564C: .word 0x0000022B
	arm_func_end sub_020555D0

	arm_func_start GetHeroMemberIdx
GetHeroMemberIdx: ; 0x02055650
	ldr r0, _02055678 ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	ldrb r0, [r0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	movne r0, #0
	mvneq r0, #0
	bx lr
	.align 2, 0
_02055678: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetHeroMemberIdx

	arm_func_start GetPartnerMemberIdx
GetPartnerMemberIdx: ; 0x0205567C
	ldr r0, _020556A4 ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	ldrb r0, [r0, #0x44]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	movne r0, #1
	mvneq r0, #0
	bx lr
	.align 2, 0
_020556A4: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetPartnerMemberIdx

	arm_func_start GetMainCharacter1MemberIdx
GetMainCharacter1MemberIdx: ; 0x020556A8
	stmdb sp!, {r3, lr}
	bl GetGameMode
	cmp r0, #3
	moveq r0, #2
	ldr r2, _020556E8 ; =TEAM_MEMBER_TABLE_PTR
	movne r0, #0
	mov r1, #0x44
	smulbb r1, r0, r1
	ldr r2, [r2]
	ldrb r1, [r2, r1]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	mvneq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020556E8: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetMainCharacter1MemberIdx

	arm_func_start GetMainCharacter2MemberIdx
GetMainCharacter2MemberIdx: ; 0x020556EC
	stmdb sp!, {r3, lr}
	bl GetGameMode
	cmp r0, #3
	moveq r0, #3
	ldr r2, _0205572C ; =TEAM_MEMBER_TABLE_PTR
	movne r0, #1
	mov r1, #0x44
	smulbb r1, r0, r1
	ldr r2, [r2]
	ldrb r1, [r2, r1]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	mvneq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205572C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetMainCharacter2MemberIdx

	arm_func_start GetMainCharacter3MemberIdx
GetMainCharacter3MemberIdx: ; 0x02055730
	stmdb sp!, {r3, lr}
	bl GetGameMode
	cmp r0, #3
	mvnne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0205576C ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	ldrb r0, [r0, #0x110]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	movne r0, #4
	mvneq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205576C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetMainCharacter3MemberIdx

	arm_func_start GetHero
GetHero: ; 0x02055770
	ldr r0, _02055794 ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	ldrb r1, [r0]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	moveq r0, #0
	bx lr
	.align 2, 0
_02055794: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetHero

	arm_func_start GetPartner
GetPartner: ; 0x02055798
	ldr r0, _020557C0 ; =TEAM_MEMBER_TABLE_PTR
	ldr r1, [r0]
	ldrb r0, [r1, #0x44]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	addne r0, r1, #0x44
	moveq r0, #0
	bx lr
	.align 2, 0
_020557C0: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetPartner

	arm_func_start GetMainCharacter1
GetMainCharacter1: ; 0x020557C4
	stmdb sp!, {r3, lr}
	bl GetGameMode
	cmp r0, #3
	moveq r2, #2
	ldr r1, _02055808 ; =TEAM_MEMBER_TABLE_PTR
	movne r2, #0
	mov r0, #0x44
	smulbb r2, r2, r0
	ldr r1, [r1]
	ldrb r0, [r1, r2]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	addne r0, r1, r2
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02055808: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetMainCharacter1

	arm_func_start GetMainCharacter2
GetMainCharacter2: ; 0x0205580C
	stmdb sp!, {r3, lr}
	bl GetGameMode
	cmp r0, #3
	moveq r2, #3
	ldr r1, _02055850 ; =TEAM_MEMBER_TABLE_PTR
	movne r2, #1
	mov r0, #0x44
	smulbb r2, r2, r0
	ldr r1, [r1]
	ldrb r0, [r1, r2]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	addne r0, r1, r2
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02055850: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetMainCharacter2

	arm_func_start GetMainCharacter3
GetMainCharacter3: ; 0x02055854
	stmdb sp!, {r3, lr}
	bl GetGameMode
	cmp r0, #3
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02055890 ; =TEAM_MEMBER_TABLE_PTR
	ldr r1, [r0]
	ldrb r0, [r1, #0x110]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	addne r0, r1, #0x110
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02055890: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetMainCharacter3

	arm_func_start sub_02055894
sub_02055894: ; 0x02055894
	ldr r1, _020558EC ; =TEAM_MEMBER_TABLE_PTR
	mov r3, #0
	ldr r2, [r1]
	ldr r1, _020558F0 ; =0x0000022B
	b _020558DC
_020558A8:
	cmp r2, r0
	bne _020558D4
	ldrb r0, [r2]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _020558E4
	mov r0, r3, lsl #0x10
	mov r0, r0, asr #0x10
	bx lr
_020558D4:
	add r3, r3, #1
	add r2, r2, #0x44
_020558DC:
	cmp r3, r1
	blt _020558A8
_020558E4:
	mvn r0, #0
	bx lr
	.align 2, 0
_020558EC: .word TEAM_MEMBER_TABLE_PTR
_020558F0: .word 0x0000022B
	arm_func_end sub_02055894

	arm_func_start sub_020558F4
sub_020558F4: ; 0x020558F4
	stmdb sp!, {r4, lr}
	ldr r1, _0205595C ; =TEAM_MEMBER_TABLE_PTR
	mov r4, #5
	ldr r1, [r1]
	mov r3, #0
	add lr, r1, #0x154
	mov ip, #1
	ldr r1, _02055960 ; =0x0000022B
	b _0205594C
_02055918:
	ldrb r2, [lr]
	tst r2, #1
	movne r2, ip
	moveq r2, r3
	tst r2, #0xff
	beq _02055944
	ldrsh r2, [lr, #4]
	cmp r2, r0
	moveq r0, r4, lsl #0x10
	moveq r0, r0, asr #0x10
	ldmeqia sp!, {r4, pc}
_02055944:
	add r4, r4, #1
	add lr, lr, #0x44
_0205594C:
	cmp r4, r1
	blt _02055918
	mvn r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205595C: .word TEAM_MEMBER_TABLE_PTR
_02055960: .word 0x0000022B
	arm_func_end sub_020558F4

	arm_func_start GetFirstEmptyMemberIdx
GetFirstEmptyMemberIdx: ; 0x02055964
	stmdb sp!, {r3, lr}
	ldr r1, _020559CC ; =TEAM_MEMBER_TABLE_PTR
	cmp r0, #0x214
	ldr r0, [r1]
	ldreq lr, _020559D0 ; =0x0000022B
	add r3, r0, #0x154
	ldrne r0, _020559D4 ; =_022B5788
	mov ip, #5
	ldrne lr, [r0]
	mov r0, #0
	mov r1, #1
	b _020559BC
_02055994:
	ldrb r2, [r3]
	tst r2, #1
	movne r2, r1
	moveq r2, r0
	tst r2, #0xff
	moveq r0, ip, lsl #0x10
	moveq r0, r0, asr #0x10
	ldmeqia sp!, {r3, pc}
	add ip, ip, #1
	add r3, r3, #0x44
_020559BC:
	cmp ip, lr
	blt _02055994
	mvn r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020559CC: .word TEAM_MEMBER_TABLE_PTR
_020559D0: .word 0x0000022B
_020559D4: .word _022B5788
	arm_func_end GetFirstEmptyMemberIdx

	arm_func_start sub_020559D8
sub_020559D8: ; 0x020559D8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _02055B18 ; =TEAM_MEMBER_TABLE_PTR
	mov r4, #0
	ldr lr, [r1]
	mov r8, r0
	mov r2, r4
	mov r3, #1
	mvn r1, #0
_020559F8:
	ldrb r0, [lr]
	add lr, lr, #0x44
	tst r0, #1
	movne r0, r3
	moveq r0, r2
	tst r0, #0xff
	mov r0, r4, lsl #1
	strneh r4, [r8, r0]
	add r4, r4, #1
	streqh r1, [r8, r0]
	cmp r4, #5
	blt _020559F8
	mov r2, #0
	mov r3, #1
	ldr r0, _02055B1C ; =0x0000022B
	b _02055B0C
_02055A38:
	ldrb r1, [lr]
	tst r1, #1
	movne r1, r3
	moveq r1, r2
	tst r1, #0xff
	bne _02055AFC
	mvn ip, #0
	mov r0, r4, lsl #1
	mov r7, lr
	mov r6, r4
	strh ip, [r8, r0]
	add lr, lr, #0x44
	add r4, r4, #1
	add sb, ip, #0x22c
	b _02055AD4
_02055A74:
	ldrb r0, [lr]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02055AC4
	mov r5, r7
	mov fp, lr
	add r7, r7, #0x44
	mov sl, #4
_02055A9C:
	ldmia fp!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs sl, sl, #1
	bne _02055A9C
	ldr r0, [fp]
	str r0, [r5]
	mov r0, r4, lsl #1
	strh r6, [r8, r0]
	add r6, r6, #1
	b _02055ACC
_02055AC4:
	mov r0, r4, lsl #1
	strh ip, [r8, r0]
_02055ACC:
	add r4, r4, #1
	add lr, lr, #0x44
_02055AD4:
	cmp r4, sb
	blt _02055A74
	mov r1, #0
	ldr r0, _02055B1C ; =0x0000022B
	b _02055AF0
_02055AE8:
	strb r1, [r7], #0x44
	add r6, r6, #1
_02055AF0:
	cmp r6, r0
	blt _02055AE8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02055AFC:
	mov r1, r4, lsl #1
	strh r4, [r8, r1]
	add r4, r4, #1
	add lr, lr, #0x44
_02055B0C:
	cmp r4, r0
	blt _02055A38
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02055B18: .word TEAM_MEMBER_TABLE_PTR
_02055B1C: .word 0x0000022B
	arm_func_end sub_020559D8

	arm_func_start sub_02055B20
sub_02055B20: ; 0x02055B20
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _02055B74 ; =TEAM_MEMBER_TABLE_PTR
	mov r1, #0x44
	smulbb r4, r0, r1
	cmp r0, #5
	ldr r5, [r2]
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, r4]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_020564B0
	cmp r0, #0
	mov r0, #0
	streqb r0, [r5, r4]
	moveq r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02055B74: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02055B20

	arm_func_start sub_02055B78
sub_02055B78: ; 0x02055B78
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x58
	ldr r4, _02055CC4 ; =TEAM_MEMBER_TABLE_PTR
	mov lr, #1
	mov r6, r1
	mov r7, r0
	mov ip, #0
	ldr r4, [r4]
	mov r1, #0x44
	mov r0, r6
	mov r5, r3
	strb lr, [sp, #0x14]
	strb r2, [sp, #0x16]
	strb ip, [sp, #0x17]
	strb lr, [sp, #0x15]
	smlabb r4, r7, r1, r4
	bl GetBaseHp
	strh r0, [sp, #0x1e]
	mov r0, r6
	mov r1, #0
	bl GetBaseOffensiveStat
	strb r0, [sp, #0x20]
	mov r0, r6
	mov r1, #1
	bl GetBaseOffensiveStat
	strb r0, [sp, #0x21]
	mov r0, r6
	mov r1, #0
	bl GetBaseDefensiveStat
	strb r0, [sp, #0x22]
	mov r0, r6
	mov r1, #1
	bl GetBaseDefensiveStat
	strb r0, [sp, #0x23]
	mov r0, #0
	mov r2, #1
	strb r0, [sp, #0x1a]
	strb r0, [sp, #0x1b]
	add r0, sp, #0x28
	mov r1, r6
	strh r2, [sp, #0x1c]
	bl EnableAllLearnableIqSkills
	mov r2, #0
	add r0, sp, #0x36
	mov r1, r6
	strh r6, [sp, #0x18]
	str r2, [sp, #0x24]
	strb r2, [sp, #0x34]
	bl sub_02053F10
	cmp r5, #0
	beq _02055C58
	add r0, sp, #0x4e
	mov r1, r5
	mov r2, #0xa
	bl StrncpySimple
	b _02055C74
_02055C58:
	add r0, sp, #0
	mov r1, r6
	bl GetNameRaw
	add r0, sp, #0x4e
	add r1, sp, #0
	mov r2, #0xa
	bl StrncpyName
_02055C74:
	add r6, sp, #0x14
	mov r5, #4
_02055C7C:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _02055C7C
	ldr r0, [r6]
	cmp r7, #0
	str r0, [r4]
	cmpne r7, #2
	mov r0, r7
	bne _02055CAC
	bl TryAddMonsterToActiveTeam
	b _02055CB0
_02055CAC:
	bl sub_02056554
_02055CB0:
	ldr r0, _02055CC8 ; =_020A3350
	mov r1, r7
	bl Debug_Print0
	add sp, sp, #0x58
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02055CC4: .word TEAM_MEMBER_TABLE_PTR
_02055CC8: .word _020A3350
	arm_func_end sub_02055B78

	arm_func_start sub_02055CCC
sub_02055CCC: ; 0x02055CCC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrsh r0, [r5, #4]
	bl GetFirstEmptyMemberIdx
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	beq _02055D38
	ldr r1, _02055D40 ; =TEAM_MEMBER_TABLE_PTR
	mov r0, #0x44
	ldr r1, [r1]
	mov r6, r5
	smlabb lr, r4, r0, r1
	mov ip, #4
_02055D04:
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _02055D04
	ldr r0, [r6]
	str r0, [lr]
	ldrsh r0, [r5, #4]
	bl SetPokemonJoined
	ldrsh r0, [r5, #4]
	cmp r0, #0x214
	ldreq r1, _02055D44 ; =0x0000022B
	ldreq r0, _02055D48 ; =_022B5788
	streq r1, [r0]
_02055D38:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02055D40: .word TEAM_MEMBER_TABLE_PTR
_02055D44: .word 0x0000022B
_02055D48: .word _022B5788
	arm_func_end sub_02055CCC

	arm_func_start sub_02055D4C
sub_02055D4C: ; 0x02055D4C
	stmdb sp!, {r3, lr}
	bl sub_02055CCC
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, _02055D78 ; =TEAM_MEMBER_TABLE_PTR
	mov r1, #0x44
	ldr r2, [r2]
	smlabb r0, r0, r1, r2
	ldmia sp!, {r3, pc}
	.align 2, 0
_02055D78: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02055D4C

	arm_func_start sub_02055D7C
sub_02055D7C: ; 0x02055D7C
	stmdb sp!, {r3, r4, r5, lr}
	mvn r2, #0
	mov r5, r1
	cmp r0, r2
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, _02055DCC ; =TEAM_MEMBER_TABLE_PTR
	mov r1, #0x44
	ldr r2, [r2]
	mov r4, r5
	smlabb lr, r0, r1, r2
	mov ip, #4
_02055DA8:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _02055DA8
	ldr r0, [r4]
	str r0, [lr]
	ldrsh r0, [r5, #4]
	bl SetPokemonJoined
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02055DCC: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02055D7C

	arm_func_start sub_02055DD0
sub_02055DD0: ; 0x02055DD0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x4c
	ldrb ip, [sp, #0x58]
	mov r5, r0
	mov r4, r1
	mov lr, r2
	str r3, [sp]
	add r0, sp, #8
	mov r1, r5
	mov r2, r4
	mov r3, lr
	str ip, [sp, #4]
	bl sub_02052CF4
	add r0, sp, #8
	bl sub_02055D4C
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
	arm_func_end sub_02055DD0

	arm_func_start sub_02055E14
sub_02055E14: ; 0x02055E14
	stmdb sp!, {r4, r5, r6, lr}
	mov r3, r1
	ldrb r1, [r3]
	mov r4, r0
	add r0, r3, #0x14
	and r1, r1, #1
	strh r1, [r4]
	ldrb r1, [r3, #1]
	add r6, r4, #0x18
	add r5, r3, #0x22
	strb r1, [r4, #4]
	ldrb r1, [r3, #2]
	add lr, r4, #0x2a
	mov ip, #0xc
	strb r1, [r4, #5]
	ldrb r1, [r3, #3]
	strb r1, [r4, #6]
	ldrsh r1, [r3, #4]
	strh r1, [r4, #8]
	ldrb r1, [r3, #6]
	strb r1, [r4, #0xa]
	ldrb r1, [r3, #7]
	strb r1, [r4, #0xb]
	ldrsh r1, [r3, #8]
	strh r1, [r4, #0xc]
	ldrsh r1, [r3, #0xa]
	strh r1, [r4, #0xe]
	ldrb r1, [r3, #0xc]
	strb r1, [r4, #0x10]
	ldrb r1, [r3, #0xd]
	strb r1, [r4, #0x11]
	ldrb r1, [r3, #0xe]
	strb r1, [r4, #0x12]
	ldrb r1, [r3, #0xf]
	strb r1, [r4, #0x13]
	ldmia r0, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	ldr r0, [r3, #0x10]
	str r0, [r4, #0x14]
	ldrb r0, [r3, #0x20]
	strb r0, [r4, #0x24]
_02055EB8:
	ldrh r0, [r5], #2
	subs ip, ip, #1
	strh r0, [lr], #2
	bne _02055EB8
	add r0, r4, #0x42
	add r1, r3, #0x3a
	mov r2, #0xa
	bl StrncpySimple
	mov r2, #0
	mov r1, r2
_02055EE0:
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #2]
	cmp r2, #2
	blt _02055EE0
	strb r1, [r4, #0x25]
	strh r1, [r4, #0x26]
	strh r1, [r4, #0x28]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02055E14

	arm_func_start sub_02055F04
sub_02055F04: ; 0x02055F04
	stmdb sp!, {r4, r5, r6, lr}
	mov r3, r1
	ldrh r1, [r3]
	mov ip, r0
	add r0, r3, #0x18
	and r1, r1, #1
	strb r1, [ip]
	ldrb r1, [r3, #4]
	add r6, ip, #0x14
	add r5, r3, #0x2a
	strb r1, [ip, #1]
	ldrb r1, [r3, #5]
	add r4, ip, #0x22
	mov lr, #0xc
	strb r1, [ip, #2]
	ldrb r1, [r3, #6]
	strb r1, [ip, #3]
	ldrsh r1, [r3, #8]
	strh r1, [ip, #4]
	ldrb r1, [r3, #0xa]
	strb r1, [ip, #6]
	ldrb r1, [r3, #0xb]
	strb r1, [ip, #7]
	ldrsh r1, [r3, #0xc]
	strh r1, [ip, #8]
	ldrsh r1, [r3, #0xe]
	strh r1, [ip, #0xa]
	ldrb r1, [r3, #0x10]
	strb r1, [ip, #0xc]
	ldrb r1, [r3, #0x11]
	strb r1, [ip, #0xd]
	ldrb r1, [r3, #0x12]
	strb r1, [ip, #0xe]
	ldrb r1, [r3, #0x13]
	strb r1, [ip, #0xf]
	ldmia r0, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	ldr r0, [r3, #0x14]
	str r0, [ip, #0x10]
	ldrb r0, [r3, #0x24]
	strb r0, [ip, #0x20]
_02055FA8:
	ldrh r0, [r5], #2
	subs lr, lr, #1
	strh r0, [r4], #2
	bne _02055FA8
	add r0, ip, #0x3a
	add r1, r3, #0x42
	mov r2, #0xa
	bl StrncpySimple
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02055F04

	arm_func_start sub_02055FCC
sub_02055FCC: ; 0x02055FCC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl IsValidTeamMember
	cmp r0, #0
	beq _02056068
	mov r0, r4
	bl GetItemMoveId16
	mov r4, r0
	mov r0, r5
	bl GetTeamMember
	mov lr, #0
	mov r3, lr
	mov ip, #1
	mov r2, #6
	b _02056040
_0205600C:
	smlabb r5, lr, r2, r0
	ldrb r1, [r5, #0x22]
	tst r1, #1
	movne r1, ip
	moveq r1, r3
	tst r1, #0xff
	beq _02056034
	ldrh r1, [r5, #0x24]
	cmp r4, r1
	beq _02056048
_02056034:
	add r1, lr, #1
	mov r1, r1, lsl #0x10
	mov lr, r1, asr #0x10
_02056040:
	cmp lr, #4
	blt _0205600C
_02056048:
	cmp lr, #4
	blt _02056068
	ldrsh r1, [r0, #4]
	mov r0, r4
	bl sub_02053D1C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_02056068:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02055FCC

	arm_func_start IsMonsterNotNicknamed
IsMonsterNotNicknamed: ; 0x02056070
	ldr ip, _02056080 ; =StrcmpMonsterName
	ldrsh r1, [r0, #4]
	add r0, r0, #0x3a
	bx ip
	.align 2, 0
_02056080: .word StrcmpMonsterName
	arm_func_end IsMonsterNotNicknamed

	arm_func_start sub_02056084
sub_02056084: ; 0x02056084
	ldr ip, _02056090 ; =sub_02054F44
	add r1, r1, #0x3a
	bx ip
	.align 2, 0
_02056090: .word sub_02054F44
	arm_func_end sub_02056084

	arm_func_start sub_02056094
sub_02056094: ; 0x02056094
	ldr ip, _020560A0 ; =sub_02054FA0
	add r1, r1, #0x3a
	bx ip
	.align 2, 0
_020560A0: .word sub_02054FA0
	arm_func_end sub_02056094

	arm_func_start sub_020560A4
sub_020560A4: ; 0x020560A4
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_020560A4

	arm_func_start sub_020560B8
sub_020560B8: ; 0x020560B8
	ldr ip, _020560C4 ; =SetActiveTeam
	mov r0, #0
	bx ip
	.align 2, 0
_020560C4: .word SetActiveTeam
	arm_func_end sub_020560B8

	arm_func_start RemoveActiveMembersFromAllTeams
RemoveActiveMembersFromAllTeams: ; 0x020560C8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov lr, #0
	ldr r7, _02056154 ; =TEAM_MEMBER_TABLE_PTR
	mov r1, lr
	mvn r0, #0
	mov r2, lr
	mov r4, #0x68
	mov r6, #0x1a0
_020560E8:
	mul ip, lr, r6
	mov r3, r2
_020560F0:
	ldr r5, [r7]
	add r5, ip, r5
	mla r5, r3, r4, r5
	add r5, r5, #0x9000
	strb r1, [r5, #0x36c]
	ldr r5, [r7]
	add r5, r5, lr, lsl #3
	add r5, r5, r3, lsl #1
	add r5, r5, #0x9800
	add r3, r3, #1
	strh r0, [r5, #0x56]
	cmp r3, #4
	blt _020560F0
	ldr r3, [r7]
	add r3, r3, lr, lsl #1
	add r3, r3, #0x9800
	strh r0, [r3, #0x50]
	ldr r3, [r7]
	add r3, r3, lr
	add r3, r3, #0x9000
	add lr, lr, #1
	strb r1, [r3, #0x874]
	cmp lr, #3
	blt _020560E8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02056154: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end RemoveActiveMembersFromAllTeams

	arm_func_start RemoveActiveMembersFromSpecialEpisodeTeam
RemoveActiveMembersFromSpecialEpisodeTeam: ; 0x02056158
	stmdb sp!, {r3, lr}
	mov lr, #0
	ldr r3, _020561BC ; =TEAM_MEMBER_TABLE_PTR
	mov r0, lr
	mvn ip, #0
	mov r1, #0x68
_02056170:
	ldr r2, [r3]
	mla r2, lr, r1, r2
	add r2, r2, #0x9000
	strb r0, [r2, #0x50c]
	ldr r2, [r3]
	add r2, r2, lr, lsl #1
	add r2, r2, #0x9800
	add lr, lr, #1
	strh ip, [r2, #0x5e]
	cmp lr, #4
	blt _02056170
	ldr r2, _020561BC ; =TEAM_MEMBER_TABLE_PTR
	ldr r1, [r2]
	add r1, r1, #0x9800
	strh ip, [r1, #0x52]
	ldr r1, [r2]
	add r1, r1, #0x9000
	strb r0, [r1, #0x875]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020561BC: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end RemoveActiveMembersFromSpecialEpisodeTeam

	arm_func_start RemoveActiveMembersFromRescueTeam
RemoveActiveMembersFromRescueTeam: ; 0x020561C0
	stmdb sp!, {r3, lr}
	mov lr, #0
	ldr r3, _02056224 ; =TEAM_MEMBER_TABLE_PTR
	mov r0, lr
	mvn ip, #0
	mov r1, #0x68
_020561D8:
	ldr r2, [r3]
	mla r2, lr, r1, r2
	add r2, r2, #0x9000
	strb r0, [r2, #0x6ac]
	ldr r2, [r3]
	add r2, r2, lr, lsl #1
	add r2, r2, #0x9800
	add lr, lr, #1
	strh ip, [r2, #0x66]
	cmp lr, #4
	blt _020561D8
	ldr r2, _02056224 ; =TEAM_MEMBER_TABLE_PTR
	ldr r1, [r2]
	add r1, r1, #0x9800
	strh ip, [r1, #0x54]
	ldr r1, [r2]
	add r1, r1, #0x9000
	strb r0, [r1, #0x876]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02056224: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end RemoveActiveMembersFromRescueTeam

	arm_func_start sub_02056228
sub_02056228: ; 0x02056228
	ldr r1, _0205625C ; =0x000055AA
	cmp r0, r1
	moveq r0, #1
	bxeq lr
	ldr r1, _02056260 ; =0x00005AA5
	cmp r0, r1
	moveq r0, #1
	bxeq lr
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_0205625C: .word 0x000055AA
_02056260: .word 0x00005AA5
	arm_func_end sub_02056228

	arm_func_start CheckTeamMemberIdx
CheckTeamMemberIdx: ; 0x02056264
	ldr r1, _0205628C ; =0x000055AA
	cmp r0, r1
	moveq r0, #1
	bxeq lr
	ldr r1, _02056290 ; =0x00005AA5
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_0205628C: .word 0x000055AA
_02056290: .word 0x00005AA5
	arm_func_end CheckTeamMemberIdx

	arm_func_start IsMonsterIdInNormalRange
IsMonsterIdInNormalRange: ; 0x02056294
	cmp r0, #0
	blt _020562AC
	ldr r1, _020562B4 ; =0x0000022B
	cmp r0, r1
	movlt r0, #1
	bxlt lr
_020562AC:
	mov r0, #0
	bx lr
	.align 2, 0
_020562B4: .word 0x0000022B
	arm_func_end IsMonsterIdInNormalRange

	arm_func_start sub_020562B8
sub_020562B8: ; 0x020562B8
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_020562B8

	arm_func_start SetActiveTeam
SetActiveTeam: ; 0x020562CC
	ldr r3, _02056314 ; =TEAM_MEMBER_TABLE_PTR
	mov r2, #0x1a0
	ldr r1, [r3]
	add r1, r1, #0x9000
	strb r0, [r1, #0x877]
	ldr ip, [r3]
	add r1, ip, #0x36c
	add r1, r1, #0x9000
	mla r2, r0, r2, r1
	add r1, ip, #0x9000
	str r2, [r1, #0x84c]
	ldr r2, [r3]
	add r1, r2, #0x56
	add r1, r1, #0x9800
	add r1, r1, r0, lsl #3
	add r0, r2, #0x9000
	str r1, [r0, #0x870]
	bx lr
	.align 2, 0
_02056314: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end SetActiveTeam

	arm_func_start sub_02056318
sub_02056318: ; 0x02056318
	ldr r1, _02056338 ; =TEAM_MEMBER_TABLE_PTR
	ldr r2, [r1]
	add r1, r2, #0x9000
	ldrb r1, [r1, #0x877]
	add r1, r2, r1
	add r1, r1, #0x9000
	strb r0, [r1, #0x874]
	bx lr
	.align 2, 0
_02056338: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056318

	arm_func_start sub_0205633C
sub_0205633C: ; 0x0205633C
	ldr r0, _0205635C ; =TEAM_MEMBER_TABLE_PTR
	ldr r1, [r0]
	add r0, r1, #0x9000
	ldrb r0, [r0, #0x877]
	add r0, r1, r0
	add r0, r0, #0x9000
	ldrb r0, [r0, #0x874]
	bx lr
	.align 2, 0
_0205635C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_0205633C

	arm_func_start sub_02056360
sub_02056360: ; 0x02056360
	ldr r0, _02056388 ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	add r0, r0, #0x9000
	ldrb r1, [r0, #0x874]
	cmp r1, #0
	ldreqb r0, [r0, #0x875]
	cmpeq r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_02056388: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056360

	arm_func_start GetActiveTeamMember
GetActiveTeamMember: ; 0x0205638C
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	bxeq lr
	ldr r1, _020563B8 ; =TEAM_MEMBER_TABLE_PTR
	mov r2, #0x68
	ldr r1, [r1]
	add r1, r1, #0x9000
	ldr r1, [r1, #0x84c]
	smlabb r0, r0, r2, r1
	bx lr
	.align 2, 0
_020563B8: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetActiveTeamMember

	arm_func_start GetActiveRosterIndex
GetActiveRosterIndex: ; 0x020563BC
	mvn r1, #0
	cmp r0, r1
	beq _02056404
	ldr r1, _0205640C ; =TEAM_MEMBER_TABLE_PTR
	mov ip, #0
	ldr r1, [r1]
	add r1, r1, #0x9000
	b _020563FC
_020563DC:
	ldr r3, [r1, #0x870]
	mov r2, ip, lsl #1
	ldrsh r2, [r3, r2]
	cmp r0, r2
	moveq r0, ip, lsl #0x10
	moveq r0, r0, asr #0x10
	bxeq lr
	add ip, ip, #1
_020563FC:
	cmp ip, #4
	blt _020563DC
_02056404:
	mvn r0, #0
	bx lr
	.align 2, 0
_0205640C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetActiveRosterIndex

	arm_func_start sub_02056410
sub_02056410: ; 0x02056410
	mvn r1, #0
	cmp r0, r1
	beq _02056454
	ldr r1, _0205645C ; =TEAM_MEMBER_TABLE_PTR
	mov ip, #0
	ldr r1, [r1]
	add r1, r1, #0x9000
	b _0205644C
_02056430:
	ldr r3, [r1, #0x870]
	mov r2, ip, lsl #1
	ldrsh r2, [r3, r2]
	cmp r0, r2
	moveq r0, #1
	bxeq lr
	add ip, ip, #1
_0205644C:
	cmp ip, #4
	blt _02056430
_02056454:
	mov r0, #0
	bx lr
	.align 2, 0
_0205645C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056410

	arm_func_start sub_02056460
sub_02056460: ; 0x02056460
	mvn r2, #0
	cmp r0, r2
	beq _020564A4
	ldr r2, _020564AC ; =TEAM_MEMBER_TABLE_PTR
	mov r3, #0
	ldr r2, [r2]
	add r2, r2, r1, lsl #3
	b _0205649C
_02056480:
	add r1, r2, r3, lsl #1
	add r1, r1, #0x9800
	ldrsh r1, [r1, #0x56]
	cmp r0, r1
	moveq r0, #1
	bxeq lr
	add r3, r3, #1
_0205649C:
	cmp r3, #4
	blt _02056480
_020564A4:
	mov r0, #0
	bx lr
	.align 2, 0
_020564AC: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056460

	arm_func_start sub_020564B0
sub_020564B0: ; 0x020564B0
	mvn r3, #0
	cmp r0, r3
	beq _020564F8
	ldr r1, _02056500 ; =TEAM_MEMBER_TABLE_PTR
	ldr ip, [r1]
	add r1, ip, #0x9000
	ldrb r2, [r1, #0x877]
	add r2, ip, r2, lsl #1
	add r2, r2, #0x9800
	ldrsh ip, [r2, #0x50]
	cmp ip, r3
	beq _020564F8
	ldr r2, [r1, #0x870]
	mov r1, ip, lsl #1
	ldrsh r1, [r2, r1]
	cmp r0, r1
	moveq r0, #1
	bxeq lr
_020564F8:
	mov r0, #0
	bx lr
	.align 2, 0
_02056500: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_020564B0

	arm_func_start sub_02056504
sub_02056504: ; 0x02056504
	mvn r3, #0
	cmp r0, r3
	beq _02056548
	ldr r2, _02056550 ; =TEAM_MEMBER_TABLE_PTR
	ldr ip, [r2]
	add r2, ip, r1, lsl #1
	add r2, r2, #0x9800
	ldrsh r2, [r2, #0x50]
	cmp r2, r3
	beq _02056548
	add r1, ip, r1, lsl #3
	add r1, r1, r2, lsl #1
	add r1, r1, #0x9800
	ldrsh r1, [r1, #0x56]
	cmp r0, r1
	moveq r0, #1
	bxeq lr
_02056548:
	mov r0, #0
	bx lr
	.align 2, 0
_02056550: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056504

	arm_func_start sub_02056554
sub_02056554: ; 0x02056554
	stmdb sp!, {r4, lr}
	mvn r1, #0
	cmp r0, r1
	beq _020565E8
	ldr r1, _020565F0 ; =TEAM_MEMBER_TABLE_PTR
	mov ip, #0
	ldr lr, [r1]
	add r1, lr, #0x9000
	b _02056598
_02056578:
	ldr r3, [r1, #0x870]
	mov r2, ip, lsl #1
	ldrsh r2, [r3, r2]
	cmp r0, r2
	moveq r0, ip, lsl #0x10
	moveq r0, r0, asr #0x10
	ldmeqia sp!, {r4, pc}
	add ip, ip, #1
_02056598:
	cmp ip, #4
	blt _02056578
	mov r4, #0
	add r1, lr, #0x9000
	mvn r2, #0
	b _020565E0
_020565B0:
	ldr r3, [r1, #0x870]
	mov ip, r4, lsl #1
	ldrsh r3, [r3, ip]
	cmp r3, r2
	bne _020565DC
	add r1, lr, #0x9000
	ldr r2, [r1, #0x870]
	mov r1, r4, lsl #0x10
	strh r0, [r2, ip]
	mov r0, r1, asr #0x10
	ldmia sp!, {r4, pc}
_020565DC:
	add r4, r4, #1
_020565E0:
	cmp r4, #4
	blt _020565B0
_020565E8:
	mvn r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_020565F0: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056554

	arm_func_start sub_020565F4
sub_020565F4: ; 0x020565F4
	stmdb sp!, {r4, lr}
	mvn r2, #0
	cmp r0, r2
	beq _0205668C
	ldr r2, _02056694 ; =TEAM_MEMBER_TABLE_PTR
	mov ip, #0
	ldr lr, [r2]
	add r3, lr, r1, lsl #3
	b _02056638
_02056618:
	add r2, r3, ip, lsl #1
	add r2, r2, #0x9800
	ldrsh r2, [r2, #0x56]
	cmp r0, r2
	moveq r0, ip, lsl #0x10
	moveq r0, r0, asr #0x10
	ldmeqia sp!, {r4, pc}
	add ip, ip, #1
_02056638:
	cmp ip, #4
	blt _02056618
	mov r4, #0
	add ip, lr, r1, lsl #3
	mvn r3, #0
	b _02056684
_02056650:
	add r2, ip, r4, lsl #1
	add r2, r2, #0x9800
	ldrsh r2, [r2, #0x56]
	cmp r2, r3
	bne _02056680
	add r1, lr, r1, lsl #3
	add r1, r1, r4, lsl #1
	add r1, r1, #0x9800
	mov r2, r4, lsl #0x10
	strh r0, [r1, #0x56]
	mov r0, r2, asr #0x10
	ldmia sp!, {r4, pc}
_02056680:
	add r4, r4, #1
_02056684:
	cmp r4, #4
	blt _02056650
_0205668C:
	mvn r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02056694: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_020565F4

	arm_func_start sub_02056698
sub_02056698: ; 0x02056698
	mvn r2, #0
	cmp r1, r2
	bxeq lr
	ldr r2, _020566C0 ; =TEAM_MEMBER_TABLE_PTR
	mov r3, r0, lsl #1
	ldr r0, [r2]
	add r0, r0, #0x9000
	ldr r0, [r0, #0x870]
	strh r1, [r0, r3]
	bx lr
	.align 2, 0
_020566C0: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056698

	arm_func_start sub_020566C4
sub_020566C4: ; 0x020566C4
	stmdb sp!, {r3, lr}
	mvn r1, #0
	cmp r0, r1
	beq _02056748
	ldr r2, _02056750 ; =TEAM_MEMBER_TABLE_PTR
	mov r1, #0
	ldr lr, [r2]
	add r2, lr, #0x9000
	b _02056740
_020566E8:
	ldr r3, [r2, #0x870]
	mov ip, r1, lsl #1
	ldrsh r3, [r3, ip]
	cmp r0, r3
	bne _0205673C
	add r0, lr, #0x9000
	ldr r2, [r0, #0x870]
	mvn r3, #0
	ldr r0, _02056750 ; =TEAM_MEMBER_TABLE_PTR
	strh r3, [r2, ip]
	ldr r2, [r0]
	add r0, r2, #0x9000
	ldrb r0, [r0, #0x877]
	add r0, r2, r0, lsl #1
	add r0, r0, #0x9800
	ldrsh r2, [r0, #0x50]
	cmp r1, r2
	streqh r3, [r0, #0x50]
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	ldmia sp!, {r3, pc}
_0205673C:
	add r1, r1, #1
_02056740:
	cmp r1, #4
	blt _020566E8
_02056748:
	mvn r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02056750: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_020566C4

	arm_func_start TryAddMonsterToActiveTeam
TryAddMonsterToActiveTeam: ; 0x02056754
	stmdb sp!, {r4, lr}
	mvn r1, #0
	cmp r0, r1
	beq _02056824
	ldr r1, _0205682C ; =TEAM_MEMBER_TABLE_PTR
	mov ip, #0
	ldr lr, [r1]
	add r1, lr, #0x9000
	b _020567B8
_02056778:
	ldr r3, [r1, #0x870]
	mov r2, ip, lsl #1
	ldrsh r2, [r3, r2]
	cmp r0, r2
	bne _020567B4
	ldr r1, _0205682C ; =TEAM_MEMBER_TABLE_PTR
	mov r0, ip, lsl #0x10
	ldr r2, [r1]
	mov r0, r0, asr #0x10
	add r1, r2, #0x9000
	ldrb r1, [r1, #0x877]
	add r1, r2, r1, lsl #1
	add r1, r1, #0x9800
	strh r0, [r1, #0x50]
	ldmia sp!, {r4, pc}
_020567B4:
	add ip, ip, #1
_020567B8:
	cmp ip, #4
	blt _02056778
	mov r4, #0
	add r1, lr, #0x9000
	mvn r2, #0
	b _0205681C
_020567D0:
	ldr r3, [r1, #0x870]
	mov ip, r4, lsl #1
	ldrsh r3, [r3, ip]
	cmp r3, r2
	bne _02056818
	add r1, lr, #0x9000
	ldr r2, [r1, #0x870]
	ldr r1, _0205682C ; =TEAM_MEMBER_TABLE_PTR
	strh r0, [r2, ip]
	ldr r2, [r1]
	mov r0, r4, lsl #0x10
	add r1, r2, #0x9000
	ldrb r1, [r1, #0x877]
	mov r0, r0, asr #0x10
	add r1, r2, r1, lsl #1
	add r1, r1, #0x9800
	strh r0, [r1, #0x50]
	ldmia sp!, {r4, pc}
_02056818:
	add r4, r4, #1
_0205681C:
	cmp r4, #4
	blt _020567D0
_02056824:
	mvn r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205682C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end TryAddMonsterToActiveTeam

	arm_func_start sub_02056830
sub_02056830: ; 0x02056830
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r6, r7
	mov r4, r7
	mov r5, #1
_02056844:
	mov r0, r6
	bl GetActiveTeamMember
	ldrb r0, [r0]
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	addeq r7, r7, #1
	cmp r6, #4
	blt _02056844
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02056830

	arm_func_start sub_02056880
sub_02056880: ; 0x02056880
	ldr r0, _020568A0 ; =TEAM_MEMBER_TABLE_PTR
	ldr r1, [r0]
	add r0, r1, #0x9000
	ldrb r0, [r0, #0x877]
	add r0, r1, r0, lsl #1
	add r0, r0, #0x9800
	ldrsh r0, [r0, #0x50]
	bx lr
	.align 2, 0
_020568A0: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056880

	arm_func_start sub_020568A4
sub_020568A4: ; 0x020568A4
	ldr r1, _020568D8 ; =TEAM_MEMBER_TABLE_PTR
	mvn r0, #0
	ldr r3, [r1]
	add r1, r3, #0x9000
	ldrb r2, [r1, #0x877]
	add r2, r3, r2, lsl #1
	add r2, r2, #0x9800
	ldrsh r2, [r2, #0x50]
	cmp r2, r0
	ldrne r1, [r1, #0x870]
	movne r0, r2, lsl #1
	ldrnesh r0, [r1, r0]
	bx lr
	.align 2, 0
_020568D8: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_020568A4

	arm_func_start sub_020568DC
sub_020568DC: ; 0x020568DC
	ldr r1, _02056910 ; =TEAM_MEMBER_TABLE_PTR
	mvn r3, #0
	ldr r2, [r1]
	add r1, r2, r0, lsl #1
	add r1, r1, #0x9800
	ldrsh r1, [r1, #0x50]
	cmp r1, r3
	addne r0, r2, r0, lsl #3
	addne r0, r0, r1, lsl #1
	addne r0, r0, #0x9800
	ldrnesh r3, [r0, #0x56]
	mov r0, r3
	bx lr
	.align 2, 0
_02056910: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_020568DC

	arm_func_start sub_02056914
sub_02056914: ; 0x02056914
	ldr r0, _0205695C ; =TEAM_MEMBER_TABLE_PTR
	mvn r2, #0
	ldr ip, [r0]
	add r0, ip, #0x9000
	ldrb r1, [r0, #0x877]
	add r1, ip, r1, lsl #1
	add r1, r1, #0x9800
	ldrsh r3, [r1, #0x50]
	cmp r3, r2
	ldrne r1, [r0, #0x870]
	movne r0, r3, lsl #1
	ldrnesh r1, [r1, r0]
	cmpne r1, r2
	moveq r0, #0
	bxeq lr
	mov r0, #0x44
	smlabb r0, r1, r0, ip
	bx lr
	.align 2, 0
_0205695C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056914

	arm_func_start RemoveActiveMembersFromMainTeam
RemoveActiveMembersFromMainTeam: ; 0x02056960
	stmdb sp!, {r3, r4, r5, lr}
	mov r0, #0
	ldr r2, _020569C8 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, r0
	mvn ip, #0
	mov r3, #1
_02056978:
	ldr r1, [r2]
	mov lr, r5, lsl #1
	add r1, r1, #0x9000
	ldr r4, [r1, #0x870]
	add r5, r5, #1
	ldrsh r1, [r4, lr]
	cmp r1, ip
	movne r0, r3
	strneh ip, [r4, lr]
	cmp r5, #4
	blt _02056978
	ldr r1, _020569C8 ; =TEAM_MEMBER_TABLE_PTR
	mvn r2, #0
	ldr r3, [r1]
	add r1, r3, #0x9000
	ldrb r1, [r1, #0x877]
	add r1, r3, r1, lsl #1
	add r1, r1, #0x9800
	strh r2, [r1, #0x50]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020569C8: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end RemoveActiveMembersFromMainTeam

	arm_func_start SetTeamSetupHeroAndPartnerOnly
SetTeamSetupHeroAndPartnerOnly: ; 0x020569CC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bl GetMainCharacter1MemberIdx
	mov r5, r0
	bl GetMainCharacter2MemberIdx
	mov r6, r0
	bl GetMainCharacter3MemberIdx
	mov r8, #0
	ldr r1, _02056AAC ; =TEAM_MEMBER_TABLE_PTR
	mov r7, r0
	ldr r1, [r1]
	mov sl, r8
	add r0, r1, #0x9000
	ldr sb, [r0, #0x84c]
	mov fp, r8
	mov r4, #1
_02056A08:
	ldrb r0, [sb]
	tst r0, #1
	movne r0, r4
	moveq r0, fp
	tst r0, #0xff
	ldrnesh r0, [sb, #8]
	cmpne r0, r5
	cmpne r0, r6
	cmpne r0, r7
	beq _02056A40
	mov r0, sl, lsl #0x10
	mov r0, r0, asr #0x10
	mov r8, #1
	bl sub_02058138
_02056A40:
	add sl, sl, #1
	cmp sl, #4
	add sb, sb, #0x68
	blt _02056A08
	bl RemoveActiveMembersFromMainTeam
	mvn r0, #0
	cmp r5, r0
	beq _02056A68
	mov r0, r5
	bl TryAddMonsterToActiveTeam
_02056A68:
	mvn r0, #0
	cmp r6, r0
	beq _02056A7C
	mov r0, r6
	bl sub_02056554
_02056A7C:
	mvn r0, #0
	cmp r7, r0
	beq _02056A90
	mov r0, r7
	bl sub_02056554
_02056A90:
	ldr r0, _02056AAC ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	add r0, r0, #0x9000
	ldrb r0, [r0, #0x877]
	bl sub_02057464
	mov r0, r8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02056AAC: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end SetTeamSetupHeroAndPartnerOnly

	arm_func_start SetTeamSetupHeroOnly
SetTeamSetupHeroOnly: ; 0x02056AB0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bl sub_020568A4
	ldr r1, _02056B54 ; =TEAM_MEMBER_TABLE_PTR
	mov r7, r0
	mov r8, #0
	ldr r1, [r1]
	mov r6, #1
	add r0, r1, #0x9000
	ldr sb, [r0, #0x84c]
	mov sl, r8
	mov r5, r8
	mov r4, r6
_02056AE0:
	ldrb r0, [sb]
	tst r0, #1
	movne r0, r6
	moveq r0, r5
	tst r0, #0xff
	ldrnesh r0, [sb, #8]
	cmpne r0, r7
	beq _02056B10
	mov r0, sl, lsl #0x10
	mov r0, r0, asr #0x10
	mov r8, r4
	bl sub_02058138
_02056B10:
	add sl, sl, #1
	cmp sl, #4
	add sb, sb, #0x68
	blt _02056AE0
	bl RemoveActiveMembersFromMainTeam
	mvn r0, #0
	cmp r7, r0
	beq _02056B38
	mov r0, r7
	bl TryAddMonsterToActiveTeam
_02056B38:
	ldr r0, _02056B54 ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	add r0, r0, #0x9000
	ldrb r0, [r0, #0x877]
	bl sub_02057464
	mov r0, r8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02056B54: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end SetTeamSetupHeroOnly

	arm_func_start sub_02056B58
sub_02056B58: ; 0x02056B58
	stmdb sp!, {r3, lr}
	ldr r2, _02056BD0 ; =TEAM_MEMBER_TABLE_PTR
	ldr ip, [r2]
	add r0, ip, #0x9000
	ldrb r3, [r0, #0x877]
	cmp r3, #2
	ldmneia sp!, {r3, pc}
	add r0, ip, #0x9800
	ldrsh r1, [r0, #0x50]
	add r0, ip, r3, lsl #1
	add r0, r0, #0x9800
	strh r1, [r0, #0x50]
	mov lr, #0
_02056B8C:
	ldr r1, [r2]
	mov ip, lr, lsl #1
	add r0, r1, lr, lsl #1
	add r0, r0, #0x9800
	add r1, r1, #0x9000
	ldrsh r3, [r0, #0x56]
	ldr r0, [r1, #0x870]
	add lr, lr, #1
	strh r3, [r0, ip]
	cmp lr, #4
	blt _02056B8C
	ldr r0, _02056BD0 ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	add r0, r0, #0x9000
	ldrb r0, [r0, #0x877]
	bl sub_02057464
	ldmia sp!, {r3, pc}
	.align 2, 0
_02056BD0: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056B58

	arm_func_start sub_02056BD4
sub_02056BD4: ; 0x02056BD4
	stmdb sp!, {r3, lr}
	ldr r0, _02056C1C ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	add r0, r0, #0x9000
	ldrb r0, [r0, #0x877]
	cmp r0, #2
	ldmneia sp!, {r3, pc}
	bl RemoveActiveMembersFromMainTeam
	bl GetHeroMemberIdx
	bl TryAddMonsterToActiveTeam
	bl GetPartnerMemberIdx
	bl sub_02056554
	ldr r0, _02056C1C ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	add r0, r0, #0x9000
	ldrb r0, [r0, #0x877]
	bl sub_02057464
	ldmia sp!, {r3, pc}
	.align 2, 0
_02056C1C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056BD4

	arm_func_start GetPartyMembers
GetPartyMembers: ; 0x02056C20
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r5, r0
	bl sub_020568A4
	mov r6, r0
	bl GetMainCharacter1MemberIdx
	mov r7, r0
	bl GetMainCharacter2MemberIdx
	mov r8, r0
	bl GetMainCharacter3MemberIdx
	mov sb, r0
	cmp r5, #0
	mvn r0, #0
	addeq r5, sp, #0
	cmp r6, r0
	mov r4, #0
	mvn r0, #0
	strneh r6, [r5]
	addne r4, r4, #1
	cmp r7, r0
	beq _02056C90
	mov r0, r7
	bl sub_02056410
	cmp r0, #0
	cmpne r7, r6
	movne r0, r4, lsl #1
	strneh r7, [r5, r0]
	addne r4, r4, #1
_02056C90:
	mvn r0, #0
	cmp r8, r0
	beq _02056CB8
	mov r0, r8
	bl sub_02056410
	cmp r0, #0
	cmpne r8, r6
	movne r0, r4, lsl #1
	strneh r8, [r5, r0]
	addne r4, r4, #1
_02056CB8:
	mvn r0, #0
	cmp sb, r0
	beq _02056CE0
	mov r0, sb
	bl sub_02056410
	cmp r0, #0
	cmpne sb, r6
	movne r0, r4, lsl #1
	strneh sb, [r5, r0]
	addne r4, r4, #1
_02056CE0:
	ldr r0, _02056D6C ; =TEAM_MEMBER_TABLE_PTR
	mov r8, #0
	ldr r0, [r0]
	mov r6, r8
	add r0, r0, #0x9000
	ldr sb, [r0, #0x84c]
	mov r7, #1
	b _02056D58
_02056D00:
	ldrb r0, [sb]
	tst r0, #2
	movne r0, r7
	moveq r0, r6
	tst r0, #0xff
	beq _02056D50
	ldrsh sl, [sb, #8]
	mov r0, sl
	bl sub_020564B0
	cmp r0, #0
	bne _02056D50
	mov r0, sl
	bl IsMainCharacter
	cmp r0, #0
	bne _02056D50
	mov r0, r4, lsl #1
	add r4, r4, #1
	strh sl, [r5, r0]
	cmp r4, #4
	bge _02056D60
_02056D50:
	add r8, r8, #1
	add sb, sb, #0x68
_02056D58:
	cmp r8, #4
	blt _02056D00
_02056D60:
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02056D6C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetPartyMembers

	arm_func_start sub_02056D70
sub_02056D70: ; 0x02056D70
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	movs sl, r0
	ldr r0, _02056E00 ; =TEAM_MEMBER_TABLE_PTR
	mov r6, #0
	ldr r0, [r0]
	mov sb, #0
	add r0, r0, #0x9000
	ldr r7, [r0, #0x84c]
	addeq sl, sp, #0
	mov r4, r6
	mov r5, #1
_02056DA0:
	ldrb r0, [r7]
	tst r0, #2
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _02056DE4
	ldrsh r8, [r7, #8]
	mov r0, r8
	bl IsMonsterIdInNormalRange
	cmp r0, #0
	beq _02056DE4
	mov r0, r8
	bl sub_020564B0
	cmp r0, #0
	moveq r0, sb, lsl #1
	streqh r8, [sl, r0]
	addeq sb, sb, #1
_02056DE4:
	add r6, r6, #1
	cmp r6, #4
	add r7, r7, #0x68
	blt _02056DA0
	mov r0, sb
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02056E00: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056D70

	arm_func_start sub_02056E04
sub_02056E04: ; 0x02056E04
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	movs sl, r0
	ldr r0, _02056EB4 ; =TEAM_MEMBER_TABLE_PTR
	mov r6, #0
	ldr r0, [r0]
	mov sb, #0
	add r0, r0, #0x9000
	ldr r7, [r0, #0x84c]
	addeq sl, sp, #0
	mov r4, r6
	mov r5, #1
_02056E34:
	ldrb r0, [r7]
	tst r0, #2
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _02056E98
	ldrsh r8, [r7, #8]
	mov r0, r8
	bl IsMonsterIdInNormalRange
	cmp r0, #0
	beq _02056E98
	mov r0, r8
	bl sub_02055410
	cmp r0, #0
	bne _02056E98
	mov r0, r8
	bl sub_02055474
	cmp r0, #0
	bne _02056E98
	mov r0, r8
	bl sub_020554D8
	cmp r0, #0
	moveq r0, sb, lsl #1
	streqh r8, [sl, r0]
	addeq sb, sb, #1
_02056E98:
	add r6, r6, #1
	cmp r6, #4
	add r7, r7, #0x68
	blt _02056E34
	mov r0, sb
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02056EB4: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056E04

	arm_func_start sub_02056EB8
sub_02056EB8: ; 0x02056EB8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r1, _02056F5C ; =TEAM_MEMBER_TABLE_PTR
	mov r5, #0
	ldr r1, [r1]
	mov r8, r0
	add r0, r1, #0x9000
	ldr r4, [r0, #0x84c]
	mov r6, r5
	mov r7, r5
	mov sb, r5
	mov sl, #1
_02056EE4:
	ldrb r0, [r4]
	tst r0, #1
	movne r0, sl
	moveq r0, sb
	tst r0, #0xff
	beq _02056F1C
	ldrsh r0, [r4, #8]
	bl sub_02056410
	cmp r0, #0
	beq _02056F1C
	ldrsh r0, [r4, #0xc]
	bl GetBodySize
	add r6, r6, r0
	add r5, r5, #1
_02056F1C:
	add r7, r7, #1
	cmp r7, #4
	add r4, r4, #0x68
	blt _02056EE4
	cmp r5, #4
	movge r0, #0
	ldmgeia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r8, #0
	beq _02056F4C
	mov r0, r8
	bl GetBodySize
	add r6, r6, r0
_02056F4C:
	cmp r6, #6
	movgt r0, #0
	movle r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02056F5C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056EB8

	arm_func_start sub_02056F60
sub_02056F60: ; 0x02056F60
	stmdb sp!, {r3, lr}
	mvn r1, #0
	cmp r0, r1
	beq _02057000
	ldr r1, _0205700C ; =TEAM_MEMBER_TABLE_PTR
	ldr r3, [r1]
	add r1, r3, #0x9000
	ldrb r1, [r1, #0x877]
	cmp r1, #0
	bne _02056FB8
	mov r2, #0
	b _02056FAC
_02056F90:
	add r1, r3, r2, lsl #1
	add r1, r1, #0x9800
	ldrsh r1, [r1, #0x5e]
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r2, r2, #1
_02056FAC:
	cmp r2, #4
	blt _02056F90
	b _02056FEC
_02056FB8:
	cmp r1, #1
	bne _02056FEC
	mov r2, #0
	b _02056FE4
_02056FC8:
	add r1, r3, r2, lsl #1
	add r1, r1, #0x9800
	ldrsh r1, [r1, #0x56]
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r2, r2, #1
_02056FE4:
	cmp r2, #4
	blt _02056FC8
_02056FEC:
	mov r1, #0x44
	smlabb r0, r0, r1, r3
	ldrsh r0, [r0, #4]
	bl sub_02056EB8
	ldmia sp!, {r3, pc}
_02057000:
	mov r0, #0
	bl sub_02056EB8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205700C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02056F60

	arm_func_start sub_02057010
sub_02057010: ; 0x02057010
	ldr r1, _02057028 ; =TEAM_MEMBER_TABLE_PTR
	ldr ip, _0205702C ; =sub_02057030
	ldr r1, [r1]
	add r1, r1, #0x9000
	ldrb r1, [r1, #0x877]
	bx ip
	.align 2, 0
_02057028: .word TEAM_MEMBER_TABLE_PTR
_0205702C: .word sub_02057030
	arm_func_end sub_02057010

	arm_func_start sub_02057030
sub_02057030: ; 0x02057030
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sb, r1
	mov sl, r0
	mov r0, sb
	bl sub_020568DC
	mov r4, r0
	cmp sl, #0
	mvn r0, #0
	addeq sl, sp, #0
	mov r8, #0
	cmp r4, r0
	beq _0205707C
	mov r0, r4
	bl IsValidTeamMember
	cmp r0, #0
	strneh r4, [sl]
	addne r8, r8, #1
	mvneq r4, #0
_0205707C:
	mov r7, #0
	mvn fp, #0
_02057084:
	ldr r0, _0205717C ; =TEAM_MEMBER_TABLE_PTR
	ldr r2, [r0]
	add r0, r2, sb, lsl #3
	add r0, r0, r7, lsl #1
	add r0, r0, #0x9800
	ldrsh r5, [r0, #0x56]
	cmp r5, fp
	cmpne r4, r5
	beq _020570F8
	mov r1, #0x44
	mov r0, r5
	smlabb r6, r5, r1, r2
	bl sub_02055410
	cmp r0, #0
	bne _020570EC
	mov r0, r5
	bl sub_02055474
	cmp r0, #0
	bne _020570EC
	mov r0, r5
	bl sub_020554D8
	cmp r0, #0
	bne _020570EC
	ldrsh r0, [r6, #4]
	cmp r0, #0x214
	bne _020570F8
_020570EC:
	mov r0, r8, lsl #1
	strh r5, [sl, r0]
	add r8, r8, #1
_020570F8:
	add r7, r7, #1
	cmp r7, #4
	blt _02057084
	mov r0, #0
	ldr r3, _0205717C ; =TEAM_MEMBER_TABLE_PTR
	mov r4, r0
	mvn r2, #0
_02057114:
	ldr r1, [r3]
	add r1, r1, sb, lsl #3
	add r1, r1, r0, lsl #1
	add r1, r1, #0x9800
	ldrsh r6, [r1, #0x56]
	cmp r6, r2
	beq _02057164
	mov r5, r4
	b _0205714C
_02057138:
	mov r1, r5, lsl #1
	ldrsh r1, [sl, r1]
	cmp r6, r1
	beq _02057154
	add r5, r5, #1
_0205714C:
	cmp r5, r8
	blt _02057138
_02057154:
	cmp r5, r8
	movge r1, r8, lsl #1
	strgeh r6, [sl, r1]
	addge r8, r8, #1
_02057164:
	add r0, r0, #1
	cmp r0, #4
	blt _02057114
	mov r0, r8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0205717C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02057030

	arm_func_start sub_02057180
sub_02057180: ; 0x02057180
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x58
	sub sp, sp, #0x400
	add r0, sp, #0
	bl sub_020559D8
	mov r8, #0
	ldr fp, _020572E0 ; =_020A3398
	ldr r5, _020572E4 ; =TEAM_MEMBER_TABLE_PTR
	add r6, sp, #0
	mov r7, r8
	mvn r4, #0
_020571AC:
	mov sb, r7
_020571B0:
	ldr r0, [r5]
	add r0, r0, r8, lsl #3
	add r0, r0, sb, lsl #1
	add r0, r0, #0x9800
	ldrsh sl, [r0, #0x56]
	cmp sl, r4
	beq _02057200
	mov r0, sl, lsl #1
	ldrsh r3, [r6, r0]
	mov r0, fp
	mov r1, r8
	mov r2, sl
	bl Debug_Print0
	ldr r0, [r5]
	mov r1, sl, lsl #1
	add r0, r0, r8, lsl #3
	add r0, r0, sb, lsl #1
	ldrsh r1, [r6, r1]
	add r0, r0, #0x9800
	strh r1, [r0, #0x56]
_02057200:
	add sb, sb, #1
	cmp sb, #4
	blt _020571B0
	add r8, r8, #1
	cmp r8, #3
	blt _020571AC
	mov sb, #0
_0205721C:
	ldr r0, _020572E4 ; =TEAM_MEMBER_TABLE_PTR
	mov sl, #0
	ldr r0, [r0]
	mov r1, #0x1a0
	add r0, r0, #0x36c
	add r0, r0, #0x9000
	mla r8, sb, r1, r0
	mov fp, #1
	add r7, sp, #0
	mov r5, sl
	mov r6, sl
	mvn r4, #0
_0205724C:
	ldrb r0, [r8]
	tst r0, #1
	movne r0, fp
	moveq r0, #0
	tst r0, #0xff
	beq _020572B0
	ldrsh r2, [r8, #8]
	ldr r0, _020572E8 ; =_020A33B8
	mov r1, sb
	mov r3, r2, lsl #1
	ldrsh r3, [r7, r3]
	bl Debug_Print0
	ldrsh r0, [r8, #8]
	mov r1, r0, lsl #1
	ldrsh r1, [r7, r1]
	cmp r1, r4
	streqb r6, [r8]
	beq _020572B0
	bl IsMonsterIdInNormalRange
	cmp r0, #0
	ldrnesh r0, [r8, #8]
	movne r0, r0, lsl #1
	ldrnesh r0, [r7, r0]
	strneh r0, [r8, #8]
	streqb r5, [r8]
_020572B0:
	add sl, sl, #1
	cmp sl, #4
	add r8, r8, #0x68
	blt _0205724C
	and r0, sb, #0xff
	bl sub_02057464
	add sb, sb, #1
	cmp sb, #3
	blt _0205721C
	add sp, sp, #0x58
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020572E0: .word _020A3398
_020572E4: .word TEAM_MEMBER_TABLE_PTR
_020572E8: .word _020A33B8
	arm_func_end sub_02057180

	arm_func_start sub_020572EC
sub_020572EC: ; 0x020572EC
	ldr r0, _02057304 ; =TEAM_MEMBER_TABLE_PTR
	ldr ip, _02057308 ; =sub_0205730C
	ldr r0, [r0]
	add r0, r0, #0x9000
	ldrb r0, [r0, #0x877]
	bx ip
	.align 2, 0
_02057304: .word TEAM_MEMBER_TABLE_PTR
_02057308: .word sub_0205730C
	arm_func_end sub_020572EC

	arm_func_start sub_0205730C
sub_0205730C: ; 0x0205730C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _0205739C ; =TEAM_MEMBER_TABLE_PTR
	mov r4, r0
	ldr r0, [r1]
	mov r8, #0
	add r0, r0, #0x36c
	mov r1, #0x1a0
	add r0, r0, #0x9000
	mla r7, r4, r1, r0
	mov r5, r8
	mov r6, #1
_02057338:
	ldrb r0, [r7]
	tst r0, #1
	movne r0, r6
	moveq r0, r5
	tst r0, #0xff
	beq _02057388
	ldrsh r0, [r7, #8]
	bl IsMonsterIdInNormalRange
	cmp r0, #0
	beq _02057388
	ldrsh r0, [r7, #8]
	bl IsValidTeamMember
	cmp r0, #0
	beq _02057388
	ldrsh r1, [r7, #8]
	mov r2, r8, lsl #0x10
	mov r0, r7
	mov r3, r4
	mov r2, r2, asr #0x10
	bl sub_02053174
_02057388:
	add r8, r8, #1
	cmp r8, #4
	add r7, r7, #0x68
	blt _02057338
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205739C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_0205730C

	arm_func_start sub_020573A0
sub_020573A0: ; 0x020573A0
	ldr r0, _020573B8 ; =TEAM_MEMBER_TABLE_PTR
	ldr ip, _020573BC ; =sub_020573C0
	ldr r0, [r0]
	add r0, r0, #0x9000
	ldrb r0, [r0, #0x877]
	bx ip
	.align 2, 0
_020573B8: .word TEAM_MEMBER_TABLE_PTR
_020573BC: .word sub_020573C0
	arm_func_end sub_020573A0

	arm_func_start sub_020573C0
sub_020573C0: ; 0x020573C0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02057440 ; =TEAM_MEMBER_TABLE_PTR
	mov r4, #0
	ldr r1, [r1]
	mov r2, #0x1a0
	add r1, r1, #0x36c
	add r1, r1, #0x9000
	mla r7, r0, r2, r1
	mov r5, r4
	mov r6, #1
_020573E8:
	ldrb r0, [r7]
	tst r0, #1
	movne r0, r6
	moveq r0, r5
	tst r0, #0xff
	beq _0205742C
	ldrsh r0, [r7, #8]
	bl IsMonsterIdInNormalRange
	cmp r0, #0
	beq _0205742C
	ldrsh r0, [r7, #8]
	bl IsValidTeamMember
	cmp r0, #0
	beq _0205742C
	ldrsh r0, [r7, #8]
	mov r1, r7
	bl sub_0205349C
_0205742C:
	add r4, r4, #1
	cmp r4, #4
	add r7, r7, #0x68
	blt _020573E8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02057440: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_020573C0

	arm_func_start sub_02057444
sub_02057444: ; 0x02057444
	ldr r0, _0205745C ; =TEAM_MEMBER_TABLE_PTR
	ldr ip, _02057460 ; =sub_02057464
	ldr r0, [r0]
	add r0, r0, #0x9000
	ldrb r0, [r0, #0x877]
	bx ip
	.align 2, 0
_0205745C: .word TEAM_MEMBER_TABLE_PTR
_02057460: .word sub_02057464
	arm_func_end sub_02057444

	arm_func_start sub_02057464
sub_02057464: ; 0x02057464
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x8c
	ldr r1, _020577B4 ; =TEAM_MEMBER_TABLE_PTR
	mov sl, #0
	ldr r2, [r1]
	mov r5, r0
	add r0, r2, r5, lsl #1
	add r0, r0, #0x9800
	ldrsh r1, [r0, #0x50]
	mvn r4, #0
	mov fp, sl
	cmp r1, r4
	addne r0, r2, r5, lsl #3
	addne r0, r0, r1, lsl #1
	addne r0, r0, #0x9800
	ldrnesh r4, [r0, #0x56]
	add r0, r2, #0x36c
	add r1, r0, #0x9000
	mov r0, #0x1a0
	mla sb, r5, r0, r1
	mov r6, #1
	add r7, sp, #0x1c
	mvn r8, #0
_020574C0:
	ldrb r0, [sb]
	mov r1, sl, lsl #1
	strh r8, [r7, r1]
	tst r0, #1
	movne r0, r6
	moveq r0, fp
	tst r0, #0xff
	beq _02057514
	ldrsh r0, [sb, #8]
	bl IsMonsterIdInNormalRange
	cmp r0, #0
	beq _02057514
	ldrsh r0, [sb, #8]
	bl IsValidTeamMember
	cmp r0, #0
	ldrnesh r1, [sb, #8]
	movne r0, sl, lsl #1
	strneh r1, [r7, r0]
	bne _02057514
	ldrsh r0, [sb, #8]
	bl sub_020566C4
_02057514:
	add sl, sl, #1
	cmp sl, #4
	add sb, sb, #0x68
	blt _020574C0
	add r0, sp, #0x14
	mov r1, r5
	bl sub_02057030
	str r0, [sp, #0xc]
	ldr r0, _020577B8 ; =_020A33D4
	ldr r2, [sp, #0xc]
	mov r1, r5
	bl Debug_Print0
	mov r0, #0x1a0
	ldr r1, _020577B4 ; =TEAM_MEMBER_TABLE_PTR
	mov r7, #0
	mul r2, r5, r0
	ldr r1, [r1]
	mov sl, r7
	add r0, r1, #0x36c
	add r0, r0, #0x9000
	add r8, r0, r2
	add r0, r1, r2
	str r0, [sp, #8]
	b _0205767C
_02057574:
	add r0, sp, #0x14
	mov r1, sl, lsl #1
	ldrsh r0, [r0, r1]
	mov sb, r8
	mov r6, #0
	str r0, [sp]
	mov r0, r0
	cmp r4, r0
	moveq r0, sl, lsl #0x10
	moveq r7, r0, asr #0x10
	add r2, sp, #0x1c
	b _020575C0
_020575A4:
	mov r0, r6, lsl #1
	ldrsh r1, [r2, r0]
	ldr r0, [sp]
	cmp r1, r0
	beq _020575C8
	add r6, r6, #1
	add sb, sb, #0x68
_020575C0:
	cmp r6, #4
	blt _020575A4
_020575C8:
	cmp r6, #4
	bge _02057678
	cmp sl, r6
	beq _02057678
	ldr r0, [sp, #8]
	mov r1, #0x68
	mla r0, sl, r1, r0
	str r0, [sp, #4]
	add r0, r0, #0x36c
	add ip, sp, #0x24
	add lr, r0, #0x9000
	mov fp, #6
_020575F8:
	subs fp, fp, #1
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	bne _020575F8
	ldr r0, [sp, #4]
	add r2, r0, #0x36c
	ldmia lr, {r0, r1}
	stmia ip, {r0, r1}
	mov ip, sb
	add fp, r2, #0x9000
	mov lr, #6
_02057624:
	ldmia ip!, {r0, r1, r2, r3}
	stmia fp!, {r0, r1, r2, r3}
	subs lr, lr, #1
	bne _02057624
	ldmia ip, {r0, r1}
	stmia fp, {r0, r1}
	add fp, sp, #0x24
	mov ip, #6
_02057644:
	ldmia fp!, {r0, r1, r2, r3}
	stmia sb!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _02057644
	add r3, sp, #0x1c
	mov ip, sl, lsl #1
	ldrsh r2, [r3, ip]
	mov r6, r6, lsl #1
	ldmia fp, {r0, r1}
	stmia sb, {r0, r1}
	ldr r0, [sp]
	strh r2, [r3, r6]
	strh r0, [r3, ip]
_02057678:
	add sl, sl, #1
_0205767C:
	ldr r0, [sp, #0xc]
	cmp sl, r0
	blt _02057574
	mov r1, #0
	mov sl, r1
	add r0, sp, #0x10
_02057694:
	strb sl, [r0, r1]
	add r1, r1, #1
	cmp r1, #4
	blt _02057694
	add sb, sp, #0x14
	add r6, sp, #0x1c
	add r4, sp, #0x10
	mov fp, #1
	b _0205774C
_020576B8:
	ldr r0, _020577B4 ; =TEAM_MEMBER_TABLE_PTR
	ldr r1, [r0]
	mov r0, sl, lsl #1
	add r1, r1, r5, lsl #3
	add r1, r1, sl, lsl #1
	ldrsh r3, [sb, r0]
	add r1, r1, #0x9800
	ldrsh r2, [r6, r0]
	strh r3, [r1, #0x56]
	ldrsh r1, [sb, r0]
	cmp r2, r1
	beq _020576FC
	mov r0, r8
	mov r2, sl, lsl #0x10
	mov r2, r2, asr #0x10
	bl sub_020530D4
	b _02057724
_020576FC:
	ldrb r0, [r8, #0x3e]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	addne r1, sl, #1
	ldrneb r0, [r8, #0x3f]
	andne r1, r1, #0xff
	strneb r1, [r4, r0]
	strneb r1, [r8, #0x3f]
_02057724:
	strh sl, [r8, #0xa]
	ldrb r0, [r8]
	cmp r7, sl
	add sl, sl, #1
	orr r0, r0, #2
	strb r0, [r8]
	streqb fp, [r8, #1]
	movne r0, #0
	strneb r0, [r8, #1]
	add r8, r8, #0x68
_0205774C:
	ldr r0, [sp, #0xc]
	cmp sl, r0
	blt _020576B8
	mvn r3, #0
	mov r2, #0
	ldr r1, _020577B4 ; =TEAM_MEMBER_TABLE_PTR
	b _02057784
_02057768:
	ldr r0, [r1]
	add r0, r0, r5, lsl #3
	add r0, r0, sl, lsl #1
	add r0, r0, #0x9800
	strh r3, [r0, #0x56]
	strb r2, [r8], #0x68
	add sl, sl, #1
_02057784:
	cmp sl, #4
	blt _02057768
	ldr r1, _020577B4 ; =TEAM_MEMBER_TABLE_PTR
	add r0, sp, #0x10
	ldr r2, [r1]
	mov r1, r5
	add r2, r2, r5, lsl #1
	add r2, r2, #0x9800
	strh r7, [r2, #0x50]
	bl sub_0200FA0C
	add sp, sp, #0x8c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020577B4: .word TEAM_MEMBER_TABLE_PTR
_020577B8: .word _020A33D4
	arm_func_end sub_02057464

	arm_func_start sub_020577BC
sub_020577BC: ; 0x020577BC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x4c
	mov sl, r0
	ldr r0, _02057A24 ; =_020A340C
	bl Debug_Print0
	cmp sl, #0xff
	beq _02057904
	mov r0, sl
	bl IsLevelResetDungeon
	cmp r0, #0
	beq _020578E0
	ldr r4, _02057A28 ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, _02057A2C ; =_020A336C
	ldr r3, [r4]
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r0, r3, #0x9000
	ldr r8, [r0, #0x84c]
	strb r2, [sp, #4]
	strb r1, [sp, #5]
	mov sb, #0
	and r7, r2, #0xff
	and r6, r1, #0xff
	add r5, sp, #0x1c
	mov fp, #0x44
_02057820:
	ldrb r0, [r8]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _020578D0
	strb r7, [sp, #6]
	strb r6, [sp, #7]
	mov r0, #0
	str r0, [sp]
	ldrsh r1, [r8, #8]
	ldr ip, [r4]
	add r0, sp, #8
	smlabb r1, r1, fp, ip
	ldrsh r1, [r1, #4]
	mov r2, #0
	add r3, sp, #6
	bl sub_02052E2C
	ldrb r0, [sp, #9]
	add r3, r8, #0x4c
	strb r0, [r8, #2]
	ldrsh r0, [sp, #0x10]
	strh r0, [r8, #6]
	ldrsh r0, [sp, #0x12]
	strh r0, [r8, #0xe]
	ldrsh r0, [sp, #0x12]
	strh r0, [r8, #0x10]
	ldrb r0, [sp, #0x14]
	strb r0, [r8, #0x12]
	ldrb r0, [sp, #0x15]
	strb r0, [r8, #0x13]
	ldrb r0, [sp, #0x16]
	strb r0, [r8, #0x14]
	ldrb r0, [sp, #0x17]
	strb r0, [r8, #0x15]
	ldr r0, [sp, #0x18]
	str r0, [r8, #0x18]
	ldmia r5, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldrb r2, [sp, #0x28]
	add r0, r8, #0x1c
	add r1, sp, #0x2a
	strb r2, [r8, #0x58]
	bl GroundToDungeonMoveset
_020578D0:
	add sb, sb, #1
	cmp sb, #4
	add r8, r8, #0x68
	blt _02057820
_020578E0:
	ldr r0, _02057A28 ; =TEAM_MEMBER_TABLE_PTR
	mov r2, sb, lsl #1
	ldr r1, [r0]
	ldr r0, _02057A30 ; =_020A343C
	add r1, r1, #0x9000
	ldr r3, [r1, #0x870]
	mov r1, sb
	ldrsh r2, [r3, r2]
	bl Debug_Print0
_02057904:
	ldr r0, _02057A34 ; =_020A344C
	bl Debug_Print0
	mov r0, sl
	bl GetMaxMembersAllowed
	mov r8, #0
	ldr r1, _02057A28 ; =TEAM_MEMBER_TABLE_PTR
	mov r6, #1
	ldr r1, [r1]
	mov r7, r0
	add r0, r1, #0x9000
	ldr sl, [r0, #0x84c]
	mov sb, r8
	mov fp, sl
	mov r5, r8
	mov r3, r8
	mov r4, r6
	mov r0, r8
	mov r1, r6
	b _020579A4
_02057950:
	ldrb r2, [fp]
	tst r2, #1
	movne ip, r6
	moveq ip, r5
	tst ip, #0xff
	beq _0205799C
	tst r2, #2
	movne r2, r4
	moveq r2, r3
	tst r2, #0xff
	beq _0205799C
	ldrb r2, [fp, #1]
	cmp r2, #0
	movne r2, r1
	moveq r2, r0
	tst r2, #0xff
	movne r0, sb, lsl #0x10
	movne r8, r0, asr #0x10
	bne _020579AC
_0205799C:
	add sb, sb, #1
	add fp, fp, #0x68
_020579A4:
	cmp sb, #4
	blt _02057950
_020579AC:
	mov sb, #0
	mov r6, #1
	mov fp, sb
	mov r5, r6
	mov r4, sb
_020579C0:
	ldrb r0, [sl]
	tst r0, #1
	movne r1, r5
	moveq r1, fp
	tst r1, #0xff
	beq _02057A08
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	cmpne r8, sb
	beq _02057A08
	cmp r6, r7
	addlt r6, r6, #1
	blt _02057A08
	strb r4, [sl]
	ldrsh r0, [sl, #8]
	bl sub_020566C4
_02057A08:
	add sb, sb, #1
	cmp sb, #4
	add sl, sl, #0x68
	blt _020579C0
	bl sub_02058064
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02057A24: .word _020A340C
_02057A28: .word TEAM_MEMBER_TABLE_PTR
_02057A2C: .word _020A336C
_02057A30: .word _020A343C
_02057A34: .word _020A344C
	arm_func_end sub_020577BC

	arm_func_start sub_02057A38
sub_02057A38: ; 0x02057A38
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mvn r0, #0
	cmp r6, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_020568A4
	ldr r1, _02057AC0 ; =TEAM_MEMBER_TABLE_PTR
	mov r2, #0x68
	ldr r1, [r1]
	mov r4, r6, lsl #1
	add r1, r1, #0x9000
	ldr r5, [r1, #0x870]
	ldr r3, [r1, #0x84c]
	ldrsh r4, [r5, r4]
	sub r1, r2, #0x69
	mla r5, r6, r2, r3
	mov r7, r0
	cmp r4, r1
	beq _02057AB4
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl sub_020530D4
	strh r6, [r5, #0xa]
	ldrb r0, [r5]
	cmp r4, r7
	orr r0, r0, #2
	strb r0, [r5]
	moveq r0, #1
	streqb r0, [r5, #1]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02057AB4:
	mov r0, #0
	strb r0, [r5]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02057AC0: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02057A38

	arm_func_start sub_02057AC4
sub_02057AC4: ; 0x02057AC4
	stmdb sp!, {r4, lr}
	mov r4, #0
_02057ACC:
	mov r0, r4
	bl sub_02057A38
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	cmp r4, #4
	blt _02057ACC
	ldmia sp!, {r4, pc}
	arm_func_end sub_02057AC4

	arm_func_start sub_02057AEC
sub_02057AEC: ; 0x02057AEC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	bl IsLevelResetDungeon
	cmp r4, #0xff
	moveq sl, #0
	beq _02057B10
	mov r0, r4
	bl IsLevelResetDungeon
	mov sl, r0
_02057B10:
	bl GetGameMode
	cmp r0, #5
	movne r0, #1
	moveq r0, #0
	and r7, r0, #0xff
	bl sub_02057C40
	bl RemoveActiveMembersFromMainTeam
	mov sb, #0
	ldr r0, _02057C3C ; =TEAM_MEMBER_TABLE_PTR
	mov r6, #1
	ldr r0, [r0]
	mov r5, sb
	add r0, r0, #0x9000
	ldr r8, [r0, #0x84c]
	mov fp, sb
	mov r4, r6
_02057B50:
	ldrb r0, [r8]
	tst r0, #1
	movne r0, r6
	moveq r0, r5
	tst r0, #0xff
	beq _02057C14
	ldrsh r0, [r8, #8]
	bl CheckTeamMemberIdx
	cmp r0, #0
	bne _02057C14
	ldrsh r0, [r8, #0xc]
	bl GetBaseFormCastformCherrimDeoxys
	strh r0, [r8, #0xc]
	ldrsh r0, [r8, #8]
	bl IsMonsterIdInNormalRange
	cmp r0, #0
	beq _02057C14
	ldrb r0, [r8, #1]
	cmp r0, #0
	movne r0, r4
	moveq r0, fp
	tst r0, #0xff
	ldrsh r0, [r8, #8]
	beq _02057BB8
	bl TryAddMonsterToActiveTeam
	b _02057BBC
_02057BB8:
	bl sub_02056554
_02057BBC:
	cmp sl, #0
	beq _02057BE8
	mov r0, sb, lsl #0x10
	mov r0, r0, asr #0x10
	bl sub_02058138
	mov r2, sb, lsl #0x10
	ldrsh r1, [r8, #8]
	mov r0, r8
	mov r2, r2, asr #0x10
	bl sub_020530D4
	b _02057C14
_02057BE8:
	cmp r7, #0
	beq _02057C00
	ldrsh r0, [r8, #8]
	mov r1, r8
	bl sub_0205349C
	b _02057C14
_02057C00:
	ldrsh r1, [r8, #8]
	mov r2, sb, lsl #0x10
	mov r0, r8
	mov r2, r2, asr #0x10
	bl sub_020530D4
_02057C14:
	add sb, sb, #1
	cmp sb, #4
	add r8, r8, #0x68
	blt _02057B50
	ldr r0, _02057C3C ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	add r0, r0, #0x9000
	ldrb r0, [r0, #0x877]
	bl sub_02057464
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02057C3C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02057AEC

	arm_func_start sub_02057C40
sub_02057C40: ; 0x02057C40
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r0, _02057CE4 ; =TEAM_MEMBER_TABLE_PTR
	mov sb, #0
	ldr r0, [r0]
	mov r7, #1
	add r0, r0, #0x9000
	ldr r8, [r0, #0x84c]
	mov r6, sb
	mov r4, sb
	mov r5, r7
_02057C68:
	ldrb r0, [r8]
	tst r0, #1
	movne r0, r7
	moveq r0, r6
	tst r0, #0xff
	beq _02057CC8
	ldrb r0, [r8, #0x3e]
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _02057CC8
	ldrb r0, [r8, #0x3e]
	bic r0, r0, #8
	strb r0, [r8, #0x3e]
	ldrsh r0, [r8, #0x42]
	cmp r0, #0xb7
	bne _02057CC8
	add r0, r8, #0x3e
	bl sub_0200D8AC
	bl AddMoneyCarried
	mov r0, sb, lsl #0x10
	mov r0, r0, asr #0x10
	bl sub_02058138
_02057CC8:
	add sb, sb, #1
	cmp sb, #4
	add r8, r8, #0x68
	blt _02057C68
	bl CleanStickyItemsInBag
	bl RemovePokeItemsInBag
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02057CE4: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02057C40

	arm_func_start sub_02057CE8
sub_02057CE8: ; 0x02057CE8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, #0
	mov r7, #1
	mov r6, r8
	mov r4, r8
	mov r5, r7
_02057D00:
	mov r0, r8
	bl GetActiveTeamMember
	ldrb r1, [r0]
	tst r1, #1
	movne r1, r7
	moveq r1, r6
	tst r1, #0xff
	beq _02057D40
	ldrb r1, [r0, #0x3e]
	tst r1, #1
	movne r1, r5
	moveq r1, r4
	tst r1, #0xff
	ldrneb r1, [r0, #0x3e]
	bicne r1, r1, #8
	strneb r1, [r0, #0x3e]
_02057D40:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #4
	blt _02057D00
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02057CE8

	arm_func_start RefillTeam
RefillTeam: ; 0x02057D58
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r0, _02057DF8 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, #0
	ldr r0, [r0]
	add r0, r0, #0x9000
	ldr r4, [r0, #0x84c]
_02057D70:
	ldrb r0, [r4]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02057DE4
	ldrsh r1, [r4, #0x10]
	mov r0, r4
	strh r1, [r4, #0xe]
	bl sub_02058810
	mov r6, #0
	add r7, r4, #0x1c
	mov r8, r6
	mov sb, #1
_02057DA8:
	add r0, r4, r6, lsl #3
	ldrb r0, [r0, #0x1c]
	tst r0, #1
	movne r0, sb
	moveq r0, r8
	tst r0, #0xff
	beq _02057DD4
	add r0, r7, r6, lsl #3
	bl GetMaxPp
	add r1, r4, r6, lsl #3
	strb r0, [r1, #0x22]
_02057DD4:
	add r6, r6, #1
	cmp r6, #4
	blt _02057DA8
	strh r5, [r4, #0xa]
_02057DE4:
	add r5, r5, #1
	cmp r5, #4
	add r4, r4, #0x68
	blt _02057D70
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02057DF8: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end RefillTeam

	arm_func_start sub_02057DFC
sub_02057DFC: ; 0x02057DFC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02057E8C ; =TEAM_MEMBER_TABLE_PTR
	mov r0, #0
	ldr r1, [r1]
	mov ip, #1
	add r1, r1, #0x9000
	ldr r6, [r1, #0x84c]
	mov r3, r0
	mov r4, r0
	mov r5, ip
	mov lr, r0
_02057E28:
	ldrb r1, [r6]
	tst r1, #1
	movne r1, r5
	moveq r1, r4
	tst r1, #0xff
	beq _02057E78
	mov r7, lr
_02057E44:
	add r1, r6, r7, lsl #3
	ldrb r1, [r1, #0x1c]
	tst r1, #1
	movne r1, ip
	moveq r1, r3
	tst r1, #0xff
	addne r2, r6, r7, lsl #3
	ldrneb r1, [r2, #0x1c]
	add r7, r7, #1
	andne r1, r1, #0xf
	strneb r1, [r2, #0x1c]
	cmp r7, #4
	blt _02057E44
_02057E78:
	add r0, r0, #1
	cmp r0, #4
	add r6, r6, #0x68
	blt _02057E28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02057E8C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02057DFC

	arm_func_start sub_02057E90
sub_02057E90: ; 0x02057E90
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _02057EF0 ; =TEAM_MEMBER_TABLE_PTR
	mov r4, #0
	ldr r0, [r0]
	mov r6, r4
	add r0, r0, #0x9000
	ldr r8, [r0, #0x84c]
	mov r7, #1
	mov r5, r4
_02057EB4:
	ldrb r0, [r8]
	tst r0, #1
	movne r0, r7
	moveq r0, r6
	tst r0, #0xff
	beq _02057EDC
	ldrsh r0, [r8, #8]
	bl CheckTeamMemberIdx
	cmp r0, #0
	strneb r5, [r8]
_02057EDC:
	add r4, r4, #1
	cmp r4, #4
	add r8, r8, #0x68
	blt _02057EB4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02057EF0: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02057E90

	arm_func_start sub_02057EF4
sub_02057EF4: ; 0x02057EF4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r0, _02058060 ; =TEAM_MEMBER_TABLE_PTR
	mov r8, #0
	ldr r0, [r0]
	add r0, r0, #0x9000
	ldr r7, [r0, #0x84c]
_02057F0C:
	ldrb r0, [r7]
	tst r0, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	bne _02057F38
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0205804C
_02057F38:
	ldrsh sb, [r7, #8]
	ldrsh r1, [r7, #0x10]
	mov r0, r7
	strh r1, [r7, #0xe]
	bl sub_02058810
	mov sl, #0
	add r5, r7, #0x1c
	mov fp, sl
	mov r6, #1
	mov r4, sl
_02057F60:
	add r0, r7, sl, lsl #3
	ldrb r0, [r0, #0x1c]
	tst r0, #1
	movne r0, r6
	moveq r0, fp
	tst r0, #0xff
	beq _02057F90
	add r0, r5, sl, lsl #3
	bl GetMaxPp
	add r1, r7, sl, lsl #3
	strb r0, [r1, #0x22]
	strh r4, [r1, #0x1e]
_02057F90:
	add sl, sl, #1
	cmp sl, #4
	blt _02057F60
	strh r8, [r7, #0xa]
	ldrb r1, [r7]
	mov r0, sb
	bic r2, r1, #8
	and r1, r2, #0xff
	orr r1, r1, #1
	strb r1, [r7]
	bl CheckTeamMemberIdx
	cmp r0, #0
	mov r0, sb
	mov r1, #0
	bne _02058048
	bl sub_02056460
	cmp r0, #0
	beq _02057FE4
	mov r0, sb
	mov r1, #0
	bl sub_020565F4
_02057FE4:
	mov r0, sb
	mov r1, #2
	bl sub_02056460
	cmp r0, #0
	beq _02058004
	mov r0, sb
	mov r1, #2
	bl sub_020565F4
_02058004:
	mov r0, sb
	mov r1, #0
	bl sub_02056504
	cmp r0, #0
	beq _02058024
	mov r0, sb
	mov r1, #0
	bl sub_020565F4
_02058024:
	mov r0, sb
	mov r1, #2
	bl sub_02056504
	cmp r0, #0
	beq _0205804C
	mov r0, sb
	mov r1, #2
	bl sub_020565F4
	b _0205804C
_02058048:
	bl sub_020565F4
_0205804C:
	add r8, r8, #1
	cmp r8, #4
	add r7, r7, #0x68
	blt _02057F0C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02058060: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02057EF4

	arm_func_start sub_02058064
sub_02058064: ; 0x02058064
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _020580C0 ; =TEAM_MEMBER_TABLE_PTR
	mov r4, #0
	ldr r0, [r0]
	mov r5, r4
	add r0, r0, #0x9000
	ldr r7, [r0, #0x84c]
	mov r6, #1
_02058084:
	ldrb r0, [r7]
	tst r0, #1
	movne r0, r6
	moveq r0, r5
	tst r0, #0xff
	beq _020580A4
	add r0, r7, #0x5a
	bl ShuffleHiddenPower
_020580A4:
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	cmp r4, #4
	add r7, r7, #0x68
	blt _02058084
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020580C0: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02058064

	arm_func_start sub_020580C4
sub_020580C4: ; 0x020580C4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _02058134 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, #0
	ldr r1, [r1]
	add r2, r5, #1
	add r1, r1, #0x9000
	ldr r4, [r1, #0x84c]
	and r6, r2, #0xff
	strb r5, [r0]
	mov ip, r5
	mov lr, #1
	mov r3, r5
_020580F4:
	ldrb r1, [r4]
	add r4, r4, #0x68
	tst r1, #1
	movne r1, lr
	moveq r1, ip
	tst r1, #0xff
	addeq r1, r0, r5
	streqb r3, [r1, #1]
	addne r1, r0, r5
	addne r2, r6, #1
	strneb r6, [r1, #1]
	add r5, r5, #1
	andne r6, r2, #0xff
	cmp r5, #4
	blt _020580F4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02058134: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_020580C4

	arm_func_start sub_02058138
sub_02058138: ; 0x02058138
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _020581EC ; =TEAM_MEMBER_TABLE_PTR
	mov r1, #0x68
	ldr r2, [r2]
	smulbb r1, r0, r1
	add r0, r2, #0x9000
	ldr r2, [r0, #0x84c]
	ldrb r0, [r2, r1]
	add r3, r2, r1
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _020581E0
	ldrb r1, [r3, #0x3e]
	tst r1, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	ldrneb r0, [r3, #0x3f]
	cmpne r0, #0
	beq _020581E0
	tst r1, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _020581E0
	ldrh r1, [r3, #0x3e]
	add r0, r3, #0x3e
	strh r1, [sp]
	ldrh r2, [r3, #0x40]
	ldrb r1, [sp]
	strh r2, [sp, #2]
	ldrh r2, [r3, #0x42]
	bic r1, r1, #0x10
	strh r2, [sp, #4]
	strb r1, [sp]
	bl ItemZInit
	add r0, sp, #0
	bl RemoveHolderForItemInBag
	b _020581E4
_020581E0:
	mov r0, #0
_020581E4:
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_020581EC: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02058138

	arm_func_start ClearItem
ClearItem: ; 0x020581F0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	ldr r2, _020582DC ; =TEAM_MEMBER_TABLE_PTR
	cmp r0, #0
	ldr r2, [r2]
	add r2, r2, #0x9000
	ldr r2, [r2, #0x84c]
	beq _020582D0
	mov r8, #0
	mov r7, #1
	mov r6, r8
	mov r4, r8
	mov r5, r7
	mov r3, r8
	mov ip, r7
	b _020582C8
_02058230:
	ldrb lr, [r2]
	tst lr, #1
	movne sb, r7
	moveq sb, r6
	tst sb, #0xff
	beq _020582C0
	ldrb sb, [r2, #0x3e]
	tst sb, #1
	movne lr, r5
	moveq lr, r4
	tst lr, #0xff
	beq _020582C0
	ldrb lr, [r2, #0x3f]
	cmp lr, r0
	bne _020582C0
	cmp r1, #0
	beq _02058288
	tst sb, #8
	movne sb, ip
	moveq sb, r3
	tst sb, #0xff
	bne _020582C0
_02058288:
	ldrh r1, [r2, #0x3e]
	add r0, r2, #0x3e
	strh r1, [sp]
	ldrh r3, [r2, #0x40]
	ldrb r1, [sp]
	strh r3, [sp, #2]
	ldrh r2, [r2, #0x42]
	bic r1, r1, #0x10
	strh r2, [sp, #4]
	strb r1, [sp]
	bl ItemZInit
	add r0, sp, #0
	bl RemoveHolderForItemInBag
	b _020582D4
_020582C0:
	add r8, r8, #1
	add r2, r2, #0x68
_020582C8:
	cmp r8, #4
	blt _02058230
_020582D0:
	mov r0, #0
_020582D4:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_020582DC: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end ClearItem

	arm_func_start sub_020582E0
sub_020582E0: ; 0x020582E0
	ldr ip, _020582EC ; =ClearItem
	mov r1, #1
	bx ip
	.align 2, 0
_020582EC: .word ClearItem
	arm_func_end sub_020582E0

	arm_func_start sub_020582F0
sub_020582F0: ; 0x020582F0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r3, _0205845C ; =TEAM_MEMBER_TABLE_PTR
	mov r2, #0x68
	ldr r3, [r3]
	smulbb r2, r0, r2
	add r0, r3, #0x9000
	ldr r3, [r0, #0x84c]
	mov r5, r1
	ldrb r0, [r3, r2]
	add r4, r3, r2
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02058450
	mov r0, r5
	bl GetItemAtIdx
	ldrb r2, [r4, #0x3e]
	mov r1, r0
	tst r2, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02058404
	ldrb r0, [r4, #0x3f]
	cmp r0, #0
	bne _02058374
	tst r2, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _02058448
_02058374:
	ldrh r2, [r4, #0x3e]
	add r0, sp, #6
	strh r2, [sp, #6]
	ldrh r3, [r4, #0x40]
	ldrb r2, [sp, #6]
	strh r3, [sp, #8]
	ldrh ip, [r4, #0x42]
	bic r3, r2, #0x10
	strh ip, [sp, #0xa]
	ldrh r2, [r1]
	strh r2, [sp]
	ldrh ip, [r1, #2]
	ldrb r2, [sp]
	strh ip, [sp, #2]
	ldrh ip, [r1, #4]
	bic r1, r2, #0x10
	strh ip, [sp, #4]
	ldrsh r2, [r4, #0xa]
	add r2, r2, #1
	strb r2, [sp, #1]
	strb r1, [sp]
	strb r3, [sp, #6]
	bl RemoveHolderForItemInBag
	ldrh r2, [sp]
	add r1, sp, #0
	mov r0, r5
	strh r2, [r4, #0x3e]
	ldrh r2, [sp, #2]
	strh r2, [r4, #0x40]
	ldrh r2, [sp, #4]
	strh r2, [r4, #0x42]
	ldrsh r2, [r4, #0xa]
	add r2, r2, #1
	and r2, r2, #0xff
	bl SetHolderForItemInBag
	b _02058448
_02058404:
	ldrh r2, [r1]
	mov r0, r5
	strh r2, [r4, #0x3e]
	ldrh r2, [r1, #2]
	strh r2, [r4, #0x40]
	ldrh r2, [r1, #4]
	strh r2, [r4, #0x42]
	ldrsh r2, [r4, #0xa]
	add r2, r2, #1
	strb r2, [r4, #0x3f]
	ldrb r2, [r4, #0x3e]
	bic r2, r2, #0x10
	strb r2, [r4, #0x3e]
	ldrsh r2, [r4, #0xa]
	add r2, r2, #1
	and r2, r2, #0xff
	bl SetHolderForItemInBag
_02058448:
	mov r0, #1
	b _02058454
_02058450:
	mov r0, #0
_02058454:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0205845C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_020582F0

	arm_func_start sub_02058460
sub_02058460: ; 0x02058460
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r2, r0
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020584F4 ; =TEAM_MEMBER_TABLE_PTR
	sub r1, r1, #1
	mov ip, r1, lsl #0x10
	ldr r1, [r0]
	mov r0, #0
	add r1, r1, #0x9000
	mov r4, r0
	mov r5, #1
	mov r3, #0x68
	b _020584E4
_0205849C:
	smulbb r6, r0, r3
	ldr r7, [r1, #0x84c]
	ldrb lr, [r7, r6]
	add r6, r7, r6
	tst lr, #1
	movne r7, r5
	moveq r7, r4
	tst r7, #0xff
	beq _020584D8
	ldrsh lr, [r6, #0xa]
	cmp lr, ip, asr #16
	bne _020584D8
	mov r1, r2
	bl sub_020582F0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020584D8:
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
_020584E4:
	cmp r0, #4
	blt _0205849C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020584F4: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02058460

	arm_func_start sub_020584F8
sub_020584F8: ; 0x020584F8
	bx lr
	arm_func_end sub_020584F8

	arm_func_start sub_020584FC
sub_020584FC: ; 0x020584FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl GetActiveTeamMember
	mov r1, r0
	ldrb r0, [r1, #1]
	add r1, r1, #0x5e
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	mov r0, r4
	and r2, r2, #0xff
	bl sub_02054FA0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020584FC

	arm_func_start sub_02058534
sub_02058534: ; 0x02058534
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	mov r0, r1
	bl GetActiveTeamMember
	mov r1, r0
	cmp r4, #0x44
	bne _02058578
	ldrb r0, [r1, #1]
	add r1, r1, #0x5e
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	mov r0, r5
	and r2, r2, #0xff
	bl sub_02054FA0
	ldmia sp!, {r3, r4, r5, pc}
_02058578:
	mov r0, r5
	mov r2, r4
	add r1, r1, #0x5e
	bl sub_02054F44
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02058534

	arm_func_start sub_0205858C
sub_0205858C: ; 0x0205858C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl GetActiveTeamMember
	mov r1, r0
	mov r0, r4
	add r1, r1, #0x5e
	mov r2, #0xa
	bl StrncpySimpleNoPadSafe
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205858C

	arm_func_start sub_020585B4
sub_020585B4: ; 0x020585B4
	ldrb r2, [r1, #1]
	ldr ip, _020585D4 ; =sub_02054FA0
	add r1, r1, #0x5e
	cmp r2, #0
	movne r2, #1
	moveq r2, #0
	and r2, r2, #0xff
	bx ip
	.align 2, 0
_020585D4: .word sub_02054FA0
	arm_func_end sub_020585B4

	arm_func_start ChangeGiratinaFormIfSkyDungeon
ChangeGiratinaFormIfSkyDungeon: ; 0x020585D8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	bl IsSkyExclusiveDungeon
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r8, #0
	ldr r4, _02058640 ; =0x00000211
	mov r6, r8
	mov r7, #1
	mov r5, #0x218
_020585FC:
	mov r0, r8
	bl GetActiveTeamMember
	ldrb r1, [r0]
	tst r1, #1
	movne r1, r7
	moveq r1, r6
	tst r1, #0xff
	beq _02058628
	ldrsh r1, [r0, #0xc]
	cmp r1, r4
	streqh r5, [r0, #0xc]
_02058628:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #4
	blt _020585FC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02058640: .word 0x00000211
	arm_func_end ChangeGiratinaFormIfSkyDungeon

	arm_func_start sub_02058644
sub_02058644: ; 0x02058644
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_02058650:
	mov r0, r4
	mov r1, r5
	bl sub_02058674
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	cmp r4, #4
	blt _02058650
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02058644

	arm_func_start sub_02058674
sub_02058674: ; 0x02058674
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02056228
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl GetActiveTeamMember
	ldrb r1, [r0]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	ldmeqia sp!, {r3, r4, r5, pc}
	tst r4, #2
	beq _020586C8
	ldrsh r1, [r0, #0xc]
	cmp r1, #0x218
	ldreq r1, _020586E8 ; =0x00000211
	streqh r1, [r0, #0xc]
	ldmeqia sp!, {r3, r4, r5, pc}
_020586C8:
	tst r4, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrsh r2, [r0, #0xc]
	ldr r1, _020586EC ; =0x00000217
	cmp r2, r1
	subeq r1, r1, #1
	streqh r1, [r0, #0xc]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020586E8: .word 0x00000211
_020586EC: .word 0x00000217
	arm_func_end sub_02058674

	arm_func_start sub_020586F0
sub_020586F0: ; 0x020586F0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl GetActiveTeamMember
	mov r4, r0
	ldrb r0, [r4]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0205878C
	mov r0, r5
	bl GetItemMoveId16
	mov ip, #0
	mov r2, ip
	mov r3, #1
	b _02058768
_02058730:
	add r1, r4, ip, lsl #3
	ldrb r1, [r1, #0x1c]
	tst r1, #1
	movne r1, r3
	moveq r1, r2
	tst r1, #0xff
	beq _0205875C
	add r1, r4, ip, lsl #3
	ldrh r1, [r1, #0x20]
	cmp r0, r1
	beq _02058770
_0205875C:
	add r1, ip, #1
	mov r1, r1, lsl #0x10
	mov ip, r1, asr #0x10
_02058768:
	cmp ip, #4
	blt _02058730
_02058770:
	cmp ip, #4
	blt _0205878C
	ldrsh r1, [r4, #0xc]
	bl sub_02053D1C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_0205878C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020586F0

	arm_func_start sub_02058794
sub_02058794: ; 0x02058794
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0204E584
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl GetActiveTeamMember
	mov r4, r0
	ldrsh r0, [r4, #8]
	bl GetTeamMember
	mov r1, r4
	bl sub_020534BC
	ldmia sp!, {r4, pc}
	arm_func_end sub_02058794

	arm_func_start sub_020587C8
sub_020587C8: ; 0x020587C8
	stmdb sp!, {r3, lr}
	bl sub_02057E90
	mvn r0, #0
	bl sub_02058644
	bl RefillTeam
	ldmia sp!, {r3, pc}
	arm_func_end sub_020587C8

	arm_func_start sub_020587E0
sub_020587E0: ; 0x020587E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02057DFC
	bl sub_02057E90
	mvn r0, #0
	bl sub_02058644
	bl RefillTeam
	mov r0, r4
	bl sub_02057AEC
	mov r0, #0
	bl sub_02056318
	ldmia sp!, {r4, pc}
	arm_func_end sub_020587E0

	arm_func_start sub_02058810
sub_02058810: ; 0x02058810
	mov r2, #0x64
	strh r2, [r0, #0x48]
	mov r1, #0
	strh r2, [r0, #0x44]
	strh r1, [r0, #0x4a]
	strh r1, [r0, #0x46]
	bx lr
	arm_func_end sub_02058810

	arm_func_start sub_0205882C
sub_0205882C: ; 0x0205882C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x30
	ldr r1, _02058AA4 ; =0x000003E3
	mov r4, r0
	mov r3, #0
	add r2, sp, #0x14
	mov r0, #4
	str r3, [sp, #0x1c]
	bl DirectoryFileMngr_OpenDirectoryFile
	ldr r1, [sp, #0x14]
	add r0, sp, #0x1c
	bl HandleSir0Translation
	mov r0, r4, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, #0
	bl sub_02058ABC
	mov r0, r4, lsl #0x10
	ldr r5, [sp, #0x1c]
	mov r0, r0, asr #0x10
	mov r1, #0
	bl sub_02058ABC
	add r1, r5, #4
	mov r2, #0x40
	mov r3, #9
	bl sub_0201BFF0
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, #0
	bl sub_02058ABC
	add r1, r5, #0x24
	mov r2, #0x80
	mov r3, #9
	bl sub_0201BFF0
	add r0, r4, #2
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, #0
	bl sub_02058ABC
	add r1, r5, #0x64
	mov r2, #0x100
	mov r3, #9
	bl sub_0201BFF0
	add r0, sp, #0x14
	bl UnloadFile
	mov lr, #0
_020588E4:
	ldr r3, _02058AA8 ; =_020A3468
	ldr r5, _02058AAC ; =_022B578C
	add r2, r3, lr, lsl #4
	ldr r1, [r2, #8]
	ldr r0, _02058AB0 ; =0x000003FF
	add r1, r4, r1
	add r7, r5, lr, lsl #4
	mov sb, #0x400
	ldr r3, [r3, lr, lsl #4]
	and r8, r1, r0
	ldr r2, [r2, #4]
	mov r1, r3, lsl #0x1e
	mov r5, #0
	mov r0, r2, lsl #0x1e
	rsb sb, sb, #0
	mov r2, r5
	mov r3, #1
_02058928:
	mov ip, r5, lsl #3
	ldrh sl, [r7, ip]
	add r6, r7, r5, lsl #3
	cmp r5, #1
	bic sl, sl, #0x100
	strh sl, [r7, ip]
	ldrh sl, [r7, ip]
	add r5, r5, #1
	bic sl, sl, #0x200
	strh sl, [r7, ip]
	ldrh sl, [r6]
	moveq ip, r3
	movne ip, r2
	bic sl, sl, #0xc00
	strh sl, [r6]
	ldrh sl, [r6]
	mov ip, ip, lsl #0x1e
	cmp r5, #2
	orr sl, sl, ip, lsr #20
	strh sl, [r6]
	ldrh ip, [r6]
	bic ip, ip, #0x1000
	strh ip, [r6]
	ldrh ip, [r6]
	bic ip, ip, #0x2000
	strh ip, [r6]
	ldrh ip, [r6]
	orr ip, ip, #0x2000
	strh ip, [r6]
	ldrh ip, [r6]
	bic ip, ip, #0xc000
	strh ip, [r6]
	ldrh ip, [r6]
	orr ip, ip, r1, lsr #16
	strh ip, [r6]
	ldrh ip, [r6, #2]
	bic ip, ip, #0x3e00
	strh ip, [r6, #2]
	ldrh ip, [r6, #2]
	bic ip, ip, #0xc000
	strh ip, [r6, #2]
	ldrh ip, [r6, #2]
	orr ip, ip, r0, lsr #16
	strh ip, [r6, #2]
	ldrh ip, [r6, #4]
	and ip, ip, sb
	strh ip, [r6, #4]
	ldrh ip, [r6, #4]
	orr ip, ip, r8
	strh ip, [r6, #4]
	ldrh ip, [r6, #4]
	bic ip, ip, #0xc00
	strh ip, [r6, #4]
	ldrh ip, [r6, #4]
	orr ip, ip, #0xc00
	strh ip, [r6, #4]
	ldrh ip, [r6, #4]
	bic ip, ip, #0xf000
	strh ip, [r6, #4]
	ldrh ip, [r6, #6]
	bic ip, ip, #1
	strh ip, [r6, #6]
	ldrh ip, [r6, #6]
	bic ip, ip, #2
	strh ip, [r6, #6]
	blt _02058928
	add lr, lr, #1
	cmp lr, #3
	blt _020588E4
	ldr r1, _02058AB4 ; =0x000003E5
	add r2, sp, #0xc
	mov r0, #4
	mov r3, #0
	bl DirectoryFileMngr_OpenDirectoryFile
	ldr r1, [sp, #0xc]
	add r0, sp, #8
	bl HandleSir0Translation
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	add r0, sp, #0x20
	mov r2, #1
	mov r3, #0x20
	bl sub_0201F598
	ldr r0, _02058AB8 ; =_020AFC4C
	add r1, sp, #0x20
	ldr r0, [r0]
	mov r2, #0
	bl sub_0201B43C
	add r0, sp, #0xc
	bl UnloadFile
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02058AA4: .word 0x000003E3
_02058AA8: .word _020A3468
_02058AAC: .word _022B578C
_02058AB0: .word 0x000003FF
_02058AB4: .word 0x000003E5
_02058AB8: .word _020AFC4C
	arm_func_end sub_0205882C

	arm_func_start sub_02058ABC
sub_02058ABC: ; 0x02058ABC
	ldr r3, _02058AF4 ; =_020AFC4C
	mov r2, #0x70
	ldr ip, [r3]
	ldr r3, _02058AF8 ; =_020AFC28
	mla r2, r1, r2, ip
	ldrh r1, [r2, #0xc]
	ldr ip, [r2, #0x64]
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #30
	add r1, r2, r1, ror #30
	mov r1, r1, lsl #1
	ldrsh r1, [r3, r1]
	smlabb r0, r0, r1, ip
	bx lr
	.align 2, 0
_02058AF4: .word _020AFC4C
_02058AF8: .word _020AFC28
	arm_func_end sub_02058ABC

	arm_func_start sub_02058AFC
sub_02058AFC: ; 0x02058AFC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	cmp r0, #0x32
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmpne r0, #0x33
	beq _02058B38
	ldr r1, _02058C08 ; =0xFFFFFD76
	add r1, r0, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r1, #1
	bhi _02058B40
_02058B38:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02058B40:
	bl GetShadowSize
	ldrb r1, [sp, #0x24]
	mov r7, #0x200
	ldrsh lr, [r6]
	cmp r1, #0
	ldr r1, _02058C0C ; =_022B578C
	movne r2, #1
	moveq r2, #0
	add r1, r1, r0, lsl #4
	add r1, r1, r2, lsl #3
	ldr sb, _02058C10 ; =_020A3450
	ldrh r8, [r1, #2]
	ldrsh ip, [r5, #0x24]
	ldrsh r3, [r6, #2]
	ldrsh r2, [r5, #0x26]
	rsb r7, r7, #0
	and r5, r8, r7
	strh r5, [r1, #2]
	ldr r0, [sb, r0, lsl #2]
	add r5, lr, ip
	add r0, r5, r0
	ldrh r5, [r1, #2]
	and r0, r0, r7, lsr #23
	add r2, r3, r2
	orr r0, r5, r0
	strh r0, [r1, #2]
	sub r0, r2, #2
	sub r2, r0, #2
	mov r3, r2, lsl #0x14
	ldrh r5, [r1, #6]
	ldr r0, _02058C14 ; =0xFFFF000F
	ldr r2, [sp, #0x20]
	and r0, r5, r0
	strh r0, [r1, #6]
	ldrh r5, [r1, #6]
	ldr r0, _02058C18 ; =_020AFC4C
	orr r3, r5, r3, lsr #16
	strh r3, [r1, #6]
	ldrh r5, [r1, #4]
	mov r3, r2, lsl #0x1e
	ldr r0, [r0]
	bic r2, r5, #0xc00
	strh r2, [r1, #4]
	ldrh r5, [r1, #4]
	mov r2, r4
	orr r3, r5, r3, lsr #20
	strh r3, [r1, #4]
	bl sub_0201B9F8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02058C08: .word 0xFFFFFD76
_02058C0C: .word _022B578C
_02058C10: .word _020A3450
_02058C14: .word 0xFFFF000F
_02058C18: .word _020AFC4C
	arm_func_end sub_02058AFC

	arm_func_start GetIqSkillStringId
GetIqSkillStringId: ; 0x02058C1C
#ifdef EUROPE
	add r0, r0, #0xe7
#else
	add r0, r0, #0xe5
#endif
	add r0, r0, #0x2600
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end GetIqSkillStringId

	arm_func_start sub_02058C30
sub_02058C30: ; 0x02058C30
	ldr ip, _02058C38 ; =CopyTacticString
	bx ip
	.align 2, 0
_02058C38: .word CopyTacticString
	arm_func_end sub_02058C30

	arm_func_start DoesTacticFollowLeader
DoesTacticFollowLeader: ; 0x02058C3C
	ldr r1, _02058C48 ; =_020A190C
	ldrb r0, [r1, r0]
	bx lr
	.align 2, 0
_02058C48: .word _020A190C
	arm_func_end DoesTacticFollowLeader

	arm_func_start GetUnlockedTactics
GetUnlockedTactics: ; 0x02058C4C
	stmdb sp!, {r3, lr}
	mov lr, #0
	ldr r3, _02058C98 ; =TACTICS_UNLOCK_LEVEL_TABLE
	mov ip, lr
_02058C5C:
	mov r2, ip, lsl #1
	ldrsh r2, [r3, r2]
	cmp r2, r1
	strleb ip, [r0, lr]
	add ip, ip, #1
	addle lr, lr, #1
	cmp ip, #0xc
	blt _02058C5C
	mov r1, #0xb
	b _02058C8C
_02058C84:
	strb r1, [r0, lr]
	add lr, lr, #1
_02058C8C:
	cmp lr, #0xc
	blt _02058C84
	ldmia sp!, {r3, pc}
	.align 2, 0
_02058C98: .word TACTICS_UNLOCK_LEVEL_TABLE
	arm_func_end GetUnlockedTactics

	arm_func_start GetUnlockedTacticFlags
GetUnlockedTacticFlags: ; 0x02058C9C
	stmdb sp!, {r4, lr}
	mov r4, #0
	ldr lr, _02058CD4 ; =TACTICS_UNLOCK_LEVEL_TABLE
	mov r2, r4
	mov r3, #1
_02058CB0:
	mov ip, r4, lsl #1
	ldrsh ip, [lr, ip]
	cmp ip, r1
	strleb r3, [r0, r4]
	strgtb r2, [r0, r4]
	add r4, r4, #1
	cmp r4, #0xc
	blt _02058CB0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02058CD4: .word TACTICS_UNLOCK_LEVEL_TABLE
	arm_func_end GetUnlockedTacticFlags

	arm_func_start CanLearnIqSkill
CanLearnIqSkill: ; 0x02058CD8
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldr r2, _02058D00 ; =IQ_SKILLS
	ldr r1, [r2, r1, lsl #2]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_02058D00: .word IQ_SKILLS
	arm_func_end CanLearnIqSkill

	arm_func_start GetLearnableIqSkills
GetLearnableIqSkills: ; 0x02058D04
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, #0
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r5, r6
	ldr r4, _02058DA0 ; =IQ_GROUP_SKILLS
	mov fp, #0x19
	b _02058D74
_02058D28:
	mov r0, sb
	bl GetIqGroup
	mla r1, r0, fp, r4
	and r0, r5, #0xff
	ldrb r7, [r0, r1]
	cmp r7, #0xff
	beq _02058D7C
	cmp r7, #0x18
	bne _02058D58
	mov r0, #3
	bl GetPerformanceFlagWithChecks
	b _02058D64
_02058D58:
	mov r0, r8
	mov r1, r7
	bl CanLearnIqSkill
_02058D64:
	cmp r0, #0
	strneb r7, [sl, r6]
	addne r6, r6, #1
	add r5, r5, #1
_02058D74:
	cmp r5, #0x19
	blt _02058D28
_02058D7C:
	mov r1, r6
	mov r0, #0
	b _02058D90
_02058D88:
	strb r0, [sl, r1]
	add r1, r1, #1
_02058D90:
	cmp r1, #0x45
	blt _02058D88
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02058DA0: .word IQ_GROUP_SKILLS
	arm_func_end GetLearnableIqSkills

	arm_func_start DisableIqSkill
DisableIqSkill: ; 0x02058DA4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl IqSkillFlagTest
	cmp r0, #0
	beq _02058DE4
	mov r0, r5, asr #4
	add r0, r5, r0, lsr #27
	mov r2, r0, asr #5
	sub r0, r5, r2, lsl #5
	mov r1, #1
	mvn r0, r1, lsl r0
	ldr r1, [r4, r2, lsl #2]
	and r0, r1, r0
	str r0, [r4, r2, lsl #2]
	ldmia sp!, {r3, r4, r5, pc}
_02058DE4:
	mov r0, r4
	mov r1, r5
	bl EnableIqSkill
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end DisableIqSkill

	arm_func_start EnableIqSkill
EnableIqSkill: ; 0x02058DF4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _02058E64 ; =IQ_SKILL_RESTRICTIONS
	mov r3, r1, lsl #1
	ldrsh ip, [r2, r3]
	mov r3, #0
	mov r4, #1
_02058E0C:
	mov r5, r3, lsl #1
	ldrsh r5, [r2, r5]
	cmp ip, r5
	bne _02058E3C
	mov lr, r3, asr #4
	add lr, r3, lr, lsr #27
	mov r6, lr, asr #5
	sub lr, r3, r6, lsl #5
	mvn lr, r4, lsl lr
	ldr r5, [r0, r6, lsl #2]
	and r5, r5, lr
	str r5, [r0, r6, lsl #2]
_02058E3C:
	add r3, r3, #1
	cmp r3, #0x45
	blt _02058E0C
	mov ip, r1, lsr #5
	ldr r3, [r0, ip, lsl #2]
	sub r1, r1, ip, lsl #5
	mov r2, #1
	orr r1, r3, r2, lsl r1
	str r1, [r0, ip, lsl #2]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02058E64: .word IQ_SKILL_RESTRICTIONS
	arm_func_end EnableIqSkill

	arm_func_start GetSpeciesIqSkill
GetSpeciesIqSkill: ; 0x02058E68
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl GetIqGroup
	ldr r2, _02058E88 ; =IQ_GROUP_SKILLS
	mov r1, #0x19
	mla r1, r0, r1, r2
	ldrb r0, [r4, r1]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02058E88: .word IQ_GROUP_SKILLS
	arm_func_end GetSpeciesIqSkill

	arm_func_start DisableAllIqSkills
DisableAllIqSkills: ; 0x02058E8C
	mov r3, #0
	mov r2, r3
_02058E94:
	add r1, r3, #1
	mov r1, r1, lsl #0x10
	str r2, [r0, r3, lsl #2]
	mov r3, r1, asr #0x10
	cmp r3, #3
	blt _02058E94
	bx lr
	arm_func_end DisableAllIqSkills

	arm_func_start EnableAllLearnableIqSkills
EnableAllLearnableIqSkills: ; 0x02058EB0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x48
	mov r6, r0
	add r0, sp, #0
	bl GetLearnableIqSkills
	mov r0, r6
	bl DisableAllIqSkills
	mov r5, #0
	add r4, sp, #0
	b _02058EF4
_02058ED8:
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _02058EFC
	ldrb r1, [r4, r5]
	mov r0, r6
	bl EnableIqSkill
	add r5, r5, #1
_02058EF4:
	cmp r5, #0x45
	blt _02058ED8
_02058EFC:
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end EnableAllLearnableIqSkills

	arm_func_start IqSkillFlagTest
IqSkillFlagTest: ; 0x02058F04
	mov r3, r1, lsr #5
	ldr r2, [r0, r3, lsl #2]
	sub r0, r1, r3, lsl #5
	mov r1, #1
	tst r2, r1, lsl r0
	moveq r1, #0
	and r0, r1, #0xff
	bx lr
	arm_func_end IqSkillFlagTest

	arm_func_start GetNextIqSkill
GetNextIqSkill: ; 0x02058F24
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	bl GetIqGroup
	ldr r2, _02058F9C ; =IQ_GROUP_SKILLS
	mov r1, #0x19
	mla lr, r0, r1, r2
	mov r0, #0
	mov r1, r0
	mov r3, r0
	ldr r2, _02058FA0 ; =IQ_SKILLS
	b _02058F90
_02058F50:
	ldrb ip, [lr], #1
	cmp ip, #0xff
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp ip, #0
	beq _02058F8C
	ldr r5, [r2, ip, lsl #2]
	cmp r5, r4
	ble _02058F8C
	cmp r1, #0
	beq _02058F80
	cmp r5, r1
	bge _02058F8C
_02058F80:
	mov r1, r5, lsl #0x10
	mov r0, ip
	mov r1, r1, asr #0x10
_02058F8C:
	add r3, r3, #1
_02058F90:
	cmp r3, #0x19
	blt _02058F50
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02058F9C: .word IQ_GROUP_SKILLS
_02058FA0: .word IQ_SKILLS
	arm_func_end GetNextIqSkill

	arm_func_start sub_02058FA4
sub_02058FA4: ; 0x02058FA4
	ldr r0, _02058FC8 ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	add r0, r0, #0x9800
	ldrsh r0, [r0, #0x9c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_02058FC8: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02058FA4

	arm_func_start sub_02058FCC
sub_02058FCC: ; 0x02058FCC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, _0205905C ; =TEAM_MEMBER_TABLE_PTR
	ldrsb r2, [r5]
	ldr r0, [r3]
	add r1, r5, #2
	add r0, r0, #0x9000
	strb r2, [r0, #0x880]
	ldr r0, [r3]
	ldrb r4, [r5, #1]
	add r0, r0, #0x9000
	mov r2, #0x14
	strb r4, [r0, #0x881]
	ldr r0, [r3]
	add r0, r0, #0x82
	add r0, r0, #0x9800
	bl StrncpySimple
	add r8, r5, #0x18
	ldr r7, _0205905C ; =TEAM_MEMBER_TABLE_PTR
	mov r4, #0
	mov r5, #0x44
	mov r6, #0x4c
_02059028:
	ldr r0, [r7]
	mla r1, r4, r6, r8
	add r0, r0, #0x98
	add r0, r0, #0x9800
	mla r0, r4, r5, r0
	bl sub_02055F04
	add r4, r4, #1
	cmp r4, #4
	blt _02059028
	mov r0, #0xbe
	mov r1, #1
	bl sub_0204D018
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205905C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02058FCC

	arm_func_start GetExplorerMazeTeamName
GetExplorerMazeTeamName: ; 0x02059060
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _020590B8 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, r0
	ldr r0, [r1]
	add r0, r0, #0x1880
	add r4, r0, #0x8000
	bl sub_02058FA4
	cmp r0, #0
	beq _020590A8
	bl GetLanguageType
	ldrsb r1, [r4]
	cmp r1, r0
	bne _020590A8
	mov r0, r5
	add r1, r4, #2
	mov r2, #0xa
	bl StrncpySimpleNoPadSafe
	ldmia sp!, {r3, r4, r5, pc}
_020590A8:
	ldr r1, _020590BC ; =0x00000235
	mov r0, r5
	bl GetStringFromFileVeneer
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020590B8: .word TEAM_MEMBER_TABLE_PTR
_020590BC: .word 0x00000235
	arm_func_end GetExplorerMazeTeamName

	arm_func_start sub_020590C0
sub_020590C0: ; 0x020590C0
	ldr r0, _020590D8 ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	add r1, r0, #0x9000
	ldr r0, [r1, #0x878]
	ldr r1, [r1, #0x87c]
	bx lr
	.align 2, 0
_020590D8: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_020590C0

	arm_func_start sub_020590DC
sub_020590DC: ; 0x020590DC
	ldr r2, _020590F4 ; =TEAM_MEMBER_TABLE_PTR
	ldr r2, [r2]
	add r2, r2, #0x9000
	str r0, [r2, #0x878]
	str r1, [r2, #0x87c]
	bx lr
	.align 2, 0
_020590F4: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_020590DC

	arm_func_start GetExplorerMazeMonster
GetExplorerMazeMonster: ; 0x020590F8
	ldr r1, _02059114 ; =TEAM_MEMBER_TABLE_PTR
	mov r2, #0x44
	ldr r1, [r1]
	add r1, r1, #0x98
	add r1, r1, #0x9800
	smlabb r0, r0, r2, r1
	bx lr
	.align 2, 0
_02059114: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetExplorerMazeMonster

	arm_func_start WriteMonsterInfoToSave
WriteMonsterInfoToSave: ; 0x02059118
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl sub_02050990
	ldr r6, _0205921C ; =TEAM_MEMBER_TABLE_PTR
	ldr r5, _02059220 ; =0x0000022B
	mov r8, #0
	add r7, sp, #0
	mov r4, #0x44
_02059148:
	ldr r1, [r6]
	mov r0, r7
	mla r1, r8, r4, r1
	bl WriteMonsterToSave
	add r8, r8, #1
	cmp r8, r5
	blt _02059148
	ldr r1, _0205921C ; =TEAM_MEMBER_TABLE_PTR
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #0x40
	add r1, r1, #0x78
	add r1, r1, #0x9800
	bl CopyBitsTo
	ldr r1, _0205921C ; =TEAM_MEMBER_TABLE_PTR
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #4
	add r1, r1, #0x1880
	add r1, r1, #0x8000
	bl CopyBitsTo
	ldr r1, _0205921C ; =TEAM_MEMBER_TABLE_PTR
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #4
	add r1, r1, #0x81
	add r1, r1, #0x9800
	bl CopyBitsTo
	ldr r1, _0205921C ; =TEAM_MEMBER_TABLE_PTR
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #0x50
	add r1, r1, #0x82
	add r1, r1, #0x9800
	bl CopyBitsTo
	ldr r5, _0205921C ; =TEAM_MEMBER_TABLE_PTR
	mov r7, #0
	add r6, sp, #0
	mov r4, #0x44
_020591E4:
	ldr r1, [r5]
	mov r0, r6
	add r1, r1, #0x98
	add r1, r1, #0x9800
	mla r1, r7, r4, r1
	bl WriteMonsterToSave
	add r7, r7, #1
	cmp r7, #4
	blt _020591E4
	add r0, sp, #0
	bl sub_020509BC
	ldr r0, [sp, #8]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205921C: .word TEAM_MEMBER_TABLE_PTR
_02059220: .word 0x0000022B
	arm_func_end WriteMonsterInfoToSave

	arm_func_start ReadMonsterInfoFromSave
ReadMonsterInfoFromSave: ; 0x02059224
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl sub_02050974
	ldr r6, _0205932C ; =TEAM_MEMBER_TABLE_PTR
	ldr r5, _02059330 ; =0x0000022B
	mov r8, #0
	add r7, sp, #0
	mov r4, #0x44
_02059254:
	ldr r1, [r6]
	mov r0, r7
	mla r1, r8, r4, r1
	bl ReadMonsterFromSave
	add r8, r8, #1
	cmp r8, r5
	blt _02059254
	ldr r1, _0205932C ; =TEAM_MEMBER_TABLE_PTR
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #0x40
	add r1, r1, #0x78
	add r1, r1, #0x9800
	bl CopyBitsFrom
	ldr r1, _0205932C ; =TEAM_MEMBER_TABLE_PTR
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #4
	add r1, r1, #0x1880
	add r1, r1, #0x8000
	bl CopyBitsFrom
	ldr r1, _0205932C ; =TEAM_MEMBER_TABLE_PTR
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #4
	add r1, r1, #0x81
	add r1, r1, #0x9800
	bl CopyBitsFrom
	ldr r1, _0205932C ; =TEAM_MEMBER_TABLE_PTR
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #0x50
	add r1, r1, #0x82
	add r1, r1, #0x9800
	bl CopyBitsFrom
	ldr r5, _0205932C ; =TEAM_MEMBER_TABLE_PTR
	mov r7, #0
	add r6, sp, #0
	mov r4, #0x44
_020592F0:
	ldr r1, [r5]
	mov r0, r6
	add r1, r1, #0x98
	add r1, r1, #0x9800
	mla r1, r7, r4, r1
	bl ReadMonsterFromSave
	add r7, r7, #1
	cmp r7, #4
	blt _020592F0
	add r0, sp, #0
	bl sub_020509BC
	bl sub_0205523C
	ldr r0, [sp, #8]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205932C: .word TEAM_MEMBER_TABLE_PTR
_02059330: .word 0x0000022B
	arm_func_end ReadMonsterInfoFromSave

	arm_func_start WriteMonsterToSave
WriteMonsterToSave: ; 0x02059334
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #1
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #1
	mov r2, #7
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #4
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #2
	bl sub_020515C4
	mov r0, r5
	add r1, r4, #6
	mov r2, #7
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #7
	mov r2, #7
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #8
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xa
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xc
	mov r2, #8
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xd
	mov r2, #8
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xe
	mov r2, #8
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xf
	mov r2, #8
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x10
	mov r2, #0x18
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0x45
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x20
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x22
	bl CopyMovesetTo
	mov r0, r5
	add r1, r4, #0x3a
	mov r2, #0x50
	bl CopyBitsTo
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end WriteMonsterToSave

	arm_func_start ReadMonsterFromSave
ReadMonsterFromSave: ; 0x02059444
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r1, #0
	mov r2, #0x44
	bl memset
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #1
	mov r2, #7
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #4
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #2
	bl Copy16BitsFrom
	mov r0, r5
	add r1, r4, #6
	mov r2, #7
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #7
	mov r2, #7
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #8
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xa
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xc
	mov r2, #8
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xd
	mov r2, #8
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xe
	mov r2, #8
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xf
	mov r2, #8
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x10
	mov r2, #0x18
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0x45
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x20
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x22
	bl CopyMovesetFrom
	mov r0, r5
	add r1, r4, #0x3a
	mov r2, #0x50
	bl CopyBitsFrom
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ReadMonsterFromSave

	arm_func_start sub_0205956C
sub_0205956C: ; 0x0205956C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, _020597A4 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, r1
	ldr r1, [r2]
	mov r2, #1
	add r1, r1, #0x74
	add r1, r1, #0x9800
	add r1, r1, r5
	mov sl, r0
	bl CopyBitsTo
	ldr r1, _020597A4 ; =TEAM_MEMBER_TABLE_PTR
	mov r0, sl
	ldr r1, [r1]
	mov r2, #0x10
	add r1, r1, #0x850
	add r1, r1, #0x9000
	add r1, r1, r5, lsl #1
	bl CopyBitsTo
	ldr r6, _020597A4 ; =TEAM_MEMBER_TABLE_PTR
	mov r4, #0
	mov r7, #0x10
_020595C0:
	ldr r1, [r6]
	mov r0, sl
	add r1, r1, #0x56
	add r1, r1, #0x9800
	add r1, r1, r5, lsl #3
	mov r2, r7
	add r1, r1, r4, lsl #1
	bl CopyBitsTo
	add r4, r4, #1
	cmp r4, #4
	blt _020595C0
	mov r0, #0x1a0
	mul r8, r5, r0
	ldr fp, _020597A8 ; =_020A3498
	ldr r5, _020597A4 ; =TEAM_MEMBER_TABLE_PTR
	mov sb, #0
	mov r6, #4
	mov r4, #0x68
_02059608:
	ldr r1, [r5]
	mov r0, sl
	add r1, r1, #0x36c
	add r1, r1, #0x9000
	add r1, r1, r8
	mla r7, sb, r4, r1
	mov r1, r7
	mov r2, r6
	bl CopyBitsTo
	ldrb r0, [r7, #1]
	mov r2, #1
	cmp r0, #0
	movne r1, fp
	ldreq r1, _020597AC ; =_020A3499
	mov r0, sl
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #2
	mov r2, #7
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #3
	bl sub_020515C4
	mov r0, sl
	add r1, r7, #6
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #8
	mov r2, #0x10
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0xa
	mov r2, #0x10
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0xc
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0xe
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x10
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x12
	mov r2, #8
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x13
	mov r2, #8
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x14
	mov r2, #8
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x15
	mov r2, #8
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x18
	mov r2, #0x18
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x1c
	bl sub_02014B74
	mov r0, sl
	add r1, r7, #0x3e
	bl sub_0200DF74
	mov r0, sl
	add r1, r7, #0x44
	bl sub_020510C0
	mov r0, sl
	add r1, r7, #0x48
	bl sub_020510C0
	mov r0, sl
	add r1, r7, #0x4c
	mov r2, #0x45
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x58
	mov r2, #4
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x5a
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x5c
	mov r2, #5
	bl CopyBitsTo
	add r1, r7, #0x5e
	mov r0, sl
	mov r2, #0x50
	bl CopyBitsTo
	add sb, sb, #1
	cmp sb, #4
	blt _02059608
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020597A4: .word TEAM_MEMBER_TABLE_PTR
_020597A8: .word _020A3498
_020597AC: .word _020A3499
	arm_func_end sub_0205956C

	arm_func_start sub_020597B0
sub_020597B0: ; 0x020597B0
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	mov r3, r0
	mov r2, r1
	add r0, sp, #8
	mov r1, r3
	bl sub_02050990
	add r0, sp, #8
	mov r1, #0
	bl sub_0205956C
	add r0, sp, #8
	mov r1, #1
	bl sub_0205956C
	add r0, sp, #8
	mov r1, #2
	bl sub_0205956C
	add r0, sp, #8
	bl sub_020509BC
	ldr r1, _02059820 ; =_020A3498
	add r0, sp, #0
	ldr r2, [r1, #0x10]
	ldr r1, [r1, #0xc]
	str r2, [sp, #4]
	str r1, [sp]
	bl sub_020584F8
	ldr r0, [sp, #0x10]
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	.align 2, 0
_02059820: .word _020A3498
	arm_func_end sub_020597B0

	arm_func_start sub_02059824
sub_02059824: ; 0x02059824
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, _02059A70 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, r1
	ldr r1, [r2]
	mov r2, #1
	add r1, r1, #0x74
	add r1, r1, #0x9800
	add r1, r1, r5
	mov sl, r0
	bl CopyBitsFrom
	ldr r1, _02059A70 ; =TEAM_MEMBER_TABLE_PTR
	mov r0, sl
	ldr r1, [r1]
	mov r2, #0x10
	add r1, r1, #0x850
	add r1, r1, #0x9000
	add r1, r1, r5, lsl #1
	bl CopyBitsFrom
	ldr r6, _02059A70 ; =TEAM_MEMBER_TABLE_PTR
	mov r4, #0
	mov r7, #0x10
_02059878:
	ldr r1, [r6]
	mov r0, sl
	add r1, r1, #0x56
	add r1, r1, #0x9800
	add r1, r1, r5, lsl #3
	mov r2, r7
	add r1, r1, r4, lsl #1
	bl CopyBitsFrom
	add r4, r4, #1
	cmp r4, #4
	blt _02059878
	mov r0, #0x1a0
	mul r8, r5, r0
	mov sb, #0
	ldr r4, _02059A70 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, sb
	mov r6, #1
	mov fp, #0x68
_020598C0:
	ldr r0, [r4]
	mov r1, #0
	add r0, r0, #0x36c
	add r0, r0, #0x9000
	add r0, r0, r8
	mla r7, sb, fp, r0
	mov r0, r7
	mov r2, #0x68
	bl memset
	mov r0, sl
	mov r1, r7
	mov r2, #4
	bl CopyBitsFrom
	mov r0, sl
	add r1, sp, #0
	mov r2, #1
	bl CopyBitsFrom
	ldrb r0, [sp]
	add r1, r7, #2
	mov r2, #7
	tst r0, #1
	strneb r6, [r7, #1]
	mov r0, sl
	streqb r5, [r7, #1]
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #3
	bl Copy16BitsFrom
	mov r0, sl
	add r1, r7, #6
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #8
	mov r2, #0x10
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0xa
	mov r2, #0x10
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0xc
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0xe
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x10
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x12
	mov r2, #8
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x13
	mov r2, #8
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x14
	mov r2, #8
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x15
	mov r2, #8
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x18
	mov r2, #0x18
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x1c
	bl sub_02014C20
	mov r0, sl
	add r1, r7, #0x3e
	bl sub_0200DF2C
	mov r0, sl
	add r1, r7, #0x44
	bl sub_02051098
	mov r0, sl
	add r1, r7, #0x48
	bl sub_02051098
	mov r0, sl
	add r1, r7, #0x4c
	mov r2, #0x45
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x58
	mov r2, #4
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x5a
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x5c
	mov r2, #5
	bl CopyBitsFrom
	add r1, r7, #0x5e
	mov r0, sl
	mov r2, #0x50
	bl CopyBitsFrom
	add sb, sb, #1
	cmp sb, #4
	blt _020598C0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02059A70: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02059824

	arm_func_start sub_02059A74
sub_02059A74: ; 0x02059A74
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	mov r3, r0
	mov r2, r1
	add r0, sp, #8
	mov r1, r3
	bl sub_02050974
	add r0, sp, #8
	mov r1, #0
	bl sub_02059824
	add r0, sp, #8
	mov r1, #1
	bl sub_02059824
	add r0, sp, #8
	mov r1, #2
	bl sub_02059824
	add r0, sp, #8
	bl sub_020509BC
	ldr r1, _02059AE4 ; =_020A3498
	add r0, sp, #0
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r2, [sp, #4]
	str r1, [sp]
	bl sub_020584F8
	ldr r0, [sp, #0x10]
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	.align 2, 0
_02059AE4: .word _020A3498
	arm_func_end sub_02059A74

	arm_func_start sub_02059AE8
sub_02059AE8: ; 0x02059AE8
	ldr ip, _02059AF4 ; =CopyBitsFrom
	mov r2, #7
	bx ip
	.align 2, 0
_02059AF4: .word CopyBitsFrom
	arm_func_end sub_02059AE8

	arm_func_start sub_02059AF8
sub_02059AF8: ; 0x02059AF8
	ldr ip, _02059B04 ; =CopyBitsTo
	mov r2, #7
	bx ip
	.align 2, 0
_02059B04: .word CopyBitsTo
	arm_func_end sub_02059AF8

	arm_func_start sub_02059B08
sub_02059B08: ; 0x02059B08
	ldr ip, _02059B14 ; =GetPerformanceFlagWithChecks
	mov r0, #0xa
	bx ip
	.align 2, 0
_02059B14: .word GetPerformanceFlagWithChecks
	arm_func_end sub_02059B08

	arm_func_start GetEvolutionPossibilities
GetEvolutionPossibilities: ; 0x02059B18
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x30
	mov sb, r0
	ldrsh r6, [sb, #4]
	mov r8, r1
	mov r5, #0
	strh r5, [r8, #6]
	ldrsh r0, [sb, #4]
	cmp r6, #0x258
	ldrlt r4, _0205A1DC ; =0x0000022A
	movlt r7, #1
	ldr r2, _0205A1E0 ; =0x000001BF
	ldrge r7, _0205A1E4 ; =0x00000259
	ldrge r4, _0205A1E8 ; =0x00000483
	cmp r0, r2
	blt _02059B64
	add r1, r2, #2
	cmp r0, r1
	movle r6, r2
_02059B64:
	ldr r2, _0205A1EC ; =0x00000417
	cmp r0, r2
	blt _02059B84
	add r1, r2, #2
	cmp r0, r1
	ldrle r4, _0205A1DC ; =0x0000022A
	suble r6, r2, #0x258
	movle r7, #1
_02059B84:
	ldr r1, _0205A1F0 ; =0x000003E1
	ldr r2, _0205A1F4 ; =0x000001CE
	cmp r0, r1
	subeq r6, r1, #0x258
	ldreq r4, _0205A1DC ; =0x0000022A
	ldr r1, _0205A1F8 ; =0x0000041E
	moveq r7, #1
	cmp r0, r1
	subeq r6, r1, #0x258
	subeq r4, r1, #0x1f4
	moveq r7, #1
	cmp r0, r2
	blt _02059BC4
	add r1, r2, #1
	cmp r0, r1
	movle r6, r2
_02059BC4:
	ldr r2, _0205A1FC ; =0x00000426
	cmp r0, r2
	blt _02059BDC
	add r1, r2, #1
	cmp r0, r1
	movle r6, r2
_02059BDC:
	mov r2, #0
	mov r1, r2
_02059BE4:
	add r0, r8, r2, lsl #1
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x2a]
	add r2, r2, #1
	strh r1, [r0, #0xa]
	cmp r2, #8
	blt _02059BE4
	strh r1, [r8, #8]
	ldrsh r0, [sb, #4]
	ldr r1, _0205A1F8 ; =0x0000041E
	cmp r0, r1
	bne _02059C2C
	bl CanEvolve
	cmp r0, #0
	bne _02059C44
	mov r0, #4
	strh r0, [r8, #6]
	b _0205A1D4
_02059C2C:
	mov r0, r6
	bl CanEvolve
	cmp r0, #0
	moveq r0, #4
	streqh r0, [r8, #6]
	beq _0205A1D4
_02059C44:
	ldr r0, _0205A200 ; =0xFFFFFE3E
	add r0, r0, #0x34c
	str r0, [sp, #0x24]
	ldr r0, _0205A1F0 ; =0x000003E1
	rsb fp, r0, #0x5a0
	sub r0, r0, #0x258
	str r0, [sp]
	ldr r0, _0205A200 ; =0xFFFFFE3E
	add r0, r0, #0x390
	str r0, [sp, #8]
	ldr r0, _0205A1F0 ; =0x000003E1
	rsb sl, r0, #0x5a0
	ldr r0, _0205A200 ; =0xFFFFFE3E
	add r0, r0, #0x390
	str r0, [sp, #4]
	ldr r0, _0205A1F0 ; =0x000003E1
	add r0, r0, #0x45
	str r0, [sp, #0xc]
	ldr r0, _0205A1F0 ; =0x000003E1
	sub r0, r0, #0x220
	str r0, [sp, #0x20]
	ldr r0, _0205A1F0 ; =0x000003E1
	rsb r0, r0, #0x5a0
	str r0, [sp, #0x1c]
	ldr r0, _0205A200 ; =0xFFFFFE3E
	sub r0, r0, #0x264
	str r0, [sp, #0x18]
	ldr r0, _0205A204 ; =0xFFFFFBE9
	sub r0, r0, #0x11
	str r0, [sp, #0x14]
	ldr r0, _0205A200 ; =0xFFFFFE3E
	sub r0, r0, #0xc
	str r0, [sp, #0x10]
	b _02059E1C
_02059CCC:
	mov r1, r7, lsl #0x10
	add r0, sp, #0x28
	mov r1, r1, asr #0x10
	bl GetEvoParameters
	ldrh r0, [sp, #0x2a]
	cmp r0, #0
	beq _02059E18
	ldrsh r0, [sp, #0x28]
	cmp r6, r0
	bne _02059E18
	cmp r6, sl
	bgt _02059D14
	cmp r6, fp
	bge _02059D8C
	ldr r0, [sp]
	cmp r6, r0
	beq _02059DD8
	b _02059E0C
_02059D14:
	ldr r0, [sp, #4]
	cmp r6, r0
	bgt _02059D30
	ldr r0, [sp, #8]
	cmp r6, r0
	beq _02059D40
	b _02059E0C
_02059D30:
	ldr r0, [sp, #0xc]
	cmp r6, r0
	beq _02059D64
	b _02059E0C
_02059D40:
	ldrsh r2, [sb, #4]
	ldr r0, [sp, #0x10]
	sub r1, r7, #0x1d0
	add r0, r2, r0
	cmp r0, r1
	addeq r0, r8, r5, lsl #1
	streqh r7, [r0, #0xa]
	addeq r5, r5, #1
	b _02059E18
_02059D64:
	ldr r0, [sp, #0x14]
	ldrsh r2, [sb, #4]
	add r1, r7, r0
	ldr r0, [sp, #0x18]
	add r0, r2, r0
	cmp r0, r1
	addeq r0, r8, r5, lsl #1
	streqh r7, [r0, #0xa]
	addeq r5, r5, #1
	b _02059E18
_02059D8C:
	ldr r0, _0205A200 ; =0xFFFFFE3E
	ldrsh r2, [sb, #4]
	add r1, r7, r0
	ldr r0, _0205A204 ; =0xFFFFFBE9
	add r0, r2, r0
	cmp r0, r1
	addeq r0, r8, r5, lsl #1
	streqh r7, [r0, #0xa]
	ldrsh r1, [sb, #4]
	ldr r0, [sp, #0x1c]
	addeq r5, r5, #1
	cmp r1, r0
	blt _02059E18
	ldr r0, [sp, #0x20]
	cmp r1, r0
	addle r0, r8, r5, lsl #1
	strleh r7, [r0, #0xa]
	addle r5, r5, #1
	b _02059E18
_02059DD8:
	ldrsh r1, [sb, #4]
	ldr r0, _0205A1F0 ; =0x000003E1
	cmp r1, r0
	ldreq r0, [sp, #0x24]
	cmpeq r7, r0
	addeq r0, r8, r5, lsl #1
	addeq r1, r7, #0x258
	addeq r5, r5, #1
	streqh r1, [r0, #0xa]
	addne r0, r8, r5, lsl #1
	strneh r7, [r0, #0xa]
	addne r5, r5, #1
	b _02059E18
_02059E0C:
	add r0, r8, r5, lsl #1
	strh r7, [r0, #0xa]
	add r5, r5, #1
_02059E18:
	add r7, r7, #1
_02059E1C:
	cmp r7, r4
	blt _02059CCC
	cmp r5, #0
	moveq r0, #4
	streqh r0, [r8, #6]
	beq _0205A1D4
	mov r7, #0
	b _0205A1CC
_02059E3C:
	add r0, r8, r7, lsl #1
	ldrsh sl, [r0, #0xa]
	add r0, sp, #0x28
	mov r1, sl
	bl GetEvoParameters
	ldrh r0, [sp, #0x2a]
	mov r4, #0
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02059F44
_02059E64: ; jump table
	b _02059F44 ; case 0
	b _02059E78 ; case 1
	b _02059E98 ; case 2
	b _02059EB8 ; case 3
	b _02059EE4 ; case 4
_02059E78:
	ldrb r1, [sb, #1]
	ldrsh r0, [sp, #0x2c]
	cmp r1, r0
	ldrlth r0, [r8, #6]
	movlt r4, #1
	orrlt r0, r0, #2
	strlth r0, [r8, #6]
	b _02059F44
_02059E98:
	ldrsh r1, [sb, #8]
	ldrsh r0, [sp, #0x2c]
	cmp r1, r0
	ldrlth r0, [r8, #6]
	movlt r4, #1
	orrlt r0, r0, #0x10
	strlth r0, [r8, #6]
	b _02059F44
_02059EB8:
	ldrsh r0, [sp, #0x2c]
	bl FindItemInInventory
	cmp r0, #0
	ldrlth r0, [r8, #6]
	movlt r4, #1
	orrlt r0, r0, #8
	strlth r0, [r8, #6]
	ldrgesh r1, [sp, #0x2c]
	addge r0, r8, r7, lsl #1
	strgeh r1, [r0, #0x1a]
	b _02059F44
_02059EE4:
	ldrsh r0, [sp, #0x2c]
	mov r1, #0x258
	mov r6, r4
	bl _s32_div_f
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r4
	bl IsMonsterOnTeam
	cmp r0, #0
	ldrsh r0, [sp, #0x2c]
	mov r1, #0x258
	addne r6, r6, #1
	bl _s32_div_f
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	add r0, r0, #0x258
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, #0
	bl IsMonsterOnTeam
	cmp r0, #0
	addne r6, r6, #1
	cmp r6, #0
	moveq r4, #1
_02059F44:
	ldrh r0, [sp, #0x2e]
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _0205A1A8
_02059F54: ; jump table
	b _0205A1A8 ; case 0
	b _0205A08C ; case 1
	b _0205A0B8 ; case 2
	b _0205A0CC ; case 3
	b _0205A0E0 ; case 4
	b _0205A0F4 ; case 5
	b _0205A120 ; case 6
	b _0205A16C ; case 7
	b _0205A14C ; case 8
	b _0205A15C ; case 9
	b _0205A18C ; case 10
	b _0205A19C ; case 11
	b _02059F94 ; case 12
	b _02059FD0 ; case 13
	b _0205A00C ; case 14
	b _0205A04C ; case 15
_02059F94:
	mov r6, #0
	mov r4, #1
	mov r1, r6
	mov r0, #6
_02059FA4:
	mla r3, r6, r0, sb
	ldrb r2, [r3, #0x22]
	tst r2, #1
	beq _02059FC0
	ldrh r2, [r3, #0x24]
	cmp r2, #0x5d
	moveq r4, r1
_02059FC0:
	add r6, r6, #1
	cmp r6, #4
	blt _02059FA4
	b _0205A1A8
_02059FD0:
	mov r6, #0
	mov r4, #1
	mov r1, r6
	mov r0, #6
_02059FE0:
	mla r3, r6, r0, sb
	ldrb r2, [r3, #0x22]
	tst r2, #1
	beq _02059FFC
	ldrh r2, [r3, #0x24]
	cmp r2, #0x69
	moveq r4, r1
_02059FFC:
	add r6, r6, #1
	cmp r6, #4
	blt _02059FE0
	b _0205A1A8
_0205A00C:
	mov r0, #0
	ldr r1, _0205A208 ; =0x000001E7
	mov r4, #1
	mov r3, r0
	mov r2, #6
_0205A020:
	mla fp, r0, r2, sb
	ldrb r6, [fp, #0x22]
	tst r6, #1
	beq _0205A03C
	ldrh r6, [fp, #0x24]
	cmp r6, r1
	moveq r4, r3
_0205A03C:
	add r0, r0, #1
	cmp r0, #4
	blt _0205A020
	b _0205A1A8
_0205A04C:
	mov r0, #0
	ldr r1, _0205A20C ; =0x00000147
	mov r4, #1
	mov r3, r0
	mov r2, #6
_0205A060:
	mla fp, r0, r2, sb
	ldrb r6, [fp, #0x22]
	tst r6, #1
	beq _0205A07C
	ldrh r6, [fp, #0x24]
	cmp r6, r1
	moveq r4, r3
_0205A07C:
	add r0, r0, #1
	cmp r0, #4
	blt _0205A060
	b _0205A1A8
_0205A08C:
	mov r0, #0x97
	bl FindItemInInventory
	cmp r0, #0
	ldrlth r0, [r8, #6]
	movge r1, #0x97
	movlt r4, #1
	orrlt r0, r0, #8
	strlth r0, [r8, #6]
	addge r0, r8, r7, lsl #1
	strgeh r1, [r0, #0x2a]
	b _0205A1A8
_0205A0B8:
	ldrb r1, [sb, #0xc]
	ldrb r0, [sb, #0xe]
	cmp r1, r0
	movls r4, #1
	b _0205A1A8
_0205A0CC:
	ldrb r1, [sb, #0xc]
	ldrb r0, [sb, #0xe]
	cmp r1, r0
	movhs r4, #1
	b _0205A1A8
_0205A0E0:
	ldrb r1, [sb, #0xc]
	ldrb r0, [sb, #0xe]
	cmp r1, r0
	movne r4, #1
	b _0205A1A8
_0205A0F4:
	mov r0, #0x37
	bl FindItemInInventory
	cmp r0, #0
	ldrlth r0, [r8, #6]
	movge r1, #0x37
	movlt r4, #1
	orrlt r0, r0, #8
	strlth r0, [r8, #6]
	addge r0, r8, r7, lsl #1
	strgeh r1, [r0, #0x2a]
	b _0205A1A8
_0205A120:
	mov r0, #0x38
	bl FindItemInInventory
	cmp r0, #0
	ldrlth r0, [r8, #6]
	movge r1, #0x38
	movlt r4, #1
	orrlt r0, r0, #8
	strlth r0, [r8, #6]
	addge r0, r8, r7, lsl #1
	strgeh r1, [r0, #0x2a]
	b _0205A1A8
_0205A14C:
	ldrb r0, [r8, #4]
	tst r0, #1
	movne r4, #1
	b _0205A1A8
_0205A15C:
	ldrb r0, [r8, #4]
	tst r0, #1
	moveq r4, #1
	b _0205A1A8
_0205A16C:
	mov r0, #0x36
	bl FindItemInInventory
	cmp r0, #0
	addge r0, r8, r7, lsl #1
	movge r1, #0x36
	movlt r4, #1
	strgeh r1, [r0, #0x2a]
	b _0205A1A8
_0205A18C:
	ldrsh r0, [sb, #4]
	cmp r0, #0x258
	movge r4, #1
	b _0205A1A8
_0205A19C:
	ldrsh r0, [sb, #4]
	cmp r0, #0x258
	movlt r4, #1
_0205A1A8:
	cmp r4, #0
	ldreqh r0, [r8, #6]
	movne r1, #0
	orreq r0, r0, #1
	streqh r0, [r8, #6]
	addne r0, r8, r7, lsl #1
	streqh sl, [r8, #8]
	strneh r1, [r0, #0xa]
	add r7, r7, #1
_0205A1CC:
	cmp r7, r5
	blt _02059E3C
_0205A1D4:
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0205A1DC: .word 0x0000022A
_0205A1E0: .word 0x000001BF
_0205A1E4: .word 0x00000259
_0205A1E8: .word 0x00000483
_0205A1EC: .word 0x00000417
_0205A1F0: .word 0x000003E1
_0205A1F4: .word 0x000001CE
_0205A1F8: .word 0x0000041E
_0205A1FC: .word 0x00000426
_0205A200: .word 0xFFFFFE3E
_0205A204: .word 0xFFFFFBE9
_0205A208: .word 0x000001E7
_0205A20C: .word 0x00000147
	arm_func_end GetEvolutionPossibilities

	arm_func_start GetMonsterEvoStatus
GetMonsterEvoStatus: ; 0x0205A210
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x3c
	add r1, sp, #0
	mov r4, r0
	bl GetEvolutionPossibilities
	ldrh r0, [sp, #6]
	tst r0, #1
	beq _0205A274
	ldrb r0, [r4, #2]
	cmp r0, #0xd6
	moveq r1, #1
	movne r1, #0
	tst r1, #0xff
	bne _0205A254
	bl JoinedAtRangeCheck2
	cmp r0, #0
	beq _0205A26C
_0205A254:
	mov r0, #0xa
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	b _0205A280
_0205A26C:
	mov r0, #1
	b _0205A280
_0205A274:
	tst r0, #4
	movne r0, #2
	moveq r0, #0
_0205A280:
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, pc}
	arm_func_end GetMonsterEvoStatus

	arm_func_start sub_0205A288
sub_0205A288: ; 0x0205A288
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x48
	mvn r2, #0
	mov r6, r0
	strh r2, [sp]
	ldrsh r0, [r6]
	mov r5, r1
	bl GetTeamMember
	add lr, sp, #4
	mov r4, r0
	mov ip, #4
_0205A2B4:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0205A2B4
	ldr r3, [r4]
	add r1, sp, #4
	mov r0, r6
	mov r2, r5
	str r3, [lr]
	bl sub_0205A340
	ldr r0, _0205A33C ; =0x0000013F
	cmp r5, r0
	addne r0, r0, #0x258
	cmpne r5, r0
	bne _0205A330
	mov r0, #0x140
	bl GetNameString
	mov r1, r0
	add r0, sp, #0x3e
	mov r2, #0xa
	bl StrncpyName
	add r0, sp, #0
	add r1, sp, #4
	mov r2, #0x140
	bl sub_0205A340
	ldrsh r1, [sp]
	mvn r0, #0
	cmp r1, r0
	beq _0205A330
	mov r0, #0x140
	bl SetPokemonJoined
_0205A330:
	mov r0, #1
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205A33C: .word 0x0000013F
	arm_func_end sub_0205A288

	arm_func_start sub_0205A340
sub_0205A340: ; 0x0205A340
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x90
	add ip, sp, #0x4c
	mov r6, r0
	mov lr, r1
	mov r5, r2
	mov r4, #4
_0205A35C:
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0205A35C
	ldr r1, [lr]
	add r0, sp, #0x40
	str r1, [ip]
	ldrb r2, [sp, #0x4d]
	mov r1, r5
	ldrsh r4, [sp, #0x50]
	bl GetLvlUpEntry
	ldrb r0, [sp, #0x52]
	ldr r1, [sp, #0x40]
	strh r5, [sp, #0x50]
	cmp r0, #0
	ldreqb r0, [sp, #0x4d]
	str r1, [sp, #0x5c]
	streqb r0, [sp, #0x52]
	beq _0205A3B8
	ldrb r0, [sp, #0x53]
	cmp r0, #0
	ldreqb r0, [sp, #0x4d]
	streqb r0, [sp, #0x53]
_0205A3B8:
	mov r0, r4
	bl GetNameString
	mov r1, r0
	add r0, sp, #0
	bl StrcpyName
	add r0, sp, #0
	add r1, sp, #0x86
	mov r2, #0xa
	bl StrncmpSimple
	cmp r0, #0
	bne _0205A3FC
	mov r0, r5
	bl GetNameString
	mov r1, r0
	add r0, sp, #0x86
	mov r2, #0xa
	bl StrncpyName
_0205A3FC:
	ldrsh r0, [r6]
	mvn r1, #0
	cmp r0, r1
	beq _0205A418
	add r1, sp, #0x4c
	bl sub_02055D7C
	b _0205A424
_0205A418:
	add r0, sp, #0x4c
	bl sub_02055CCC
	strh r0, [r6]
_0205A424:
	ldrsh r0, [r6]
	add sp, sp, #0x90
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0205A340

	arm_func_start CopyTacticString
CopyTacticString: ; 0x0205A430
	ldr r2, _0205A448 ; =TACTIC_NAME_STRING_IDS
	mov r1, r1, lsl #1
	ldrh r1, [r2, r1]
	ldr ip, _0205A44C ; =CopyNStringFromId
	mov r2, #0x40
	bx ip
	.align 2, 0
_0205A448: .word TACTIC_NAME_STRING_IDS
_0205A44C: .word CopyNStringFromId
	arm_func_end CopyTacticString

	arm_func_start GetStatBoostsForMonsterSummary
GetStatBoostsForMonsterSummary: ; 0x0205A450
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldrb ip, [sp, #0x18]
	mov r4, r0
	add r0, sp, #4
	str ip, [sp]
	bl sub_0205B120
	ldrb r1, [r4, #0x39]
	ldrsh r0, [sp, #6]
	add r0, r1, r0
	strb r0, [r4, #0x39]
	ldrb r1, [r4, #0x3a]
	ldrsh r0, [sp, #8]
	add r0, r1, r0
	strb r0, [r4, #0x3a]
	ldrb r1, [r4, #0x3b]
	ldrsh r0, [sp, #0xa]
	add r0, r1, r0
	strb r0, [r4, #0x3b]
	ldrb r1, [r4, #0x3c]
	ldrsh r0, [sp, #0xc]
	add r0, r1, r0
	strb r0, [r4, #0x3c]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end GetStatBoostsForMonsterSummary

	arm_func_start sub_0205A4B4
sub_0205A4B4: ; 0x0205A4B4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x184
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r0, #5
	mov r7, #0x10
	addls pc, pc, r0, lsl #2
	b _0205AD98
_0205A4D8: ; jump table
	b _0205AD98 ; case 0
	b _0205A9D4 ; case 1
	b _0205A4F0 ; case 2
	b _0205A900 ; case 3
	b _0205AAC8 ; case 4
	b _0205AC0C ; case 5
_0205A4F0:
	ldr r0, [r6, #0x2c]
	ldr r2, _0205ADA0 ; =0x00000951
	str r0, [sp, #0x90]
	ldr r1, [r6, #0x30]
	add r5, sp, #0x6c
	str r1, [sp, #0x94]
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	str r5, [sp]
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, r7
	bl DrawTextInWindow
	mov r3, r5
	str r3, [sp]
	ldr r2, _0205ADA4 ; =0x00000952
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	bl PreprocessStringFromId
	mov r0, r4
	mov r1, #4
	mov r2, #0x1c
	add r3, sp, #0xbc
	bl DrawTextInWindow
	ldr r2, [r6, #0x2c]
	cmp r2, #0x64
	bge _0205A5B8
	ldrsh r1, [r6]
	add r0, sp, #0x18
	add r2, r2, #1
	bl GetLvlUpEntry
	ldr r1, [sp, #0x18]
	ldr r0, [r6, #0x30]
	ldr r2, _0205ADA8 ; =0x00000953
	sub r0, r1, r0
	str r0, [sp, #0x90]
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	str r5, [sp]
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x28
	bl DrawTextInWindow
_0205A5B8:
	ldr r0, [r6, #0x24]
	ldr r2, _0205ADAC ; =0x00000954
	str r0, [sp, #0x90]
	ldr r1, [r6, #0x28]
	add r5, sp, #0x6c
	str r1, [sp, #0x94]
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	str r5, [sp]
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x36
	bl DrawTextInWindow
	mov r3, r5
	str r3, [sp]
	ldr r2, _0205ADB0 ; =0x00000955
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	bl PreprocessStringFromId
	mov r0, r4
	mov r1, #4
	mov r2, #0x42
	add r3, sp, #0xbc
	bl DrawTextInWindow
	ldrb r1, [r6, #0x34]
	ldr r2, _0205ADB4 ; =0x00000957
	add r5, sp, #0x6c
	str r1, [sp, #0x90]
	ldrb r0, [r6, #0x39]
	mov r3, #0
	cmp r0, #0
	addne r0, r1, r0
	strne r0, [sp, #0x90]
	addne r2, r2, #1
	add r0, sp, #0xbc
	mov r1, #0xc8
	str r5, [sp]
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x42
	bl DrawTextInWindow
	ldrb r2, [r6, #0x3b]
	ldrb r1, [r6, #0x36]
	add r0, sp, #0xbc
	cmp r2, #0
	mov r3, #0
	beq _0205A6BC
	add r1, r1, r2
	str r1, [sp, #0x90]
	ldr r2, _0205ADB8 ; =0x0000095C
	mov r1, #0xc8
	str r5, [sp]
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x42
	bl DrawTextInWindow
	b _0205A6E4
_0205A6BC:
	ldr r2, _0205ADBC ; =0x0000095B
	str r1, [sp, #0x90]
	mov r1, #0xc8
	str r5, [sp]
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x42
	bl DrawTextInWindow
_0205A6E4:
	ldr r2, _0205ADC0 ; =0x00000956
	add r5, sp, #0x6c
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	str r5, [sp]
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x4e
	bl DrawTextInWindow
	ldrb r1, [r6, #0x35]
	ldr r2, _0205ADC4 ; =0x00000959
	add r5, sp, #0x6c
	str r1, [sp, #0x90]
	ldrb r0, [r6, #0x3a]
	mov r3, #0
	cmp r0, #0
	addne r0, r1, r0
	strne r0, [sp, #0x90]
	addne r2, r2, #1
	add r0, sp, #0xbc
	mov r1, #0xc8
	str r5, [sp]
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x4e
	bl DrawTextInWindow
	ldrb r2, [r6, #0x3c]
	ldrb r1, [r6, #0x37]
	add r0, sp, #0xbc
	cmp r2, #0
	mov r3, #0
	beq _0205A7A8
	add r1, r1, r2
	str r1, [sp, #0x90]
	ldr r2, _0205ADC8 ; =0x0000095E
	mov r1, #0xc8
	str r5, [sp]
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x4e
	bl DrawTextInWindow
	b _0205A7D0
_0205A7A8:
	ldr r2, _0205ADCC ; =0x0000095D
	str r1, [sp, #0x90]
	mov r1, #0xc8
	str r5, [sp]
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x4e
	bl DrawTextInWindow
_0205A7D0:
	ldrb r0, [r6, #0x1c]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0205A820
	bl sub_02025888
	ldr r2, _0205ADD0 ; =_020A34B8
	add r1, r6, #0x1c
	mov r7, r0
	bl sub_0200D670
	add r5, sp, #0x6c
	str r7, [sp, #0xa4]
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r2, #0x960
	mov r3, #0
	str r5, [sp]
	bl PreprocessStringFromId
	b _0205A83C
_0205A820:
	ldr r2, _0205ADD4 ; =0x0000095F
	add r5, sp, #0x6c
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	str r5, [sp]
	bl PreprocessStringFromId
_0205A83C:
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x5a
	bl DrawTextInWindow
	ldrsh r0, [r6, #0x3e]
	mov r1, #0xa
	str r0, [sp, #0x90]
	ldrsh r0, [r6, #0x3e]
	bl _s32_div_f
	movs r1, r0
	movmi r1, #0
	cmp r1, #0x63
	ldr r0, _0205ADD8 ; =_020A34D2
	movge r1, #0x63
	bl sub_0205B39C
	str r0, [sp, #0xa4]
	add r5, sp, #0x6c
	ldr r2, _0205ADDC ; =0x00000961
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	str r5, [sp]
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x68
	bl DrawTextInWindow
	ldrb r0, [r6, #0x38]
	cmp r0, #0
	bne _0205AD98
	bl sub_02025888
	ldrb r1, [r6, #0x54]
	mov r6, r0
	bl sub_02058C30
	str r6, [sp, #0xa4]
	ldr r2, _0205ADE0 ; =0x00000962
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	str r5, [sp]
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x74
	bl DrawTextInWindow
	b _0205AD98
_0205A900:
	ldr r3, _0205ADE4 ; =0x00000972
	mov r0, r4
	mov r2, r7
	mov r1, #4
	bl sub_02026268
	ldrb r0, [r6, #0x16]
	bl GetTypeStringId
	mov r3, r0
	mov r0, r4
	mov r1, #0x38
	mov r2, r7
	bl sub_02026268
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	beq _0205A954
	bl GetTypeStringId
	mov r3, r0
	mov r0, r4
	mov r1, #0x68
	mov r2, r7
	bl sub_02026268
_0205A954:
	ldr r3, _0205ADE8 ; =0x00000973
	mov r0, r4
	mov r1, #4
	mov r2, #0x1c
	bl sub_02026268
	ldrb r0, [r6, #0x18]
	bl GetAbilityDescStringId
	bl StringFromId
	mov r1, #0
	str r1, [sp]
	mov r1, #0xb
	str r1, [sp, #4]
	mov r3, r0
	mov r0, r4
	mov r1, #4
	mov r2, #0x28
	bl sub_02026358
	ldrb r0, [r6, #0x19]
	cmp r0, #0
	beq _0205AD98
	bl GetAbilityDescStringId
	bl StringFromId
	mov r1, #0
	mov r3, r0
	mov r0, r4
	str r1, [sp]
	mov r4, #0xb
	mov r1, #4
	mov r2, #0x49
	str r4, [sp, #4]
	bl sub_02026358
	b _0205AD98
_0205A9D4:
	ldrsh r0, [r6, #0x56]
	mov fp, #0
	mov r1, fp
	sub r8, r0, #1
	sub r7, r7, #0xc
	mov sl, fp
_0205A9EC:
	add r0, r5, r1, lsl #2
	add r1, r1, #1
	str sl, [r0, #0xc]
	cmp r1, #0xa
	blt _0205A9EC
	b _0205AAA0
_0205AA04:
	cmp r8, #0
	cmpge r7, #0x10
	blt _0205AA94
	cmp r8, #0x1e
	bge _0205AAA8
	add sb, r6, r8
	ldrb r0, [sb, #0x58]
	cmp r0, #0
	beq _0205AA94
	mov fp, #1
	bl sub_02025888
	ldrb r1, [sb, #0x58]
	str r0, [sp, #8]
	mov r2, #0x50
	mov r3, r1, lsl #1
	ldr r1, _0205ADEC ; =STATUS_NAME_STRING_IDS
	ldrh r1, [r1, r3]
	bl CopyNStringFromId
	ldr r0, [sp, #8]
	ldr r2, _0205ADF0 ; =_020A34FC
	str r0, [sp, #0xa8]
	add r0, sp, #0x6c
	str r0, [sp]
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	bl PreprocessString
	mov r0, r4
	mov r1, #0xc
	mov r2, r7
	add r3, sp, #0xbc
	bl DrawTextInWindow
	cmp sl, #1
	ldrgeb r1, [sb, #0x58]
	addge r0, r5, sl, lsl #2
	strge r1, [r0, #8]
_0205AA94:
	add sl, sl, #1
	add r8, r8, #1
	add r7, r7, #0xc
_0205AAA0:
	cmp sl, #0xa
	blt _0205AA04
_0205AAA8:
	cmp fp, #0
	bne _0205AD98
	ldr r3, _0205ADF4 ; =0x00000968
	mov r0, r4
	mov r1, #0xc
	mov r2, #0x10
	bl sub_02026268
	b _0205AD98
_0205AAC8:
	ldrsh r1, [r6]
	ldrsh r2, [r6, #0x3e]
	add r0, sp, #0x24
	bl GetLearnableIqSkills
	ldrsh r0, [r6, #0x40]
	mov r1, #0
	mov sb, r1
	sub r8, r0, #1
_0205AAE8:
	strb sb, [r5, r1]
	add r1, r1, #1
	cmp r1, #9
	blt _0205AAE8
	mov sl, sb
	sub r7, r7, #0xc
	add fp, sp, #0x24
	b _0205ABE4
_0205AB08:
	cmp r8, #0
	blt _0205ABD8
	cmp r8, #0x45
	bge _0205ABEC
	ldrb r0, [fp, r8]
	cmp r0, #0
	beq _0205ABD8
	mov sb, #1
	bl sub_02025888
	str r0, [sp, #0xc]
	ldrb r0, [fp, r8]
	bl GetIqSkillStringId
	mov r1, r0
	ldr r0, [sp, #0xc]
	mov r2, #0x50
	bl CopyNStringFromId
	ldr r0, [sp, #0xc]
	ldrb r1, [fp, r8]
	str r0, [sp, #0xa8]
	add r0, r6, #0x48
	bl IqSkillFlagTest
	cmp r0, #0
	beq _0205AB80
	bl sub_02025888
	ldr r1, _0205ADF8 ; =_020A3514
	str r0, [sp, #0x10]
	bl strcpy
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xa4]
	b _0205AB98
_0205AB80:
	bl sub_02025888
	ldr r1, _0205ADFC ; =_020A351C
	str r0, [sp, #0x14]
	bl strcpy
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xa4]
_0205AB98:
	cmp sl, #1
	ldrgeb r1, [fp, r8]
	addge r0, r5, sl
	ldr r2, _0205AE00 ; =_020A3524
	strgeb r1, [r0, #-1]
	add r0, sp, #0x6c
	str r0, [sp]
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	bl PreprocessString
	mov r0, r4
	mov r1, #0xc
	mov r2, r7
	add r3, sp, #0xbc
	bl DrawTextInWindow
_0205ABD8:
	add sl, sl, #1
	add r8, r8, #1
	add r7, r7, #0xc
_0205ABE4:
	cmp sl, #0xa
	blt _0205AB08
_0205ABEC:
	cmp sb, #0
	bne _0205AD98
	ldr r3, _0205AE04 ; =0x00000969
	mov r0, r4
	mov r1, #0xc
	mov r2, #0x20
	bl sub_02026268
	b _0205AD98
_0205AC0C:
	bl sub_02025888
	ldrsh r1, [r6]
	mov r5, r0
	bl GetNameRaw
	str r5, [sp, #0xa4]
	ldrsh r0, [r6]
	str r0, [sp, #0x90]
	ldrsh r0, [r6]
	bl GetMonsterGenderVeneer
	cmp r0, #1
	beq _0205AC48
	cmp r0, #2
	beq _0205AC50
	cmp r0, #3
	b _0205AC58
_0205AC48:
	ldr r2, _0205AE08 ; =0x00000963
	b _0205AC5C
_0205AC50:
	ldr r2, _0205AE0C ; =0x00000964
	b _0205AC5C
_0205AC58:
	ldr r2, _0205AE10 ; =0x00000965
_0205AC5C:
	add r5, sp, #0x6c
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	str r5, [sp]
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x10
	bl DrawTextInWindow
	ldr r3, _0205AE14 ; =0x00000967
	mov r0, r4
	mov r1, #4
	mov r2, #0x1f
	bl sub_02026268
	ldrb r2, [r6, #0x1a]
	mov r1, r5
	add r0, sp, #0xbc
	str r2, [sp, #0x7c]
	str r1, [sp]
	ldr r2, _0205AE18 ; =0x0000096B
	mov r1, #0xc8
	mov r3, #0
	bl PreprocessStringFromId
	mov r0, r4
	mov r1, #4
	mov r2, #0x2b
	add r3, sp, #0xbc
	bl DrawTextInWindow
	bl sub_02025888
	mov r5, r0
	ldrsh r0, [r6]
	bl GetCategoryString
	mov r1, r0
	mov r0, r5
	bl strcpy
	mov r0, #0x44
	strb r0, [r5, #4]
	str r5, [sp, #0xa4]
	add r1, sp, #0x6c
	str r1, [sp]
	ldr r2, _0205AE1C ; =0x00000966
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	bl PreprocessStringFromId
	mov r0, r4
	mov r1, #4
	mov r2, #0x3a
	add r3, sp, #0xbc
	bl DrawTextInWindow
	ldrsh r0, [r6]
	bl GetBodySize
	mov r1, r0
	ldr r0, _0205AE20 ; =_020A34C4
	bl sub_0205B39C
	str r0, [sp, #0xa4]
	add r1, sp, #0x6c
	str r1, [sp]
	ldr r2, _0205AE24 ; =0x0000096A
	add r0, sp, #0xbc
	mov r1, #0xc8
	mov r3, #0
	bl PreprocessStringFromId
	add r3, sp, #0xbc
	mov r0, r4
	mov r1, #4
	mov r2, #0x58
	bl DrawTextInWindow
	ldrb r2, [r6, #0x44]
	mov r0, r4
	mov r1, #4
	add r2, r2, #0x16c
	add r2, r2, #0x800
	mov r2, r2, lsl #0x10
	mov r3, r2, lsr #0x10
	mov r2, #0x67
	bl sub_02026268
_0205AD98:
	add sp, sp, #0x184
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0205ADA0: .word 0x00000951
_0205ADA4: .word 0x00000952
_0205ADA8: .word 0x00000953
_0205ADAC: .word 0x00000954
_0205ADB0: .word 0x00000955
_0205ADB4: .word 0x00000957
_0205ADB8: .word 0x0000095C
_0205ADBC: .word 0x0000095B
_0205ADC0: .word 0x00000956
_0205ADC4: .word 0x00000959
_0205ADC8: .word 0x0000095E
_0205ADCC: .word 0x0000095D
_0205ADD0: .word _020A34B8
_0205ADD4: .word 0x0000095F
_0205ADD8: .word _020A34D2
_0205ADDC: .word 0x00000961
_0205ADE0: .word 0x00000962
_0205ADE4: .word 0x00000972
_0205ADE8: .word 0x00000973
_0205ADEC: .word STATUS_NAME_STRING_IDS
_0205ADF0: .word _020A34FC
_0205ADF4: .word 0x00000968
_0205ADF8: .word _020A3514
_0205ADFC: .word _020A351C
_0205AE00: .word _020A3524
_0205AE04: .word 0x00000969
_0205AE08: .word 0x00000963
_0205AE0C: .word 0x00000964
_0205AE10: .word 0x00000965
_0205AE14: .word 0x00000967
_0205AE18: .word 0x0000096B
_0205AE1C: .word 0x00000966
_0205AE20: .word _020A34C4
_0205AE24: .word 0x0000096A
	arm_func_end sub_0205A4B4

	arm_func_start CreateMonsterSummaryFromTeamMember
CreateMonsterSummaryFromTeamMember: ; 0x0205AE28
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r8, r1
	mov sb, r0
	ldrsh r0, [r8, #8]
	mov r7, r2
	bl GetTeamMember
	mov r4, r0
	mov r1, r4
	add r0, sb, #2
	mov r2, #0x4e
	bl sub_02056084
	ldrsh r0, [r8, #0xc]
	mov r5, #0
	strh r0, [sb]
	ldrsh r0, [r8, #0xe]
	str r0, [sb, #0x24]
	ldrsh r0, [r8, #0xe]
	str r0, [sb, #0x28]
	ldrb r0, [r8, #2]
	str r0, [sb, #0x2c]
	ldr r0, [r8, #0x18]
	str r0, [sb, #0x30]
_0205AE84:
	add r2, r8, r5
	ldrb r0, [r2, #0x12]
	add r6, sb, r5
	mov r1, r5
	strb r0, [r6, #0x34]
	ldrb r0, [r2, #0x14]
	strb r0, [r6, #0x36]
	ldrsh r0, [r8, #0xc]
	bl GetType
	strb r0, [r6, #0x16]
	ldrsh r0, [r8, #0xc]
	mov r1, r5
	bl GetAbility
	add r5, r5, #1
	strb r0, [r6, #0x18]
	cmp r5, #2
	blt _0205AE84
	strb r7, [sb, #0x38]
	mov r0, #0
	strb r0, [sb, #0x39]
	strb r0, [sb, #0x3a]
	strb r0, [sb, #0x3b]
	strb r0, [sb, #0x3c]
	strb r0, [sb, #0x45]
	ldrb r1, [r8, #0x58]
	add r0, r8, #0x4c
	add r3, sb, #0x48
	strb r1, [sb, #0x54]
	ldrh r1, [r8, #0x3e]
	strh r1, [sb, #0x1c]
	ldrh r1, [r8, #0x40]
	strh r1, [sb, #0x1e]
	ldrh r1, [r8, #0x42]
	strh r1, [sb, #0x20]
	ldrsh r1, [r8, #6]
	strh r1, [sb, #0x3e]
	ldrb r1, [r8, #3]
	strb r1, [sb, #0x1a]
	ldrb r1, [r8, #4]
	strb r1, [sb, #0x1b]
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, sb
	bl sub_0205B354
	str r0, [sp]
	ldrsh r1, [sb]
	ldrsh r3, [sb, #0x3e]
	add r0, sp, #4
	add r2, r8, #0x3e
	bl sub_0205B120
	ldrb r2, [sb, #0x39]
	ldrsh r1, [sp, #6]
	ldr r0, _0205B004 ; =0x000003E7
	add r1, r2, r1
	strb r1, [sb, #0x39]
	ldrb r2, [sb, #0x3a]
	ldrsh r1, [sp, #8]
	add r1, r2, r1
	strb r1, [sb, #0x3a]
	ldrb r2, [sb, #0x3b]
	ldrsh r1, [sp, #0xa]
	add r1, r2, r1
	strb r1, [sb, #0x3b]
	ldrb r2, [sb, #0x3c]
	ldrsh r1, [sp, #0xc]
	add r1, r2, r1
	strb r1, [sb, #0x3c]
	ldrsh r1, [sp, #4]
	ldr r2, [sb, #0x24]
	add r1, r2, r1
	str r1, [sb, #0x24]
	cmp r1, r0
	strgt r0, [sb, #0x24]
	ldr r1, [sb, #0x24]
	mov r0, #6
	str r1, [sb, #0x28]
	ldrb r1, [r4, #6]
	strb r1, [sb, #0x42]
	ldrb r1, [r4, #7]
	strb r1, [sb, #0x43]
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	moveq r0, #3
	beq _0205AFDC
	mov r0, r4
	bl GetMonsterEvoStatus
_0205AFDC:
	mov r2, #0
	strb r0, [sb, #0x44]
	mov r1, r2
_0205AFE8:
	add r0, sb, r2
	add r2, r2, #1
	strb r1, [r0, #0x58]
	cmp r2, #0x1f
	blt _0205AFE8
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0205B004: .word 0x000003E7
	arm_func_end CreateMonsterSummaryFromTeamMember

	arm_func_start sub_0205B008
sub_0205B008: ; 0x0205B008
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl sub_02055894
	mov r1, r0
	mov r0, r4
	bl sub_0205B028
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205B008

	arm_func_start sub_0205B028
sub_0205B028: ; 0x0205B028
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x68
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl GetActiveRosterIndex
	mvn r1, #0
	cmp r0, r1
	bne _0205B078
	add r0, sp, #0
	mov r1, r5
	mov r2, #0
	bl sub_02053224
	mov r0, r5
	bl sub_020564B0
	mov r2, r0
	add r1, sp, #0
	mov r0, r6
	bl CreateMonsterSummaryFromTeamMember
	b _0205B098
_0205B078:
	bl GetActiveTeamMember
	mov r4, r0
	mov r0, r5
	bl sub_020564B0
	mov r2, r0
	mov r0, r6
	mov r1, r4
	bl CreateMonsterSummaryFromTeamMember
_0205B098:
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0205B028

	arm_func_start sub_0205B0A0
sub_0205B0A0: ; 0x0205B0A0
	ldr ip, _0205B0B0 ; =sub_0205B39C
	mov r1, r0
	ldr r0, _0205B0B4 ; =_020A34D2
	bx ip
	.align 2, 0
_0205B0B0: .word sub_0205B39C
_0205B0B4: .word _020A34D2
	arm_func_end sub_0205B0A0

	arm_func_start sub_0205B0B8
sub_0205B0B8: ; 0x0205B0B8
	stmdb sp!, {r3, lr}
	ldrsh r1, [r0, #0x56]
	mov r2, #0x10
	mov lr, #0
	mov r3, lr
	sub ip, r1, #1
	sub r2, r2, #0xc
	b _0205B110
_0205B0D8:
	cmp ip, #0
	cmpge r2, #0x10
	blt _0205B104
	cmp ip, #0x1e
	bge _0205B118
	add r1, r0, ip
	ldrb r1, [r1, #0x58]
	cmp r1, #0
	beq _0205B104
	cmp r3, #1
	addge lr, lr, #1
_0205B104:
	add r3, r3, #1
	add ip, ip, #1
	add r2, r2, #0xc
_0205B110:
	cmp r3, #0xa
	blt _0205B0D8
_0205B118:
	mov r0, lr
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205B0B8

	arm_func_start sub_0205B120
sub_0205B120: ; 0x0205B120
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mov r6, #0
	strh r6, [r5]
	strh r6, [r5, #2]
	strh r6, [r5, #4]
	mov r4, r2
	strh r6, [r5, #6]
	add r0, sp, #0
	mov r7, r1
	mov r2, r3
	strh r6, [r5, #8]
	bl EnableAllLearnableIqSkills
	mov r0, r7
	mov r1, r6
	bl GetType
	mov r6, r0
	mov r0, r7
	mov r1, #1
	bl GetType
	mov r3, r0
	mov r1, r7
	mov r2, r6
	add r0, sp, #0xc
	bl sub_02011220
	add r0, sp, #0xc
	bl GetHpBoostFromExclusiveItems
	ldrsh r2, [r5]
	ldrb r1, [sp, #0x38]
	add r0, r2, r0
	strh r0, [r5]
	cmp r1, #0
	ldrsh r1, [r5, #2]
	ldrb r0, [sp, #0xc]
	add r0, r1, r0
	strh r0, [r5, #2]
	ldrsh r1, [r5, #4]
	ldrb r0, [sp, #0xd]
	add r0, r1, r0
	strh r0, [r5, #4]
	ldrsh r1, [r5, #6]
	ldrb r0, [sp, #0xe]
	add r0, r1, r0
	strh r0, [r5, #6]
	ldrsh r1, [r5, #8]
	ldrb r0, [sp, #0xf]
	add r0, r1, r0
	strh r0, [r5, #8]
	bne _0205B30C
	cmp r4, #0
	beq _0205B30C
	ldrb r0, [r4]
	tst r0, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	beq _0205B30C
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _0205B30C
	ldrsh r0, [r4, #4]
	cmp r0, #0x1a
	ldreq r0, _0205B338 ; =POWER_BAND_STAT_BOOST
	ldreqsh r1, [r5, #2]
	ldreqsh r0, [r0]
	addeq r0, r1, r0
	streqh r0, [r5, #2]
	ldrsh r0, [r4, #4]
	cmp r0, #0x32
	ldreq r0, _0205B33C ; =MUNCH_BELT_STAT_BOOST
	ldreqsh r1, [r5, #2]
	ldreqsh r0, [r0]
	addeq r0, r1, r0
	streqh r0, [r5, #2]
	ldrsh r0, [r4, #4]
	cmp r0, #0x28
	ldreq r0, _0205B340 ; =SPECIAL_BAND_STAT_BOOST
	ldreqsh r1, [r5, #4]
	ldreqsh r0, [r0]
	addeq r0, r1, r0
	streqh r0, [r5, #4]
	ldrsh r0, [r4, #4]
	cmp r0, #0x32
	ldreq r0, _0205B33C ; =MUNCH_BELT_STAT_BOOST
	ldreqsh r1, [r5, #4]
	ldreqsh r0, [r0]
	addeq r0, r1, r0
	streqh r0, [r5, #4]
	ldrsh r0, [r4, #4]
	cmp r0, #0x25
	ldreq r0, _0205B344 ; =DEF_SCARF_STAT_BOOST
	ldreqsh r1, [r5, #6]
	ldreqsh r0, [r0]
	addeq r0, r1, r0
	streqh r0, [r5, #6]
	ldrsh r0, [r4, #4]
	cmp r0, #0x29
	ldreq r0, _0205B348 ; =ZINC_BAND_STAT_BOOST
	ldreqsh r1, [r5, #8]
	ldreqsh r0, [r0]
	addeq r0, r1, r0
	streqh r0, [r5, #8]
	ldrsh r0, [r4, #4]
	bl IsAuraBow
	cmp r0, #0
	beq _0205B30C
	ldr r0, _0205B34C ; =AURA_BOW_STAT_BOOST
	ldrsh r1, [r5, #2]
	ldrsh r2, [r0]
	add r0, r1, r2
	strh r0, [r5, #2]
	ldrsh r0, [r5, #4]
	add r0, r0, r2
	strh r0, [r5, #4]
	ldrsh r0, [r5, #6]
	add r0, r0, r2
	strh r0, [r5, #6]
	ldrsh r0, [r5, #8]
	add r0, r0, r2
	strh r0, [r5, #8]
_0205B30C:
	add r0, sp, #0
	mov r1, #0x38
	bl IqSkillFlagTest
	cmp r0, #0
	ldrne r0, _0205B350 ; =_020A1870
	ldrnesh r1, [r5]
	ldrnesh r0, [r0]
	addne r0, r1, r0
	strneh r0, [r5]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0205B338: .word POWER_BAND_STAT_BOOST
_0205B33C: .word MUNCH_BELT_STAT_BOOST
_0205B340: .word SPECIAL_BAND_STAT_BOOST
_0205B344: .word DEF_SCARF_STAT_BOOST
_0205B348: .word ZINC_BAND_STAT_BOOST
_0205B34C: .word AURA_BOW_STAT_BOOST
_0205B350: .word _020A1870
	arm_func_end sub_0205B120

	arm_func_start sub_0205B354
sub_0205B354: ; 0x0205B354
	ldrb r1, [r0, #0x45]
	cmp r1, #0
	movne r0, #0
	bxne lr
	mov r2, #0
	b _0205B38C
_0205B36C:
	add r1, r0, r2
	ldrb r1, [r1, #0x18]
	cmp r1, #0x6f
	moveq r0, #1
	bxeq lr
	add r1, r2, #1
	mov r1, r1, lsl #0x10
	mov r2, r1, asr #0x10
_0205B38C:
	cmp r2, #2
	blt _0205B36C
	mov r0, #0
	bx lr
	arm_func_end sub_0205B354

	arm_func_start sub_0205B39C
sub_0205B39C: ; 0x0205B39C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, r1
	bl sub_02025888
	mov r7, r0
	b _0205B3C0
_0205B3B4:
	cmp r5, r0
	bge _0205B3CC
	add r4, r4, #2
_0205B3C0:
	ldrsb r0, [r4]
	cmp r0, #0
	bge _0205B3B4
_0205B3CC:
	mov r6, #0
	strb r6, [r7]
	ldrsb r0, [r4, #1]
	cmp r0, #0
	beq _0205B420
	ldr r5, _0205B434 ; =_020A353C
	b _0205B3F8
_0205B3E8:
	mov r0, r7
	mov r1, r5
	bl strcat
	add r6, r6, #1
_0205B3F8:
	ldrsb r1, [r4, #1]
	add r0, r1, r1, lsr #31
	cmp r6, r0, asr #1
	blt _0205B3E8
	tst r1, #1
	beq _0205B42C
	ldr r1, _0205B438 ; =_020A3544
	mov r0, r7
	bl strcat
	b _0205B42C
_0205B420:
	ldr r1, _0205B43C ; =_020A354C
	mov r0, r7
	bl strcat
_0205B42C:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205B434: .word _020A353C
_0205B438: .word _020A3544
_0205B43C: .word _020A354C
	arm_func_end sub_0205B39C

	arm_func_start sub_0205B440
sub_0205B440: ; 0x0205B440
	ldr r0, _0205B448 ; =_020A3550
	bx lr
	.align 2, 0
_0205B448: .word _020A3550
	arm_func_end sub_0205B440

	arm_func_start sub_0205B44C
sub_0205B44C: ; 0x0205B44C
	ldr r1, _0205B468 ; =_022B5910
	ldr r0, _0205B46C ; =_020B0A54
	ldr r2, _0205B470 ; =_022B57C0
	str r1, [r0]
	ldr r1, _0205B474 ; =_022B580C
	stmib r0, {r1, r2}
	bx lr
	.align 2, 0
_0205B468: .word _022B5910
_0205B46C: .word _020B0A54
_0205B470: .word _022B57C0
_0205B474: .word _022B580C
	arm_func_end sub_0205B44C

	arm_func_start sub_0205B478
sub_0205B478: ; 0x0205B478
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl sub_0204A198
	ldrb r1, [sp, #3]
	ldr r0, _0205B54C ; =_020B0A54
	ldrb r2, [sp, #2]
	mov r1, r1, lsl #0x10
	ldrb r3, [sp, #4]
	orr r1, r1, r2, lsl #24
	ldrb r2, [sp, #5]
	orr r1, r1, r3, lsl #8
	ldr r0, [r0]
	orr ip, r2, r1
	ldr r3, _0205B550 ; =_022B57BC
	mov r1, #0
	mov r2, #0x1600
	str ip, [r3]
	bl MemsetSimple
	ldr r0, _0205B54C ; =_020B0A54
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, #0x4c
	bl MemsetSimple
	mov lr, #0
	ldr r2, _0205B54C ; =_020B0A54
	mov r0, lr
	mov r1, #0xb0
_0205B4E8:
	mul ip, lr, r1
	ldr r3, [r2]
	add lr, lr, #1
	strb r0, [r3, ip]
	ldr r3, [r2]
	cmp lr, #0x20
	add r3, r3, ip
	strh r0, [r3, #0xa2]
	blt _0205B4E8
	ldr r1, _0205B54C ; =_020B0A54
	mov ip, #0
	ldr r2, [r1, #4]
	mvn r3, #0
	str r0, [r2]
_0205B520:
	ldr r2, [r1, #4]
	add r2, r2, r0, lsl #3
	str ip, [r2, #4]
	ldr r2, [r1, #4]
	add r2, r2, r0, lsl #3
	add r0, r0, #1
	str r3, [r2, #8]
	cmp r0, #0x20
	blt _0205B520
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205B54C: .word _020B0A54
_0205B550: .word _022B57BC
	arm_func_end sub_0205B478

	arm_func_start sub_0205B554
sub_0205B554: ; 0x0205B554
	ldr ip, _0205B55C ; =sub_0205B560
	bx ip
	.align 2, 0
_0205B55C: .word sub_0205B560
	arm_func_end sub_0205B554

	arm_func_start sub_0205B560
sub_0205B560: ; 0x0205B560
	ldr r3, [r0]
	ldr r2, [r1]
	cmp r3, r2
	ldreq r2, [r0, #4]
	ldreq r0, [r1, #4]
	cmpeq r2, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_0205B560

	arm_func_start sub_0205B584
sub_0205B584: ; 0x0205B584
	stmdb sp!, {r4, lr}
	ldr r1, _0205B5A4 ; =_022B57BC
	mov r4, r0
	ldr r0, [r1]
	str r0, [r4]
	bl sub_02048C3C
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205B5A4: .word _022B57BC
	arm_func_end sub_0205B584

	arm_func_start sub_0205B5A8
sub_0205B5A8: ; 0x0205B5A8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc4
	ldr lr, _0205B688 ; =_020A3678
	add ip, sp, #0x14
	mov r4, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r5, #0xb
_0205B5CC:
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0205B5CC
	strb r8, [sp, #0x18]
	strb r7, [sp, #0x19]
	bl GetLanguageType
	strb r0, [sp, #0x30]
	mov r0, #2
	strb r6, [sp, #0xc0]
	bl RandInt
	orr r0, r0, #2
	strb r0, [sp, #0xc2]
	bl sub_02063504
	mov r5, r0
	bl Rand16Bit
	orr r0, r0, r5, lsl #16
	bl sub_020510E8
	strb r4, [sp, #0x14]
	bl sub_02051134
	str r0, [sp, #0x2c]
	bl sub_02051134
	str r0, [sp, #0xbc]
	bl sub_02051134
	bic r0, r0, #0xff000000
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xbc]
	bl sub_020634F4
	ldr r1, _0205B68C ; =0x000038C9
	add r0, sp, #0
	bl GetStringFromFileVeneer
	add r0, sp, #0x31
	add r1, sp, #0
	bl StrcpyName
	cmp r4, #1
	bne _0205B668
	add r0, sp, #0x18
	bl sub_0205BAB0
	b _0205B680
_0205B668:
	cmp r4, #5
	add r0, sp, #0x14
	bne _0205B67C
	bl sub_0205B738
	b _0205B680
_0205B67C:
	bl sub_0205B6EC
_0205B680:
	add sp, sp, #0xc4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205B688: .word _020A3678
#ifdef EUROPE
_0205B68C: .word 0x000038CB
#else
_0205B68C: .word 0x000038C9
#endif
	arm_func_end sub_0205B5A8

	arm_func_start sub_0205B690
sub_0205B690: ; 0x0205B690
	ldr r1, _0205B6C8 ; =_020B0A54
	mov r0, #2
	ldr r3, [r1]
	mov r1, #0xb0
	b _0205B6B8
_0205B6A4:
	mul r2, r0, r1
	ldrb r2, [r3, r2]
	cmp r2, #0
	bxeq lr
	add r0, r0, #1
_0205B6B8:
	cmp r0, #0x20
	blt _0205B6A4
	mvn r0, #0
	bx lr
	.align 2, 0
_0205B6C8: .word _020B0A54
	arm_func_end sub_0205B690

	arm_func_start sub_0205B6CC
sub_0205B6CC: ; 0x0205B6CC
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0xc]
	cmp r1, #0
	cmpeq r0, #2
	mov r0, #0
	movhs r0, #1
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_0205B6CC

	arm_func_start sub_0205B6EC
sub_0205B6EC: ; 0x0205B6EC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0205B690
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, _0205B734 ; =_020B0A54
	mov r1, #0xb0
	ldr r2, [r2]
	mov ip, #0xb
	mla lr, r0, r1, r2
_0205B71C:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0205B71C
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205B734: .word _020B0A54
	arm_func_end sub_0205B6EC

	arm_func_start sub_0205B738
sub_0205B738: ; 0x0205B738
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0205B778 ; =_020B0A54
	mov r5, r0
	ldr r1, [r1]
	mov r4, #0
	ldrb r0, [r1, #0xb0]
	add lr, r1, #0xb0
	mov ip, #0xb
	cmp r0, #0
	movne r4, #1
_0205B760:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0205B760
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205B778: .word _020B0A54
	arm_func_end sub_0205B738

	arm_func_start sub_0205B77C
sub_0205B77C: ; 0x0205B77C
	ldr r2, _0205B790 ; =_020B0A54
	mov r1, #0xb0
	ldr r2, [r2]
	mla r0, r1, r0, r2
	bx lr
	.align 2, 0
_0205B790: .word _020B0A54
	arm_func_end sub_0205B77C

	arm_func_start sub_0205B794
sub_0205B794: ; 0x0205B794
	stmdb sp!, {r4, lr}
	ldr r3, _0205B7C4 ; =_020B0A54
	mov r2, #0xb0
	ldr r3, [r3]
	mov r4, r0
	mla lr, r1, r2, r3
	mov ip, #0xb
_0205B7B0:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0205B7B0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205B7C4: .word _020B0A54
	arm_func_end sub_0205B794

	arm_func_start sub_0205B7C8
sub_0205B7C8: ; 0x0205B7C8
	stmdb sp!, {r4, lr}
	mov r2, #0xb0
	mul r4, r0, r2
	ldr r0, _0205B808 ; =_020B0A54
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, r4
	bl MemsetSimple
	ldr r0, _0205B808 ; =_020B0A54
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, r4]
	ldr r0, [r0]
	add r0, r0, r4
	strh r2, [r0, #0xa2]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205B808: .word _020B0A54
	arm_func_end sub_0205B7C8

	arm_func_start sub_0205B80C
sub_0205B80C: ; 0x0205B80C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, #0
	ldr r7, _0205B88C ; =_020B0A54
	mov r8, sl
	mov sb, #1
	mov r4, #0xb0
	mov r6, sl
	mov r5, #2
_0205B82C:
	mov r0, sl, lsl #0x18
	ldr r1, [r7]
	mov r0, r0, asr #0x18
	mla r2, r0, r4, r1
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0xc]
	cmp r0, r6
	cmpeq r1, r5
	movhs r0, sb
	movlo r0, r8
	tst r0, #0xff
	ldrneb r0, [r2, #0xad]
	cmpne r0, #0
	ldrneb r0, [r2]
	cmpne r0, #1
	cmpne r0, #7
	beq _0205B87C
	mov r0, sl, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205B7C8
_0205B87C:
	add sl, sl, #1
	cmp sl, #0x20
	blt _0205B82C
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0205B88C: .word _020B0A54
	arm_func_end sub_0205B80C

	arm_func_start sub_0205B890
sub_0205B890: ; 0x0205B890
	ldr r1, _0205B8C8 ; =_020B0A54
	ldr r2, [r0]
	ldr r3, [r1, #4]
	ldr r0, [r0, #4]
	ldr r1, [r3]
	add r1, r3, r1, lsl #3
	str r2, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r3]
	cmp r0, #0x1f
	addlt r0, r0, #1
	movge r0, #0
	str r0, [r3]
	bx lr
	.align 2, 0
_0205B8C8: .word _020B0A54
	arm_func_end sub_0205B890

	arm_func_start sub_0205B8CC
sub_0205B8CC: ; 0x0205B8CC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0205B914 ; =_020B0A54
	b _0205B904
_0205B8E0:
	ldr r0, [r4, #4]
	mov r1, r6
	add r0, r0, #4
	add r0, r0, r5, lsl #3
	bl sub_0205B560
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
_0205B904:
	cmp r5, #0x20
	blt _0205B8E0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205B914: .word _020B0A54
	arm_func_end sub_0205B8CC

	arm_func_start sub_0205B918
sub_0205B918: ; 0x0205B918
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	ldr r8, _0205B978 ; =_020B0A54
	mov r7, #0xb0
	b _0205B968
_0205B934:
	mul r1, r4, r7
	ldr r2, [r8]
	ldrb r0, [r2, r1]
	add r2, r2, r1
	cmp r6, r0
	bne _0205B964
	mov r1, r5
	add r0, r2, #0x14
	bl sub_0205B560
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_0205B964:
	add r4, r4, #1
_0205B968:
	cmp r4, #0x20
	blt _0205B934
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205B978: .word _020B0A54
	arm_func_end sub_0205B918

	arm_func_start GetSosMailCount
GetSosMailCount: ; 0x0205B97C
	stmdb sp!, {r3, lr}
	cmp r1, #0
	ldr r1, _0205B9C4 ; =_020B0A54
	mov r3, #0
	movne lr, #2
	ldr ip, [r1]
	moveq lr, r3
	mov r1, #0xb0
	b _0205B9B4
_0205B9A0:
	mul r2, lr, r1
	ldrb r2, [ip, r2]
	add lr, lr, #1
	cmp r0, r2
	addeq r3, r3, #1
_0205B9B4:
	cmp lr, #0x20
	blt _0205B9A0
	mov r0, r3
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205B9C4: .word _020B0A54
	arm_func_end GetSosMailCount

	arm_func_start sub_0205B9C8
sub_0205B9C8: ; 0x0205B9C8
	ldr r1, _0205BA08 ; =_020B0A54
	cmp r0, #0
	ldr r3, [r1]
	mov r0, #0
	movne ip, #2
	moveq ip, r0
	mov r1, #0xb0
	b _0205B9FC
_0205B9E8:
	mul r2, ip, r1
	ldrb r2, [r3, r2]
	add ip, ip, #1
	cmp r2, #0
	addne r0, r0, #1
_0205B9FC:
	cmp ip, #0x20
	blt _0205B9E8
	bx lr
	.align 2, 0
_0205BA08: .word _020B0A54
	arm_func_end sub_0205B9C8

	arm_func_start sub_0205BA0C
sub_0205BA0C: ; 0x0205BA0C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	ldr r8, _0205BA6C ; =_020B0A54
	mov r7, #0xb0
	b _0205BA5C
_0205BA28:
	mul r1, r4, r7
	ldr r2, [r8]
	ldrb r0, [r2, r1]
	add r2, r2, r1
	cmp r6, r0
	bne _0205BA58
	mov r1, r5
	add r0, r2, #0x14
	bl sub_0205B560
	cmp r0, #0
	movne r0, r4
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_0205BA58:
	add r4, r4, #1
_0205BA5C:
	cmp r4, #0x20
	blt _0205BA28
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205BA6C: .word _020B0A54
	arm_func_end sub_0205BA0C

	arm_func_start sub_0205BA70
sub_0205BA70: ; 0x0205BA70
	ldr r1, _0205BAAC ; =_020B0A54
	mov r3, #0
	ldr ip, [r1]
	mov r1, #0xb0
	b _0205BA9C
_0205BA84:
	mul r2, r3, r1
	ldrb r2, [ip, r2]
	cmp r0, r2
	moveq r0, r3
	bxeq lr
	add r3, r3, #1
_0205BA9C:
	cmp r3, #0x20
	blt _0205BA84
	mvn r0, #0
	bx lr
	.align 2, 0
_0205BAAC: .word _020B0A54
	arm_func_end sub_0205BA70

	arm_func_start sub_0205BAB0
sub_0205BAB0: ; 0x0205BAB0
	stmdb sp!, {r4, lr}
	ldr r1, _0205BB74 ; =_020B0A54
	mov r4, #1
	ldr r3, [r1]
	mov r2, #0
	strb r4, [r3]
	ldr r3, [r1]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [r3, #4]
	str r0, [r3, #8]
	str r2, [r3, #0xc]
	str r2, [r3, #0x10]
	bl sub_02063504
	mov r4, r0
	bl Rand16Bit
	orr r0, r0, r4, lsl #16
	bl sub_020510E8
	bl sub_02051134
	ldr r1, _0205BB74 ; =_020B0A54
	ldr r1, [r1]
	str r0, [r1, #0x18]
	bl sub_020634F4
	ldr r1, _0205BB78 ; =_022B57BC
	ldr r0, _0205BB74 ; =_020B0A54
	ldr r1, [r1]
	ldr r0, [r0]
	str r1, [r0, #0x14]
	bl GetLanguageType
	ldr r1, _0205BB74 ; =_020B0A54
	ldr r2, [r1]
	strb r0, [r2, #0x1c]
	ldr r0, [r1]
	add r0, r0, #0x1d
	bl GetMainTeamNameWithCheck
	ldr r0, _0205BB74 ; =_020B0A54
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	bl GetMaxRescueAttempts
	ldr r1, _0205BB74 ; =_020B0A54
	ldr r1, [r1]
	strb r0, [r1, #0xac]
	mov r0, #2
	bl RandInt
	ldr r1, _0205BB74 ; =_020B0A54
	orr r2, r0, #2
	ldr r0, [r1]
	strb r2, [r0, #0xae]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205BB74: .word _020B0A54
_0205BB78: .word _022B57BC
	arm_func_end sub_0205BAB0

	arm_func_start sub_0205BB7C
sub_0205BB7C: ; 0x0205BB7C
	ldr r3, _0205BBA0 ; =_020B0A54
	mov r2, #0xb0
	ldr r3, [r3]
	mla r3, r1, r2, r3
	ldr r2, [r3, #4]
	ldr r1, [r3, #8]
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0205BBA0: .word _020B0A54
	arm_func_end sub_0205BB7C

	arm_func_start sub_0205BBA4
sub_0205BBA4: ; 0x0205BBA4
	ldr r1, _0205BBF8 ; =_020B0A54
	ldr r3, [r1]
	ldrb r1, [r3]
	cmp r1, #1
	bne _0205BBF0
	ldr r1, [r3, #0x10]
	ldr r2, [r3, #0xc]
	cmp r1, #0
	mov r1, #0
	cmpeq r2, #2
	movhs r1, #1
	tst r1, #0xff
	beq _0205BBF0
	cmp r0, #0
	addne r1, r3, #0xc
	ldmneia r1, {r2, r3}
	stmneia r0, {r2, r3}
	mov r0, #1
	bx lr
_0205BBF0:
	mov r0, #0
	bx lr
	.align 2, 0
_0205BBF8: .word _020B0A54
	arm_func_end sub_0205BBA4

	arm_func_start sub_0205BBFC
sub_0205BBFC: ; 0x0205BBFC
	stmdb sp!, {r4, lr}
	ldr r1, _0205BC2C ; =_020B0A54
	mov r4, r0
	ldr lr, [r1, #8]
	mov ip, #4
_0205BC10:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0205BC10
	ldr r0, [lr]
	str r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205BC2C: .word _020B0A54
	arm_func_end sub_0205BBFC

	arm_func_start sub_0205BC30
sub_0205BC30: ; 0x0205BC30
	stmdb sp!, {r4, lr}
	mov r4, r1
	cmp r0, #0
	bne _0205BC58
	ldr r0, _0205BC90 ; =_020B0A54
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, #0x44
	bl MemsetSimple
	ldmia sp!, {r4, pc}
_0205BC58:
	ldr r2, _0205BC90 ; =_020B0A54
	mov r1, r0
	ldr r0, [r2, #8]
	bl sub_02055F04
	cmp r4, #0
	ldmneia sp!, {r4, pc}
	ldr r0, _0205BC90 ; =_020B0A54
	ldr r0, [r0, #8]
	ldrb r0, [r0, #2]
	bl sub_02051788
	ldr r1, _0205BC90 ; =_020B0A54
	ldr r1, [r1, #8]
	strb r0, [r1, #2]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205BC90: .word _020B0A54
	arm_func_end sub_0205BC30

	arm_func_start sub_0205BC94
sub_0205BC94: ; 0x0205BC94
	ldr r1, _0205BCC0 ; =_020B0A54
	mov r2, #1
	ldr r3, [r1, #8]
	ldrh r1, [r3, #0x44]
	strh r1, [r0]
	ldrh r1, [r3, #0x46]
	strh r1, [r0, #2]
	ldrh r1, [r3, #0x48]
	strh r1, [r0, #4]
	strb r2, [r0]
	bx lr
	.align 2, 0
_0205BCC0: .word _020B0A54
	arm_func_end sub_0205BC94

	arm_func_start sub_0205BCC4
sub_0205BCC4: ; 0x0205BCC4
	stmdb sp!, {r3, lr}
	cmp r0, #0
	bne _0205BCEC
	ldr r0, _0205BD10 ; =_020B0A54
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, #6
	add r0, r0, #0x44
	bl MemsetSimple
	ldmia sp!, {r3, pc}
_0205BCEC:
	ldr r1, _0205BD10 ; =_020B0A54
	ldrh r2, [r0]
	ldr r3, [r1, #8]
	strh r2, [r3, #0x44]
	ldrh r1, [r0, #2]
	strh r1, [r3, #0x46]
	ldrh r0, [r0, #4]
	strh r0, [r3, #0x48]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205BD10: .word _020B0A54
	arm_func_end sub_0205BCC4

	arm_func_start sub_0205BD14
sub_0205BD14: ; 0x0205BD14
	stmdb sp!, {r4, lr}
	ldr r3, _0205BD3C ; =_020B0A54
	mov r2, #0xb0
	ldr r3, [r3]
	mov r4, r0
	mla r0, r1, r2, r3
	ldrb r0, [r0, #0xae]
	bl sub_0205BD40
	str r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205BD3C: .word _020B0A54
	arm_func_end sub_0205BD14

	arm_func_start sub_0205BD40
sub_0205BD40: ; 0x0205BD40
	tst r0, #2
	movne r0, #0
	bxne lr
	tst r0, #1
	movne r0, #2
	moveq r0, #1
	bx lr
	arm_func_end sub_0205BD40

	arm_func_start sub_0205BD5C
sub_0205BD5C: ; 0x0205BD5C
	stmdb sp!, {r3, lr}
	bl sub_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205BD5C

	arm_func_start sub_0205BD78
sub_0205BD78: ; 0x0205BD78
	stmdb sp!, {r3, lr}
	mov r0, #2
	bl RandInt
	orr r0, r0, #2
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205BD78

	arm_func_start sub_0205BD90
sub_0205BD90: ; 0x0205BD90
	and r0, r0, #1
	orr r0, r0, #2
	bx lr
	arm_func_end sub_0205BD90

	arm_func_start sub_0205BD9C
sub_0205BD9C: ; 0x0205BD9C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl sub_02050974
	ldr r1, _0205BFA8 ; =_022B57BC
	add r0, sp, #0
	mov r2, #0x20
	bl CopyBitsFrom
	ldr r5, _0205BFAC ; =_020B0A54
	mov r7, #0
	add r6, sp, #0
	mov r4, #0xb0
_0205BDD8:
	ldr r1, [r5]
	mov r0, r6
	mla r1, r7, r4, r1
	bl sub_0205C19C
	add r7, r7, #1
	cmp r7, #0x20
	blt _0205BDD8
	ldr r0, _0205BFAC ; =_020B0A54
	mov r1, #0
	ldr r4, [r0, #8]
	mov r2, #0x44
	mov r0, r4
	bl memset
	add r0, sp, #0
	mov r1, r4
	mov r2, #4
	bl CopyBitsFrom
	add r0, sp, #0
	add r1, r4, #1
	mov r2, #7
	bl CopyBitsFrom
	add r0, sp, #0
	add r1, r4, #2
	bl Copy16BitsFrom
	add r0, sp, #0
	add r1, r4, #4
	mov r2, #0xb
	bl CopyBitsFrom
	add r0, sp, #0
	add r1, r4, #6
	bl sub_02059AE8
	add r0, sp, #0
	add r1, r4, #7
	bl sub_02059AE8
	add r0, sp, #0
	add r1, r4, #8
	mov r2, #0xa
	bl CopyBitsFrom
	add r0, sp, #0
	add r1, r4, #0xa
	mov r2, #0xa
	bl CopyBitsFrom
	add r0, sp, #0
	add r1, r4, #0xc
	mov r2, #8
	bl CopyBitsFrom
	add r0, sp, #0
	add r1, r4, #0xd
	mov r2, #8
	bl CopyBitsFrom
	add r0, sp, #0
	add r1, r4, #0xe
	mov r2, #8
	bl CopyBitsFrom
	add r0, sp, #0
	add r1, r4, #0xf
	mov r2, #8
	bl CopyBitsFrom
	add r0, sp, #0
	add r1, r4, #0x10
	mov r2, #0x18
	bl CopyBitsFrom
	add r0, sp, #0
	add r1, r4, #0x14
	mov r2, #0x45
	bl CopyBitsFrom
	add r0, sp, #0
	add r1, r4, #0x20
	mov r2, #4
	bl CopyBitsFrom
	add r0, sp, #0
	add r1, r4, #0x22
	bl CopyMovesetFrom
	add r0, sp, #0
	add r1, r4, #0x3a
	mov r2, #0x50
	bl CopyBitsFrom
	ldr r0, _0205BFAC ; =_020B0A54
	mov r1, #0
	ldr r4, [r0, #8]
	mov r2, #6
	add r0, r4, #0x44
	bl memset
	add r0, sp, #0
	add r1, r4, #0x46
	mov r2, #0xb
	bl CopyBitsFrom
	add r0, sp, #0
	add r1, r4, #0x48
	mov r2, #0xb
	bl CopyBitsFrom
	ldr r1, _0205BFAC ; =_020B0A54
	add r0, sp, #0
	ldr r1, [r1, #4]
	mov r2, #0x20
	bl CopyBitsFrom
	ldr r4, _0205BFAC ; =_020B0A54
	mov r7, #0
	add r6, sp, #0
	mov r5, #0x40
_0205BF68:
	ldr r1, [r4, #4]
	mov r0, r6
	add r1, r1, #4
	mov r2, r5
	add r1, r1, r7, lsl #3
	bl CopyBitsFrom
	add r7, r7, #1
	cmp r7, #0x20
	blt _0205BF68
	add r0, sp, #0
	bl sub_020509BC
	bl Rand16Bit
	bl sub_020634F4
	ldr r0, [sp, #8]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205BFA8: .word _022B57BC
_0205BFAC: .word _020B0A54
	arm_func_end sub_0205BD9C

	arm_func_start sub_0205BFB0
sub_0205BFB0: ; 0x0205BFB0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl sub_02050990
	ldr r1, _0205C194 ; =_022B57BC
	add r0, sp, #0
	mov r2, #0x20
	bl CopyBitsTo
	ldr r5, _0205C198 ; =_020B0A54
	mov r7, #0
	add r6, sp, #0
	mov r4, #0xb0
_0205BFEC:
	ldr r1, [r5]
	mov r0, r6
	mla r1, r7, r4, r1
	bl sub_0205C440
	add r7, r7, #1
	cmp r7, #0x20
	blt _0205BFEC
	ldr r1, _0205C198 ; =_020B0A54
	add r0, sp, #0
	ldr r4, [r1, #8]
	mov r2, #4
	mov r1, r4
	bl CopyBitsTo
	add r0, sp, #0
	add r1, r4, #1
	mov r2, #7
	bl CopyBitsTo
	add r0, sp, #0
	add r1, r4, #2
	bl sub_020515C4
	add r0, sp, #0
	add r1, r4, #4
	mov r2, #0xb
	bl CopyBitsTo
	add r0, sp, #0
	add r1, r4, #6
	bl sub_02059AF8
	add r0, sp, #0
	add r1, r4, #7
	bl sub_02059AF8
	add r0, sp, #0
	add r1, r4, #8
	mov r2, #0xa
	bl CopyBitsTo
	add r0, sp, #0
	add r1, r4, #0xa
	mov r2, #0xa
	bl CopyBitsTo
	add r0, sp, #0
	add r1, r4, #0xc
	mov r2, #8
	bl CopyBitsTo
	add r0, sp, #0
	add r1, r4, #0xd
	mov r2, #8
	bl CopyBitsTo
	add r0, sp, #0
	add r1, r4, #0xe
	mov r2, #8
	bl CopyBitsTo
	add r0, sp, #0
	add r1, r4, #0xf
	mov r2, #8
	bl CopyBitsTo
	add r0, sp, #0
	add r1, r4, #0x10
	mov r2, #0x18
	bl CopyBitsTo
	add r0, sp, #0
	add r1, r4, #0x14
	mov r2, #0x45
	bl CopyBitsTo
	add r0, sp, #0
	add r1, r4, #0x20
	mov r2, #4
	bl CopyBitsTo
	add r0, sp, #0
	add r1, r4, #0x22
	bl CopyMovesetTo
	add r0, sp, #0
	add r1, r4, #0x3a
	mov r2, #0x50
	bl CopyBitsTo
	ldr r1, _0205C198 ; =_020B0A54
	add r0, sp, #0
	ldr r4, [r1, #8]
	mov r2, #0xb
	add r1, r4, #0x46
	bl CopyBitsTo
	add r0, sp, #0
	add r1, r4, #0x48
	mov r2, #0xb
	bl CopyBitsTo
	ldr r1, _0205C198 ; =_020B0A54
	add r0, sp, #0
	ldr r1, [r1, #4]
	mov r2, #0x20
	bl CopyBitsTo
	ldr r4, _0205C198 ; =_020B0A54
	mov r7, #0
	add r6, sp, #0
	mov r5, #0x40
_0205C15C:
	ldr r1, [r4, #4]
	mov r0, r6
	add r1, r1, #4
	mov r2, r5
	add r1, r1, r7, lsl #3
	bl CopyBitsTo
	add r7, r7, #1
	cmp r7, #0x20
	blt _0205C15C
	add r0, sp, #0
	bl sub_020509BC
	ldr r0, [sp, #8]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205C194: .word _022B57BC
_0205C198: .word _020B0A54
	arm_func_end sub_0205BFB0

	arm_func_start sub_0205C19C
sub_0205C19C: ; 0x0205C19C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #4
	bl Copy16BitsFrom
	mov r0, r5
	add r1, r4, #8
	mov r2, #0x18
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xc
	mov r2, #0x40
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0x40
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x1c
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x1d
	mov r2, #0x50
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x32
	mov r2, #0x120
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x56
	mov r2, #0x240
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xa0
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xa2
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xa4
	mov r2, #0x40
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xac
	mov r2, #8
	bl CopyBitsFrom
	mov r0, r5
	add r1, sp, #0
	mov r2, #1
	bl CopyBitsFrom
	ldrb r0, [sp]
	add r1, r4, #0xae
	mov r2, #2
	cmp r0, #0
	movne r3, #1
	moveq r3, #0
	mov r0, r5
	strb r3, [r4, #0xad]
	bl CopyBitsFrom
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205C19C

	arm_func_start sub_0205C2A4
sub_0205C2A4: ; 0x0205C2A4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #4
	bl sub_02051648
	ldrb r0, [r4]
	cmp r0, #1
	movne r0, #0
	strne r0, [r4, #8]
	bne _0205C2EC
	mov r0, r5
	add r1, r4, #8
	mov r2, #0x18
	bl CopyBitsFrom
_0205C2EC:
	mov r3, #0
	str r3, [r4, #0xc]
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0x40
	str r3, [r4, #0x10]
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x1c
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x1d
	mov r2, #0x50
	bl CopyBitsFrom
	ldrb r0, [r4]
	cmp r0, #1
	moveq r0, #0
	streqh r0, [r4, #0xa0]
	streqh r0, [r4, #0xa2]
	beq _0205C360
	mov r0, r5
	add r1, r4, #0xa0
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xa2
	mov r2, #0xa
	bl CopyBitsFrom
_0205C360:
	mov r0, r5
	add r1, r4, #0xa4
	mov r2, #0x40
	bl CopyBitsFrom
	ldrb r0, [r4, #4]
	bl GetMaxRescueAttempts
	strb r0, [r4, #0xac]
	mov r2, #1
	add r1, sp, #0
	mov r0, r5
	strb r2, [r4, #0xad]
	bl CopyBitsFrom
	ldrb r0, [sp]
	add r1, sp, #0
	cmp r0, #0
	moveq r2, #0
	movne r2, #1
	strb r2, [r4, #0xae]
	mov r0, r5
	mov r2, #1
	bl CopyBitsFrom
	ldrb r0, [sp]
	cmp r0, #1
	moveq r1, #2
	ldrb r0, [r4, #0xae]
	movne r1, #0
	orr r0, r0, r1
	strb r0, [r4, #0xae]
	ldrb r0, [r4]
	cmp r0, #1
	beq _0205C438
	ldrb r0, [r4, #0xae]
	bl sub_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	beq _0205C438
	add r1, sp, #4
	mov r0, r5
	mov r2, #1
	bl CopyBitsFrom
	add r1, sp, #2
	mov r0, r5
	mov r2, #1
	bl CopyBitsFrom
	ldrh r1, [r4, #0xa0]
	ldrh r0, [sp, #4]
	orr r0, r1, r0, lsl #10
	strh r0, [r4, #0xa0]
	ldrsh r1, [r4, #0xa2]
	ldrsh r0, [sp, #2]
	orr r0, r1, r0, lsl #10
	strh r0, [r4, #0xa2]
_0205C438:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205C2A4

	arm_func_start sub_0205C440
sub_0205C440: ; 0x0205C440
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #4
	bl sub_020515C4
	mov r0, r5
	add r1, r4, #8
	mov r2, #0x18
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xc
	mov r2, #0x40
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0x40
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x1c
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x1d
	mov r2, #0x50
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x32
	mov r2, #0x120
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x56
	mov r2, #0x240
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xa0
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xa2
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xa4
	mov r2, #0x40
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xac
	mov r2, #8
	bl CopyBitsTo
	ldrb r0, [r4, #0xad]
	mov r2, #1
	cmp r0, #1
	ldreq r1, _0205C540 ; =_020A3673
	mov r0, r5
	ldrne r1, _0205C544 ; =_020A3670
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xae
	mov r2, #2
	bl CopyBitsTo
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205C540: .word _020A3673
_0205C544: .word _020A3670
	arm_func_end sub_0205C440

	arm_func_start sub_0205C548
sub_0205C548: ; 0x0205C548
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #4
	bl sub_02051620
	ldrb r0, [r4]
	cmp r0, #1
	bne _0205C584
	mov r0, r5
	add r1, r4, #8
	mov r2, #0x18
	bl CopyBitsTo
_0205C584:
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0x40
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x1c
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x1d
	mov r2, #0x50
	bl CopyBitsTo
	ldrb r0, [r4]
	cmp r0, #1
	beq _0205C5E0
	mov r0, r5
	add r1, r4, #0xa0
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xa2
	mov r2, #0xa
	bl CopyBitsTo
_0205C5E0:
	mov r0, r5
	add r1, r4, #0xa4
	mov r2, #0x40
	bl CopyBitsTo
	ldrb r0, [r4, #0xae]
	mov r2, #1
	tst r0, #1
	ldreq r1, _0205C680 ; =_020A3671
	mov r0, r5
	ldrne r1, _0205C684 ; =_020A3672
	bl CopyBitsTo
	ldr r1, _0205C684 ; =_020A3672
	mov r0, r5
	mov r2, #1
	bl CopyBitsTo
	ldrb r0, [r4]
	cmp r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xae]
	bl sub_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r2, [r4, #0xa0]
	add r1, sp, #2
	mov r0, r5
	mov r2, r2, asr #0xa
	strh r2, [sp, #2]
	ldrsh r3, [r4, #0xa2]
	mov r2, #1
	mov r3, r3, asr #0xa
	strh r3, [sp]
	bl CopyBitsTo
	add r1, sp, #0
	mov r0, r5
	mov r2, #1
	bl CopyBitsTo
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205C680: .word _020A3671
_0205C684: .word _020A3672
	arm_func_end sub_0205C548

	arm_func_start sub_0205C688
sub_0205C688: ; 0x0205C688
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl sub_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	bne _0205C6C4
	mov r0, r4
	bl sub_02054F18
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
_0205C6C4:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205C688

	arm_func_start sub_0205C6CC
sub_0205C6CC: ; 0x0205C6CC
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl sub_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	mov r0, r4
	bne _0205C6F8
	bl IsMovesetValidInTimeDarkness
	ldmia sp!, {r4, pc}
_0205C6F8:
	bl IsMovesetValid
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205C6CC

	arm_func_start sub_0205C700
sub_0205C700: ; 0x0205C700
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl sub_0205C688
	cmp r0, #0
	beq _0205C72C
	mov r0, r5
	mov r1, r4
	bl sub_0205C6CC
	cmp r0, #0
	bne _0205C734
_0205C72C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205C734:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205C700

	arm_func_start sub_0205C73C
sub_0205C73C: ; 0x0205C73C
	ldr r1, _0205C750 ; =_022B6F10
	ldr r0, _0205C754 ; =_020B0A60
	ldr ip, _0205C758 ; =sub_020600CC
	str r1, [r0, #0x18]
	bx ip
	.align 2, 0
_0205C750: .word _022B6F10
_0205C754: .word _020B0A60
_0205C758: .word sub_020600CC
	arm_func_end sub_0205C73C

	arm_func_start sub_0205C75C
sub_0205C75C: ; 0x0205C75C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, _0205C850 ; =_020B0A60
	mov r5, #0
_0205C768:
	ldr r1, [r4, #0x18]
	mov r0, r5, lsl #0x18
	add r0, r1, r0, asr #19
	bl ClearMissionData
	add r5, r5, #1
	cmp r5, #8
	blt _0205C768
	ldr r4, _0205C850 ; =_020B0A60
	mov r5, #0
_0205C78C:
	ldr r1, [r4, #0x18]
	mov r0, r5, lsl #0x18
	add r1, r1, #0x100
	add r0, r1, r0, asr #19
	bl ClearMissionData
	add r5, r5, #1
	cmp r5, #8
	blt _0205C78C
	ldr r4, _0205C850 ; =_020B0A60
	mov r5, #0
_0205C7B4:
	ldr r1, [r4, #0x18]
	mov r0, r5, lsl #0x18
	add r1, r1, #0x200
	add r0, r1, r0, asr #19
	bl ClearMissionData
	add r5, r5, #1
	cmp r5, #8
	blt _0205C7B4
	ldr r0, _0205C850 ; =_020B0A60
	ldr r0, [r0, #0x18]
	add r0, r0, #0x300
	bl ClearMissionData
	ldr r0, _0205C850 ; =_020B0A60
	ldr r0, [r0, #0x18]
	add r0, r0, #0x320
	bl ClearMissionData
	mov r0, #0
	ldr r2, _0205C850 ; =_020B0A60
	mov lr, #0xff
	mov ip, #1
	mov r4, r0
	mov r1, #0xc
_0205C80C:
	mul r5, r0, r1
	ldr r3, [r2, #0x18]
	add r0, r0, #1
	add r3, r3, r5
	strb lr, [r3, #0x340]
	ldr r3, [r2, #0x18]
	cmp r0, #0x10
	add r3, r3, r5
	strb ip, [r3, #0x341]
	ldr r3, [r2, #0x18]
	add r3, r3, r5
	str r4, [r3, #0x344]
	ldr r3, [r2, #0x18]
	add r3, r3, r5
	str r4, [r3, #0x348]
	blt _0205C80C
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205C850: .word _020B0A60
	arm_func_end sub_0205C75C

	arm_func_start sub_0205C854
sub_0205C854: ; 0x0205C854
	stmdb sp!, {r3, lr}
	ldrb r1, [r0]
	cmp r1, #4
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl IsMissionValid
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205C854

	arm_func_start sub_0205C870
sub_0205C870: ; 0x0205C870
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0205C8D8
_0205C87C: ; jump table
	b _0205C898 ; case 0
	b _0205C898 ; case 1
	b _0205C898 ; case 2
	b _0205C898 ; case 3
	b _0205C898 ; case 4
	b _0205C8B4 ; case 5
	b _0205C8BC ; case 6
_0205C898:
	ldrsh r1, [r1]
	ldrsh r0, [r2]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
_0205C8B4:
	mov r0, #1
	bx lr
_0205C8BC:
	ldrsh r1, [r1]
	ldrsh r0, [r2]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
_0205C8D8:
	mov r0, #0
	bx lr
	arm_func_end sub_0205C870

	arm_func_start sub_0205C8E0
sub_0205C8E0: ; 0x0205C8E0
	ldrb ip, [r0]
	ldrb r2, [r1]
	cmp ip, r2
	movne r0, #0
	bxne lr
	cmp ip, #0
	bne _0205C910
	ldrh r3, [r0, #2]
	ldrh r2, [r1, #2]
	cmp r3, r2
	movne r0, #0
	bxne lr
_0205C910:
	cmp ip, #1
	bne _0205C92C
	ldrsh r2, [r0, #2]
	ldrsh r0, [r1, #2]
	cmp r2, r0
	movne r0, #0
	bxne lr
_0205C92C:
	mov r0, #1
	bx lr
	arm_func_end sub_0205C8E0

	arm_func_start sub_0205C934
sub_0205C934: ; 0x0205C934
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldrb r1, [r5, #1]
	ldrb r0, [r4, #1]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #2]
	ldrb r0, [r4, #2]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #5]
	ldrb r0, [r4, #5]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #8]
	ldr r0, [r4, #8]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrsh r1, [r5, #0xe]
	ldrsh r0, [r4, #0xe]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrsh r1, [r5, #0x10]
	ldrsh r0, [r4, #0x10]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrsh r1, [r5, #0x12]
	ldrsh r0, [r4, #0x12]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrsh r1, [r5, #0x14]
	ldrsh r0, [r4, #0x14]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x16]
	ldrb r1, [r4, #0x16]
	cmp r0, r1
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	add r1, r5, #0x18
	add r2, r4, #0x18
	bl sub_0205C870
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r5, #0x1a
	add r1, r4, #0x1a
	bl sub_0205C8E0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205C934

	arm_func_start IsMissionValid
IsMissionValid: ; 0x0205CA40
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r1, [r4, #1]
	cmp r1, #0xd
	blo _0205CA6C
	cmp r1, #0xe
	beq _0205CA6C
	ldr r0, _0205CF10 ; =_020A3728
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CA6C:
	cmp r1, #7
	bne _0205CA94
	ldrb r0, [r4, #4]
	bl GetMaxItemsAllowed
	cmp r0, #0
	bne _0205CA94
	ldr r0, _0205CF14 ; =_020A373C
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CA94:
	ldrb r2, [r4, #2]
	ldrb r1, [r4, #1]
	cmp r2, #0
	moveq r0, #1
	beq _0205CBC0
	cmp r1, #0xe
	addls pc, pc, r1, lsl #2
	b _0205CBB0
_0205CAB4: ; jump table
	b _0205CBB0 ; case 0
	b _0205CAF0 ; case 1
	b _0205CB04 ; case 2
	b _0205CB18 ; case 3
	b _0205CB2C ; case 4
	b _0205CBB0 ; case 5
	b _0205CB40 ; case 6
	b _0205CBB0 ; case 7
	b _0205CBB0 ; case 8
	b _0205CB7C ; case 9
	b _0205CB54 ; case 10
	b _0205CB68 ; case 11
	b _0205CBB0 ; case 12
	b _0205CBB0 ; case 13
	b _0205CB90 ; case 14
_0205CAF0:
	cmp r2, #4
	movlo r0, #1
	movhs r0, #0
	and r0, r0, #0xff
	b _0205CBC0
_0205CB04:
	cmp r2, #2
	movlo r0, #1
	movhs r0, #0
	and r0, r0, #0xff
	b _0205CBC0
_0205CB18:
	cmp r2, #4
	movlo r0, #1
	movhs r0, #0
	and r0, r0, #0xff
	b _0205CBC0
_0205CB2C:
	cmp r2, #1
	movlo r0, #1
	movhs r0, #0
	and r0, r0, #0xff
	b _0205CBC0
_0205CB40:
	cmp r2, #5
	movlo r0, #1
	movhs r0, #0
	and r0, r0, #0xff
	b _0205CBC0
_0205CB54:
	cmp r2, #8
	movlo r0, #1
	movhs r0, #0
	and r0, r0, #0xff
	b _0205CBC0
_0205CB68:
	cmp r2, #6
	movlo r0, #1
	movhs r0, #0
	and r0, r0, #0xff
	b _0205CBC0
_0205CB7C:
	cmp r2, #3
	movlo r0, #1
	movhs r0, #0
	and r0, r0, #0xff
	b _0205CBC0
_0205CB90:
	cmp r2, #2
	moveq r0, #0
	beq _0205CBC0
	cmp r2, #3
	movlo r0, #1
	movhs r0, #0
	and r0, r0, #0xff
	b _0205CBC0
_0205CBB0:
	cmp r2, #1
	movlo r0, #1
	movhs r0, #0
	and r0, r0, #0xff
_0205CBC0:
	cmp r0, #0
	bne _0205CBD8
	ldr r0, _0205CF18 ; =_020A3764
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CBD8:
	mov r0, r1
	add r1, r4, #2
	add r2, r4, #4
	bl sub_0205CF58
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #1]
	ldrsh r2, [r4, #0xe]
	add r1, r4, #2
	mov r3, #1
	bl sub_0205D008
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #1]
	ldrsh r2, [r4, #0x10]
	add r1, r4, #2
	mov r3, #0
	bl sub_0205D008
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl sub_0205E1E8
	cmp r0, #0
	ldrnesh r2, [r4, #0xe]
	ldrnesh r1, [r4, #0x10]
	cmpne r1, r2
	beq _0205CC60
	ldr r0, _0205CF1C ; =_020A377C
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CC60:
	ldrb r0, [r4, #1]
	cmp r0, #0xb
	ldreqb r1, [r4, #2]
	cmpeq r1, #0
	beq _0205CC84
	cmp r0, #0xa
	ldreqb r1, [r4, #2]
	cmpeq r1, #6
	bne _0205CCA4
_0205CC84:
	ldrsh r2, [r4, #0x12]
	add r1, r4, #2
	mov r3, #0
	bl sub_0205D008
	cmp r0, #0
	bne _0205CCC0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CCA4:
	ldrsh r1, [r4, #0x12]
	cmp r1, #0
	beq _0205CCC0
	ldr r0, _0205CF20 ; =_020A37A0
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CCC0:
	ldrb r0, [r4, #1]
	ldrsh r2, [r4, #0x14]
	add r1, r4, #2
	bl sub_0205D11C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r4, #0x16]
	cmp r1, #7
	bne _0205CCF8
	ldr r0, _0205CF24 ; =_020A37D0
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CCF8:
	cmp r1, #8
	blo _0205CD10
	ldr r0, _0205CF24 ; =_020A37D0
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CD10:
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0205CE1C
_0205CD1C: ; jump table
	b _0205CE24 ; case 0
	b _0205CD38 ; case 1
	b _0205CD38 ; case 2
	b _0205CD38 ; case 3
	b _0205CD38 ; case 4
	b _0205CE24 ; case 5
	b _0205CD9C ; case 6
_0205CD38:
	ldrsh r1, [r4, #0x18]
	cmp r1, #0
	bne _0205CD54
	ldr r0, _0205CF28 ; =_020A37E8
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CD54:
	mov r0, r1
	bl IsItemValidVeneer
	cmp r0, #0
	bne _0205CD78
	ldrsh r1, [r4, #0x18]
	ldr r0, _0205CF28 ; =_020A37E8
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CD78:
	ldrsh r0, [r4, #0x18]
	bl IsStorableItem
	cmp r0, #0
	bne _0205CE24
	ldrsh r1, [r4, #0x18]
	ldr r0, _0205CF2C ; =_020A3808
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CD9C:
	ldrsh r1, [r4, #0xe]
	cmp r1, #0
	bne _0205CDB8
	ldr r0, _0205CF30 ; =_020A3830
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CDB8:
	ldr r0, _0205CF34 ; =0x00000483
	cmp r1, r0
	blt _0205CDD4
	ldr r0, _0205CF38 ; =_020A3854
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CDD4:
	ldrsh r0, [r4, #0x18]
	bl sub_02062B64
	cmp r0, #0
	beq _0205CDF8
	ldrsh r1, [r4, #0x18]
	ldr r0, _0205CF3C ; =_020A387C
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CDF8:
	ldrb r0, [r4, #1]
	cmp r0, #0xb
	beq _0205CE24
	ldrsh r0, [r4, #0x18]
	bl IsMonsterMissionAllowed
	cmp r0, #0
	bne _0205CE24
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CE1C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CE24:
	ldrb r1, [r4, #0x1a]
	cmp r1, #2
	blo _0205CE40
	ldr r0, _0205CF40 ; =_020A38B4
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CE40:
	cmp r1, #0
	bne _0205CE68
	ldrh r2, [r4, #0x1c]
	cmp r2, #0x12
	blo _0205CE68
	ldr r0, _0205CF44 ; =_020A38D0
	mov r1, r2
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CE68:
	cmp r1, #1
	bne _0205CF08
	ldrsh r0, [r4, #0x1c]
	ldr r1, _0205CF34 ; =0x00000483
	cmp r0, r1
	blt _0205CE90
	ldr r0, _0205CF48 ; =_020A38F0
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CE90:
	bl sub_02062B64
	cmp r0, #0
	beq _0205CEB0
	ldrsh r1, [r4, #0x1c]
	ldr r0, _0205CF4C ; =_020A3918
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CEB0:
	ldrsh r5, [r4, #0x1c]
	mov r0, r5
	bl GetBaseForm
	cmp r5, r0
	beq _0205CED8
	ldr r0, _0205CF50 ; =_020A3954
	mov r1, r5
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CED8:
	ldrb r0, [r4, #1]
	cmp r0, #0xe
	beq _0205CF08
	mov r0, r5
	bl IsMonsterMissionAllowed
	cmp r0, #0
	bne _0205CF08
	ldrsh r1, [r4, #0x1c]
	ldr r0, _0205CF54 ; =_020A3984
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205CF08:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205CF10: .word _020A3728
_0205CF14: .word _020A373C
_0205CF18: .word _020A3764
_0205CF1C: .word _020A377C
_0205CF20: .word _020A37A0
_0205CF24: .word _020A37D0
_0205CF28: .word _020A37E8
_0205CF2C: .word _020A3808
_0205CF30: .word _020A3830
_0205CF34: .word 0x00000483
_0205CF38: .word _020A3854
_0205CF3C: .word _020A387C
_0205CF40: .word _020A38B4
_0205CF44: .word _020A38D0
_0205CF48: .word _020A38F0
_0205CF4C: .word _020A3918
_0205CF50: .word _020A3954
_0205CF54: .word _020A3984
	arm_func_end IsMissionValid

	arm_func_start sub_0205CF58
sub_0205CF58: ; 0x0205CF58
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	cmp r7, #6
	ldreqb r0, [r6]
	mov r5, r2
	cmpeq r0, #4
	beq _0205CFF4
	cmp r7, #0xe
	beq _0205CFF4
	ldrb r0, [r5]
	bl IsInvalidForMission
	cmp r0, #0
	beq _0205CFA4
	ldrb r1, [r5]
	ldr r0, _0205CFFC ; =_020A39C0
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0205CFA4:
	ldrb r4, [r5, #1]
	ldrb r2, [r5]
	mov r0, r7
	mov r1, r6
	bl sub_02063424
	cmp r4, r0
	ble _0205CFD4
	ldr r0, _0205D000 ; =_020A39D4
	mov r1, r4
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0205CFD4:
	mov r0, r5
	bl IsForbiddenFloor
	cmp r0, #0
	beq _0205CFF4
	ldr r0, _0205D004 ; =_020A39F0
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0205CFF4:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205CFFC: .word _020A39C0
_0205D000: .word _020A39D4
_0205D004: .word _020A39F0
	arm_func_end sub_0205CF58

	arm_func_start sub_0205D008
sub_0205D008: ; 0x0205D008
	stmdb sp!, {r4, r5, r6, lr}
	movs r4, r3
	mov r6, r0
	mov r5, r2
	beq _0205D034
	cmp r5, #0
	bne _0205D034
	ldr r0, _0205D104 ; =_020A3A08
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0205D034:
	ldr r0, _0205D108 ; =0x00000483
	cmp r5, r0
	blt _0205D050
	ldr r0, _0205D10C ; =_020A3A24
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0205D050:
	mov r0, r5
	bl GetBaseForm
	cmp r5, r0
	beq _0205D074
	ldr r0, _0205D110 ; =_020A3A44
	mov r1, r5
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0205D074:
	mov r0, r5
	bl sub_02062B64
	cmp r0, #0
	beq _0205D098
	ldr r0, _0205D114 ; =_020A3A6C
	mov r1, r5
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0205D098:
	cmp r4, #0
	beq _0205D0C4
	add r0, r6, #0xfe
	and r0, r0, #0xff
	cmp r0, #3
	bhi _0205D0C4
	mov r0, r5
	bl GetBodySize
	cmp r0, #1
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
_0205D0C4:
	cmp r4, #0
	cmpne r6, #0xa
	cmpne r6, #0xe
	cmpne r6, #0xb
	beq _0205D0FC
	mov r0, r5
	bl IsMonsterMissionAllowed
	cmp r0, #0
	bne _0205D0FC
	ldr r0, _0205D118 ; =_020A3AA0
	mov r1, r5
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0205D0FC:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205D104: .word _020A3A08
_0205D108: .word 0x00000483
_0205D10C: .word _020A3A24
_0205D110: .word _020A3A44
_0205D114: .word _020A3A6C
_0205D118: .word _020A3AA0
	arm_func_end sub_0205D008

	arm_func_start sub_0205D11C
sub_0205D11C: ; 0x0205D11C
	stmdb sp!, {r3, r4, r5, lr}
	movs r4, r2
	mov r5, r0
	bne _0205D140
	ldr r0, _0205D1E8 ; =_020A3AD4
	mov r1, r4
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205D140:
	mov r0, r4
	bl IsValidTargetItem
	cmp r0, #0
	beq _0205D164
	ldr r0, _0205D1E8 ; =_020A3AD4
	mov r1, r4
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205D164:
	mov r0, r4
	bl IsItemValidVeneer
	cmp r0, #0
	bne _0205D188
	ldr r0, _0205D1E8 ; =_020A3AD4
	mov r1, r4
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205D188:
	mov r0, r4
	bl IsThrownItem
	cmp r0, #0
	beq _0205D1C0
	cmp r5, #4
	bne _0205D1C0
	cmp r4, #0xa
	cmpne r4, #9
	beq _0205D1C0
	ldr r0, _0205D1EC ; =_020A3AF4
	mov r1, r4
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205D1C0:
	mov r0, r4
	bl IsStorableItem
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _0205D1F0 ; =_020A3B18
	mov r1, r4
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205D1E8: .word _020A3AD4
_0205D1EC: .word _020A3AF4
_0205D1F0: .word _020A3B18
	arm_func_end sub_0205D11C

	arm_func_start sub_0205D1F4
sub_0205D1F4: ; 0x0205D1F4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl IsMissionValid
	cmp r0, #0
	beq _0205D214
	ldrb r0, [r4]
	cmp r0, #9
	blo _0205D21C
_0205D214:
	mov r0, #0
	ldmia sp!, {r4, pc}
_0205D21C:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205D1F4

	arm_func_start GenerateMission
GenerateMission: ; 0x0205D224
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sb, r0
	add r0, sp, #0x10
	mov r8, r1
	bl sub_0205F738
	str r0, [sp]
	cmp r0, #0
	bne _0205D258
	mov r0, r8
	bl ClearMissionData
	mov r0, #2
	b _0205DF9C
_0205D258:
	mov r0, #4
	strb r0, [r8]
	ldrb r0, [sb, #0x20]
	strb r0, [r8, #1]
	ldrb r0, [sb, #0x21]
	strb r0, [r8, #2]
	ldrh r0, [sb, #8]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0205D414
_0205D280: ; jump table
	b _0205D298 ; case 0
	b _0205D298 ; case 1
	b _0205D414 ; case 2
	b _0205D414 ; case 3
	b _0205D414 ; case 4
	b _0205D338 ; case 5
_0205D298:
	ldrh r0, [sb, #0xc]
	and r1, r0, #0xff
	strb r0, [sp, #4]
	strb r1, [sp, #5]
	ldrh r0, [sb, #8]
	cmp r0, #0
	bne _0205D2C8
	and r0, r1, #0xff
	bl sub_02062BB8
	cmp r0, #0
	moveq r5, #1
	beq _0205D51C
_0205D2C8:
	mov r0, r8
	bl sub_0205E258
	mov r3, r0
	add r1, sp, #4
	add r2, sp, #5
	mov r0, #1
	bl sub_02062C4C
	cmp r0, #0
	bne _0205D304
	mov r0, r8
	bl sub_0205E258
	cmp r0, #0
	movne r5, #1
	moveq r5, #2
	b _0205D51C
_0205D304:
	ldrb r0, [sb, #0x20]
	add r2, sp, #5
	add r1, sb, #0x21
	bl sub_0205CF58
	cmp r0, #0
	moveq r5, #1
	beq _0205D51C
	ldrb r0, [sp, #5]
	mov r5, #0
	strb r0, [r8, #4]
	ldrb r0, [sp, #6]
	strb r0, [r8, #5]
	b _0205D51C
_0205D338:
	add r0, sp, #0xc
	bl sub_02062814
	ldrb r1, [sb, #0x20]
	cmp r1, #3
	ldreqb r1, [sb, #0x21]
	cmpeq r1, #3
	movne r5, #1
	bne _0205D51C
	mov r1, #0xf
	bl MemAlloc
	mov r7, r0
	bl sub_0206282C
	movs r5, r0
	bne _0205D380
	mov r0, r7
	bl MemFree
	mov r5, #1
	b _0205D51C
_0205D380:
	mov r0, r8
	bl sub_0205E258
	mov r3, r0
	add r2, sp, #5
	mov r0, r5
	mov r1, r7
	bl sub_02062C4C
	mov r6, r0
	ldrb r0, [r8, #1]
	ldrb r2, [sp, #5]
	add r1, r8, #2
	bl sub_02063424
	strb r0, [sp, #6]
	add r5, sp, #5
	b _0205D3D8
_0205D3BC:
	mov r0, r5
	bl IsForbiddenFloor
	cmp r0, #0
	beq _0205D3E4
	ldrb r0, [sp, #6]
	sub r0, r0, #1
	strb r0, [sp, #6]
_0205D3D8:
	ldrb r0, [sp, #6]
	cmp r0, #0
	bne _0205D3BC
_0205D3E4:
	mov r0, r7
	bl MemFree
	cmp r6, #0
	ldrneb r0, [sp, #6]
	cmpne r0, #0
	beq _0205D518
	ldrb r0, [sp, #5]
	mov r5, #0
	strb r0, [r8, #4]
	ldrb r0, [sp, #6]
	strb r0, [r8, #5]
	b _0205D51C
_0205D414:
	ldr r0, _0205DFA4 ; =_020B0A60
	mov r5, #1
	ldr r6, [r0, #0xc]
	ldr r7, [r0, #8]
	cmp r6, #0
	moveq r5, #2
	beq _0205D51C
	mov r0, r8
	bl sub_0205E258
	mov r3, r0
	add r2, sp, #5
	mov r0, r6
	mov r1, r7
	bl sub_02062C4C
	cmp r0, #0
	bne _0205D468
	mov r0, r8
	bl sub_0205E258
	cmp r0, #0
	moveq r5, #2
	b _0205D51C
_0205D468:
	ldrb r0, [r8, #1]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _0205D4F8
_0205D478: ; jump table
	b _0205D4F8 ; case 0
	b _0205D4F8 ; case 1
	b _0205D4A4 ; case 2
	b _0205D4A4 ; case 3
	b _0205D4A4 ; case 4
	b _0205D4A4 ; case 5
	b _0205D4C8 ; case 6
	b _0205D4B8 ; case 7
	b _0205D4F8 ; case 8
	b _0205D4F8 ; case 9
	b _0205D4DC ; case 10
_0205D4A4:
	ldrb r0, [sp, #5]
	bl GetMaxMembersAllowed
	cmp r0, #4
	movlt r5, #0
	b _0205D4F8
_0205D4B8:
	ldrb r0, [sp, #5]
	bl GetMaxItemsAllowed
	cmp r0, #0
	moveq r5, #0
_0205D4C8:
	add r0, sp, #5
	bl sub_02062D40
	cmp r0, #0
	moveq r5, #0
	b _0205D4F8
_0205D4DC:
	ldrb r0, [r8, #2]
	cmp r0, #4
	bne _0205D4F8
	ldrb r0, [sp, #5]
	bl GetMaxMembersAllowed
	cmp r0, #4
	movlt r5, #0
_0205D4F8:
	cmp r5, #0
	beq _0205D518
	ldrb r0, [sp, #5]
	mov r5, #0
	strb r0, [r8, #4]
	ldrb r0, [sp, #6]
	strb r0, [r8, #5]
	b _0205D51C
_0205D518:
	mov r5, #1
_0205D51C:
	cmp r5, #0
	beq _0205D534
	mov r0, r8
	bl ClearMissionData
	mov r0, r5
	b _0205DF9C
_0205D534:
	bl sub_02051134
	bic r0, r0, #0xff000000
	str r0, [r8, #8]
	mov r0, #0
	str r0, [sp, #8]
	ldrh r0, [sb, #0xe]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0205D7E4
_0205D558: ; jump table
	b _0205D56C ; case 0
	b _0205D56C ; case 1
	b _0205D62C ; case 2
	b _0205D6F8 ; case 3
	b _0205D77C ; case 4
_0205D56C:
	ldrsh r5, [sb, #0x12]
	ldrb r0, [sb, #0x20]
	add r1, sb, #0x21
	mov r2, r5
	mov r3, #1
	bl sub_0205D008
	cmp r0, #0
	moveq r4, #1
	beq _0205DB40
	ldrb r0, [sb, #0x20]
	cmp r0, #0xb
	ldreqb r0, [sb, #0x21]
	cmpeq r0, #0
	bne _0205D5F0
	ldr r0, _0205DFA8 ; =0x000001EA
	cmp r5, r0
	addne r0, r0, #0x258
	cmpne r5, r0
	movne r1, #1
	moveq r1, #0
	mov r0, r5
	and r1, r1, #0xff
	bl CanMonsterBeUsedForMission
	cmp r0, #0
	moveq r4, #1
	beq _0205DB40
	strh r5, [r8, #0xe]
	ldrh r0, [sb, #0x18]
	mov r4, #0
	strh r0, [r8, #0x10]
	ldrh r0, [sb, #0x1e]
	strh r0, [r8, #0x12]
	b _0205DB40
_0205D5F0:
	ldrh r0, [sb, #0xe]
	cmp r0, #0
	mov r0, r5
	bne _0205D614
	bl CanMonsterBeUsedForMissionWrapper
	cmp r0, #0
	bne _0205D624
	mov r4, #1
	b _0205DB40
_0205D614:
	bl sub_02062AD0
	cmp r0, #0
	moveq r4, #1
	beq _0205DB40
_0205D624:
	strh r5, [r8, #0xe]
	b _0205D7E4
_0205D62C:
	add r0, sp, #8
	add r1, sb, #0xe
	bl sub_0205DFAC
	movs r4, r0
	bne _0205D658
	ldr r0, [sp, #8]
	bl MemFree
	mov r0, #0
	str r0, [sp, #8]
	mov r4, #1
	b _0205DB40
_0205D658:
	bl RandInt
	mov r1, r0, lsl #1
	ldr r2, [sp, #8]
	ldrb r0, [sb, #0x20]
	ldrsh r5, [r2, r1]
	add r1, sb, #0x21
	mov r3, #1
	mov r2, r5
	bl sub_0205D008
	cmp r0, #0
	bne _0205D69C
	ldr r0, [sp, #8]
	bl MemFree
	mov r0, #0
	str r0, [sp, #8]
	mov r4, #1
	b _0205DB40
_0205D69C:
	ldrh r1, [sb, #0xe]
	ldrh r0, [sb, #0x14]
	cmp r1, r0
	ldreqh r1, [sb, #0x10]
	ldreqh r0, [sb, #0x16]
	cmpeq r1, r0
	ldreqh r1, [sb, #0x12]
	ldreqh r0, [sb, #0x18]
	cmpeq r1, r0
	beq _0205D6D8
	ldr r0, [sp, #8]
	mov r4, #0
	bl MemFree
	mov r0, r4
	str r0, [sp, #8]
_0205D6D8:
	strh r5, [r8, #0xe]
	ldrb r0, [r8, #5]
	tst r0, #1
	bne _0205D7E4
	ldrsh r0, [r8, #0xe]
	bl GetSecondFormIfValid
	strh r0, [r8, #0xe]
	b _0205D7E4
_0205D6F8:
	ldrh r4, [sb, #0x10]
	bl sub_020627F4
	ldrh r1, [sb, #0x12]
	add r1, r0, r1, lsl #1
	mov r0, r4
	str r1, [sp, #8]
	bl RandInt
	mov r1, r0, lsl #1
	ldr r2, [sp, #8]
	ldrb r0, [sb, #0x20]
	ldrsh r4, [r2, r1]
	add r1, sb, #0x21
	mov r3, #1
	mov r2, r4
	bl sub_0205D008
	cmp r0, #0
	moveq r4, #1
	beq _0205DB40
	mov r0, r4
	bl sub_02062AD0
	cmp r0, #0
	moveq r4, #1
	beq _0205DB40
	strh r4, [r8, #0xe]
	ldrb r0, [r8, #5]
	tst r0, #1
	bne _0205D770
	ldrsh r0, [r8, #0xe]
	bl GetSecondFormIfValid
	strh r0, [r8, #0xe]
_0205D770:
	mov r4, #0
	str r4, [sp, #8]
	b _0205D7E4
_0205D77C:
	add r0, sp, #8
	bl sub_0205F738
	cmp r0, #0
	moveq r4, #2
	beq _0205DB40
	bl RandIntSafe
	mov r1, r0, lsl #1
	ldr r2, [sp, #8]
	ldrb r0, [sb, #0x20]
	ldrsh r4, [r2, r1]
	add r1, sb, #0x21
	mov r3, #1
	mov r2, r4
	bl sub_0205D008
	cmp r0, #0
	moveq r4, #1
	beq _0205DB40
	strh r4, [r8, #0xe]
	ldrb r0, [r8, #5]
	tst r0, #1
	bne _0205D7DC
	ldrsh r0, [r8, #0xe]
	bl GetSecondFormIfValid
	strh r0, [r8, #0xe]
_0205D7DC:
	mov r4, #0
	str r4, [sp, #8]
_0205D7E4:
	mov r0, r8
	bl sub_0205E1E8
	cmp r0, #0
	beq _0205D820
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0205D80C
	bl MemFree
	mov r0, #0
	str r0, [sp, #8]
_0205D80C:
	ldrsh r0, [r8, #0xe]
	mov r4, #0
	strh r0, [r8, #0x10]
	strh r4, [r8, #0x12]
	b _0205DB40
_0205D820:
	ldrb r1, [r8, #1]
	cmp r1, #0xa
	ldreqb r0, [r8, #2]
	cmpeq r0, #6
	beq _0205D844
	cmp r1, #0xb
	ldreqb r0, [r8, #2]
	cmpeq r0, #0
	bne _0205D84C
_0205D844:
	mov sl, #2
	b _0205D858
_0205D84C:
	mov r0, #0
	strh r0, [r8, #0x12]
	mov sl, #1
_0205D858:
	mov r6, #0
	add fp, sb, #0x14
	b _0205DB34
_0205D864:
	mov r0, #6
	mul r1, r6, r0
	add r5, sb, r1
	ldrh r0, [r5, #0x14]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0205DB30
_0205D880: ; jump table
	b _0205D89C ; case 0
	b _0205D89C ; case 1
	b _0205D938 ; case 2
	b _0205DA30 ; case 3
	b _0205DAC0 ; case 4
	b _0205DB30 ; case 5
	b _0205DAC0 ; case 6
_0205D89C:
	ldrsh r7, [r5, #0x18]
	ldrb r0, [sb, #0x20]
	add r1, sb, #0x21
	mov r2, r7
	mov r3, #0
	bl sub_0205D008
	cmp r0, #0
	moveq r4, #1
	beq _0205DB40
	ldrb r0, [sb, #0x20]
	cmp r0, #0xa
	ldreqb r0, [sb, #0x21]
	cmpeq r0, #6
	bne _0205D8F8
	mov r0, r7
	bl CanMonsterBeUsedForMissionWrapper
	cmp r0, #0
	strneh r7, [r8, #0x10]
	ldrneh r0, [sb, #0x1e]
	moveq r4, #1
	movne r4, #0
	strneh r0, [r8, #0x12]
	b _0205DB40
_0205D8F8:
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	mov r0, r7
	bne _0205D91C
	bl CanMonsterBeUsedForMissionWrapper
	cmp r0, #0
	bne _0205D92C
	mov r4, #1
	b _0205DB40
_0205D91C:
	bl sub_02062AD0
	cmp r0, #0
	moveq r4, #1
	beq _0205DB40
_0205D92C:
	add r0, r8, r6, lsl #1
	strh r7, [r0, #0x10]
	b _0205DB30
_0205D938:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0205D970
	add r1, fp, r1
	add r0, sp, #8
	bl sub_0205DFAC
	movs r4, r0
	bne _0205D970
	ldr r0, [sp, #8]
	bl MemFree
	mov r0, #0
	str r0, [sp, #8]
	mov r4, #1
	b _0205DB40
_0205D970:
	mov r0, r4
	bl RandInt
	ldr r1, [sp, #8]
	mov r0, r0, lsl #1
	ldrsh r5, [r1, r0]
	ldrb r0, [sb, #0x20]
	add r1, sb, #0x21
	mov r2, r5
	mov r3, #0
	bl sub_0205D008
	cmp r0, #0
	bne _0205D9B8
	ldr r0, [sp, #8]
	bl MemFree
	mov r0, #0
	str r0, [sp, #8]
	mov r4, #1
	b _0205DB40
_0205D9B8:
	add r0, r6, #1
	cmp r0, sl
	bge _0205D9F4
	mov r0, #6
	mla r0, r6, r0, sb
	ldrh r2, [r0, #0x14]
	ldrh r1, [r0, #0x1a]
	cmp r2, r1
	ldreqh r2, [r0, #0x16]
	ldreqh r1, [r0, #0x1c]
	cmpeq r2, r1
	ldreqh r1, [r0, #0x18]
	ldreqh r0, [r0, #0x1e]
	cmpeq r1, r0
	beq _0205DA08
_0205D9F4:
	ldr r0, [sp, #8]
	mov r4, #0
	bl MemFree
	mov r0, r4
	str r0, [sp, #8]
_0205DA08:
	add r1, r8, r6, lsl #1
	strh r5, [r1, #0x10]
	ldrb r0, [r8, #5]
	tst r0, #1
	bne _0205DB30
	ldrsh r0, [r1, #0x10]
	bl GetSecondFormIfValid
	add r1, r8, r6, lsl #1
	strh r0, [r1, #0x10]
	b _0205DB30
_0205DA30:
	ldrh r4, [r5, #0x16]
	bl sub_020627F4
	ldrh r1, [r5, #0x18]
	add r0, r0, r1, lsl #1
	str r0, [sp, #8]
	mov r0, r4
	bl RandInt
	ldr r1, [sp, #8]
	mov r0, r0, lsl #1
	ldrsh r4, [r1, r0]
	ldrb r0, [sb, #0x20]
	add r1, sb, #0x21
	mov r2, r4
	mov r3, #0
	bl sub_0205D008
	cmp r0, #0
	moveq r4, #1
	beq _0205DB40
	mov r0, r4
	bl sub_02062AD0
	cmp r0, #0
	moveq r4, #1
	beq _0205DB40
	add r1, r8, r6, lsl #1
	strh r4, [r1, #0x10]
	ldrb r0, [r8, #5]
	tst r0, #1
	bne _0205DAB0
	ldrsh r0, [r1, #0x10]
	bl GetSecondFormIfValid
	add r1, r8, r6, lsl #1
	strh r0, [r1, #0x10]
_0205DAB0:
	mov r0, #0
	str r0, [sp, #8]
	mov r4, r0
	b _0205DB30
_0205DAC0:
	add r0, sp, #8
	bl sub_0205F738
	cmp r0, #0
	moveq r4, #2
	beq _0205DB40
	bl RandIntSafe
	ldr r1, [sp, #8]
	mov r0, r0, lsl #1
	ldrsh r5, [r1, r0]
	ldrb r0, [sb, #0x20]
	add r1, sb, #0x21
	mov r2, r5
	mov r3, #0
	bl sub_0205D008
	cmp r0, #0
	moveq r4, #1
	beq _0205DB40
	add r1, r8, r6, lsl #1
	strh r5, [r1, #0x10]
	ldrb r0, [r8, #5]
	tst r0, #1
	bne _0205DB28
	ldrsh r0, [r1, #0x10]
	bl GetSecondFormIfValid
	add r1, r8, r6, lsl #1
	strh r0, [r1, #0x10]
_0205DB28:
	mov r0, #0
	str r0, [sp, #8]
_0205DB30:
	add r6, r6, #1
_0205DB34:
	cmp r6, sl
	blt _0205D864
	mov r4, #0
_0205DB40:
	cmp r4, #0
	beq _0205DB58
	mov r0, r8
	bl ClearMissionData
	mov r0, r4
	b _0205DF9C
_0205DB58:
	ldrh r0, [sb, #2]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0205DD34
_0205DB68: ; jump table
	b _0205DB7C ; case 0
	b _0205DB7C ; case 1
	b _0205DBC4 ; case 2
	b _0205DC74 ; case 3
	b _0205DCB8 ; case 4
_0205DB7C:
	ldrsh r4, [sb, #6]
	ldrb r0, [sb, #0x20]
	add r1, sb, #0x21
	mov r2, r4
	bl sub_0205D11C
	cmp r0, #0
	moveq r4, #1
	beq _0205DD38
	ldrh r0, [sb, #2]
	cmp r0, #0
	bne _0205DBBC
	mov r0, r4
	bl IsAvailableItem
	cmp r0, #0
	moveq r4, #1
	beq _0205DD38
_0205DBBC:
	strh r4, [r8, #0x14]
	b _0205DD34
_0205DBC4:
	ldrh r7, [sb, #4]
	ldrh sl, [sb, #6]
	mov r5, #0
	bl sub_02062804
	mov fp, r0
	mov r0, r7, lsl #1
	mov r1, #0xf
	bl MemAlloc
	mov r4, r0
	mov r6, r5
	add sl, fp, sl, lsl #1
	b _0205DC18
_0205DBF4:
	mov r0, r6, lsl #1
	ldrsh fp, [r0, sl]
	mov r0, fp
	bl IsAvailableItem
	cmp r0, #0
	movne r0, r5, lsl #1
	strneh fp, [r4, r0]
	addne r5, r5, #1
	add r6, r6, #1
_0205DC18:
	cmp r6, r7
	blt _0205DBF4
	cmp r5, #0
	bne _0205DC38
	mov r0, r4
	bl MemFree
	mov r4, #1
	b _0205DD38
_0205DC38:
	mov r0, r5
	bl RandIntSafe
	mov r1, r0, lsl #1
	mov r0, r4
	ldrsh r4, [r4, r1]
	bl MemFree
	ldrb r0, [sb, #0x20]
	mov r2, r4
	add r1, sb, #0x21
	bl sub_0205D11C
	cmp r0, #0
	moveq r4, #1
	beq _0205DD38
	strh r4, [r8, #0x14]
	b _0205DD34
_0205DC74:
	ldrh r5, [sb, #4]
	ldrh r4, [sb, #6]
	bl sub_02062804
	add r4, r0, r4, lsl #1
	mov r0, r5
	bl RandIntSafe
	mov r0, r0, lsl #1
	ldrsh r4, [r4, r0]
	ldrb r0, [sb, #0x20]
	add r1, sb, #0x21
	mov r2, r4
	bl sub_0205D11C
	cmp r0, #0
	moveq r4, #1
	beq _0205DD38
	strh r4, [r8, #0x14]
	b _0205DD34
_0205DCB8:
	ldr r1, _0205DFA4 ; =_020B0A60
	ldr r0, [r1, #4]
	ldr r4, [r1]
	cmp r0, #0
	moveq r0, #0x46
	beq _0205DCDC
	bl RandIntSafe
	mov r0, r0, lsl #1
	ldrsh r0, [r4, r0]
_0205DCDC:
	strh r0, [r8, #0x14]
	ldrsh r0, [r8, #0x14]
	cmp r0, #0
	bne _0205DD34
	ldrb r0, [r8, #1]
	add r0, r0, #0xfa
	and r0, r0, #0xff
	cmp r0, #1
	movls r4, #1
	bls _0205DD38
_0205DD04:
	ldrb r1, [r8, #1]
	add r0, r8, #4
	add r2, r8, #0x14
	bl sub_020630A4
	ldrsh r0, [r8, #0x14]
	bl IsThrownItem
	cmp r0, #0
	bne _0205DD04
	ldrsh r0, [r8, #0x14]
	bl IsStorableItem
	cmp r0, #0
	beq _0205DD04
_0205DD34:
	mov r4, #0
_0205DD38:
	cmp r4, #0
	beq _0205DD50
	mov r0, r8
	bl ClearMissionData
	mov r0, r4
	b _0205DF9C
_0205DD50:
	ldrb r0, [r8, #4]
	cmp r0, #0x26
	cmpne r0, #0x29
	beq _0205DD70
	ldrb r0, [r8, #4]
	bl GetMaxMembersAllowed
	cmp r0, #4
	bge _0205DD80
_0205DD70:
	mov r0, #0
	strb r0, [r8, #0x1a]
	strh r0, [r8, #0x1c]
	b _0205DD98
_0205DD80:
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add r2, r8, #0x1a
	bl sub_02062900
_0205DD98:
	mov r4, #0
	strb r4, [r8, #0xc]
	ldrb r0, [r8, #1]
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _0205DF84
_0205DDB0: ; jump table
	b _0205DF84 ; case 0
	b _0205DF84 ; case 1
	b _0205DF84 ; case 2
	b _0205DDEC ; case 3
	b _0205DF84 ; case 4
	b _0205DF84 ; case 5
	b _0205DE20 ; case 6
	b _0205DF84 ; case 7
	b _0205DF84 ; case 8
	b _0205DE7C ; case 9
	b _0205DE98 ; case 10
	b _0205DED4 ; case 11
	b _0205DF48 ; case 12
	b _0205DF84 ; case 13
	b _0205DF64 ; case 14
_0205DDEC:
	ldrb r1, [r8, #2]
	cmp r1, #1
	beq _0205DE08
	cmp r1, #2
	beq _0205DE14
	cmp r1, #3
	b _0205DF84
_0205DE08:
	bl sub_0205FF80
	strb r0, [r8, #0xc]
	b _0205DF84
_0205DE14:
	bl sub_0205FF80
	strb r0, [r8, #0xc]
	b _0205DF84
_0205DE20:
	ldrb r0, [r8, #2]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0205DF84
_0205DE30: ; jump table
	b _0205DF84 ; case 0
	b _0205DF84 ; case 1
	b _0205DF84 ; case 2
	b _0205DF84 ; case 3
	b _0205DE44 ; case 4
_0205DE44:
	ldrb r6, [r8, #4]
	ldrb r0, [r8, #1]
	add r1, r8, #2
	mov r2, r6
	bl sub_02063424
	mov r5, r0
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl sub_0205E090
	cmp r0, #0
	movne r4, #1
	streqb r5, [r8, #5]
	b _0205DF84
_0205DE7C:
	ldrsh r0, [r8, #0x14]
	cmp r0, #0x49
	ldrnesh r1, [r8, #0xe]
	ldrnesh r0, [r8, #0x10]
	cmpne r1, r0
	moveq r4, #1
	b _0205DF84
_0205DE98:
	ldrb r1, [r8, #2]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0205DF84
_0205DEA8: ; jump table
	b _0205DF84 ; case 0
	b _0205DF84 ; case 1
	b _0205DF84 ; case 2
	b _0205DF84 ; case 3
	b _0205DF84 ; case 4
	b _0205DF84 ; case 5
	b _0205DEC8 ; case 6
	b _0205DF84 ; case 7
_0205DEC8:
	bl sub_0205FF80
	strb r0, [r8, #0xc]
	b _0205DF84
_0205DED4:
	ldrb r0, [r8, #2]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0205DF34
_0205DEE4: ; jump table
	b _0205DF34 ; case 0
	b _0205DF34 ; case 1
	b _0205DF34 ; case 2
	b _0205DF34 ; case 3
	b _0205DF34 ; case 4
	b _0205DEFC ; case 5
_0205DEFC:
	ldrb r6, [r8, #4]
	ldrb r0, [r8, #1]
	add r1, r8, #2
	mov r2, r6
	bl sub_02063424
	mov r5, r0
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl sub_0205E090
	cmp r0, #0
	movne r4, #1
	bne _0205DF84
	strb r5, [r8, #5]
_0205DF34:
	ldrb r0, [r8, #1]
	ldrb r1, [r8, #2]
	bl sub_0205FF80
	strb r0, [r8, #0xc]
	b _0205DF84
_0205DF48:
	ldrb r1, [r8, #2]
	bl sub_0205FF80
	strb r0, [r8, #0xc]
	mov r0, r4
	strb r0, [r8, #0x1a]
	strh r0, [r8, #0x1c]
	b _0205DF84
_0205DF64:
	ldrb r0, [r8, #2]
	cmp r0, #1
	beq _0205DF7C
	cmp r0, #2
	moveq r4, #1
	b _0205DF84
_0205DF7C:
	strb r4, [r8, #0x1a]
	strh r4, [r8, #0x1c]
_0205DF84:
	cmp r4, #0
	moveq r0, #0
	beq _0205DF9C
	mov r0, r8
	bl ClearMissionData
	mov r0, r4
_0205DF9C:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0205DFA4: .word _020B0A60
_0205DFA8: .word 0x000001EA
	arm_func_end GenerateMission

	arm_func_start sub_0205DFAC
sub_0205DFAC: ; 0x0205DFAC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldrh r6, [r1, #2]
	ldrh r8, [r1, #4]
	mov sl, r0
	mov r7, #0
	bl sub_020627F4
	mov r4, r0
	mov r0, r6, lsl #1
	mov r1, #0xf
	bl MemAlloc
	mov sb, r0
	mov r5, r7
	add r4, r4, r8, lsl #1
	b _0205E008
_0205DFE4:
	mov r0, r5, lsl #1
	ldrsh r8, [r0, r4]
	mov r0, r8
	bl CanMonsterBeUsedForMissionWrapper
	cmp r0, #0
	movne r0, r7, lsl #1
	strneh r8, [sb, r0]
	addne r7, r7, #1
	add r5, r5, #1
_0205E008:
	cmp r5, r6
	blt _0205DFE4
	mov r0, r7
	str sb, [sl]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_0205DFAC

	arm_func_start sub_0205E01C
sub_0205E01C: ; 0x0205E01C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrb ip, [r7]
	mov r6, r1
	mov r5, r2
	cmp ip, #0
	mov r4, r3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	blt _0205E05C
	bl sub_0205E258
	cmp r0, #0
	beq _0205E070
	cmp r4, #1
	bne _0205E070
_0205E05C:
	ldrb r0, [r7, #4]
	cmp r0, r6
	bne _0205E088
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0205E070:
	ldrb r0, [r7, #4]
	cmp r0, r6
	ldreqb r0, [r7, #5]
	cmpeq r0, r5
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_0205E088:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0205E01C

	arm_func_start sub_0205E090
sub_0205E090: ; 0x0205E090
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r8, #0
	ldr r7, _0205E1E4 ; =_020B0A60
	b _0205E0D4
_0205E0AC:
	ldr r0, [r7, #0x18]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	add r0, r0, r8, lsl #5
	bl sub_0205E01C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r8, r8, #1
_0205E0D4:
	cmp r8, #8
	blt _0205E0AC
	mov r8, #0
	ldr r7, _0205E1E4 ; =_020B0A60
	b _0205E114
_0205E0E8:
	ldr r0, [r7, #0x18]
	mov r1, r6
	add r0, r0, #0x100
	mov r2, r5
	mov r3, r4
	add r0, r0, r8, lsl #5
	bl sub_0205E01C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r8, r8, #1
_0205E114:
	cmp r8, #8
	blt _0205E0E8
	mov r8, #0
	ldr r7, _0205E1E4 ; =_020B0A60
	b _0205E154
_0205E128:
	ldr r0, [r7, #0x18]
	mov r1, r6
	add r0, r0, #0x200
	mov r2, r5
	mov r3, r4
	add r0, r0, r8, lsl #5
	bl sub_0205E01C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r8, r8, #1
_0205E154:
	cmp r8, #8
	blt _0205E128
	mov r8, #0
	ldr r7, _0205E1E4 ; =_020B0A60
	b _0205E194
_0205E168:
	ldr r0, [r7, #0x18]
	mov r1, r6
	add r0, r0, #0x300
	mov r2, r5
	mov r3, r4
	add r0, r0, r8, lsl #5
	bl sub_0205E01C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r8, r8, #1
_0205E194:
	cmp r8, #1
	blt _0205E168
	mov r8, #0
	ldr r7, _0205E1E4 ; =_020B0A60
	b _0205E1D4
_0205E1A8:
	ldr r0, [r7, #0x18]
	mov r1, r6
	add r0, r0, #0x320
	mov r2, r5
	mov r3, r4
	add r0, r0, r8, lsl #5
	bl sub_0205E01C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r8, r8, #1
_0205E1D4:
	cmp r8, #1
	blt _0205E1A8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205E1E4: .word _020B0A60
	arm_func_end sub_0205E090

	arm_func_start sub_0205E1E8
sub_0205E1E8: ; 0x0205E1E8
	stmdb sp!, {r3, lr}
	ldrb lr, [r0, #1]
	mov r3, #0
	mov ip, #1
	add r1, lr, #0xff
	and r2, r1, #0xff
	cmp r2, #0xd
	bhi _0205E214
	ldr r1, _0205E234 ; =0x00002383
	tst r1, ip, lsl r2
	movne ip, r3
_0205E214:
	cmp ip, #0
	beq _0205E22C
	cmp lr, #0xb
	ldreqb r0, [r0, #2]
	cmpeq r0, #0
	movne r3, #1
_0205E22C:
	and r0, r3, #0xff
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205E234: .word 0x00002383
	arm_func_end sub_0205E1E8

	arm_func_start sub_0205E238
sub_0205E238: ; 0x0205E238
	ldrb r1, [r0, #1]
	cmp r1, #0xe
	ldreqb r0, [r0, #2]
	cmpeq r0, #2
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_0205E238

	arm_func_start sub_0205E258
sub_0205E258: ; 0x0205E258
	ldrb r2, [r0, #1]
	mov r3, #1
	add r1, r2, #0xfe
	and r1, r1, #0xff
	cmp r1, #3
	bls _0205E280
	cmp r2, #0xa
	ldreqb r0, [r0, #2]
	cmpeq r0, #4
	movne r3, #0
_0205E280:
	and r0, r3, #0xff
	bx lr
	arm_func_end sub_0205E258

	arm_func_start sub_0205E288
sub_0205E288: ; 0x0205E288
	ldrb r3, [r0]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	ldrb r3, [r0, #1]
	cmp r3, r1
	ldreqb r1, [r0, #2]
	ldreqb r0, [r2]
	cmpeq r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_0205E288

	arm_func_start sub_0205E2B8
sub_0205E2B8: ; 0x0205E2B8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	mov r7, #0
	ldr r6, _0205E3F4 ; =_020B0A60
	b _0205E2F4
_0205E2D0:
	ldr r0, [r6, #0x18]
	mov r1, r5
	mov r2, r4
	add r0, r0, r7, lsl #5
	bl sub_0205E288
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r7, r7, #1
_0205E2F4:
	cmp r7, #8
	blt _0205E2D0
	mov r7, #0
	ldr r6, _0205E3F4 ; =_020B0A60
	b _0205E330
_0205E308:
	ldr r0, [r6, #0x18]
	mov r1, r5
	add r0, r0, #0x100
	mov r2, r4
	add r0, r0, r7, lsl #5
	bl sub_0205E288
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r7, r7, #1
_0205E330:
	cmp r7, #8
	blt _0205E308
	mov r7, #0
	ldr r6, _0205E3F4 ; =_020B0A60
	b _0205E36C
_0205E344:
	ldr r0, [r6, #0x18]
	mov r1, r5
	add r0, r0, #0x200
	mov r2, r4
	add r0, r0, r7, lsl #5
	bl sub_0205E288
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r7, r7, #1
_0205E36C:
	cmp r7, #8
	blt _0205E344
	mov r7, #0
	ldr r6, _0205E3F4 ; =_020B0A60
	b _0205E3A8
_0205E380:
	ldr r0, [r6, #0x18]
	mov r1, r5
	add r0, r0, #0x300
	mov r2, r4
	add r0, r0, r7, lsl #5
	bl sub_0205E288
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r7, r7, #1
_0205E3A8:
	cmp r7, #1
	blt _0205E380
	mov r7, #0
	ldr r6, _0205E3F4 ; =_020B0A60
	b _0205E3E4
_0205E3BC:
	ldr r0, [r6, #0x18]
	mov r1, r5
	add r0, r0, #0x320
	mov r2, r4
	add r0, r0, r7, lsl #5
	bl sub_0205E288
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r7, r7, #1
_0205E3E4:
	cmp r7, #1
	blt _0205E3BC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205E3F4: .word _020B0A60
	arm_func_end sub_0205E2B8

	arm_func_start sub_0205E3F8
sub_0205E3F8: ; 0x0205E3F8
	stmdb sp!, {r3, lr}
	mov lr, r0
	mov ip, #0
	b _0205E438
_0205E408:
	ldrb r0, [r2, ip, lsl #5]
	mov r3, ip, lsl #5
	cmp r0, #0
	bne _0205E434
	add ip, r2, r3
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	mov r0, #0
	ldmia sp!, {r3, pc}
_0205E434:
	add ip, ip, #1
_0205E438:
	cmp ip, r1
	blt _0205E408
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205E3F8

	arm_func_start sub_0205E448
sub_0205E448: ; 0x0205E448
	stmdb sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	mov r2, lr
	mov r3, #1
	b _0205E47C
_0205E460:
	ldrb ip, [r1, r4, lsl #5]
	add r4, r4, #1
	cmp ip, #0
	moveq ip, r3
	movne ip, r2
	tst ip, #0xff
	addeq lr, lr, #1
_0205E47C:
	cmp r4, r0
	blt _0205E460
	mov r0, lr
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205E448

	arm_func_start sub_0205E48C
sub_0205E48C: ; 0x0205E48C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, r0
	mov r6, r1
	mov r5, r4
	b _0205E4B4
_0205E4A4:
	ldrb r0, [r6, r4, lsl #5]
	cmp r0, #0
	bne _0205E4BC
	add r4, r4, #1
_0205E4B4:
	cmp r4, r7
	blt _0205E4A4
_0205E4BC:
	cmp r4, r7
	beq _0205E4F0
	cmp r4, r5
	ble _0205E4E4
	add lr, r6, r4, lsl #5
	add ip, r6, r5, lsl #5
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
_0205E4E4:
	add r4, r4, #1
	add r5, r5, #1
	b _0205E4B4
_0205E4F0:
	mov r0, #0
	b _0205E500
_0205E4F8:
	strb r0, [r6, r5, lsl #5]
	add r5, r5, #1
_0205E500:
	cmp r5, r7
	blt _0205E4F8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0205E48C

	arm_func_start sub_0205E50C
sub_0205E50C: ; 0x0205E50C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	mov r8, r0
	mov r7, r1
	mov fp, r2
	mov r5, #0
	b _0205E5BC
_0205E528:
	add r6, r5, #1
	mov r4, r5, lsl #5
	b _0205E5B0
_0205E534:
	ldrb r0, [r7, r6, lsl #5]
	mov r1, r6, lsl #5
	cmp r0, #0
	beq _0205E5AC
	ldrb r0, [r7, r4]
	cmp r0, #0
	beq _0205E564
	add r0, r7, r4
	add r1, r7, r1
	blx fp
	cmp r0, #0
	beq _0205E5AC
_0205E564:
	add sb, sp, #0
	add ip, r7, r4
	mov sl, sb
	ldmia ip!, {r0, r1, r2, r3}
	stmia sb!, {r0, r1, r2, r3}
	ldmia ip, {r0, r1, r2, r3}
	stmia sb, {r0, r1, r2, r3}
	add sb, r7, r6, lsl #5
	mov ip, sb
	add lr, r7, r4
	ldmia sb!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia sb, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldmia sl!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia sl, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
_0205E5AC:
	add r6, r6, #1
_0205E5B0:
	cmp r6, r8
	blt _0205E534
	add r5, r5, #1
_0205E5BC:
	sub r0, r8, #1
	cmp r5, r0
	blt _0205E528
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0205E50C

	arm_func_start GenerateDailyMissions
GenerateDailyMissions: ; 0x0205E5D0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #4
	mov r1, #8
	bl RandRangeSafe
	mov r7, r0
	mov r0, #4
	mov r1, #8
	bl RandRangeSafe
	mov r8, r0
	mov r0, #3
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r2, #0
	ldr r0, _0205E948 ; =_020B0A60
	mov r3, r2
_0205E610:
	ldr r1, [r0, #0x18]
	strb r3, [r1, r2, lsl #5]
	add r2, r2, #1
	cmp r2, #8
	blt _0205E610
	ldr r0, _0205E948 ; =_020B0A60
	mov r2, #0
_0205E62C:
	ldr r1, [r0, #0x18]
	add r1, r1, r3, lsl #5
	add r3, r3, #1
	strb r2, [r1, #0x200]
	cmp r3, #8
	blt _0205E62C
	ldr r0, _0205E948 ; =_020B0A60
	ldr r1, [r0, #0x18]
	strb r2, [r1, #0x300]
	ldr r0, [r0, #0x18]
	strb r2, [r0, #0x320]
	bl sub_02063504
	mov r4, r0
	bl Rand16Bit
	orr r0, r0, r4, lsl #16
	bl sub_020510E8
	bl GenerateAllPossibleMonstersList
	bl GenerateAllPossibleDungeonsList
	bl GenerateAllPossibleDeliverList
	mov r0, #3
	bl sub_02062290
	cmp r0, #0
	beq _0205E70C
	mov sl, #0
	mov r6, #0x1e
	mov fp, sl
	mov r5, #1
	ldr r4, _0205E948 ; =_020B0A60
	b _0205E704
_0205E6A0:
	ldr r0, [r4, #0x18]
	add r0, r0, #0x320
	add sb, r0, sl, lsl #5
	bl sub_02062578
	cmp r0, #0
	moveq r0, r5
	beq _0205E6DC
	mov r1, sb
	bl GenerateMission
	cmp r0, #0
	bne _0205E6DC
	mov r0, sb
	mov r1, fp
	bl sub_0206315C
	mov r0, #0
_0205E6DC:
	cmp r0, #2
	beq _0205E70C
	cmp r0, #1
	bne _0205E6FC
	sub r6, r6, #1
	cmp r6, #0
	ble _0205E70C
	b _0205E704
_0205E6FC:
	mov r6, #0x1e
	add sl, sl, #1
_0205E704:
	cmp sl, #0
	ble _0205E6A0
_0205E70C:
	bl sub_02062548
	mov r0, #2
	bl sub_02062290
	cmp r0, #0
	beq _0205E7AC
	mov fp, #1
	mov sb, #0
	mov sl, #0x1e
	mov r5, fp
	ldr r4, _0205E948 ; =_020B0A60
	b _0205E7A4
_0205E738:
	ldr r0, [r4, #0x18]
	add r0, r0, #0x300
	add r6, r0, sb, lsl #5
	bl sub_02062578
	cmp r0, #0
	moveq r0, r5
	beq _0205E77C
	mov r1, r6
	bl GenerateMission
	cmp r0, #0
	bne _0205E77C
	mov r0, r6
	mov r1, fp
	bl sub_0206315C
	mov r0, r6
	bl sub_0205EB5C
	mov r0, #0
_0205E77C:
	cmp r0, #2
	beq _0205E7AC
	cmp r0, #1
	bne _0205E79C
	sub sl, sl, #1
	cmp sl, #0
	ble _0205E7AC
	b _0205E7A4
_0205E79C:
	mov sl, #0x1e
	add sb, sb, #1
_0205E7A4:
	cmp sb, #0
	ble _0205E738
_0205E7AC:
	bl sub_02062548
	mov r0, #0
	bl sub_02062290
	cmp r0, #0
	beq _0205E840
	mov sb, #0
	mov sl, #0x1e
	mov fp, sb
	mov r5, #1
	ldr r4, _0205E948 ; =_020B0A60
	b _0205E838
_0205E7D8:
	ldr r0, [r4, #0x18]
	add r6, r0, sb, lsl #5
	bl sub_02062578
	cmp r0, #0
	moveq r0, r5
	beq _0205E810
	mov r1, r6
	bl GenerateMission
	cmp r0, #0
	bne _0205E810
	mov r0, r6
	mov r1, fp
	bl sub_0206315C
	mov r0, #0
_0205E810:
	cmp r0, #2
	beq _0205E840
	cmp r0, #1
	bne _0205E830
	sub sl, sl, #1
	cmp sl, #0
	ble _0205E840
	b _0205E838
_0205E830:
	mov sl, #0x1e
	add sb, sb, #1
_0205E838:
	cmp sb, r7
	ble _0205E7D8
_0205E840:
	bl sub_02062548
	mov r0, #1
	bl sub_02062290
	cmp r0, #0
	beq _0205E8DC
	mov sb, #0
	mov sl, #0x1e
	mov r5, sb
	mov fp, sb
	mov r6, #1
	ldr r4, _0205E948 ; =_020B0A60
	b _0205E8D4
_0205E870:
	ldr r0, [r4, #0x18]
	add r0, r0, #0x200
	add r7, r0, sb, lsl #5
	bl sub_02062578
	cmp r0, #0
	moveq r0, r6
	beq _0205E8AC
	mov r1, r7
	bl GenerateMission
	cmp r0, #0
	bne _0205E8AC
	mov r0, r7
	mov r1, r5
	bl sub_0206315C
	mov r0, fp
_0205E8AC:
	cmp r0, #2
	beq _0205E8DC
	cmp r0, #1
	bne _0205E8CC
	sub sl, sl, #1
	cmp sl, #0
	ble _0205E8DC
	b _0205E8D4
_0205E8CC:
	mov sl, #0x1e
	add sb, sb, #1
_0205E8D4:
	cmp sb, r8
	ble _0205E870
_0205E8DC:
	bl sub_02062548
	bl DeleteAllPossibleMonstersList
	bl DeleteAllPossibleDungeonsList
	bl DeleteAllPossibleDeliverList
	ldr r1, _0205E948 ; =_020B0A60
	mov r0, #8
	ldr r1, [r1, #0x18]
	bl sub_0205E48C
	mov r0, #8
	ldr r1, _0205E948 ; =_020B0A60
	ldr r2, _0205E94C ; =sub_0205E9A8
	ldr r1, [r1, #0x18]
	bl sub_0205E50C
	mov r0, #8
	ldr r1, _0205E948 ; =_020B0A60
	ldr r1, [r1, #0x18]
	add r1, r1, #0x200
	bl sub_0205E48C
	mov r0, #8
	ldr r1, _0205E948 ; =_020B0A60
	ldr r2, _0205E950 ; =sub_0205EB28
	ldr r1, [r1, #0x18]
	add r1, r1, #0x200
	bl sub_0205E50C
	bl sub_02051134
	bl sub_020634F4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0205E948: .word _020B0A60
_0205E94C: .word sub_0205E9A8
_0205E950: .word sub_0205EB28
	arm_func_end GenerateDailyMissions

	arm_func_start sub_0205E954
sub_0205E954: ; 0x0205E954
	ldr r1, _0205E968 ; =_020B0A60
	ldr ip, _0205E96C ; =sub_0205E448
	mov r0, #8
	ldr r1, [r1, #0x18]
	bx ip
	.align 2, 0
_0205E968: .word _020B0A60
_0205E96C: .word sub_0205E448
	arm_func_end sub_0205E954

	arm_func_start sub_0205E970
sub_0205E970: ; 0x0205E970
	ldr r1, _0205E980 ; =_020B0A60
	ldr r1, [r1, #0x18]
	add r0, r1, r0, lsl #5
	bx lr
	.align 2, 0
_0205E980: .word _020B0A60
	arm_func_end sub_0205E970

	arm_func_start sub_0205E984
sub_0205E984: ; 0x0205E984
	ldr r1, _0205E9A4 ; =_020B0A60
	ldr r1, [r1, #0x18]
	ldrb r0, [r1, r0, lsl #5]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_0205E9A4: .word _020B0A60
	arm_func_end sub_0205E984

	arm_func_start sub_0205E9A8
sub_0205E9A8: ; 0x0205E9A8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #1]
	mov r4, r1
	cmp r2, #3
	ldreqb r0, [r5, #2]
	cmpeq r0, #3
	bne _0205E9FC
	ldrb r0, [r5, #4]
	bl DungeonSwapIdToIdx
	bl GetDungeonMode
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movhs r0, #1
	movlo r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
_0205E9FC:
	ldrb r1, [r4, #1]
	cmp r1, #3
	ldreqb r0, [r4, #2]
	cmpeq r0, #3
	bne _0205EA44
	ldrb r0, [r4, #4]
	bl DungeonSwapIdToIdx
	bl GetDungeonMode
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movhi r0, #1
	movls r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
_0205EA44:
	cmp r2, #8
	cmpne r2, #5
	bne _0205EA6C
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movhs r0, #1
	movlo r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
_0205EA6C:
	cmp r1, #8
	cmpne r1, #5
	bne _0205EA94
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movhi r0, #1
	movls r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
_0205EA94:
	ldrb r1, [r4, #4]
	ldrb r0, [r5, #4]
	mov r2, #1
	cmp r0, r1
	bhi _0205EAC0
	bne _0205EABC
	ldrb r1, [r5, #5]
	ldrb r0, [r4, #5]
	cmp r1, r0
	bhi _0205EAC0
_0205EABC:
	mov r2, #0
_0205EAC0:
	and r0, r2, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205E9A8

	arm_func_start sub_0205EAC8
sub_0205EAC8: ; 0x0205EAC8
	ldr r1, _0205EAE0 ; =_020B0A60
	ldr ip, _0205EAE4 ; =sub_0205E448
	ldr r1, [r1, #0x18]
	mov r0, #8
	add r1, r1, #0x200
	bx ip
	.align 2, 0
_0205EAE0: .word _020B0A60
_0205EAE4: .word sub_0205E448
	arm_func_end sub_0205EAC8

	arm_func_start sub_0205EAE8
sub_0205EAE8: ; 0x0205EAE8
	ldr r1, _0205EAFC ; =_020B0A60
	ldr r1, [r1, #0x18]
	add r1, r1, #0x200
	add r0, r1, r0, lsl #5
	bx lr
	.align 2, 0
_0205EAFC: .word _020B0A60
	arm_func_end sub_0205EAE8

	arm_func_start sub_0205EB00
sub_0205EB00: ; 0x0205EB00
	ldr r1, _0205EB24 ; =_020B0A60
	ldr r1, [r1, #0x18]
	add r0, r1, r0, lsl #5
	ldrb r0, [r0, #0x200]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_0205EB24: .word _020B0A60
	arm_func_end sub_0205EB00

	arm_func_start sub_0205EB28
sub_0205EB28: ; 0x0205EB28
	ldrb r3, [r1, #4]
	ldrb r2, [r0, #4]
	mov ip, #1
	cmp r2, r3
	bhi _0205EB54
	bne _0205EB50
	ldrb r2, [r0, #5]
	ldrb r0, [r1, #5]
	cmp r2, r0
	bhi _0205EB54
_0205EB50:
	mov ip, #0
_0205EB54:
	and r0, ip, #0xff
	bx lr
	arm_func_end sub_0205EB28

	arm_func_start sub_0205EB5C
sub_0205EB5C: ; 0x0205EB5C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #0xb
	cmpne r0, #0xe
	bne _0205EBCC
	mov r1, #0
	add r0, sp, #0
	str r1, [sp]
	bl sub_0205F738
	mov r5, r0
	cmp r5, #0
	ldmleia sp!, {r3, r4, r5, pc}
_0205EB90:
	mov r0, r5
	bl RandInt
	ldrb r1, [r4, #1]
	ldr r2, [sp]
	mov r0, r0, lsl #1
	cmp r1, #0xb
	ldrsh r0, [r2, r0]
	ldreqsh r1, [r4, #0xe]
	cmpeq r1, r0
	bne _0205EBC4
	cmp r5, #1
	ldmleia sp!, {r3, r4, r5, pc}
	b _0205EB90
_0205EBC4:
	bl sub_02065B94
	ldmia sp!, {r3, r4, r5, pc}
_0205EBCC:
	ldrsh r0, [r4, #0xe]
	bl sub_02065B94
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205EB5C

	arm_func_start sub_0205EBD8
sub_0205EBD8: ; 0x0205EBD8
	ldr r1, _0205EBEC ; =_020B0A60
	ldr r1, [r1, #0x18]
	add r1, r1, #0x300
	add r0, r1, r0, lsl #5
	bx lr
	.align 2, 0
_0205EBEC: .word _020B0A60
	arm_func_end sub_0205EBD8

	arm_func_start sub_0205EBF0
sub_0205EBF0: ; 0x0205EBF0
	ldr r1, _0205EC14 ; =_020B0A60
	ldr r1, [r1, #0x18]
	add r0, r1, r0, lsl #5
	ldrb r0, [r0, #0x300]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_0205EC14: .word _020B0A60
	arm_func_end sub_0205EBF0

	arm_func_start sub_0205EC18
sub_0205EC18: ; 0x0205EC18
	ldr r1, _0205EC30 ; =_020B0A60
	ldr ip, _0205EC34 ; =ClearMissionData
	ldr r1, [r1, #0x18]
	add r1, r1, #0x300
	add r0, r1, r0, lsl #5
	bx ip
	.align 2, 0
_0205EC30: .word _020B0A60
_0205EC34: .word ClearMissionData
	arm_func_end sub_0205EC18

	arm_func_start sub_0205EC38
sub_0205EC38: ; 0x0205EC38
	ldr r1, _0205EC4C ; =_020B0A60
	ldr r1, [r1, #0x18]
	add r1, r1, #0x320
	add r0, r1, r0, lsl #5
	bx lr
	.align 2, 0
_0205EC4C: .word _020B0A60
	arm_func_end sub_0205EC38

	arm_func_start sub_0205EC50
sub_0205EC50: ; 0x0205EC50
	ldr r1, _0205EC74 ; =_020B0A60
	ldr r1, [r1, #0x18]
	add r0, r1, r0, lsl #5
	ldrb r0, [r0, #0x320]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_0205EC74: .word _020B0A60
	arm_func_end sub_0205EC50

	arm_func_start sub_0205EC78
sub_0205EC78: ; 0x0205EC78
	ldr r1, _0205EC90 ; =_020B0A60
	ldr ip, _0205EC94 ; =ClearMissionData
	ldr r1, [r1, #0x18]
	add r1, r1, #0x320
	add r0, r1, r0, lsl #5
	bx ip
	.align 2, 0
_0205EC90: .word _020B0A60
_0205EC94: .word ClearMissionData
	arm_func_end sub_0205EC78

	arm_func_start sub_0205EC98
sub_0205EC98: ; 0x0205EC98
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0205ECF0 ; =_020B0A60
	b _0205ECE0
_0205ECAC:
	ldr r0, [r4, #0x18]
	mov r1, r5, lsl #5
	add r2, r0, #0x100
	ldrb r0, [r2, r5, lsl #5]
	cmp r0, #0
	beq _0205ECDC
	mov r0, r6
	add r1, r2, r1
	bl sub_0205C934
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
_0205ECDC:
	add r5, r5, #1
_0205ECE0:
	cmp r5, #8
	blt _0205ECAC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205ECF0: .word _020B0A60
	arm_func_end sub_0205EC98

	arm_func_start sub_0205ECF4
sub_0205ECF4: ; 0x0205ECF4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldrb r5, [r4, #4]
	ldrb r6, [r4, #5]
	mov r7, #0
	bl sub_0205C854
	cmp r0, #0
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl sub_0205E258
	cmp r0, #0
	movne r7, #1
	mov r4, #0
	ldr r8, _0205ED80 ; =_020B0A60
	b _0205ED70
_0205ED34:
	ldr r1, [r8, #0x18]
	add r0, r1, r4, lsl #5
	ldrb r0, [r0, #0x100]
	cmp r0, #5
	bne _0205ED6C
	add r0, r1, #0x100
	mov r1, r5
	mov r2, r6
	mov r3, r7
	add r0, r0, r4, lsl #5
	bl sub_0205E01C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_0205ED6C:
	add r4, r4, #1
_0205ED70:
	cmp r4, #8
	blt _0205ED34
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205ED80: .word _020B0A60
	arm_func_end sub_0205ECF4

	arm_func_start sub_0205ED84
sub_0205ED84: ; 0x0205ED84
	ldr r1, _0205ED9C ; =_020B0A60
	ldr ip, _0205EDA0 ; =sub_0205E448
	ldr r1, [r1, #0x18]
	mov r0, #8
	add r1, r1, #0x100
	bx ip
	.align 2, 0
_0205ED9C: .word _020B0A60
_0205EDA0: .word sub_0205E448
	arm_func_end sub_0205ED84

	arm_func_start DungeonRequestsDone
DungeonRequestsDone: ; 0x0205EDA4
	stmdb sp!, {r4, lr}
	ldr r2, _0205EE0C ; =_020B0A60
	mov ip, #0
	ldr r2, [r2, #0x18]
	mov lr, ip
	add r3, r2, #0x100
_0205EDBC:
	mov r2, lr, lsl #0x18
	add r4, r3, r2, asr #19
	ldrb r2, [r4, #4]
	cmp r2, r0
	bne _0205EDF8
	cmp r1, #0
	beq _0205EDE4
	ldrb r2, [r4, #1]
	cmp r2, #0xc
	beq _0205EDF8
_0205EDE4:
	ldrb r2, [r4]
	add r2, r2, #0xfb
	and r2, r2, #0xff
	cmp r2, #3
	addls ip, ip, #1
_0205EDF8:
	add lr, lr, #1
	cmp lr, #8
	blt _0205EDBC
	mov r0, ip
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205EE0C: .word _020B0A60
	arm_func_end DungeonRequestsDone

	arm_func_start DungeonRequestsDoneWrapper
DungeonRequestsDoneWrapper: ; 0x0205EE10
	ldr ip, _0205EE1C ; =DungeonRequestsDone
	mov r1, #0
	bx ip
	.align 2, 0
_0205EE1C: .word DungeonRequestsDone
	arm_func_end DungeonRequestsDoneWrapper

	arm_func_start AnyDungeonRequestsDone
AnyDungeonRequestsDone: ; 0x0205EE20
	stmdb sp!, {r3, lr}
	mov r1, #1
	bl DungeonRequestsDone
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end AnyDungeonRequestsDone

	arm_func_start sub_0205EE40
sub_0205EE40: ; 0x0205EE40
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	str r0, [sp]
	mov sl, r1
	mov sb, r2
	bl GetMaxMembersAllowed
	cmp r0, #1
	bne _0205EE80
	bl sub_020568A4
	strh r0, [sp, #4]
	ldrsh r0, [sp, #4]
	cmp r0, #0
	movlt r0, #1
	blt _0205EFFC
	mov r4, #1
	b _0205EE98
_0205EE80:
	add r0, sp, #4
	bl GetPartyMembers
	mov r4, r0
	cmp r4, #1
	movlt r0, #1
	blt _0205EFFC
_0205EE98:
	mov r5, #0
	strh r5, [sl]
	strh r5, [sb]
_0205EEA4:
	ldr r1, _0205F004 ; =_020B0A60
	mov r0, r5, lsl #0x18
	ldr r1, [r1, #0x18]
	add r1, r1, #0x100
	add r2, r1, r0, asr #19
	ldrb r1, [r2, #4]
	ldr r0, [sp]
	cmp r1, r0
	ldreqb r0, [r2]
	cmpeq r0, #5
	bne _0205EFD8
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	bne _0205EF54
	ldrh r8, [r2, #0x1c]
	cmp r8, #0
	beq _0205EFD8
	mov r6, #0
	add fp, sp, #4
	b _0205EF40
_0205EEF4:
	mov r0, r6, lsl #1
	ldrsh r2, [fp, r0]
	ldr r0, _0205F008 ; =TEAM_MEMBER_TABLE_PTR
	mov r1, #0
	ldr r3, [r0]
	mov r0, #0x44
	smlabb r7, r2, r0, r3
	ldrsh r0, [r7, #4]
	bl GetType
	cmp r8, r0
	beq _0205EF34
	ldrsh r0, [r7, #4]
	mov r1, #1
	bl GetType
	cmp r8, r0
	bne _0205EF3C
_0205EF34:
	mov r8, #0
	b _0205EF48
_0205EF3C:
	add r6, r6, #1
_0205EF40:
	cmp r6, r4
	blt _0205EEF4
_0205EF48:
	cmp r8, #0
	strneh r8, [sl]
	b _0205EFD8
_0205EF54:
	cmp r0, #1
	bne _0205EFD8
	ldrsh r6, [r2, #0x1c]
	mov r0, r6
	bl GetBaseFormBurmyWormadamShellosGastrodonCherrim
	mov r7, r0
	bl Monster_FemaleToMaleForm
	mov fp, r0
	mov r0, r7
	bl GetSecondFormIfValid
	mov r7, r0
	cmp r6, #0
	beq _0205EFD8
	mov r8, #0
	b _0205EFC8
_0205EF90:
	mov r1, r8, lsl #1
	add r0, sp, #4
	ldrsh r1, [r0, r1]
	ldr r0, _0205F008 ; =TEAM_MEMBER_TABLE_PTR
	ldr r2, [r0]
	mov r0, #0x44
	smlabb r0, r1, r0, r2
	ldrsh r0, [r0, #4]
	bl GetBaseFormBurmyWormadamShellosGastrodonCherrim
	cmp r0, fp
	cmpne r0, r7
	moveq r6, #0
	beq _0205EFD0
	add r8, r8, #1
_0205EFC8:
	cmp r8, r4
	blt _0205EF90
_0205EFD0:
	cmp r6, #0
	strneh r6, [sb]
_0205EFD8:
	add r5, r5, #1
	cmp r5, #8
	blt _0205EEA4
	ldrh r0, [sl]
	cmp r0, #0
	ldreqsh r0, [sb]
	cmpeq r0, #0
	movne r0, #1
	moveq r0, #0
_0205EFFC:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0205F004: .word _020B0A60
_0205F008: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_0205EE40

	arm_func_start sub_0205F00C
sub_0205F00C: ; 0x0205F00C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _0205F0B4 ; =_020B0A60
	mov ip, #0
	ldr r2, [r2, #0x18]
	add r3, r2, #0x100
	b _0205F0A0
_0205F028:
	mov r2, ip, lsl #0x18
	add r4, r3, r2, asr #19
	ldrb r2, [r4, #4]
	cmp r2, r0
	ldreqb r2, [r4]
	cmpeq r2, #5
	bne _0205F09C
	ldrb r2, [r4, #1]
	cmp r2, #2
	cmpne r2, #3
	cmpne r2, #4
	cmpne r2, #5
	beq _0205F06C
	cmp r2, #0xa
	ldreqb r2, [r4, #2]
	cmpeq r2, #4
	bne _0205F09C
_0205F06C:
	mov r2, #0xfa
	mov r0, #1
	strb r2, [sp, #4]
	strb r0, [sp, #5]
	mov r2, #0
	str r2, [sp]
	mov r0, r1
	ldrsh r1, [r4, #0xe]
	add r3, sp, #4
	bl sub_02052E2C
	mov r0, r4
	b _0205F0AC
_0205F09C:
	add ip, ip, #1
_0205F0A0:
	cmp ip, #8
	blt _0205F028
	mov r0, #0
_0205F0AC:
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205F0B4: .word _020B0A60
	arm_func_end sub_0205F00C

	arm_func_start sub_0205F0B8
sub_0205F0B8: ; 0x0205F0B8
	ldr r2, _0205F0D0 ; =_020B0A60
	ldr ip, _0205F0D4 ; =sub_0205E3F8
	ldr r2, [r2, #0x18]
	mov r1, #8
	add r2, r2, #0x100
	bx ip
	.align 2, 0
_0205F0D0: .word _020B0A60
_0205F0D4: .word sub_0205E3F8
	arm_func_end sub_0205F0B8

	arm_func_start GetAcceptedMission
GetAcceptedMission: ; 0x0205F0D8
	ldr r1, _0205F0EC ; =_020B0A60
	ldr r1, [r1, #0x18]
	add r1, r1, #0x100
	add r0, r1, r0, lsl #5
	bx lr
	.align 2, 0
_0205F0EC: .word _020B0A60
	arm_func_end GetAcceptedMission

	arm_func_start sub_0205F0F0
sub_0205F0F0: ; 0x0205F0F0
	ldr r1, _0205F114 ; =_020B0A60
	ldr r1, [r1, #0x18]
	add r0, r1, r0, lsl #5
	ldrb r0, [r0, #0x100]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_0205F114: .word _020B0A60
	arm_func_end sub_0205F0F0

	arm_func_start sub_0205F118
sub_0205F118: ; 0x0205F118
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r3, #0
	mov r5, r1
	strb r3, [r6]
	ldrsh r0, [r5, #0xe]
	mov r4, r2
	strh r0, [r6, #2]
	strh r3, [r6, #4]
	ldrb r0, [r5, #1]
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _0205F29C
_0205F14C: ; jump table
	b _0205F204 ; case 0
	b _0205F218 ; case 1
	b _0205F218 ; case 2
	b _0205F204 ; case 3
	b _0205F1DC ; case 4
	b _0205F204 ; case 5
	b _0205F180 ; case 6
	b _0205F204 ; case 7
	b _0205F218 ; case 8
	b _0205F234 ; case 9
	b _0205F218 ; case 10
	b _0205F260 ; case 11
	b _0205F27C ; case 12
_0205F180:
	ldrb r0, [r5, #2]
	cmp r0, #4
	ldrb r0, [r5]
	bne _0205F1B8
	add r0, r0, #0xfb
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0205F29C
	ldrsh r0, [r5, #0x14]
	bl IsItemInBag
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6]
	b _0205F29C
_0205F1B8:
	cmp r0, #5
	cmpne r0, #8
	bne _0205F29C
	ldrsh r0, [r5, #0x14]
	bl IsItemInBag
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6]
	b _0205F29C
_0205F1DC:
	ldrb r0, [r5]
	cmp r0, #5
	cmpne r0, #8
	bne _0205F29C
	ldrsh r0, [r5, #0x14]
	bl IsItemInBag
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6]
	b _0205F29C
_0205F204:
	ldrb r0, [r5]
	cmp r0, #8
	moveq r0, #1
	streqb r0, [r6]
	b _0205F29C
_0205F218:
	ldrsh r0, [r5, #0x10]
	strh r0, [r6, #4]
	ldrb r0, [r5]
	cmp r0, #8
	moveq r0, #1
	streqb r0, [r6]
	b _0205F29C
_0205F234:
	ldrsh r0, [r5, #0x10]
	strh r0, [r6, #4]
	ldrb r0, [r5]
	cmp r0, #8
	bne _0205F29C
	ldrsh r0, [r5, #0x14]
	bl IsItemInBag
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6]
	b _0205F29C
_0205F260:
	ldrsh r0, [r5, #0xe]
	strh r0, [r6, #4]
	ldrb r0, [r5]
	cmp r0, #8
	moveq r0, #1
	streqb r0, [r6]
	b _0205F29C
_0205F27C:
	ldrb r0, [r5]
	cmp r0, #8
	bne _0205F29C
	ldrsh r0, [r5, #0x14]
	bl IsItemInTreasureBoxes
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6]
_0205F29C:
	cmp r4, #0xff
	ldrneb r0, [r5, #4]
	cmpne r0, r4
	movne r0, #0
	strneb r0, [r6]
	ldrb r0, [r6]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0205F118

	arm_func_start sub_0205F2B8
sub_0205F2B8: ; 0x0205F2B8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0205F2D0: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	ldmia sp!, {r4, pc} ; case 1
	ldmia sp!, {r4, pc} ; case 2
	ldmia sp!, {r4, pc} ; case 3
	b _0205F360 ; case 4
	ldmia sp!, {r4, pc} ; case 5
	b _0205F304 ; case 6
	ldmia sp!, {r4, pc} ; case 7
	ldmia sp!, {r4, pc} ; case 8
	b _0205F388 ; case 9
	ldmia sp!, {r4, pc} ; case 10
	ldmia sp!, {r4, pc} ; case 11
	ldmia sp!, {r4, pc} ; case 12
_0205F304:
	ldrb r0, [r4, #2]
	cmp r0, #4
	ldrb r0, [r4]
	bne _0205F33C
	add r0, r0, #0xfb
	and r0, r0, #0xff
	cmp r0, #1
	ldmhiia sp!, {r4, pc}
	ldrsh r0, [r4, #0x14]
	bl RemoveFirstUnequippedItemOfType
	cmp r0, #0
	movne r0, #8
	strneb r0, [r4]
	ldmia sp!, {r4, pc}
_0205F33C:
	cmp r0, #5
	cmpne r0, #8
	ldmneia sp!, {r4, pc}
	ldrsh r0, [r4, #0x14]
	bl RemoveFirstUnequippedItemOfType
	cmp r0, #0
	movne r0, #8
	strneb r0, [r4]
	ldmia sp!, {r4, pc}
_0205F360:
	ldrb r0, [r4]
	cmp r0, #5
	cmpne r0, #8
	ldmneia sp!, {r4, pc}
	ldrsh r0, [r4, #0x14]
	bl IsItemInBag
	cmp r0, #0
	movne r0, #8
	strneb r0, [r4]
	ldmia sp!, {r4, pc}
_0205F388:
	ldrb r0, [r4]
	cmp r0, #8
	ldmneia sp!, {r4, pc}
	ldrsh r0, [r4, #0x14]
	bl RemoveFirstUnequippedItemOfType
	cmp r0, #0
	movne r0, #8
	strneb r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205F2B8

	arm_func_start GetMissionByTypeAndDungeon
GetMissionByTypeAndDungeon: ; 0x0205F3AC
	stmdb sp!, {r4, lr}
	ldr ip, _0205F460 ; =_020B0A60
	ldr r4, [ip, #0x18]
	add r4, r4, #0x100
	b _0205F450
_0205F3C0:
	mov ip, r0, lsl #0x18
	add lr, r4, ip, asr #19
	cmp r3, #0xff
	ldrneb ip, [lr, #4]
	cmpne ip, r3
	bne _0205F44C
	ldrb ip, [lr, #1]
	cmp ip, r1
	bne _0205F44C
	cmp ip, #0xc
	addls pc, pc, ip, lsl #2
	b _0205F44C
_0205F3F0: ; jump table
	b _0205F440 ; case 0
	b _0205F440 ; case 1
	b _0205F440 ; case 2
	b _0205F440 ; case 3
	b _0205F440 ; case 4
	b _0205F440 ; case 5
	b _0205F424 ; case 6
	b _0205F440 ; case 7
	b _0205F440 ; case 8
	b _0205F424 ; case 9
	b _0205F424 ; case 10
	b _0205F424 ; case 11
	b _0205F424 ; case 12
_0205F424:
	ldrb lr, [lr, #2]
	ldrb ip, [r2]
	cmp lr, ip
	bne _0205F44C
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	ldmia sp!, {r4, pc}
_0205F440:
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	ldmia sp!, {r4, pc}
_0205F44C:
	add r0, r0, #1
_0205F450:
	cmp r0, #8
	blt _0205F3C0
	mvn r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205F460: .word _020B0A60
	arm_func_end GetMissionByTypeAndDungeon

	arm_func_start sub_0205F464
sub_0205F464: ; 0x0205F464
	stmdb sp!, {r3, lr}
	mov ip, r1
	mov r3, r2
	mov r1, r0
	mov r2, ip
	mov r0, #0
	bl GetMissionByTypeAndDungeon
	cmp r0, #0
	ldrge r1, _0205F4A0 ; =_020B0A60
	movlt r0, #0
	ldrge r1, [r1, #0x18]
	movge r0, r0, lsl #0x18
	addge r1, r1, #0x100
	addge r0, r1, r0, asr #19
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205F4A0: .word _020B0A60
	arm_func_end sub_0205F464

	arm_func_start CheckAcceptedMissionByTypeAndDungeon
CheckAcceptedMissionByTypeAndDungeon: ; 0x0205F4A4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _0205F500 ; =_020B0A60
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, #0
_0205F4BC:
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl GetMissionByTypeAndDungeon
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, [r7, #0x18]
	mov r1, r0, lsl #0x18
	add r2, r2, #0x100
	mov r1, r1, asr #0x18
	ldrb r1, [r2, r1, lsl #5]
	add r0, r0, #1
	cmp r1, #5
	bne _0205F4BC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205F500: .word _020B0A60
	arm_func_end CheckAcceptedMissionByTypeAndDungeon

	arm_func_start sub_0205F504
sub_0205F504: ; 0x0205F504
	stmdb sp!, {r4, r5, r6, lr}
	ldr r5, _0205F580 ; =_020B0A60
	mov r4, #0
	ldr r0, [r5, #0x18]
	add r6, r0, #0x100
_0205F518:
	ldrb r0, [r6]
	cmp r0, #6
	cmpne r0, #7
	cmpne r0, #8
	bne _0205F540
	ldr r1, [r5, #0x18]
	mov r0, r4, lsl #0x18
	add r1, r1, #0x100
	add r0, r1, r0, asr #19
	bl ClearMissionData
_0205F540:
	add r4, r4, #1
	cmp r4, #8
	add r6, r6, #0x20
	blt _0205F518
	ldr r1, _0205F580 ; =_020B0A60
	mov r0, #8
	ldr r1, [r1, #0x18]
	add r1, r1, #0x100
	bl sub_0205E48C
	ldr r0, _0205F580 ; =_020B0A60
	ldr r2, _0205F584 ; =sub_0205F5C8
	ldr r1, [r0, #0x18]
	mov r0, #8
	add r1, r1, #0x100
	bl sub_0205E50C
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205F580: .word _020B0A60
_0205F584: .word sub_0205F5C8
	arm_func_end sub_0205F504

	arm_func_start sub_0205F588
sub_0205F588: ; 0x0205F588
	ldr r1, _0205F5A0 ; =_020B0A60
	ldr ip, _0205F5A4 ; =ClearMissionData
	ldr r1, [r1, #0x18]
	add r1, r1, #0x100
	add r0, r1, r0, lsl #5
	bx ip
	.align 2, 0
_0205F5A0: .word _020B0A60
_0205F5A4: .word ClearMissionData
	arm_func_end sub_0205F588

	arm_func_start sub_0205F5A8
sub_0205F5A8: ; 0x0205F5A8
	ldr r1, _0205F5C0 ; =_020B0A60
	ldr ip, _0205F5C4 ; =sub_0205E48C
	ldr r1, [r1, #0x18]
	mov r0, #8
	add r1, r1, #0x100
	bx ip
	.align 2, 0
_0205F5C0: .word _020B0A60
_0205F5C4: .word sub_0205E48C
	arm_func_end sub_0205F5A8

	arm_func_start sub_0205F5C8
sub_0205F5C8: ; 0x0205F5C8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #1]
	mov r4, r1
	cmp r2, #3
	ldreqb r0, [r5, #2]
	cmpeq r0, #3
	beq _0205F5F8
	cmp r2, #6
	ldreqb r0, [r5, #2]
	cmpeq r0, #4
	bne _0205F62C
_0205F5F8:
	ldrb r0, [r5, #4]
	bl DungeonSwapIdToIdx
	bl GetDungeonMode
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movhs r0, #1
	movlo r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
_0205F62C:
	ldrb r1, [r4, #1]
	cmp r1, #3
	ldreqb r0, [r4, #2]
	cmpeq r0, #3
	beq _0205F650
	cmp r1, #6
	ldreqb r0, [r4, #2]
	cmpeq r0, #4
	bne _0205F684
_0205F650:
	ldrb r0, [r4, #4]
	bl DungeonSwapIdToIdx
	bl GetDungeonMode
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movhi r0, #1
	movls r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
_0205F684:
	cmp r2, #8
	cmpne r2, #5
	cmpne r2, #0xe
	bne _0205F6B0
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movhs r0, #1
	movlo r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
_0205F6B0:
	cmp r1, #8
	cmpne r1, #5
	cmpne r1, #0xe
	bne _0205F6DC
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movhi r0, #1
	movls r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
_0205F6DC:
	ldrb r1, [r4, #4]
	ldrb r0, [r5, #4]
	mov r2, #1
	cmp r0, r1
	bhi _0205F708
	bne _0205F704
	ldrb r1, [r5, #5]
	ldrb r0, [r4, #5]
	cmp r1, r0
	bhi _0205F708
_0205F704:
	mov r2, #0
_0205F708:
	and r0, r2, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205F5C8

	arm_func_start sub_0205F710
sub_0205F710: ; 0x0205F710
	ldr r0, _0205F72C ; =_020B0A60
	ldr ip, _0205F730 ; =sub_0205E50C
	ldr r1, [r0, #0x18]
	ldr r2, _0205F734 ; =sub_0205F5C8
	mov r0, #8
	add r1, r1, #0x100
	bx ip
	.align 2, 0
_0205F72C: .word _020B0A60
_0205F730: .word sub_0205E50C
_0205F734: .word sub_0205F5C8
	arm_func_end sub_0205F710

	arm_func_start sub_0205F738
sub_0205F738: ; 0x0205F738
	cmp r0, #0
	ldrne r1, _0205F754 ; =_020B0A60
	ldrne r1, [r1, #0x10]
	strne r1, [r0]
	ldr r0, _0205F754 ; =_020B0A60
	ldr r0, [r0, #0x14]
	bx lr
	.align 2, 0
_0205F754: .word _020B0A60
	arm_func_end sub_0205F738

	arm_func_start GenerateAllPossibleMonstersList
GenerateAllPossibleMonstersList: ; 0x0205F758
	stmdb sp!, {r4, r5, r6, lr}
	mov r0, #0x430
	mov r1, #0xf
	bl MemAlloc
	mov r5, r0
	mov r4, #0
	mov r6, #1
_0205F774:
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	bl CanMonsterBeUsedForMissionWrapper
	cmp r0, #0
	movne r0, r4, lsl #1
	strneh r6, [r5, r0]
	add r6, r6, #1
	addne r4, r4, #1
	cmp r6, #0x218
	blt _0205F774
	cmp r4, #0
	ldrne r0, _0205F7C0 ; =_020B0A60
	strne r5, [r0, #0x10]
	strne r4, [r0, #0x14]
	bne _0205F7B8
	mov r0, r5
	bl MemFree
_0205F7B8:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205F7C0: .word _020B0A60
	arm_func_end GenerateAllPossibleMonstersList

	arm_func_start DeleteAllPossibleMonstersList
DeleteAllPossibleMonstersList: ; 0x0205F7C4
	stmdb sp!, {r3, lr}
	ldr r0, _0205F7F0 ; =_020B0A60
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _0205F7F0 ; =_020B0A60
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205F7F0: .word _020B0A60
	arm_func_end DeleteAllPossibleMonstersList

	arm_func_start GenerateAllPossibleDungeonsList
GenerateAllPossibleDungeonsList: ; 0x0205F7F4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xb4
	mov r0, #0xb4
	mov r1, #0xf
	bl MemAlloc
	mov r5, #0
	mov r4, r0
	mov r1, r5
	mov r8, r5
	add r0, sp, #0
_0205F81C:
	strb r8, [r0, r1]
	add r1, r1, #1
	cmp r1, #0xb4
	blt _0205F81C
	mov r7, #1
	add r6, sp, #0
_0205F834:
	and r0, r8, #0xff
	bl sub_02062BB8
	cmp r0, #0
	strneb r7, [r6, r8]
	add r8, r8, #1
	cmp r8, #0xb4
	blt _0205F834
	mov r2, #0
	add r1, sp, #0
_0205F858:
	ldrb r0, [r1, r2]
	cmp r0, #0
	strneb r2, [r4, r5]
	add r2, r2, #1
	addne r5, r5, #1
	cmp r2, #0xb4
	blt _0205F858
	cmp r5, #0
	ldrne r0, _0205F89C ; =_020B0A60
	strne r4, [r0, #8]
	strne r5, [r0, #0xc]
	bne _0205F890
	mov r0, r4
	bl MemFree
_0205F890:
	mov r0, r5
	add sp, sp, #0xb4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205F89C: .word _020B0A60
	arm_func_end GenerateAllPossibleDungeonsList

	arm_func_start DeleteAllPossibleDungeonsList
DeleteAllPossibleDungeonsList: ; 0x0205F8A0
	stmdb sp!, {r3, lr}
	ldr r0, _0205F8CC ; =_020B0A60
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _0205F8CC ; =_020B0A60
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205F8CC: .word _020B0A60
	arm_func_end DeleteAllPossibleDungeonsList

	arm_func_start GenerateAllPossibleDeliverList
GenerateAllPossibleDeliverList: ; 0x0205F8D0
	stmdb sp!, {r3, r4, r5, lr}
	mov r0, #0x2d8
	mov r1, #0xf
	bl MemAlloc
	mov r4, r0
	bl GetAvailableItemDeliveryList
	movs r5, r0
	ldrne r0, _0205F908 ; =_020B0A60
	stmneia r0, {r4, r5}
	bne _0205F900
	mov r0, r4
	bl MemFree
_0205F900:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205F908: .word _020B0A60
	arm_func_end GenerateAllPossibleDeliverList

	arm_func_start DeleteAllPossibleDeliverList
DeleteAllPossibleDeliverList: ; 0x0205F90C
	stmdb sp!, {r3, lr}
	ldr r0, _0205F938 ; =_020B0A60
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _0205F938 ; =_020B0A60
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205F938: .word _020B0A60
	arm_func_end DeleteAllPossibleDeliverList

	arm_func_start sub_0205F93C
sub_0205F93C: ; 0x0205F93C
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #1]
	mov r3, #0
	add r3, r3, r2, lsl #11
	add r3, r3, r1
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	add r2, r3, r2
	add ip, r2, r1
	ldr r3, [r0, #8]
	ldrb r2, [r0, #0xc]
	add ip, ip, r3, lsl #8
	ldrsh r3, [r0, #0xe]
	add ip, ip, r2, lsl #13
	ldrb r1, [r0, #0x16]
	add ip, ip, r3, lsl #12
	ldrsh r2, [r0, #0x10]
	ldrsh r3, [r0, #0x12]
	cmp r1, #5
	add ip, ip, r2, lsl #16
	ldrsh r2, [r0, #0x14]
	add r3, ip, r3, lsl #4
	add r2, r3, r2, lsl #24
	add r2, r2, r1, lsl #2
	ldrneh r1, [r0, #0x18]
	addne r2, r2, r1, lsl #1
	ldrb r1, [r0, #0x1a]
	ldrh r0, [r0, #0x1c]
	add r1, r2, r1, lsl #21
	add r0, r1, r0, lsl #22
	bx lr
	arm_func_end sub_0205F93C

	arm_func_start ClearMissionData
ClearMissionData: ; 0x0205F9B8
	mov r2, #0
	strb r2, [r0]
	mov r1, #0xff
	strb r1, [r0, #4]
	strb r2, [r0, #5]
	strb r2, [r0, #0x16]
	bx lr
	arm_func_end ClearMissionData

	arm_func_start sub_0205F9D4
sub_0205F9D4: ; 0x0205F9D4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0205FA34 ; =_020B0A60
	mov r5, r0
	ldr r4, [r1, #0x18]
	mov lr, #0xf
	mov r3, #0xc
_0205F9EC:
	mla r1, lr, r3, r4
	add r0, r1, #0x334
	sub lr, lr, #1
	add ip, r1, #0x340
	ldmia r0, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	cmp lr, #0
	bgt _0205F9EC
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	mov r0, r5
	str r2, [r4, #0x340]
	str r1, [r4, #0x344]
	bl sub_0205F93C
	ldr r1, _0205FA34 ; =_020B0A60
	ldr r1, [r1, #0x18]
	str r0, [r1, #0x348]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205FA34: .word _020B0A60
	arm_func_end sub_0205F9D4

	arm_func_start sub_0205FA38
sub_0205FA38: ; 0x0205FA38
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl sub_0205F93C
	ldr r2, _0205FAAC ; =_020B0A60
	mov r1, #0
	ldr r2, [r2, #0x18]
	add r5, r2, #0x340
	mov r2, #0xc
	b _0205FA9C
_0205FA5C:
	mul lr, r1, r2
	ldrb ip, [r5, lr]
	ldrb r3, [r4, #4]
	add lr, r5, lr
	cmp ip, r3
	ldreqb ip, [lr, #1]
	ldreqb r3, [r4, #5]
	cmpeq ip, r3
	ldreq ip, [lr, #4]
	ldreq r3, [r4, #8]
	cmpeq ip, r3
	ldreq r3, [lr, #8]
	cmpeq r3, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	add r1, r1, #1
_0205FA9C:
	cmp r1, #0x10
	blt _0205FA5C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205FAAC: .word _020B0A60
	arm_func_end sub_0205FA38

	arm_func_start sub_0205FAB0
sub_0205FAB0: ; 0x0205FAB0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl sub_02050974
	mov r7, #0
	ldr r4, _0205FC1C ; =_020B0A60
	add r6, sp, #0
	mov r5, r7
_0205FADC:
	ldr r1, [r4, #0x18]
	mov r0, r6
	mov r2, r5
	add r1, r1, r7, lsl #5
	bl sub_0205FD88
	add r7, r7, #1
	cmp r7, #8
	blt _0205FADC
	mov r7, #0
	ldr r4, _0205FC1C ; =_020B0A60
	add r6, sp, #0
	mov r5, r7
_0205FB0C:
	ldr r1, [r4, #0x18]
	mov r0, r6
	add r1, r1, #0x100
	mov r2, r5
	add r1, r1, r7, lsl #5
	bl sub_0205FD88
	add r7, r7, #1
	cmp r7, #8
	blt _0205FB0C
	mov r7, #0
	ldr r4, _0205FC1C ; =_020B0A60
	add r6, sp, #0
	mov r5, r7
_0205FB40:
	ldr r1, [r4, #0x18]
	mov r0, r6
	add r1, r1, #0x200
	mov r2, r5
	add r1, r1, r7, lsl #5
	bl sub_0205FD88
	add r7, r7, #1
	cmp r7, #8
	blt _0205FB40
	ldr r1, _0205FC1C ; =_020B0A60
	add r0, sp, #0
	ldr r1, [r1, #0x18]
	mov r2, #0
	add r1, r1, #0x300
	bl sub_0205FD88
	ldr r1, _0205FC1C ; =_020B0A60
	add r0, sp, #0
	ldr r1, [r1, #0x18]
	mov r2, #0
	add r1, r1, #0x320
	bl sub_0205FD88
	ldr sl, _0205FC1C ; =_020B0A60
	mov r8, #0
	add r6, sp, #0
	mov r5, #0x20
	mov r4, #0x18
	mov sb, #0xc
_0205FBAC:
	mul r7, r8, sb
	ldr r1, [sl, #0x18]
	mov r0, r6
	add r1, r1, #0x348
	mov r2, r5
	add r1, r1, r7
	bl CopyBitsFrom
	ldr r1, [sl, #0x18]
	mov r0, r6
	add r1, r1, #0x344
	mov r2, r4
	add r1, r1, r7
	bl CopyBitsFrom
	ldr r1, [sl, #0x18]
	mov r0, r6
	add r1, r1, #0x340
	add r1, r1, r7
	bl Copy16BitsFrom
	add r8, r8, #1
	cmp r8, #0x10
	blt _0205FBAC
	add r0, sp, #0
	bl sub_020509BC
	bl Rand16Bit
	bl sub_020634F4
	ldr r0, [sp, #8]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0205FC1C: .word _020B0A60
	arm_func_end sub_0205FAB0

	arm_func_start sub_0205FC20
sub_0205FC20: ; 0x0205FC20
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl sub_02050990
	mov r7, #0
	ldr r4, _0205FD84 ; =_020B0A60
	add r6, sp, #0
	mov r5, r7
_0205FC4C:
	ldr r1, [r4, #0x18]
	mov r0, r6
	mov r2, r5
	add r1, r1, r7, lsl #5
	bl sub_0205FE80
	add r7, r7, #1
	cmp r7, #8
	blt _0205FC4C
	mov r7, #0
	ldr r4, _0205FD84 ; =_020B0A60
	add r6, sp, #0
	mov r5, r7
_0205FC7C:
	ldr r1, [r4, #0x18]
	mov r0, r6
	add r1, r1, #0x100
	mov r2, r5
	add r1, r1, r7, lsl #5
	bl sub_0205FE80
	add r7, r7, #1
	cmp r7, #8
	blt _0205FC7C
	mov r7, #0
	ldr r4, _0205FD84 ; =_020B0A60
	add r6, sp, #0
	mov r5, r7
_0205FCB0:
	ldr r1, [r4, #0x18]
	mov r0, r6
	add r1, r1, #0x200
	mov r2, r5
	add r1, r1, r7, lsl #5
	bl sub_0205FE80
	add r7, r7, #1
	cmp r7, #8
	blt _0205FCB0
	ldr r1, _0205FD84 ; =_020B0A60
	add r0, sp, #0
	ldr r1, [r1, #0x18]
	mov r2, #0
	add r1, r1, #0x300
	bl sub_0205FE80
	ldr r1, _0205FD84 ; =_020B0A60
	add r0, sp, #0
	ldr r1, [r1, #0x18]
	mov r2, #0
	add r1, r1, #0x320
	bl sub_0205FE80
	ldr sl, _0205FD84 ; =_020B0A60
	mov r8, #0
	add r6, sp, #0
	mov r5, #0x20
	mov r4, #0x18
	mov sb, #0xc
_0205FD1C:
	mul r7, r8, sb
	ldr r1, [sl, #0x18]
	mov r0, r6
	add r1, r1, #0x348
	mov r2, r5
	add r1, r1, r7
	bl CopyBitsTo
	ldr r1, [sl, #0x18]
	mov r0, r6
	add r1, r1, #0x344
	mov r2, r4
	add r1, r1, r7
	bl CopyBitsTo
	ldr r1, [sl, #0x18]
	mov r0, r6
	add r1, r1, #0x340
	add r1, r1, r7
	bl sub_020515C4
	add r8, r8, #1
	cmp r8, #0x10
	blt _0205FD1C
	add r0, sp, #0
	bl sub_020509BC
	ldr r0, [sp, #8]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0205FD84: .word _020B0A60
	arm_func_end sub_0205FC20

	arm_func_start sub_0205FD88
sub_0205FD88: ; 0x0205FD88
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #1
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #2
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xe
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x10
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x12
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x16
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x18
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, sp, #0
	mov r2, #1
	bl CopyBitsFrom
	ldrb r0, [sp]
	add r1, r4, #0x1c
	mov r2, #0xb
	cmp r0, #0
	movne r3, #1
	moveq r3, #0
	mov r0, r5
	strb r3, [r4, #0x1a]
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #8
	mov r2, #0x18
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #4
	bl Copy16BitsFrom
	mov r0, r5
	add r1, r4, #0xc
	mov r2, #8
	bl CopyBitsFrom
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205FD88

	arm_func_start sub_0205FE80
sub_0205FE80: ; 0x0205FE80
	stmdb sp!, {r3, r4, r5, lr}
	mov ip, #0xff
	mov r3, #0
	mov r5, r0
	mov r4, r1
	mov r2, #4
	strb ip, [sp, #1]
	strb r3, [sp]
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #1
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #2
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xe
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x10
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x12
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x16
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x18
	mov r2, #0xb
	bl CopyBitsTo
	ldrb r0, [r4, #0x1a]
	mov r2, #1
	cmp r0, #1
	addeq r1, sp, #1
	addne r1, sp, #0
	mov r0, r5
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x1c
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #8
	mov r2, #0x18
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #4
	bl sub_020515C4
	mov r0, r5
	add r1, r4, #0xc
	mov r2, #8
	bl CopyBitsTo
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205FE80

	arm_func_start sub_0205FF80
sub_0205FF80: ; 0x0205FF80
	stmdb sp!, {r3, lr}
	cmp r0, #3
	mov r2, #0
	bne _0205FFA8
	cmp r1, #1
	moveq r2, #0xa5
	beq _02060070
	cmp r1, #2
	moveq r2, #0x6f
	b _02060070
_0205FFA8:
	cmp r0, #0xa
	bne _0205FFCC
	cmp r1, #6
	bne _02060070
	ldr r0, _02060078 ; =_020A18FC
	sub r1, r2, #1
	bl sub_02060084
	mov r2, r0
	b _02060070
_0205FFCC:
	cmp r0, #0xb
	bne _02060034
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _02060070
_0205FFE0: ; jump table
	b _0205FFF8 ; case 0
	b _0206000C ; case 1
	b _02060014 ; case 2
	b _0206001C ; case 3
	b _02060024 ; case 4
	b _0206002C ; case 5
_0205FFF8:
	ldr r0, _0206007C ; =_020A1904
	sub r1, r2, #1
	bl sub_02060084
	mov r2, r0
	b _02060070
_0206000C:
	mov r2, #0x91
	b _02060070
_02060014:
	mov r2, #0x92
	b _02060070
_0206001C:
	mov r2, #0x93
	b _02060070
_02060024:
	mov r2, #0x94
	b _02060070
_0206002C:
	mov r2, #0x95
	b _02060070
_02060034:
	cmp r0, #0xc
	bne _02060070
	mov r0, #9
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	bne _02060060
	ldr r0, _02060080 ; =_020A1958
	mov r1, #0xf
	bl sub_02060084
	mov r2, r0
	b _02060070
_02060060:
	ldr r0, _02060080 ; =_020A1958
	mvn r1, #0
	bl sub_02060084
	mov r2, r0
_02060070:
	mov r0, r2
	ldmia sp!, {r3, pc}
	.align 2, 0
_02060078: .word _020A18FC
_0206007C: .word _020A1904
_02060080: .word _020A1958
	arm_func_end sub_0205FF80

	arm_func_start sub_02060084
sub_02060084: ; 0x02060084
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, r5
	mov r4, #0
	b _0206009C
_02060098:
	add r4, r4, #1
_0206009C:
	ldrb r0, [r2], #1
	cmp r0, #0
	bne _02060098
	cmp r1, #0
	blt _020600B8
	cmp r4, r1
	movgt r4, r1
_020600B8:
	bl Rand16Bit
	mov r1, r4
	bl _s32_div_f
	ldrb r0, [r5, r1]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02060084

	arm_func_start sub_020600CC
sub_020600CC: ; 0x020600CC
	stmdb sp!, {r3, lr}
	ldr r0, _02060144 ; =_020B0AD8
	ldr r0, [r0, #0x24]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02060148 ; =_020B0AFC
	ldr r1, _0206014C ; =_020A462C
	mov r2, #1
	bl LoadFileFromRom
	ldr r0, _02060144 ; =_020B0AD8
	ldr r2, [r0, #0x24]
	ldr r1, [r2]
	add r1, r2, r1
	str r1, [r0, #4]
	ldr r1, [r2, #4]
	add r1, r2, r1
	str r1, [r0, #0x14]
	ldr r1, [r2, #8]
	add r1, r2, r1
	str r1, [r0, #0x10]
	ldr r1, [r2, #0xc]
	add r1, r2, r1
	str r1, [r0, #8]
	ldr r1, [r2, #0x10]
	add r1, r2, r1
	str r1, [r0, #0x18]
	ldr r1, [r2, #0x14]
	add r1, r2, r1
	str r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02060144: .word _020B0AD8
_02060148: .word _020B0AFC
_0206014C: .word _020A462C
	arm_func_end sub_020600CC

	arm_func_start sub_02060150
sub_02060150: ; 0x02060150
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_0205E238
	cmp r0, #0
	strne r5, [r4, #0x5c]
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	add r1, r4, #0x18
	bl sub_02062E5C
	mov r0, r5
	mov r1, r4
	bl sub_02060274
	mov r1, r5
	bl sub_0206096C
	str r0, [r4, #0x60]
	add r0, r5, #4
	str r0, [r4, #8]
	mov r1, #0
	str r1, [r4, #0xc]
	ldrsh r0, [r5, #0xe]
	strh r0, [r4, #0x10]
	ldrsh r0, [r5, #0x10]
	strh r0, [r4, #0x12]
	ldrsh r0, [r5, #0x12]
	strh r0, [r4, #0x14]
	ldrsh r0, [r5, #0x14]
	strh r0, [r4, #0x16]
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	streqb r1, [r4, #0x49]
	ldreqh r0, [r5, #0x1c]
	streqb r0, [r4, #0x4c]
	beq _020601EC
	cmp r0, #1
	moveq r0, #1
	streqb r0, [r4, #0x49]
	ldreqsh r0, [r5, #0x1c]
	streqh r0, [r4, #0x4a]
_020601EC:
	ldrb r0, [r5]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02060258
_020601FC: ; jump table
	b _02060258 ; case 0
	b _02060220 ; case 1
	b _02060220 ; case 2
	b _02060220 ; case 3
	b _02060220 ; case 4
	b _02060244 ; case 5
	b _02060230 ; case 6
	b _02060244 ; case 7
	b _02060244 ; case 8
_02060220:
	mov r0, #1
	strb r0, [r4, #0x47]
	strb r0, [r4, #0x48]
	b _02060264
_02060230:
	mov r0, #0
	strb r0, [r4, #0x47]
	mov r0, #3
	strb r0, [r4, #0x48]
	b _02060264
_02060244:
	mov r0, #3
	strb r0, [r4, #0x47]
	mov r0, #2
	strb r0, [r4, #0x48]
	b _02060264
_02060258:
	mov r0, #0
	strb r0, [r4, #0x47]
	strb r0, [r4, #0x48]
_02060264:
	str r5, [r4, #0x5c]
	mov r0, #0
	str r0, [r4, #0x64]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02060150

	arm_func_start sub_02060274
sub_02060274: ; 0x02060274
	ldrb r3, [r0, #1]
	mov r2, #0
	cmp r3, #0xe
	addls pc, pc, r3, lsl #2
	b _02060634
_02060288: ; jump table
	b _020602C4 ; case 0
	b _020602DC ; case 1
	b _02060344 ; case 2
	b _02060388 ; case 3
	b _020603DC ; case 4
	b _02060404 ; case 5
	b _02060420 ; case 6
	b _02060480 ; case 7
	b _0206050C ; case 8
	b _02060494 ; case 9
	b _02060528 ; case 10
	b _0206058C ; case 11
	b _020605EC ; case 12
	b _02060634 ; case 13
	b _02060608 ; case 14
_020602C4:
	mov r0, #1
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	mov r0, #3
	strb r0, [r1, #0x46]
	b _02060634
_020602DC:
	ldrb r0, [r0, #2]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02060338
_020602EC: ; jump table
	b _020602FC ; case 0
	b _02060310 ; case 1
	b _02060324 ; case 2
	b _02060324 ; case 3
_020602FC:
	mov r0, #4
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	mov r2, #1
	b _02060338
_02060310:
	mov r0, #1
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	mov r2, #5
	b _02060338
_02060324:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #4
	strb r0, [r1, #0x45]
	mov r2, #5
_02060338:
	mov r0, #4
	strb r0, [r1, #0x46]
	b _02060634
_02060344:
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0206036C
	cmp r0, #1
	moveq r0, #1
	streqb r0, [r1, #0x44]
	moveq r0, #4
	streqb r0, [r1, #0x45]
	moveq r2, #5
	b _0206037C
_0206036C:
	mov r0, #4
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	mov r2, #1
_0206037C:
	mov r0, #5
	strb r0, [r1, #0x46]
	b _02060634
_02060388:
	ldrb r0, [r0, #2]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020603CC
_02060398: ; jump table
	b _020603A8 ; case 0
	b _020603BC ; case 1
	b _020603BC ; case 2
	b _020603BC ; case 3
_020603A8:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #8
	strb r0, [r1, #0x45]
	b _020603CC
_020603BC:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #7
	strb r0, [r1, #0x45]
_020603CC:
	mov r0, #6
	strb r0, [r1, #0x46]
	mov r2, #1
	b _02060634
_020603DC:
	ldrb r0, [r0, #2]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r1, #0x44]
	moveq r0, #5
	streqb r0, [r1, #0x45]
	mov r0, #7
	moveq r2, #3
	strb r0, [r1, #0x46]
	b _02060634
_02060404:
	mov r0, #5
	strb r0, [r1, #0x44]
	mov r0, #7
	strb r0, [r1, #0x45]
	mov r0, #8
	strb r0, [r1, #0x46]
	b _02060634
_02060420:
	ldrb r0, [r0, #2]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02060474
_02060430: ; jump table
	b _02060444 ; case 0
	b _02060454 ; case 1
	b _02060444 ; case 2
	b _02060444 ; case 3
	b _02060468 ; case 4
_02060444:
	mov r0, #2
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	b _02060474
_02060454:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #2
	strb r0, [r1, #0x45]
	b _02060474
_02060468:
	mov r0, #1
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
_02060474:
	mov r2, #1
	strb r2, [r1, #0x46]
	b _02060634
_02060480:
	mov r0, #2
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	strb r0, [r1, #0x46]
	b _02060634
_02060494:
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _020604B4
	cmp r0, #1
	beq _020604D0
	cmp r0, #2
	beq _020604EC
	b _02060504
_020604B4:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #5
	strb r0, [r1, #0x45]
	mov r0, #0xa
	strb r0, [r1, #0x46]
	b _02060504
_020604D0:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #6
	strb r0, [r1, #0x45]
	mov r0, #0xb
	strb r0, [r1, #0x46]
	b _02060504
_020604EC:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #5
	strb r0, [r1, #0x45]
	mov r0, #0xb
	strb r0, [r1, #0x46]
_02060504:
	mov r2, #1
	b _02060634
_0206050C:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #4
	strb r0, [r1, #0x45]
	mov r0, #0xc
	strb r0, [r1, #0x46]
	b _02060634
_02060528:
	ldrb r0, [r0, #2]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02060580
_02060538: ; jump table
	b _02060558 ; case 0
	b _02060558 ; case 1
	b _02060558 ; case 2
	b _02060558 ; case 3
	b _02060558 ; case 4
	b _02060558 ; case 5
	b _0206056C ; case 6
	b _02060558 ; case 7
_02060558:
	mov r2, #4
	strb r2, [r1, #0x44]
	mov r0, #1
	strb r0, [r1, #0x45]
	b _02060580
_0206056C:
	mov r0, #4
	strb r0, [r1, #0x44]
	mov r0, #1
	strb r0, [r1, #0x45]
	mov r2, #6
_02060580:
	mov r0, #0xd
	strb r0, [r1, #0x46]
	b _02060634
_0206058C:
	ldrb r0, [r0, #2]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020605E0
_0206059C: ; jump table
	b _020605B4 ; case 0
	b _020605CC ; case 1
	b _020605CC ; case 2
	b _020605CC ; case 3
	b _020605CC ; case 4
	b _020605CC ; case 5
_020605B4:
	mov r0, #3
	strb r0, [r1, #0x44]
	mov r0, #7
	strb r0, [r1, #0x45]
	mov r2, #6
	b _020605E0
_020605CC:
	mov r0, #3
	strb r0, [r1, #0x44]
	mov r0, #7
	strb r0, [r1, #0x45]
	mov r2, #4
_020605E0:
	mov r0, #0xe
	strb r0, [r1, #0x46]
	b _02060634
_020605EC:
	mov r0, #1
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	mov r0, #0xf
	strb r0, [r1, #0x46]
	mov r2, #7
	b _02060634
_02060608:
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _02060630
	mov r0, #1
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	mov r0, #9
	strb r0, [r1, #0x46]
	mov r0, #7
	strb r0, [r1, #0x1a]
_02060630:
	mov r2, #7
_02060634:
	mov r0, r2
	bx lr
	arm_func_end sub_02060274

	arm_func_start sub_0206063C
sub_0206063C: ; 0x0206063C
	ldrb r2, [r0, #0x20]
	ldrb r0, [r1, #1]
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_0206063C

	arm_func_start sub_02060658
sub_02060658: ; 0x02060658
	ldrb r3, [r0, #0x20]
	ldrb r2, [r1, #1]
	cmp r3, r2
	ldreqb r2, [r0, #0x21]
	ldreqb r0, [r1, #2]
	cmpeq r2, r0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_02060658

	arm_func_start sub_02060680
sub_02060680: ; 0x02060680
	stmdb sp!, {r3, lr}
	ldrb r3, [r0, #0x20]
	ldrb r2, [r1, #1]
	mov ip, #0
	mov lr, ip
	cmp r3, r2
	ldreqb r3, [r0, #0x21]
	ldreqb r2, [r1, #2]
	cmpeq r3, r2
	bne _020606C4
	ldrh r2, [r0, #2]
	cmp r2, #0
	cmpne r2, #1
	moveq r2, #1
	movne r2, ip
	tst r2, #0xff
	movne lr, #1
_020606C4:
	cmp lr, #0
	beq _020606DC
	ldrsh r2, [r0, #6]
	ldrsh r0, [r1, #0x14]
	cmp r2, r0
	moveq ip, #1
_020606DC:
	and r0, ip, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end sub_02060680

	arm_func_start sub_020606E4
sub_020606E4: ; 0x020606E4
	stmdb sp!, {r4, lr}
	ldrb r3, [r0, #0x20]
	ldrb r2, [r1, #1]
	mov r4, #0
	mov ip, r4
	cmp r3, r2
	ldreqb r3, [r0, #0x21]
	ldreqb r2, [r1, #2]
	cmpeq r3, r2
	bne _02060728
	ldrh r2, [r0, #0xe]
	cmp r2, #0
	cmpne r2, #1
	moveq r2, #1
	movne r2, r4
	tst r2, #0xff
	movne ip, #1
_02060728:
	cmp ip, #0
	beq _02060744
	ldrsh r0, [r0, #0x12]
	ldrsh r1, [r1, #0xe]
	bl DexNumbersEqual
	cmp r0, #0
	movne r4, #1
_02060744:
	and r0, r4, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end sub_020606E4

	arm_func_start sub_0206074C
sub_0206074C: ; 0x0206074C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	ldrb r1, [r7, #0x20]
	ldrb r0, [r6, #1]
	mov r4, #0
	mov r5, r4
	cmp r1, r0
	ldreqb r1, [r7, #0x21]
	ldreqb r0, [r6, #2]
	mov r2, r4
	mov r3, r4
	cmpeq r1, r0
	bne _020607A0
	ldrh r0, [r7, #0xe]
	cmp r0, #0
	cmpne r0, #1
	moveq r0, #1
	movne r0, r4
	tst r0, #0xff
	movne r3, #1
_020607A0:
	cmp r3, #0
	beq _020607C4
	ldrh r0, [r7, #0x14]
	cmp r0, #0
	cmpne r0, #1
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	movne r2, #1
_020607C4:
	cmp r2, #0
	beq _020607E0
	ldrsh r0, [r7, #0x12]
	ldrsh r1, [r6, #0xe]
	bl DexNumbersEqual
	cmp r0, #0
	movne r5, #1
_020607E0:
	cmp r5, #0
	beq _020607FC
	ldrsh r0, [r7, #0x18]
	ldrsh r1, [r6, #0x10]
	bl DexNumbersEqual
	cmp r0, #0
	movne r4, #1
_020607FC:
	and r0, r4, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0206074C

	arm_func_start sub_02060804
sub_02060804: ; 0x02060804
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	ldrb r1, [r8, #0x20]
	ldrb r0, [r7, #1]
	mov r4, #0
	mov r5, r4
	cmp r1, r0
	ldreqb r1, [r8, #0x21]
	ldreqb r0, [r7, #2]
	mov r6, r4
	mov r2, r4
	mov r3, r4
	mov ip, r4
	cmpeq r1, r0
	bne _02060860
	ldrh r0, [r8, #0xe]
	cmp r0, #0
	cmpne r0, #1
	moveq r0, #1
	movne r0, r4
	tst r0, #0xff
	movne ip, #1
_02060860:
	cmp ip, #0
	beq _02060884
	ldrh r0, [r8, #0x14]
	cmp r0, #0
	cmpne r0, #1
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	movne r3, #1
_02060884:
	cmp r3, #0
	beq _020608A8
	ldrh r0, [r8, #0x1a]
	cmp r0, #0
	cmpne r0, #1
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	movne r2, #1
_020608A8:
	cmp r2, #0
	beq _020608C4
	ldrsh r0, [r8, #0x12]
	ldrsh r1, [r7, #0xe]
	bl DexNumbersEqual
	cmp r0, #0
	movne r6, #1
_020608C4:
	cmp r6, #0
	beq _020608E0
	ldrsh r0, [r8, #0x18]
	ldrsh r1, [r7, #0x10]
	bl DexNumbersEqual
	cmp r0, #0
	movne r5, #1
_020608E0:
	cmp r5, #0
	beq _020608FC
	ldrsh r0, [r8, #0x1e]
	ldrsh r1, [r7, #0x12]
	bl DexNumbersEqual
	cmp r0, #0
	movne r4, #1
_020608FC:
	and r0, r4, #0xff
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02060804

	arm_func_start sub_02060904
sub_02060904: ; 0x02060904
	stmdb sp!, {r3, lr}
	ldrb r3, [r0, #0x20]
	ldrb r2, [r1, #1]
	mov ip, #0
	mov lr, ip
	cmp r3, r2
	ldreqb r3, [r0, #0x21]
	ldreqb r2, [r1, #2]
	cmpeq r3, r2
	bne _02060948
	ldrh r2, [r0, #8]
	cmp r2, #0
	cmpne r2, #1
	moveq r2, #1
	movne r2, ip
	tst r2, #0xff
	movne lr, #1
_02060948:
	cmp lr, #0
	beq _02060964
	ldrh r2, [r0, #0xc]
	ldrb r0, [r1, #4]
	and r1, r2, #0xff
	cmp r1, r0
	moveq ip, #1
_02060964:
	and r0, ip, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end sub_02060904

	arm_func_start sub_0206096C
sub_0206096C: ; 0x0206096C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r2, _020609E0 ; =ARM9_UNKNOWN_FUNCTION_TABLE__NA_20A3CF4
	mov r8, r0
	mov r7, r1
	ldr r5, [r2, r8, lsl #2]
	mov r4, #0
	mov sb, #0x22
	ldr sl, _020609E4 ; =_020B0AD8
	b _020609BC
_02060990:
	mul r6, r4, sb
	ldr r0, [sl, #0x18]
	mov r1, r7
	add r0, r0, r6
	blx r5
	cmp r0, #0
	ldrne r0, _020609E4 ; =_020B0AD8
	ldrne r0, [r0, #0x18]
	addne r0, r0, r6
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r4, r4, #1
_020609BC:
	cmp r4, #0x258
	blt _02060990
	cmp r8, #3
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, r7
	mov r0, #1
	bl sub_0206096C
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_020609E0: .word ARM9_UNKNOWN_FUNCTION_TABLE__NA_20A3CF4
_020609E4: .word _020B0AD8
	arm_func_end sub_0206096C

	arm_func_start SprintfStatic__020609E8
SprintfStatic__020609E8: ; 0x020609E8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	add r2, sp, #0xc
	bic r2, r2, #3
	ldr r1, [sp, #0xc]
	add r2, r2, #4
	bl vsprintf
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end SprintfStatic__020609E8

	arm_func_start sub_02060A10
sub_02060A10: ; 0x02060A10
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r6, r0
	add r0, sp, #4
	mov r7, r3
	mov r5, r1
	mov r4, r2
	bl sub_020022C4
	ldr r3, [r7, #8]
	ldr r1, _02060AEC ; =_020A4644
	ldrb r0, [r3]
	ldr r2, [r3, #4]
	ldrb r3, [r3, #1]
	add r2, r2, r0
	mov r0, r6
	add r2, r3, r2
	str r2, [sp, #4]
	ldr r2, [r7, #0x60]
	ldrh sl, [r2]
	bl strcat
	ldr fp, _02060AF0 ; =0x00000FFF
	ldr sb, _02060AF4 ; =MISSION_STRING_IDS
	add r7, fp, #0xf000
	ldr r8, _02060AF8 ; =_020B0AD8
	b _02060AD4
_02060A74:
	and r0, sl, fp
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldr r2, [r8, #4]
	mov r1, r0, lsl #2
	ldrh r1, [r2, r1]
	add sl, r2, r0, lsl #2
	add r0, sp, #4
	bl sub_020022D0
	ldrh r2, [sl, #2]
	mov r1, #0x100
	mov r3, #0
	add sl, r2, r0
	mov r2, sl, lsl #1
	ldrh r2, [sb, r2]
	mov r0, r5
	str r4, [sp]
	bl PreprocessStringFromId
	mov r0, r6
	mov r1, r5
	bl strcat
	ldr r1, [r8, #0x14]
	mov r0, sl, lsl #1
	ldrh sl, [r1, r0]
_02060AD4:
	cmp sl, r7
	beq _02060AE4
	tst sl, #0x1000
	beq _02060A74
_02060AE4:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02060AEC: .word _020A4644
_02060AF0: .word 0x00000FFF
_02060AF4: .word MISSION_STRING_IDS
_02060AF8: .word _020B0AD8
	arm_func_end sub_02060A10

	arm_func_start sub_02060AFC
sub_02060AFC: ; 0x02060AFC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	mov r6, r0
	mov r5, r1
	mov r0, #0x400
	mov r1, #0xf
	bl MemAlloc
	mov r4, r0
	ldr r1, _02060DF4 ; =_020A4654
	mov r0, r6
	bl strcpy
	ldr r1, _02060DF8 ; =_020A4664
	mov r0, r6
	ldrb r7, [r5, #0x47]
	bl strcat
	ldr r1, _02060DFC ; =REMOTE_STRING_PTR_TABLE
	mov r0, r4
	ldr r1, [r1, r7, lsl #2]
	bl SprintfStatic__020609E8
	mov r0, r6
	mov r1, r4
	bl strcat
	add r0, sp, #0x30
	bl InitPreprocessorArgs
	ldrb r0, [r5, #0x44]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02060D18
_02060B6C: ; jump table
	b _02060B88 ; case 0
	b _02060C48 ; case 1
	b _02060C60 ; case 2
	b _02060C80 ; case 3
	b _02060CA0 ; case 4
	b _02060CC0 ; case 5
	b _02060CE4 ; case 6
_02060B88:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ldrneb r0, [r0]
	cmpne r0, #0
	add r0, sp, #4
	bne _02060BAC
	ldr r1, _02060E00 ; =0x000038C9
	bl GetStringFromFileVeneer
	b _02060BC4
_02060BAC:
	mov r1, #0x2a
	bl MemZero
	ldr r1, [r5, #0xc]
	add r0, sp, #4
	mov r2, #0xa
	bl StrncpySimpleNoPadSafe
_02060BC4:
	add r0, sp, #4
	str r0, [sp, #0x68]
	ldr r0, [r5, #0x64]
	ldrb r0, [r0]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02060C10
_02060BE0: ; jump table
	b _02060C10 ; case 0
	b _02060C10 ; case 1
	b _02060C10 ; case 2
	b _02060C10 ; case 3
	b _02060C10 ; case 4
	b _02060C00 ; case 5
	b _02060C08 ; case 6
	b _02060C00 ; case 7
_02060C00:
	ldr r2, _02060E04 ; =0x000038CB
	b _02060C14
_02060C08:
	ldr r2, _02060E08 ; =0x000038CC
	b _02060C14
_02060C10:
	ldr r2, _02060E0C ; =0x000038CA
_02060C14:
	add ip, sp, #0x30
	mov r0, r4
	mov r1, #0x100
	mov r3, #0
	str ip, [sp]
	bl PreprocessStringFromId
	ldr r1, _02060E10 ; =_020A4644
	mov r0, r6
	bl strcat
	mov r0, r6
	mov r1, r4
	bl strcat
	b _02060D18
_02060C48:
	add r2, sp, #0x30
	mov r0, r6
	mov r1, r4
	mov r3, r5
	bl sub_02060A10
	b _02060D18
_02060C60:
	ldrsh ip, [r5, #0x16]
	add r2, sp, #0x30
	mov r0, r6
	mov r1, r4
	mov r3, r5
	str ip, [sp, #0x40]
	bl sub_02060A10
	b _02060D18
_02060C80:
	ldrsh ip, [r5, #0x10]
	add r2, sp, #0x30
	mov r0, r6
	mov r1, r4
	mov r3, r5
	str ip, [sp, #0x30]
	bl sub_02060A10
	b _02060D18
_02060CA0:
	ldrsh ip, [r5, #0x12]
	add r2, sp, #0x30
	mov r0, r6
	mov r1, r4
	mov r3, r5
	str ip, [sp, #0x30]
	bl sub_02060A10
	b _02060D18
_02060CC0:
	ldr r0, [r5, #8]
	add r2, sp, #0x30
	ldrb ip, [r0]
	mov r0, r6
	mov r1, r4
	mov r3, r5
	str ip, [sp, #0x40]
	bl sub_02060A10
	b _02060D18
_02060CE4:
	ldr r1, [r5, #0x54]
	mov r0, r4
	mov r2, #0x12
	mov r3, #0
	bl sub_0202568C
	mov r1, #0
	strb r1, [r0]
	ldr r1, _02060E10 ; =_020A4644
	mov r0, r6
	bl strcat
	mov r0, r6
	mov r1, r4
	bl strcat
_02060D18:
	ldr r1, _02060E14 ; =_020A4674
	mov r0, r6
	bl strcat
	mov r0, r5
	mov r1, r4
	mov r2, #0x100
	bl sub_02061FDC
	ldr r1, _02060E10 ; =_020A4644
	mov r0, r6
	bl strcat
	mov r0, r6
	mov r1, r4
	bl strcat
	ldr r1, [r5, #0x5c]
	cmp r1, #0
	beq _02060D9C
	ldrb r0, [r1, #1]
	cmp r0, #0xe
	bne _02060D9C
	ldr r2, _02060E18 ; =0x00003C2A
	add r5, sp, #0x30
	mov r0, r4
	mov r1, #0x100
	mov r3, #0
	str r5, [sp]
	bl PreprocessStringFromId
	ldr r1, _02060E1C ; =_020A4678
	mov r0, r6
	bl strcat
	mov r0, r6
	mov r1, r4
	bl strcat
	b _02060DE4
_02060D9C:
	ldrb r0, [r5, #0x46]
	cmp r0, #0
	bne _02060DB8
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_02062D9C
	b _02060DC4
_02060DB8:
	ldrb r1, [r1, #1]
	ldr r0, [r5, #8]
	bl sub_02062D9C
_02060DC4:
	ldr r2, _02060E20 ; =RANK_STRING_PTR_TABLE
	ldr r1, _02060E1C ; =_020A4678
	ldr r5, [r2, r0, lsl #2]
	mov r0, r6
	bl strcat
	mov r0, r6
	mov r1, r5
	bl strcat
_02060DE4:
	mov r0, r4
	bl MemFree
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02060DF4: .word _020A4654
_02060DF8: .word _020A4664
_02060DFC: .word REMOTE_STRING_PTR_TABLE
#ifdef EUROPE
_02060E00: .word 0x000038CB
_02060E04: .word 0x000038CD
_02060E08: .word 0x000038CE
_02060E0C: .word 0x000038CC
#else
_02060E00: .word 0x000038C9
_02060E04: .word 0x000038CB
_02060E08: .word 0x000038CC
_02060E0C: .word 0x000038CA
#endif
_02060E10: .word _020A4644
_02060E14: .word _020A4674
#ifdef EUROPE
_02060E18: .word 0x00003C2C
#else
_02060E18: .word 0x00003C2A
#endif
_02060E1C: .word _020A4678
_02060E20: .word RANK_STRING_PTR_TABLE
	arm_func_end sub_02060AFC

	arm_func_start sub_02060E24
sub_02060E24: ; 0x02060E24
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x400
	mov r1, #0xf
	bl MemAlloc
	mov r4, r0
	ldr r1, _02060EA0 ; =_020A4654
	mov r0, r5
	bl strcpy
	ldr r1, _02060EA4 ; =_020A4664
	mov r0, r5
	bl strcat
	ldr r1, _02060EA8 ; =REMOTE_STRING_PTR_TABLE
	mov r0, r4
	ldr r1, [r1, #8]
	bl SprintfStatic__020609E8
	mov r0, r5
	mov r1, r4
	bl strcat
	ldr r1, _02060EAC ; =_020A4644
	mov r0, r5
	bl strcat
	mov r0, r4
	ldr r1, _02060EB0 ; =0x00003C4D
	bl GetStringFromFileVeneer
	mov r0, r5
	mov r1, r4
	bl strcat
	mov r0, r4
	bl MemFree
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02060EA0: .word _020A4654
_02060EA4: .word _020A4664
_02060EA8: .word REMOTE_STRING_PTR_TABLE
_02060EAC: .word _020A4644
#ifdef EUROPE
_02060EB0: .word 0x00003C4F
#else
_02060EB0: .word 0x00003C4D
#endif
	arm_func_end sub_02060E24

	arm_func_start sub_02060EB4
sub_02060EB4: ; 0x02060EB4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r8, [sp, #0x34]
	mov r7, r0
	add r0, sp, #4
	mov r6, r1
	mov r5, r2
	mov fp, r3
	ldr r4, [sp, #0x30]
	bl sub_020022C4
	ldr r3, [r8, #8]
	mov r0, #0
	ldrb r1, [r3]
	ldr r2, [r3, #4]
	ldrb r3, [r3, #1]
	add r1, r2, r1
	ldr sb, _02060FCC ; =_020B0AD8
	add r1, r3, r1
	str r1, [sp, #4]
	ldr r1, [r8, #0x60]
	ldrh r1, [r1]
	strb r0, [r7]
	ldr r0, _02060FD0 ; =0x00000FFF
	add r8, r0, #0xf000
	b _02060FA8
_02060F18:
	ldr r0, _02060FD0 ; =0x00000FFF
	ldr r2, [sb, #4]
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	tst r1, #0x1000
	mov r1, r0, lsl #2
	add sl, r2, r0, lsl #2
	ldrh r1, [r2, r1]
	add r0, sp, #4
	bne _02060F60
	bl sub_020022D0
	ldrh r2, [sl, #2]
	ldr r1, [sb, #0x14]
	add r0, r2, r0
	mov r0, r0, lsl #1
	ldrh r1, [r1, r0]
	b _02060FA8
_02060F60:
	bl sub_020022D0
	ldrh r2, [sl, #2]
	mov r1, #0x12c
	mov r3, #0
	add sl, r2, r0
	ldr r2, _02060FD4 ; =MISSION_STRING_IDS
	mov ip, sl, lsl #1
	ldrh r2, [r2, ip]
	mov r0, r6
	str r4, [sp]
	bl PreprocessStringFromId
	mov r0, r7
	mov r1, r6
	mov r2, #0x400
	bl strncat
	ldr r1, [sb, #0x14]
	mov r0, sl, lsl #1
	ldrh r1, [r1, r0]
_02060FA8:
	cmp r1, r8
	bne _02060F18
	mov r0, fp
	mov r2, r5
	mov r3, r7
	mov r1, #4
	bl DrawTextInWindow
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02060FCC: .word _020B0AD8
_02060FD0: .word 0x00000FFF
_02060FD4: .word MISSION_STRING_IDS
	arm_func_end sub_02060EB4

	arm_func_start sub_02060FD8
sub_02060FD8: ; 0x02060FD8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x14c
	mov sb, r0
	mov r8, r1
	mov r0, #0x12c
	mov r1, #0xf
	bl MemAlloc
	mov r4, r0
	mov r0, #0x400
	mov r1, #0xf
	bl MemAlloc
	ldr r1, [sb, #0x64]
	mov r5, r0
	cmp r1, #0
	mov r7, #0
	beq _02061110
	ldr r1, [sb, #0x54]
	cmp r1, #0
	ldrneh r2, [r1]
	cmpne r2, #0
	bne _020610E8
	ldr r0, [sb, #0xc]
	cmp r0, #0
	ldrneb r0, [r0]
	cmpne r0, #0
	add r0, sp, #0x32
	bne _02061050
	ldr r1, _02061BD0 ; =0x000038C9
	bl GetStringFromFileVeneer
	b _02061068
_02061050:
	mov r1, #0x2a
	bl MemZero
	ldr r1, [sb, #0xc]
	add r0, sp, #0x32
	mov r2, #0xa
	bl StrncpySimpleNoPadSafe
_02061068:
	add r0, sp, #0x32
	str r0, [sp, #0x134]
	ldr r0, [sb, #0x64]
	ldrb r0, [r0]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020610B4
_02061084: ; jump table
	b _020610B4 ; case 0
	b _020610B4 ; case 1
	b _020610B4 ; case 2
	b _020610B4 ; case 3
	b _020610B4 ; case 4
	b _020610A4 ; case 5
	b _020610AC ; case 6
	b _020610A4 ; case 7
_020610A4:
	ldr r2, _02061BD4 ; =0x000038CB
	b _020610B8
_020610AC:
	ldr r2, _02061BD8 ; =0x000038CC
	b _020610B8
_020610B4:
	ldr r2, _02061BDC ; =0x000038CA
_020610B8:
	add r6, sp, #0xfc
	mov r0, r5
	mov r1, #0x100
	mov r3, #0
	str r6, [sp]
	bl PreprocessStringFromId
	mov r0, r8
	mov r3, r5
	mov r1, #4
	mov r2, #0
	bl DrawTextInWindow
	b _02061124
_020610E8:
	mov r3, r7
	mov r2, #0x12
	bl sub_0202568C
	mov r2, r7
	strb r2, [r0]
	mov r0, r8
	mov r3, r5
	mov r1, #4
	bl DrawTextInWindow
	b _02061124
_02061110:
	ldr r3, _02061BE0 ; =0x00003C1E
	mov r0, r8
	mov r2, r7
	mov r1, #4
	bl sub_02026268
_02061124:
	add r0, sp, #0xfc
	bl InitPreprocessorArgs
	ldrb r0, [sb, #0x45]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _020613D4
_0206113C: ; jump table
	b _02061164 ; case 0
	b _020611C0 ; case 1
	b _020611E4 ; case 2
	b _02061210 ; case 3
	b _0206123C ; case 4
	b _02061268 ; case 5
	b _0206129C ; case 6
	b _020612EC ; case 7
	b _0206131C ; case 8
	b _02061370 ; case 9
_02061164:
	ldr r0, [sb, #0x64]
	ldrb r0, [r0]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020611A8
_02061178: ; jump table
	b _020611A8 ; case 0
	b _020611A8 ; case 1
	b _020611A8 ; case 2
	b _020611A8 ; case 3
	b _020611A8 ; case 4
	b _02061198 ; case 5
	b _020611A0 ; case 6
	b _02061198 ; case 7
_02061198:
	ldr r3, _02061BE4 ; =0x000038CE
	b _020611AC
_020611A0:
	ldr r3, _02061BE8 ; =0x000038CF
	b _020611AC
_020611A8:
	ldr r3, _02061BEC ; =0x000038CD
_020611AC:
	mov r0, r8
	mov r1, #4
	mov r2, #0x11
	bl sub_02026268
	b _020613D4
_020611C0:
	add r1, sp, #0xfc
	str r1, [sp]
	mov r0, r5
	mov r1, r4
	mov r3, r8
	mov r2, #0x11
	str sb, [sp, #4]
	bl sub_02060EB4
	b _020613D4
_020611E4:
	ldrsh r2, [sb, #0x16]
	add r1, sp, #0xfc
	mov r0, r5
	str r2, [sp, #0x10c]
	str r1, [sp]
	mov r1, r4
	mov r3, r8
	mov r2, #0x11
	str sb, [sp, #4]
	bl sub_02060EB4
	b _020613D4
_02061210:
	ldrsh r2, [sb, #0x10]
	add r1, sp, #0xfc
	mov r0, r5
	str r2, [sp, #0xfc]
	str r1, [sp]
	mov r1, r4
	mov r3, r8
	mov r2, #0x11
	str sb, [sp, #4]
	bl sub_02060EB4
	b _020613D4
_0206123C:
	ldrsh r2, [sb, #0x12]
	add r1, sp, #0xfc
	mov r0, r5
	str r2, [sp, #0xfc]
	str r1, [sp]
	mov r1, r4
	mov r3, r8
	mov r2, #0x11
	str sb, [sp, #4]
	bl sub_02060EB4
	b _020613D4
_02061268:
	ldrsh r1, [sb, #0x12]
	add r2, sp, #0xfc
	mov r0, r5
	str r1, [sp, #0xfc]
	ldrsh r6, [sb, #0x16]
	mov r1, r4
	mov r3, r8
	str r6, [sp, #0x10c]
	str r2, [sp]
	mov r2, #0x11
	str sb, [sp, #4]
	bl sub_02060EB4
	b _020613D4
_0206129C:
	ldrsh r0, [sb, #0x16]
	str r0, [sp, #0x10c]
	ldr r0, [sb, #8]
	ldrb r0, [r0]
	bl DungeonGoesUp
	cmp r0, #0
	ldr r0, [sb, #8]
	mov r3, r8
	ldrneb r1, [r0, #1]
	ldreqb r0, [r0, #1]
	mov r2, #0x11
	rsbeq r1, r0, #0
	str r1, [sp, #0x120]
	add r0, sp, #0xfc
	str r0, [sp]
	mov r0, r5
	mov r1, r4
	str sb, [sp, #4]
	bl sub_02060EB4
	b _020613D4
_020612EC:
	ldr r0, [sb, #8]
	add r2, sp, #0xfc
	ldrb r3, [r0]
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0x10c]
	str r2, [sp]
	mov r3, r8
	mov r2, #0x11
	str sb, [sp, #4]
	bl sub_02060EB4
	b _020613D4
_0206131C:
	ldr r0, [sb, #8]
	ldrb r0, [r0]
	str r0, [sp, #0x10c]
	ldr r0, [sb, #8]
	ldrb r0, [r0]
	bl DungeonGoesUp
	cmp r0, #0
	ldr r0, [sb, #8]
	mov r3, r8
	ldrneb r1, [r0, #1]
	ldreqb r0, [r0, #1]
	mov r2, #0x11
	rsbeq r1, r0, #0
	str r1, [sp, #0x120]
	add r0, sp, #0xfc
	str r0, [sp]
	mov r0, r5
	mov r1, r4
	str sb, [sp, #4]
	bl sub_02060EB4
	b _020613D4
_02061370:
	ldr r1, [sb, #0x58]
	mov r0, r5
	mov r2, #0x12
	mov r3, #0
	bl sub_0202568C
	mov r1, #0
	strb r1, [r0]
	mov r0, r8
	mov r3, r5
	mov r1, #4
	mov r2, #0x11
	bl DrawTextInWindow
	ldr r1, [sb, #0x58]
	mov r0, r5
	add r1, r1, #0x24
	mov r2, #0x12
	mov r3, #0
	bl sub_0202568C
	mov r1, #0
	strb r1, [r0]
	mov r0, r8
	mov r1, #4
	mov r2, #0x1e
	mov r3, r5
	bl DrawTextInWindow
_020613D4:
	ldrb r1, [sb, #0x46]
	cmp r1, #0xf
	beq _02061518
	ldr r0, [sb, #0x64]
	cmp r0, #0
	beq _02061418
	ldrb r0, [r0]
	cmp r0, #7
	cmpne r0, #5
	bne _02061418
	mov r6, #0x2d
	ldr r3, _02061BF0 ; =0x00003C21
	mov r0, r8
	mov r2, r6
	mov r1, #4
	bl sub_02026268
	b _0206144C
_02061418:
	cmp r1, #0xe
	mov r6, #0x2d
	mov r1, #4
	bne _0206143C
	ldr r3, _02061BF4 ; =0x00003C20
	mov r0, r8
	mov r2, r6
	bl sub_02026268
	b _0206144C
_0206143C:
	ldr r3, _02061BF8 ; =0x00003C1F
	mov r0, r8
	mov r2, r6
	bl sub_02026268
_0206144C:
	ldrb r0, [sb, #0x46]
	cmp r0, #0
	bne _020614BC
	ldr r0, [sb, #0xc]
	cmp r0, #0
	ldrneb r0, [r0]
	cmpne r0, #0
	add r0, sp, #8
	bne _0206147C
	ldr r1, _02061BD0 ; =0x000038C9
	bl GetStringFromFileVeneer
	b _02061494
_0206147C:
	mov r1, #0x2a
	bl MemZero
	ldr r1, [sb, #0xc]
	add r0, sp, #8
	mov r2, #0xa
	bl StrncpySimpleNoPadSafe
_02061494:
	ldr r1, _02061BFC ; =_020A4688
	add r2, sp, #8
	mov r0, r4
	bl SprintfStatic__020609E8
	mov r0, r8
	mov r2, r6
	mov r3, r4
	mov r1, #0x42
	bl DrawTextInWindow
	b _02061518
_020614BC:
	ldr r0, [sb, #0x5c]
	cmp r0, #0
	beq _020614EC
	ldrb r0, [r0, #1]
	cmp r0, #0xe
	bne _020614EC
	ldr r3, _02061C00 ; =0x00003C37
	mov r0, r8
	mov r2, r6
	mov r1, #0x42
	bl sub_02026268
	b _02061518
_020614EC:
	ldrsh r0, [sb, #0x10]
	bl GetNameString
	mov r2, r0
	ldr r1, _02061C04 ; =_020A4698
	mov r0, r4
	bl SprintfStatic__020609E8
	mov r2, r6
	mov r0, r8
	mov r1, #0x42
	mov r3, r4
	bl DrawTextInWindow
_02061518:
	ldrb r2, [sb, #0x48]
	ldr r1, _02061C08 ; =MISSION_MENU_STRING_IDS_1
	mov r0, r5
	mov r2, r2, lsl #1
	ldrh r1, [r1, r2]
	bl GetStringFromFileVeneer
	ldrb r0, [sb, #0x48]
	mov r3, r5
	mov r2, #0x2d
	add r0, r0, #0xfc
	and r0, r0, #0xff
	cmp r0, #2
	movls r1, #0x43
	movhi r1, #0x40
	mov r0, r8
	add r1, r1, #0x6c
	bl DrawTextInWindow
	ldr r3, _02061C0C ; =_020A46A8
	mov r0, r8
	mov r1, #0x6c
	mov r2, #1
	bl DrawTextInWindow
	ldr r3, _02061C10 ; =0x00003C22
	mov r0, r8
	mov r1, #4
	mov r2, #0x3a
	bl sub_02026268
	ldrb r2, [sb, #0x46]
	ldrsh r6, [sb, #0x16]
	mov r0, r4
	cmp r2, #0xe
	ldreqsh r3, [sb, #0x10]
	mov r1, #0x12c
	ldrnesh r3, [sb, #0x12]
	str r6, [sp]
	bl sub_02061DC8
	mov r0, r8
	mov r3, r4
	mov r1, #0x42
	mov r2, #0x3a
	bl DrawTextInWindow
	add r7, r7, #0x47
	ldr r3, _02061C14 ; =0x00003C23
	mov r0, r8
	mov r1, #4
	mov r2, r7
	bl sub_02026268
	mov r0, sb
	mov r1, r4
	mov r2, #0x100
	bl sub_02061FDC
	mov r0, r8
	mov r1, #0x42
	mov r2, r7
	mov r3, r4
	bl DrawTextInWindow
	ldrb r0, [sb, #0x46]
	cmp r0, #0
	beq _020616C8
	add r7, r7, #0xd
	ldr r3, _02061C18 ; =0x00003C24
	mov r0, r8
	mov r2, r7
	mov r1, #4
	bl sub_02026268
	add r0, sp, #0xfc
	bl InitPreprocessorArgs
	ldrb r0, [sb, #0x49]
	cmp r0, #0
	bne _02061670
	ldrb r0, [sb, #0x4c]
	cmp r0, #0
	beq _02061660
	ldr r2, _02061C1C ; =0x00003C26
	str r0, [sp, #0x10c]
	add r6, sp, #0xfc
	mov r0, r4
	mov r1, #0x100
	mov r3, #0
	str r6, [sp]
	bl PreprocessStringFromId
	b _020616B4
_02061660:
	ldr r1, _02061C20 ; =0x00003C25
	mov r0, r4
	bl GetStringFromFileVeneer
	b _020616B4
_02061670:
	cmp r0, #1
	bne _020616B4
	ldrsh r0, [sb, #0x4a]
	cmp r0, #0
	beq _020616A8
	ldr r2, _02061C24 ; =0x00003C27
	str r0, [sp, #0xfc]
	add r6, sp, #0xfc
	mov r0, r4
	mov r1, #0x100
	mov r3, #0
	str r6, [sp]
	bl PreprocessStringFromId
	b _020616B4
_020616A8:
	ldr r1, _02061C20 ; =0x00003C25
	mov r0, r4
	bl GetStringFromFileVeneer
_020616B4:
	mov r0, r8
	mov r2, r7
	mov r3, r4
	mov r1, #0x42
	bl DrawTextInWindow
_020616C8:
	ldr r1, [sb, #0x5c]
	cmp r1, #0
	beq _02061710
	ldrb r0, [r1, #1]
	cmp r0, #0xe
	bne _02061710
	add r7, r7, #0xd
	ldr r3, _02061C28 ; =0x00003C28
	mov r0, r8
	mov r2, r7
	mov r1, #4
	bl sub_02026268
	ldr r3, _02061C2C ; =0x00003C2A
	mov r0, r8
	mov r2, r7
	mov r1, #0x42
	bl sub_02026268
	b _020617D4
_02061710:
	ldrb r0, [sb, #0x46]
	cmp r0, #0
	bne _02061740
	ldr r0, [sb, #8]
	mov r1, #0
	bl sub_02062D9C
	mov sl, r0
	ldr r0, [sb, #8]
	mov r1, #0
	bl sub_02062D5C
	ldr r1, _02061C30 ; =MISSION_RANK_POINTS
	b _02061764
_02061740:
	ldrb r1, [r1, #1]
	ldr r0, [sb, #8]
	bl sub_02062D9C
	ldr r1, [sb, #0x5c]
	mov sl, r0
	ldrb r1, [r1, #1]
	ldr r0, [sb, #8]
	bl sub_02062D5C
	ldr r1, _02061C30 ; =MISSION_RANK_POINTS
_02061764:
	add r7, r7, #0xd
	ldr r6, [r1, r0, lsl #2]
	ldr r3, _02061C28 ; =0x00003C28
	mov r0, r8
	mov r2, r7
	mov r1, #4
	bl sub_02026268
	ldr r1, _02061C34 ; =RANK_STRING_PTR_TABLE
	mov r0, r8
	ldr r3, [r1, sl, lsl #2]
	mov r2, r7
	mov r1, #0x42
	bl DrawTextInWindow
	add r0, sp, #0xfc
	bl InitPreprocessorArgs
	str r6, [sp, #0x120]
	add r1, sp, #0xfc
	str r1, [sp]
	ldr r2, _02061C38 ; =0x00003C29
	mov r0, r4
	mov r1, #0x100
	mov r3, #0
	bl PreprocessStringFromId
	mov r0, r8
	mov r1, #0x56
	mov r2, r7
	mov r3, r4
	bl DrawTextInWindow
_020617D4:
	ldr r1, [sb, #0x64]
	cmp r1, #0
	bne _02061AAC
	ldrb r0, [sb, #0x46]
	cmp r0, #0xf
	beq _02061AAC
	cmp r0, #0xe
	add r6, r7, #0xd
	mov r1, #4
	bne _02061810
	ldr r3, _02061C3C ; =0x00003C2C
	mov r0, r8
	mov r2, r6
	bl sub_02026268
	b _02061820
_02061810:
	ldr r3, _02061C40 ; =0x00003C2B
	mov r0, r8
	mov r2, r6
	bl sub_02026268
_02061820:
	ldrb r1, [sb, #0x1a]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _02061A88
_02061830: ; jump table
	b _02061850 ; case 0
	b _020618A0 ; case 1
	b _020618F0 ; case 2
	b _02061940 ; case 3
	b _02061990 ; case 4
	b _020619E0 ; case 5
	b _02061A0C ; case 6
	b _02061A5C ; case 7
_02061850:
	ldr r1, [sb, #0x20]
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	str r1, [sp, #0xd0]
	ldrb r1, [sb, #0x1a]
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bl StringFromId
	add r3, sp, #0xac
	mov r2, r0
	str r3, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r2, r6
	mov r0, r8
	mov r1, #0x42
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_020618A0:
	ldr r1, [sb, #0x20]
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	str r1, [sp, #0xd0]
	ldrb r1, [sb, #0x1a]
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bl StringFromId
	add r3, sp, #0xac
	mov r2, r0
	str r3, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r2, r6
	mov r0, r8
	mov r1, #0x42
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_020618F0:
	ldrsh r1, [sb, #0x2c]
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	str r1, [sp, #0xbc]
	ldrb r1, [sb, #0x1a]
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bl StringFromId
	add r3, sp, #0xac
	mov r2, r0
	str r3, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r2, r6
	mov r0, r8
	mov r1, #0x42
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_02061940:
	ldrsh r1, [sb, #0x2c]
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	str r1, [sp, #0xbc]
	ldrb r1, [sb, #0x1a]
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bl StringFromId
	add r3, sp, #0xac
	mov r2, r0
	str r3, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r2, r6
	mov r0, r8
	mov r1, #0x42
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_02061990:
	ldrsh r1, [sb, #0x2c]
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	str r1, [sp, #0xbc]
	ldrb r1, [sb, #0x1a]
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bl StringFromId
	add r3, sp, #0xac
	mov r2, r0
	str r3, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r2, r6
	mov r0, r8
	mov r1, #0x42
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_020619E0:
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	mov r1, r1, lsl #1
	ldrh r1, [r0, r1]
	mov r0, r5
	bl GetStringFromFileVeneer
	mov r0, r8
	mov r2, r6
	mov r3, r5
	mov r1, #0x42
	bl DrawTextInWindow
	b _02061BA4
_02061A0C:
	ldrsh r1, [sb, #0x3c]
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	str r1, [sp, #0xac]
	ldrb r1, [sb, #0x1a]
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bl StringFromId
	add r3, sp, #0xac
	mov r2, r0
	str r3, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r2, r6
	mov r0, r8
	mov r1, #0x42
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_02061A5C:
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	mov r1, r1, lsl #1
	ldrh r1, [r0, r1]
	mov r0, r5
	bl GetStringFromFileVeneer
	mov r0, r8
	mov r2, r6
	mov r3, r5
	mov r1, #0x42
	bl DrawTextInWindow
	b _02061BA4
_02061A88:
	ldr r1, _02061C48 ; =0x000038DF
	mov r0, r5
	bl GetStringFromFileVeneer
	mov r0, r8
	mov r2, r6
	mov r3, r5
	mov r1, #0x42
	bl DrawTextInWindow
	b _02061BA4
_02061AAC:
	cmp r1, #0
	beq _02061BA4
	ldrb r0, [r1]
	cmp r0, #7
	cmpne r0, #5
	bne _02061BA4
	add r0, sp, #0x5c
	bl InitPreprocessorArgs
	ldrb r0, [sb, #0x1a]
	cmp r0, #2
	bne _02061B48
	ldr r3, _02061C4C ; =0x00003C2D
	mov r0, r8
	add r2, r7, #0xd
	mov r1, #4
	bl sub_02026268
	mov r6, #0
	ldr r2, _02061C50 ; =_020A3CBC
	mov r0, r5
	add r1, sb, #0x28
	mov r3, #1
	str r6, [sp]
	bl sub_0200D310
	ldr r0, _02061C54 ; =0x00003C2E
	str r5, [sp, #0x94]
	bl StringFromId
	add r1, sp, #0x5c
	mov r2, r0
	str r1, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r0, r8
	mov r1, #0x42
	add r2, r7, #0xd
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_02061B48:
	cmp r0, #6
	bne _02061BA4
	ldr r3, _02061C58 ; =0x00003C2F
	mov r0, r8
	add r2, r7, #0xd
	mov r1, #4
	bl sub_02026268
	ldrsh r1, [sb, #0x3c]
	ldr r0, _02061C5C ; =0x00003C30
	str r1, [sp, #0x5c]
	bl StringFromId
	add r1, sp, #0x5c
	mov r2, r0
	str r1, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r0, r8
	mov r1, #0x42
	add r2, r7, #0xd
	mov r3, r4
	bl DrawTextInWindow
_02061BA4:
	ldrb r1, [sb, #0x45]
	ldr r2, [sb, #0x5c]
	mov r0, r8
	add r3, r7, #0x1a
	bl sub_02061CC8
	mov r0, r4
	bl MemFree
	mov r0, r5
	bl MemFree
	add sp, sp, #0x14c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
#ifdef EUROPE
#define SUB_02060FD8_OFFSET 2
#else
#define SUB_02060FD8_OFFSET 0
#endif
_02061BD0: .word 0x000038C9 + SUB_02060FD8_OFFSET
_02061BD4: .word 0x000038CB + SUB_02060FD8_OFFSET
_02061BD8: .word 0x000038CC + SUB_02060FD8_OFFSET
_02061BDC: .word 0x000038CA + SUB_02060FD8_OFFSET
_02061BE0: .word 0x00003C1E + SUB_02060FD8_OFFSET
_02061BE4: .word 0x000038CE + SUB_02060FD8_OFFSET
_02061BE8: .word 0x000038CF + SUB_02060FD8_OFFSET
_02061BEC: .word 0x000038CD + SUB_02060FD8_OFFSET
_02061BF0: .word 0x00003C21 + SUB_02060FD8_OFFSET
_02061BF4: .word 0x00003C20 + SUB_02060FD8_OFFSET
_02061BF8: .word 0x00003C1F + SUB_02060FD8_OFFSET
_02061BFC: .word _020A4688
_02061C00: .word 0x00003C37 + SUB_02060FD8_OFFSET
_02061C04: .word _020A4698
_02061C08: .word MISSION_MENU_STRING_IDS_1
_02061C0C: .word _020A46A8
_02061C10: .word 0x00003C22 + SUB_02060FD8_OFFSET
_02061C14: .word 0x00003C23 + SUB_02060FD8_OFFSET
_02061C18: .word 0x00003C24 + SUB_02060FD8_OFFSET
_02061C1C: .word 0x00003C26 + SUB_02060FD8_OFFSET
_02061C20: .word 0x00003C25 + SUB_02060FD8_OFFSET
_02061C24: .word 0x00003C27 + SUB_02060FD8_OFFSET
_02061C28: .word 0x00003C28 + SUB_02060FD8_OFFSET
_02061C2C: .word 0x00003C2A + SUB_02060FD8_OFFSET
_02061C30: .word MISSION_RANK_POINTS
_02061C34: .word RANK_STRING_PTR_TABLE
_02061C38: .word 0x00003C29 + SUB_02060FD8_OFFSET
_02061C3C: .word 0x00003C2C + SUB_02060FD8_OFFSET
_02061C40: .word 0x00003C2B + SUB_02060FD8_OFFSET
_02061C44: .word MISSION_MENU_STRING_IDS_2
_02061C48: .word 0x000038DF + SUB_02060FD8_OFFSET
_02061C4C: .word 0x00003C2D + SUB_02060FD8_OFFSET
_02061C50: .word _020A3CBC
_02061C54: .word 0x00003C2E + SUB_02060FD8_OFFSET
_02061C58: .word 0x00003C2F + SUB_02060FD8_OFFSET
_02061C5C: .word 0x00003C30 + SUB_02060FD8_OFFSET
	arm_func_end sub_02060FD8

	arm_func_start sub_02061C60
sub_02061C60: ; 0x02061C60
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, _02061CBC ; =0x00003C1E
	mov r4, r1
	mov r1, #4
	mov r2, #0
	mov r5, r0
	bl sub_02026268
	ldr r3, _02061CC0 ; =_020A46A8
	mov r0, r5
	mov r1, #0x6c
	mov r2, #1
	bl DrawTextInWindow
	ldr r3, _02061CC4 ; =0x00003C4E
	mov r0, r5
	mov r1, #4
	mov r2, #0x11
	bl sub_02026268
	mov r0, r5
	mov r2, r4
	mov r1, #1
	mov r3, #0x7b
	bl sub_02061CC8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
#ifdef EUROPE
_02061CBC: .word 0x00003C20
_02061CC0: .word _020A46A8
_02061CC4: .word 0x00003C50
#else
_02061CBC: .word 0x00003C1E
_02061CC0: .word _020A46A8
_02061CC4: .word 0x00003C4E
#endif
	arm_func_end sub_02061C60

	arm_func_start sub_02061CC8
sub_02061CC8: ; 0x02061CC8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov r4, r2
	cmp r1, #9
	cmpne r1, #0
	mov sl, r0
	mov sb, r3
	cmpne r4, #0
	beq _02061DB8
	ldrb r1, [r4]
	cmp r1, #4
	bne _02061DB8
	ldr r3, _02061DC4 ; =0x00003C31
	mov r2, sb
	mov r1, #4
	bl sub_02026268
	add r0, sp, #4
	mov r1, r4
	add sb, sb, #0xd
	bl sub_0204DE7C
	mov r7, #0
	mov fp, #0x44
	add r6, sp, #4
	mov r4, #0xb
	b _02061DB0
_02061D2C:
	beq _02061DB8
	cmp r7, #5
	movlt r8, fp
	blt _02061D60
	cmp r7, #0xc
	movlt r8, #0x43
	blt _02061D60
	cmp r7, #0x16
	movlt r8, #0x44
	blt _02061D60
	cmp r7, #0x1d
	movlt r8, #0x43
	movge r8, #0x44
_02061D60:
	ldrb r0, [r6, r7]
	bl sub_020251F0
	mov r5, r0
	mov r0, r7
	mov r1, #0x11
	bl _s32_div_f
	mul r2, r1, r4
	and r0, r8, #0xff
	str r0, [sp]
	add r1, r2, #0x13
	mov r3, r5
	mov r0, sl
	mov r2, sb
	bl sub_020264F8
	add r0, r7, #1
	mov r1, #0x11
	bl _s32_div_f
	cmp r1, #0
	addeq sb, sb, #0xd
	add r7, r7, #1
_02061DB0:
	cmp r7, #0x22
	blt _02061D2C
_02061DB8:
	mov r0, sb
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
#ifdef EUROPE
_02061DC4: .word 0x00003C33
#else
_02061DC4: .word 0x00003C31
#endif
	arm_func_end sub_02061CC8

	arm_func_start sub_02061DC8
sub_02061DC8: ; 0x02061DC8
#ifdef EUROPE
#define SUB_02061DC8_WORD_OFFSET 2
#else
#define SUB_02061DC8_WORD_OFFSET 0
#endif
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x54
	mov r5, r0
	add r0, sp, #4
	mov r7, r2
	mov r4, r1
	mov r6, r3
	bl InitPreprocessorArgs
	cmp r7, #0xf
	addls pc, pc, r7, lsl #2
	b _02061EE4
_02061DF4: ; jump table
	b _02061E34 ; case 0
	b _02061E4C ; case 1
	b _02061E3C ; case 2
	b _02061E5C ; case 3
	b _02061EAC ; case 4
	b _02061E8C ; case 5
	b _02061E68 ; case 6
	b _02061E74 ; case 7
	b _02061E80 ; case 8
	b _02061EE4 ; case 9
	b _02061E98 ; case 10
	b _02061EA4 ; case 11
	b _02061EB8 ; case 12
	b _02061EC4 ; case 13
	b _02061ED0 ; case 14
	b _02061EDC ; case 15
_02061E34:
	ldr r2, _02061F08 ; =0x00003C38
	b _02061EE8
_02061E3C:
	ldrsh r0, [sp, #0x68]
	ldr r2, _02061F0C ; =0x00003C3A
	str r0, [sp, #0x14]
	b _02061EE8
_02061E4C:
	ldrsh r0, [sp, #0x68]
	ldr r2, _02061F10 ; =0x00003C39
	str r0, [sp, #0x14]
	b _02061EE8
_02061E5C:
	str r6, [sp, #4]
	ldr r2, _02061F14 ; =0x00003C3B
	b _02061EE8
_02061E68:
	str r6, [sp, #4]
#ifdef EUROPE
	mov r2, #0x3c40
#else
	ldr r2, _02061F18 ; =0x00003C3E
#endif
	b _02061EE8
_02061E74:
	str r6, [sp, #4]
	ldr r2, _02061F1C ; =0x00003C3F
	b _02061EE8
_02061E80:
	str r6, [sp, #4]
#ifdef EUROPE
	ldr r2, _02062298 ; =0x00003C42
#else
	mov r2, #0x3c40
#endif
	b _02061EE8
_02061E8C:
	str r6, [sp, #4]
	ldr r2, _02061F20 ; =0x00003C3D
	b _02061EE8
_02061E98:
	str r6, [sp, #4]
	ldr r2, _02061F24 ; =0x00003C42
	b _02061EE8
_02061EA4:
	ldr r2, _02061F28 ; =0x00003C43
	b _02061EE8
_02061EAC:
	str r6, [sp, #4]
	ldr r2, _02061F2C ; =0x00003C3C
	b _02061EE8
_02061EB8:
	str r6, [sp, #4]
	ldr r2, _02061F30 ; =0x00003C41
	b _02061EE8
_02061EC4:
	str r6, [sp, #4]
	ldr r2, _02061F34 ; =0x00003C44
	b _02061EE8
_02061ED0:
	str r6, [sp, #4]
	ldr r2, _02061F38 ; =0x00003C45
	b _02061EE8
_02061EDC:
	ldr r2, _02061F3C ; =0x00003C47
	b _02061EE8
_02061EE4:
	ldr r2, _02061F40 ; =0x00003C46
_02061EE8:
	add ip, sp, #4
	mov r0, r5
	mov r1, r4
	mov r3, #0
	str ip, [sp]
	bl PreprocessStringFromId
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02061F08: .word 0x00003C38 + SUB_02061DC8_WORD_OFFSET
_02061F0C: .word 0x00003C3A + SUB_02061DC8_WORD_OFFSET
_02061F10: .word 0x00003C39 + SUB_02061DC8_WORD_OFFSET
_02061F14: .word 0x00003C3B + SUB_02061DC8_WORD_OFFSET
#ifndef EUROPE
_02061F18: .word 0x00003C3E
#endif
_02061F1C: .word 0x00003C3F + SUB_02061DC8_WORD_OFFSET
#ifdef EUROPE
_02062298: .word 0x00003C42
#endif
_02061F20: .word 0x00003C3D + SUB_02061DC8_WORD_OFFSET
_02061F24: .word 0x00003C42 + SUB_02061DC8_WORD_OFFSET
_02061F28: .word 0x00003C43 + SUB_02061DC8_WORD_OFFSET
_02061F2C: .word 0x00003C3C + SUB_02061DC8_WORD_OFFSET
_02061F30: .word 0x00003C41 + SUB_02061DC8_WORD_OFFSET
_02061F34: .word 0x00003C44 + SUB_02061DC8_WORD_OFFSET
_02061F38: .word 0x00003C45 + SUB_02061DC8_WORD_OFFSET
_02061F3C: .word 0x00003C47 + SUB_02061DC8_WORD_OFFSET
_02061F40: .word 0x00003C46 + SUB_02061DC8_WORD_OFFSET
	arm_func_end sub_02061DC8

	arm_func_start sub_02061F44
sub_02061F44: ; 0x02061F44
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x6c
	mov r4, r2
	mov r5, r1
	mov r6, r0
	add r1, sp, #4
	mov r0, r4
	bl sub_02060274
	ldrb r2, [sp, #0x4a]
	ldrsh ip, [r4, #0x14]
	mov r0, r6
	cmp r2, #0xe
	ldreqsh r3, [r4, #0xe]
	mov r1, r5
	ldrnesh r3, [r4, #0x10]
	str ip, [sp]
	bl sub_02061DC8
	add sp, sp, #0x6c
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_02061F44

	arm_func_start sub_02061F90
sub_02061F90: ; 0x02061F90
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x68
	mov r4, r2
	mov r5, r1
	mov r6, r0
	add r1, sp, #0
	mov r0, r4
	bl sub_02060274
	add ip, r4, #4
	mov r3, #0
	add r0, sp, #0
	mov r1, r6
	mov r2, r5
	str ip, [sp, #8]
	str r3, [sp, #0x64]
	str r4, [sp, #0x5c]
	bl sub_02061FDC
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02061F90

	arm_func_start sub_02061FDC
sub_02061FDC: ; 0x02061FDC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x54
	mov r7, r0
	ldr r0, [r7, #8]
	mov r6, r1
	ldrb r0, [r0]
	mov r5, r2
	bl DungeonSwapIdToIdx
	mov r4, r0
	add r0, sp, #4
	bl InitPreprocessorArgs
	ldr r0, [r7, #0x64]
	cmp r0, #0
	ldrneb r0, [r0]
	cmpne r0, #7
	cmpne r0, #5
	beq _0206205C
	mov r0, r4
	bl GetDungeonMode
	cmp r0, #0
	bne _0206205C
	ldr r0, [r7, #8]
	ldr r2, _020621FC ; =0x00003C35
	ldrb r1, [r0]
	add r4, sp, #4
	mov r0, r6
	str r1, [sp, #0x14]
	mov r1, r5
	mov r3, #0
	str r4, [sp]
	bl PreprocessStringFromId
	b _020621F4
_0206205C:
	ldrb r0, [r7, #0x46]
	cmp r0, #0xf
	bne _020620AC
	ldr r0, [r7, #8]
	ldrb r0, [r0]
	bl DungeonGoesUp
	cmp r0, #0
	ldr r0, [r7, #8]
	ldr r2, _02062200 ; =0x00003C34
	ldrneb r0, [r0, #1]
	add r4, sp, #4
	mov r1, r5
	ldreqb r0, [r0, #1]
	mov r3, #0
	rsbeq r0, r0, #0
	str r0, [sp, #0x28]
	mov r0, r6
	str r4, [sp]
	bl PreprocessStringFromId
	b _020621F4
_020620AC:
	ldr r1, [r7, #0x5c]
	cmp r1, #0
	beq _020620F8
	ldrb r0, [r1, #1]
	cmp r0, #0xb
	ldreqb r0, [r1, #2]
	cmpeq r0, #5
	bne _020620F8
	ldr r0, [r7, #8]
	ldr r2, _02062204 ; =0x00003C36
	ldrb r1, [r0]
	add r4, sp, #4
	mov r0, r6
	str r1, [sp, #0x14]
	mov r1, r5
	mov r3, #0
	str r4, [sp]
	bl PreprocessStringFromId
	b _020621F4
_020620F8:
	cmp r1, #0
	beq _02062150
	ldrb r0, [r1, #1]
	cmp r0, #6
	ldreqb r0, [r1, #2]
	cmpeq r0, #4
	beq _02062150
	mov r0, r4
	bl GetDungeonMode
	cmp r0, #0
	bne _02062150
	ldr r0, [r7, #8]
	ldr r2, _020621FC ; =0x00003C35
	ldrb r1, [r0]
	add r4, sp, #4
	mov r0, r6
	str r1, [sp, #0x14]
	mov r1, r5
	mov r3, #0
	str r4, [sp]
	bl PreprocessStringFromId
	b _020621F4
_02062150:
	ldrb r0, [r7, #0x46]
	mov r1, #0x20000
	cmp r0, #0xc
	beq _020621A0
	ldr r2, [r7, #0x5c]
	cmp r2, #0
	beq _020621A4
	ldrb r3, [r2, #1]
	cmp r3, #0xe
	beq _020621A0
	cmp r3, #6
	ldreqb r0, [r2, #2]
	cmpeq r0, #4
	beq _020621A0
	cmp r3, #3
	ldreqb r0, [r2, #2]
	cmpeq r0, #3
	beq _020621A0
	cmp r3, #5
	bne _020621A4
_020621A0:
	mov r1, #0
_020621A4:
	ldr r0, [r7, #8]
	ldrb r0, [r0]
	orr r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r7, #8]
	ldrb r0, [r0]
	bl DungeonGoesUp
	cmp r0, #0
	ldr r0, [r7, #8]
	ldr r2, _02062208 ; =0x00003C32
	ldrneb r0, [r0, #1]
	add r4, sp, #4
	mov r1, r5
	ldreqb r0, [r0, #1]
	mov r3, #0
	rsbeq r0, r0, #0
	str r0, [sp, #0x28]
	mov r0, r6
	str r4, [sp]
	bl PreprocessStringFromId
_020621F4:
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
#ifdef EUROPE
_020621FC: .word 0x00003C37
_02062200: .word 0x00003C36
_02062204: .word 0x00003C38
_02062208: .word 0x00003C34
#else
_020621FC: .word 0x00003C35
_02062200: .word 0x00003C34
_02062204: .word 0x00003C36
_02062208: .word 0x00003C32
#endif
	arm_func_end sub_02061FDC

	arm_func_start sub_0206220C
sub_0206220C: ; 0x0206220C
	stmdb sp!, {r3, lr}
	mov ip, r0
	mov r0, #0
	mov r2, r1
	mov r3, r0
	b _02062234
_02062224:
	mov r1, r3, lsl #1
	ldrh r1, [r2, r1]
	add r3, r3, #1
	add r0, r0, r1
_02062234:
	cmp r3, ip
	blo _02062224
	mov r1, ip
	bl sub_02062248
	ldmia sp!, {r3, pc}
	arm_func_end sub_0206220C

	arm_func_start sub_02062248
sub_02062248: ; 0x02062248
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r6, r1
	mov r5, r2
	bl RandIntSafe
	mov r2, r4
	b _02062280
_02062264:
	mov r1, r2, lsl #1
	ldrh r1, [r5, r1]
	add r4, r4, r1
	cmp r0, r4
	movlo r0, r2
	ldmloia sp!, {r4, r5, r6, pc}
	add r2, r2, #1
_02062280:
	cmp r2, r6
	blo _02062264
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02062248

	arm_func_start sub_02062290
sub_02062290: ; 0x02062290
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	mov r0, #0x4e
	mov r1, #0xf
	mov r6, #0
	bl MemAlloc
	mov r7, r0
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _02062524
_020622B8: ; jump table
	b _020622C8 ; case 0
	b _02062360 ; case 1
	b _020623F8 ; case 2
	b _02062490 ; case 3
_020622C8:
	bl GetRank
	mov r8, r0
	bl GetScenarioBalance
	ldr r4, _02062544 ; =_020B0AD8
	mov sb, r0
	mov sl, r6
	mov fp, #0x16
	mov r5, r6
_020622E8:
	ldr r0, [r4, #0xc]
	add r1, r0, sl, lsl #4
	ldrb r0, [r1, #8]
	cmp r8, r0
	blo _0206233C
	ldrb r0, [r1, #9]
	cmp sb, r0
	blt _0206233C
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _02062324
	mov r0, fp
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	beq _0206233C
_02062324:
	ldr r1, [r4, #0xc]
	mov r0, sl, lsl #4
	ldrh r1, [r1, r0]
	mov r0, sl, lsl #1
	strh r1, [r7, r0]
	b _02062344
_0206233C:
	mov r0, sl, lsl #1
	strh r5, [r7, r0]
_02062344:
	mov r0, sl, lsl #1
	ldrh r0, [r7, r0]
	add sl, sl, #1
	cmp sl, #0x27
	add r6, r6, r0
	blt _020622E8
	b _02062524
_02062360:
	bl GetRank
	mov r8, r0
	bl GetScenarioBalance
	ldr r4, _02062544 ; =_020B0AD8
	mov sb, r0
	mov sl, r6
	mov fp, #0x16
	mov r5, r6
_02062380:
	ldr r0, [r4, #0xc]
	add r1, r0, sl, lsl #4
	ldrb r0, [r1, #8]
	cmp r8, r0
	blo _020623D4
	ldrb r0, [r1, #9]
	cmp sb, r0
	blt _020623D4
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _020623BC
	mov r0, fp
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	beq _020623D4
_020623BC:
	ldr r1, [r4, #0xc]
	mov r0, sl, lsl #1
	add r1, r1, sl, lsl #4
	ldrh r1, [r1, #2]
	strh r1, [r7, r0]
	b _020623DC
_020623D4:
	mov r0, sl, lsl #1
	strh r5, [r7, r0]
_020623DC:
	mov r0, sl, lsl #1
	ldrh r0, [r7, r0]
	add sl, sl, #1
	cmp sl, #0x27
	add r6, r6, r0
	blt _02062380
	b _02062524
_020623F8:
	bl GetRank
	mov r8, r0
	bl GetScenarioBalance
	ldr r4, _02062544 ; =_020B0AD8
	mov sb, r0
	mov sl, r6
	mov fp, #0x16
	mov r5, r6
_02062418:
	ldr r0, [r4, #0xc]
	add r1, r0, sl, lsl #4
	ldrb r0, [r1, #8]
	cmp r8, r0
	blo _0206246C
	ldrb r0, [r1, #9]
	cmp sb, r0
	blt _0206246C
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _02062454
	mov r0, fp
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	beq _0206246C
_02062454:
	ldr r1, [r4, #0xc]
	mov r0, sl, lsl #1
	add r1, r1, sl, lsl #4
	ldrh r1, [r1, #4]
	strh r1, [r7, r0]
	b _02062474
_0206246C:
	mov r0, sl, lsl #1
	strh r5, [r7, r0]
_02062474:
	mov r0, sl, lsl #1
	ldrh r0, [r7, r0]
	add sl, sl, #1
	cmp sl, #0x27
	add r6, r6, r0
	blt _02062418
	b _02062524
_02062490:
	bl GetRank
	mov r8, r0
	bl GetScenarioBalance
	ldr r4, _02062544 ; =_020B0AD8
	mov sb, r0
	mov sl, r6
	mov fp, #0x16
	mov r5, r6
_020624B0:
	ldr r0, [r4, #0xc]
	add r1, r0, sl, lsl #4
	ldrb r0, [r1, #8]
	cmp r8, r0
	blo _02062504
	ldrb r0, [r1, #9]
	cmp sb, r0
	blt _02062504
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _020624EC
	mov r0, fp
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	beq _02062504
_020624EC:
	ldr r1, [r4, #0xc]
	mov r0, sl, lsl #1
	add r1, r1, sl, lsl #4
	ldrh r1, [r1, #6]
	strh r1, [r7, r0]
	b _0206250C
_02062504:
	mov r0, sl, lsl #1
	strh r5, [r7, r0]
_0206250C:
	mov r0, sl, lsl #1
	ldrh r0, [r7, r0]
	add sl, sl, #1
	cmp sl, #0x27
	add r6, r6, r0
	blt _020624B0
_02062524:
	ldr r0, _02062544 ; =_020B0AD8
	cmp r6, #0
	str r6, [r0, #0x20]
	str r7, [r0, #0x1c]
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02062544: .word _020B0AD8
	arm_func_end sub_02062290

	arm_func_start sub_02062548
sub_02062548: ; 0x02062548
	stmdb sp!, {r3, lr}
	ldr r0, _02062574 ; =_020B0AD8
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _02062574 ; =_020B0AD8
	mov r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02062574: .word _020B0AD8
	arm_func_end sub_02062548

	arm_func_start sub_02062578
sub_02062578: ; 0x02062578
	stmdb sp!, {r4, lr}
	ldr r2, _02062768 ; =_020B0AD8
	mov r1, #0x258
	ldr r0, [r2, #0x20]
	ldr r2, [r2, #0x1c]
	bl sub_02062248
	movs r4, r0
	bmi _02062760
	ldr r0, _02062768 ; =_020B0AD8
	ldr r0, [r0, #0xc]
	add r0, r0, r4, lsl #4
	ldrh r0, [r0, #0xc]
	bl RandInt
	ldr r2, _02062768 ; =_020B0AD8
	mov r1, #0x22
	ldr r3, [r2, #0xc]
	ldr r2, [r2, #0x18]
	add r3, r3, r4, lsl #4
	ldrh r3, [r3, #0xe]
	add r0, r3, r0
	mla r4, r0, r1, r2
	ldrb r0, [r4, #0x20]
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _02062750
_020625DC: ; jump table
	b _02062750 ; case 0
	b _02062750 ; case 1
	b _02062750 ; case 2
	b _02062660 ; case 3
	b _02062750 ; case 4
	b _02062750 ; case 5
	b _02062618 ; case 6
	b _02062750 ; case 7
	b _02062750 ; case 8
	b _02062750 ; case 9
	b _02062750 ; case 10
	b _02062684 ; case 11
	b _02062750 ; case 12
	b _02062750 ; case 13
	b _020626F4 ; case 14
_02062618:
	ldrb r0, [r4, #0x21]
	cmp r0, #2
	bne _02062638
	mov r0, #6
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	moveq r0, #0
	beq _02062754
_02062638:
	ldrb r0, [r4, #0x21]
	cmp r0, #4
	bne _02062750
	ldrh r0, [r4, #0xc]
	and r0, r0, #0xff
	bl sub_02063394
	cmp r0, #0
	beq _02062750
	mov r0, #0
	b _02062754
_02062660:
	ldrb r0, [r4, #0x21]
	cmp r0, #2
	bne _02062750
	mov r0, #9
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	bne _02062750
	mov r0, #0
	b _02062754
_02062684:
	ldrb r0, [r4, #0x21]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02062750
_02062694: ; jump table
	b _02062750 ; case 0
	b _020626C0 ; case 1
	b _020626C0 ; case 2
	b _020626C0 ; case 3
	b _020626C0 ; case 4
	b _020626AC ; case 5
_020626AC:
	mov r0, #0
	bl sub_0204CA1C
	cmp r0, #0
	moveq r0, #0
	beq _02062754
_020626C0:
	ldrsh r0, [r4, #0x12]
	bl sub_020558F4
	mvn r1, #0
	cmp r0, r1
	movne r0, #0
	bne _02062754
	ldrb r0, [r4, #0x20]
	add r1, r4, #0x21
	bl sub_0205E2B8
	cmp r0, #0
	beq _02062750
	mov r0, #0
	b _02062754
_020626F4:
	ldrb r0, [r4, #0x21]
	cmp r0, #1
	bne _02062750
	ldrh r0, [r4, #0xc]
	and r0, r0, #0xff
	bl DungeonSwapIdToIdx
	bl GetDungeonMode
	cmp r0, #3
	moveq r0, #0
	beq _02062754
	ldrb r0, [r4, #0x20]
	add r1, r4, #0x21
	bl sub_0205E2B8
	cmp r0, #0
	beq _02062750
	ldrh r0, [r4, #0xc]
	mvn r1, #0
	mov r2, #0
	and r0, r0, #0xff
	bl sub_0205E090
	cmp r0, #0
	movne r0, #0
	bne _02062754
_02062750:
	mov r0, #1
_02062754:
	cmp r0, #0
	movne r0, r4
	ldmneia sp!, {r4, pc}
_02062760:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02062768: .word _020B0AD8
	arm_func_end sub_02062578

	arm_func_start sub_0206276C
sub_0206276C: ; 0x0206276C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, _020627F0 ; =_020B0AD8
	mov ip, #0
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x18]
	mov r6, #0x22
	b _020627E0
_02062788:
	add lr, r4, ip, lsl #4
	ldrh r7, [lr, #0xe]
	mla r8, r7, r6, r5
	ldrb r7, [r8, #0x20]
	cmp r7, r0
	ldreqb r8, [r8, #0x21]
	ldreqb r7, [r1]
	cmpeq r8, r7
	bne _020627DC
	cmp r2, #0
	ldrneb r0, [lr, #8]
	ldr r1, [sp, #0x18]
	strneb r0, [r2]
	cmp r3, #0
	ldrneb r0, [lr, #9]
	strne r0, [r3]
	cmp r1, #0
	ldrneh r0, [lr, #0xa]
	strne r0, [r1]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020627DC:
	add ip, ip, #1
_020627E0:
	cmp ip, #0x27
	blt _02062788
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_020627F0: .word _020B0AD8
	arm_func_end sub_0206276C

	arm_func_start sub_020627F4
sub_020627F4: ; 0x020627F4
	ldr r0, _02062800 ; =_020B0AD8
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_02062800: .word _020B0AD8
	arm_func_end sub_020627F4

	arm_func_start sub_02062804
sub_02062804: ; 0x02062804
	ldr r0, _02062810 ; =_020B0AD8
	ldr r0, [r0, #0x10]
	bx lr
	.align 2, 0
_02062810: .word _020B0AD8
	arm_func_end sub_02062804

	arm_func_start sub_02062814
sub_02062814: ; 0x02062814
	cmp r0, #0
	ldrne r1, _02062828 ; =MISSION_DUNGEON_UNLOCK_TABLE
	strne r1, [r0]
	mov r0, #3
	bx lr
	.align 2, 0
_02062828: .word MISSION_DUNGEON_UNLOCK_TABLE
	arm_func_end sub_02062814

	arm_func_start sub_0206282C
sub_0206282C: ; 0x0206282C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, #0
	ldr r4, _020628FC ; =MISSION_DUNGEON_UNLOCK_TABLE
	mov sb, r0
	mov r8, r5
_02062840:
	ldrb r0, [r4, r8, lsl #1]
	bl DungeonSwapIdToIdx
	bl GetDungeonMode
	cmp r0, #0
	bne _020628E8
	bl GetScenarioBalance
	add r1, r4, r8, lsl #1
	ldrb r1, [r1, #1]
	mov r2, r8, lsl #1
	cmp r1, r0
	bhi _020628E8
	ldrb r0, [r4, r2]
	bl GetMaxReachedFloor
	cmp r0, #0
	bne _020628E8
	ldrb r0, [r4, r8, lsl #1]
	cmp r0, #0x5b
	beq _020628E8
	mov r7, #1
	mov r6, #0
	b _020628C8
_02062894:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	ldrb r1, [r0, #1]
	cmp r1, #3
	ldreqb r1, [r0, #2]
	cmpeq r1, #3
	ldreqb r1, [r0, #4]
	ldreqb r0, [r4, r8, lsl #1]
	cmpeq r1, r0
	moveq r7, #0
	beq _020628D0
	add r6, r6, #1
_020628C8:
	cmp r6, #8
	blt _02062894
_020628D0:
	cmp r7, #0
	beq _020628E8
	cmp sb, #0
	ldrneb r0, [r4, r8, lsl #1]
	strneb r0, [sb, r5]
	add r5, r5, #1
_020628E8:
	add r8, r8, #1
	cmp r8, #3
	blt _02062840
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_020628FC: .word MISSION_DUNGEON_UNLOCK_TABLE
	arm_func_end sub_0206282C

	arm_func_start sub_02062900
sub_02062900: ; 0x02062900
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r6, r0
	mov r4, r2
	ldr r1, _02062940 ; =_020A3CA0
	add r0, sp, #0
	mov r2, #6
	bl MemcpySimple
	add r3, sp, #0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_02062944
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02062940: .word _020A3CA0
	arm_func_end sub_02062900

	arm_func_start sub_02062944
sub_02062944: ; 0x02062944
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r0, #0x12
	mov r8, r1
	mov r5, r2
	mov r4, r3
	bl RandIntSafe
	mov r0, r0, lsl #0x10
	cmp sb, #0
	mov r6, r0, lsr #0x10
	mov r7, #0
	beq _02062984
	mov r0, sb
	bl RandIntSafe
	mov r0, r0, lsl #1
	ldrsh r7, [r8, r0]
_02062984:
	bl GetRank
	cmp r0, #3
	movhs r0, #1
	movlo r0, #0
	tst r0, #0xff
	cmpne r6, #0
	moveq r0, #0
	streqh r0, [r4, #2]
	bl GetRank
	cmp r0, #4
	movhs r0, #1
	movlo r0, #0
	tst r0, #0xff
	cmpne r7, #0
	moveq r0, #0
	streqh r0, [r4, #4]
	mov r1, r4
	mov r0, #3
	bl sub_0206220C
	cmp r0, #0
	beq _020629F4
	cmp r0, #1
	beq _02062A04
	cmp r0, #2
	moveq r0, #1
	streqb r0, [r5]
	streqh r7, [r5, #2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020629F4:
	mov r0, #0
	strb r0, [r5]
	strh r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02062A04:
	mov r0, #0
	strb r0, [r5]
	strh r6, [r5, #2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_02062944

	arm_func_start IsMonsterMissionAllowed
IsMonsterMissionAllowed: ; 0x02062A14
	stmdb sp!, {r4, lr}
	mov r4, #0
	bl GetBaseForm
	bl Monster_FemaleToMaleForm
	ldr r1, _02062A54 ; =MISSION_BANNED_MONSTERS
	b _02062A3C
_02062A2C:
	cmp r0, r2
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r4, r4, #1
_02062A3C:
	mov r2, r4, lsl #1
	ldrsh r2, [r1, r2]
	cmp r2, #0
	bne _02062A2C
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02062A54: .word MISSION_BANNED_MONSTERS
	arm_func_end IsMonsterMissionAllowed

	arm_func_start CanMonsterBeUsedForMissionWrapper
CanMonsterBeUsedForMissionWrapper: ; 0x02062A58
	ldr ip, _02062A64 ; =CanMonsterBeUsedForMission
	mov r1, #1
	bx ip
	.align 2, 0
_02062A64: .word CanMonsterBeUsedForMission
	arm_func_end CanMonsterBeUsedForMissionWrapper

	arm_func_start CanMonsterBeUsedForMission
CanMonsterBeUsedForMission: ; 0x02062A68
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl Monster_FemaleToMaleForm
	mov r4, r0
	bl HasMonsterBeenAttackedInDungeons
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl GetBaseForm
	cmp r4, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	beq _02062AB8
	mov r0, r4
	bl IsMonsterMissionAllowed
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_02062AB8:
	mov r0, r4
	bl IsMonsterMissionAllowedStory
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end CanMonsterBeUsedForMission

	arm_func_start sub_02062AD0
sub_02062AD0: ; 0x02062AD0
	stmdb sp!, {r3, lr}
	bl GetBaseForm
	bl Monster_FemaleToMaleForm
	bl IsMonsterMissionAllowedStory
	ldmia sp!, {r3, pc}
	arm_func_end sub_02062AD0

	arm_func_start IsMonsterMissionAllowedStory
IsMonsterMissionAllowedStory: ; 0x02062AE4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #9
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	bne _02062B58
	mov r2, #0
	ldr r0, _02062B60 ; =MISSION_BANNED_STORY_MONSTERS
	b _02062B18
_02062B08:
	cmp r4, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r2, r2, #1
_02062B18:
	mov r1, r2, lsl #1
	ldrsh r1, [r0, r1]
	cmp r1, #0
	bne _02062B08
	bl GetHero
	ldrsh r0, [r0, #4]
	bl Monster_FemaleToMaleForm
	cmp r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl GetPartner
	ldrsh r0, [r0, #4]
	bl Monster_FemaleToMaleForm
	cmp r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_02062B58:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02062B60: .word MISSION_BANNED_STORY_MONSTERS
	arm_func_end IsMonsterMissionAllowedStory

	arm_func_start sub_02062B64
sub_02062B64: ; 0x02062B64
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl IsMonsterValid
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	ldr r0, _02062BB0 ; =0x00000217
	cmp r4, r0
	blt _02062B90
	cmp r4, #0x228
	ble _02062BA0
_02062B90:
	cmp r4, #0x180
	ldrne r0, _02062BB4 ; =0x00000117
	cmpne r4, r0
	bne _02062BA8
_02062BA0:
	mov r0, #1
	ldmia sp!, {r4, pc}
_02062BA8:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02062BB0: .word 0x00000217
_02062BB4: .word 0x00000117
	arm_func_end sub_02062B64

	arm_func_start sub_02062BB8
sub_02062BB8: ; 0x02062BB8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl DungeonSwapIdToIdx
	cmp r5, #0x36
	mov r4, r0
	cmpne r5, #0x68
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r5, #0x7b
	blo _02062BEC
	cmp r5, #0xa3
	movls r0, #0
	ldmlsia sp!, {r3, r4, r5, pc}
_02062BEC:
	cmp r5, #0xaf
	movhs r0, #0
	ldmhsia sp!, {r3, r4, r5, pc}
	add r0, r5, #0xe8
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02062C1C
	mov r0, #9
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_02062C1C:
	mvn r0, #0
	cmp r4, r0
	beq _02062C44
	cmp r4, #0xb4
	bge _02062C44
	mov r0, r4
	bl GetDungeonMode
	cmp r0, #3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
_02062C44:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02062BB8

	arm_func_start sub_02062C4C
sub_02062C4C: ; 0x02062C4C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	cmp sl, #0
	mov sb, r1
	mov r8, r2
	str r3, [sp]
	movle r0, #0
	ble _02062D38
	bl RandIntSafe
	mov r6, r0
	mov fp, r6
_02062C7C:
	ldrb r4, [sb, r6]
	mov r0, r4
	bl GetNbFloors
	mov r7, r0
	cmp r4, #0xae
	addne r7, r7, #1
	add r0, r7, r7, lsr #31
	mov r0, r0, asr #1
	mov r1, r7
	str r0, [sp, #8]
	bl RandRangeSafe
	mov r5, r0
	str r5, [sp, #4]
_02062CB0:
	strb r4, [sp, #0x10]
	strb r5, [sp, #0x11]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	bl IsForbiddenFloor
	cmp r0, #0
	movne r0, #0
	strne r0, [sp, #0xc]
	ldr r2, [sp]
	mov r0, r4
	mov r1, r5
	bl sub_0205E090
	cmp r0, #0
	movne r0, #0
	strne r0, [sp, #0xc]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	strneb r4, [r8]
	strneb r5, [r8, #1]
	movne r0, #1
	bne _02062D38
	add r5, r5, #1
	cmp r5, r7
	ldrge r5, [sp, #8]
	ldr r0, [sp, #4]
	cmp r5, r0
	bne _02062CB0
	add r6, r6, #1
	cmp r6, sl
	moveq r6, #0
	cmp r6, fp
	bne _02062C7C
	mov r0, #0
_02062D38:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_02062C4C

	arm_func_start sub_02062D40
sub_02062D40: ; 0x02062D40
	stmdb sp!, {r3, lr}
	bl sub_0204F7A8
	cmp r0, #7
	movle r0, #1
	movgt r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end sub_02062D40

	arm_func_start sub_02062D5C
sub_02062D5C: ; 0x02062D5C
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl sub_0204F7A8
	cmp r4, #2
	cmpne r4, #3
	cmpne r4, #4
	cmpne r4, #5
	beq _02062D8C
	add r1, r4, #0xf7
	and r1, r1, #0xff
	cmp r1, #1
	bhi _02062D90
_02062D8C:
	add r0, r0, #1
_02062D90:
	cmp r0, #0xf
	movgt r0, #0xf
	ldmia sp!, {r4, pc}
	arm_func_end sub_02062D5C

	arm_func_start sub_02062D9C
sub_02062D9C: ; 0x02062D9C
	stmdb sp!, {r3, lr}
	bl sub_02062D5C
	and r0, r0, #0xff
	cmp r0, #0x10
	movhs r0, #0xf
	ldmia sp!, {r3, pc}
	arm_func_end sub_02062D9C

	arm_func_start sub_02062DB4
sub_02062DB4: ; 0x02062DB4
	ldr r1, _02062DC0 ; =RANK_STRING_PTR_TABLE
	ldr r0, [r1, r0, lsl #2]
	bx lr
	.align 2, 0
_02062DC0: .word RANK_STRING_PTR_TABLE
	arm_func_end sub_02062DB4

	arm_func_start sub_02062DC4
sub_02062DC4: ; 0x02062DC4
	stmdb sp!, {r3, lr}
	bl sub_02062D5C
	ldr r1, _02062DD8 ; =MISSION_RANK_POINTS
	ldr r0, [r1, r0, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02062DD8: .word MISSION_RANK_POINTS
	arm_func_end sub_02062DC4

	arm_func_start CanSendItem
CanSendItem: ; 0x02062DDC
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	bne _02062DFC
	bl IsItemInTimeDarkness
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_02062DFC:
	mov r2, #0
	ldr r0, _02062E30 ; =NO_SEND_ITEM_TABLE
	b _02062E18
_02062E08:
	cmp r4, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r2, r2, #1
_02062E18:
	mov r1, r2, lsl #1
	ldrsh r1, [r0, r1]
	cmp r1, #0
	bne _02062E08
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02062E30: .word NO_SEND_ITEM_TABLE
	arm_func_end CanSendItem

	arm_func_start sub_02062E34
sub_02062E34: ; 0x02062E34
	stmdb sp!, {r4, lr}
	cmp r1, #0
	ldrnesh r4, [r0, #0xa0]
	ldreqsh r4, [r0, #0xa2]
	ldrb r0, [r0, #0xae]
	bl sub_0205BD5C
	mov r1, r0
	mov r0, r4
	bl CanSendItem
	ldmia sp!, {r4, pc}
	arm_func_end sub_02062E34

	arm_func_start sub_02062E5C
sub_02062E5C: ; 0x02062E5C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldrb r1, [r5, #1]
	add r0, r5, #4
	bl sub_02062D9C
	mov ip, #0
	str ip, [r4, #8]
	mov r3, ip
	mov r1, #6
_02062E84:
	mla r2, ip, r1, r4
	add ip, ip, #1
	strh r3, [r2, #0x14]
	cmp ip, #3
	blt _02062E84
	add r1, r0, #1
	mov r0, #0x32
	mul r0, r1, r0
	str r0, [r4, #8]
	ldrb r0, [r5, #0x16]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0206305C
_02062EB8: ; jump table
	b _02062ED4 ; case 0
	b _02062EE4 ; case 1
	b _02062F04 ; case 2
	b _02062F38 ; case 3
	b _02062FD8 ; case 4
	b _0206300C ; case 5
	b _02063038 ; case 6
_02062ED4:
	strb r3, [r4, #2]
	mov r0, #1
	str r0, [r4, #0xc]
	b _02063074
_02062EE4:
	mov r2, #1
	strb r2, [r4, #2]
	ldrsh r1, [r5, #0x18]
	mov r0, #0xa
	strh r1, [r4, #0x14]
	strh r0, [r4, #0x12]
	str r2, [r4, #0xc]
	b _02063074
_02062F04:
	mov r0, #2
	strb r0, [r4, #2]
	ldrsh r2, [r5, #0x18]
	mov r0, #1
	mov r1, #0xa
	strh r2, [r4, #0x14]
	strh r1, [r4, #0x12]
	str r0, [r4, #0xc]
	ldr r1, [r4, #8]
	sub r0, r0, #2
	mul r0, r1, r0
	str r0, [r4, #8]
	b _02063074
_02062F38:
	mov r0, #3
	strb r0, [r4, #2]
	ldrsh r1, [r5, #0x18]
	mov r0, #0xa
	strh r1, [r4, #0x14]
	strh r0, [r4, #0x12]
_02062F50:
	ldrb r1, [r5, #1]
	add r0, r5, #4
	add r2, r4, #0x1a
	bl sub_020630A4
	ldrsh r1, [r4, #0x14]
	ldrsh r0, [r4, #0x1a]
	cmp r1, r0
	beq _02062F50
	mov r0, #0xa
	strh r0, [r4, #0x18]
	mov r0, #2
	str r0, [r4, #0xc]
	bl RandInt
	cmp r0, #0
	beq _02062FC4
_02062F8C:
	ldrb r1, [r5, #1]
	add r0, r5, #4
	add r2, r4, #0x20
	bl sub_020630A4
	ldrsh r1, [r4, #0x20]
	ldrsh r0, [r4, #0x14]
	cmp r0, r1
	ldrnesh r0, [r4, #0x1a]
	cmpne r0, r1
	beq _02062F8C
	mov r0, #0xa
	strh r0, [r4, #0x1e]
	mov r0, #3
	str r0, [r4, #0xc]
_02062FC4:
	ldr r1, [r4, #8]
	mvn r0, #0
	mul r0, r1, r0
	str r0, [r4, #8]
	b _02063074
_02062FD8:
	mov r0, #4
	strb r0, [r4, #2]
	ldrsh r2, [r5, #0x18]
	mov r0, #1
	mov r1, #0xa
	strh r2, [r4, #0x14]
	strh r1, [r4, #0x12]
	str r0, [r4, #0xc]
	ldr r1, [r4, #8]
	sub r0, r0, #2
	mul r0, r1, r0
	str r0, [r4, #8]
	b _02063074
_0206300C:
	mov r1, #5
	mov r0, #1
	strb r1, [r4, #2]
	strb r0, [r4, #0x22]
	ldrsh r1, [r5, #0x18]
	sub r0, r0, #2
	strh r1, [r4, #0x24]
	ldr r1, [r4, #8]
	mul r0, r1, r0
	str r0, [r4, #8]
	b _02063074
_02063038:
	mov r0, #6
	strb r0, [r4, #2]
	ldrsh r1, [r5, #0x18]
	sub r0, r0, #7
	strh r1, [r4, #0x24]
	ldr r1, [r4, #8]
	mul r0, r1, r0
	str r0, [r4, #8]
	b _02063074
_0206305C:
	mov r0, #7
	strb r0, [r4, #2]
	ldr r1, [r4, #8]
	sub r0, r0, #8
	mul r0, r1, r0
	str r0, [r4, #8]
_02063074:
	ldrsh r1, [r5, #0xe]
	add r0, r5, #4
	strh r1, [r4]
	ldrb r1, [r5, #1]
	bl sub_02062D5C
	ldr r1, _02063098 ; =MISSION_RANK_POINTS
	ldr r0, [r1, r0, lsl #2]
	str r0, [r4, #0x28]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02063098: .word MISSION_RANK_POINTS
	arm_func_end sub_02062E5C

	arm_func_start sub_0206309C
sub_0206309C: ; 0x0206309C
	mov r0, #0xa
	bx lr
	arm_func_end sub_0206309C

	arm_func_start sub_020630A4
sub_020630A4: ; 0x020630A4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r2
	mov r5, #1
	bl sub_02062D5C
	mov r6, r0
	mov r0, r8
	mov r1, r6
	bl RetrieveFromItemList2
	mov r4, #0
	b _020630E0
_020630D0:
	mov r0, r8
	mov r1, r6
	mov r5, r4
	bl RetrieveFromItemList2
_020630E0:
	cmp r5, #0
	bne _020630D0
	strh r0, [r7]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020630A4

	arm_func_start sub_020630F0
sub_020630F0: ; 0x020630F0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r4, r0
	mov r1, #0
	bl GetExclusiveItem
	mov r5, r0
	mov r0, r4
	mov r1, #1
	bl GetExclusiveItem
	mov r4, r0
	cmp r5, #0
	cmpeq r4, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r5, #0
	streqh r4, [r6]
	beq _02063154
	cmp r4, #0
	streqh r5, [r6]
	beq _02063154
	mov r0, #2
	bl RandInt
	cmp r0, #0
	moveq r5, r4
	strh r5, [r6]
_02063154:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020630F0

	arm_func_start sub_0206315C
sub_0206315C: ; 0x0206315C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #6
	beq _020631D8
	cmp r0, #0xa
	beq _02063188
	cmp r0, #0xb
	beq _020631B4
	b _020631F4
_02063188:
	ldr r1, _02063230 ; =_020A3CD6
	add r0, sp, #0
	mov r2, #0xe
	bl MemcpySimple
	mov r0, #0
	strh r0, [sp, #0xc]
	ldrsh r2, [r4, #0x10]
	add r1, sp, #0
	mov r0, r4
	bl sub_02063240
	b _02063228
_020631B4:
	ldrb r0, [r4, #2]
	cmp r0, #1
	blo _020631D8
	cmp r0, #5
	movls r0, #6
	strlsb r0, [r4, #0x16]
	ldrlssh r0, [r4, #0xe]
	strlsh r0, [r4, #0x18]
	bls _02063228
_020631D8:
	ldrb r0, [r4, #2]
	cmp r0, #4
	moveq r1, #4
	ldreq r0, _02063234 ; =0x0000031E
	streqb r1, [r4, #0x16]
	streqh r0, [r4, #0x18]
	beq _02063228
_020631F4:
	cmp r1, #0
	add r0, sp, #0
	mov r2, #0xe
	beq _02063210
	ldr r1, _02063238 ; =ARM9_UNKNOWN_TABLE__NA_20A3CE4
	bl MemcpySimple
	b _02063218
_02063210:
	ldr r1, _0206323C ; =ARM9_UNKNOWN_TABLE__NA_20A3CC8
	bl MemcpySimple
_02063218:
	ldrsh r2, [r4, #0xe]
	add r1, sp, #0
	mov r0, r4
	bl sub_02063240
_02063228:
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_02063230: .word _020A3CD6
_02063234: .word 0x0000031E
_02063238: .word ARM9_UNKNOWN_TABLE__NA_20A3CE4
_0206323C: .word ARM9_UNKNOWN_TABLE__NA_20A3CC8
	arm_func_end sub_0206315C

	arm_func_start sub_02063240
sub_02063240: ; 0x02063240
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r6, r1
	mov r5, r2
	mov r0, #3
	mov r1, #0xc
	mov r2, #0
	bl sub_0204C6C8
	cmp r0, #0
	movne r0, #0
	strneh r0, [r6, #0xa]
	mov r0, #3
	mov r1, #6
	mov r2, #0
	bl sub_0204C6C8
	cmp r0, #0
	movne r0, #0
	strneh r0, [r6, #0xc]
	mov r0, #3
	mov r1, #8
	mov r2, #0
	bl sub_0204C6C8
	cmp r0, #0
	bne _020632B8
	ldrb r1, [r4, #1]
	add r0, r4, #4
	bl sub_02062D9C
	cmp r0, #0xb
	bge _020632C0
_020632B8:
	mov r0, #0
	strh r0, [r6, #8]
_020632C0:
	mov r1, r6
	mov r0, #7
	bl sub_0206220C
	and r1, r0, #0xff
	strb r0, [r4, #0x16]
	cmp r1, #6
	ldreqsh r0, [r4, #0xe]
	streqh r0, [r4, #0x18]
	beq _0206338C
	cmp r1, #4
	bne _0206336C
	add r1, sp, #0
	mov r0, r5
	bl sub_020630F0
	cmp r0, #0
	bne _02063360
	mov r0, r5
	mov r1, #0
	bl GetType
	mov r6, r0
	mov r0, r5
	mov r1, #1
	bl GetType
	movs r5, r0
	beq _02063334
	mov r0, #2
	bl RandInt
	cmp r0, #0
	beq _0206334C
_02063334:
	sub r0, r6, #1
	mov r0, r0, lsl #2
	add r0, r0, #0xfb
	add r0, r0, #0x100
	strh r0, [sp]
	b _02063360
_0206334C:
	sub r0, r5, #1
	mov r0, r0, lsl #2
	add r0, r0, #0xfb
	add r0, r0, #0x100
	strh r0, [sp]
_02063360:
	ldrsh r0, [sp]
	strh r0, [r4, #0x18]
	b _0206338C
_0206336C:
	ldrb r1, [r4, #1]
	add r0, r4, #4
	add r2, r4, #0x18
	bl sub_020630A4
	ldrsh r1, [r4, #0x14]
	ldrsh r0, [r4, #0x18]
	cmp r1, r0
	beq _0206336C
_0206338C:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_02063240

	arm_func_start sub_02063394
sub_02063394: ; 0x02063394
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl DungeonSwapIdToIdx
	mov r5, r0
	mov r4, #0
	ldr r1, _0206341C ; =MISSION_DUNGEON_UNLOCK_TABLE
	b _0206340C
_020633B0:
	ldrb r0, [r1, r4, lsl #1]
	cmp r6, r0
	bne _02063408
	bl GetScenarioBalance
	ldr r1, _02063420 ; =_020A3CAD
	ldrb r1, [r1, r4, lsl #1]
	cmp r1, r0
	movhi r0, #1
	ldmhiia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl GetDungeonMode
	cmp r0, #0
	bne _020633F8
	ldr r0, _0206341C ; =MISSION_DUNGEON_UNLOCK_TABLE
	ldrb r0, [r0, r4, lsl #1]
	bl GetMaxReachedFloor
	cmp r0, #0
	beq _02063400
_020633F8:
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_02063400:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02063408:
	add r4, r4, #1
_0206340C:
	cmp r4, #3
	blt _020633B0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0206341C: .word MISSION_DUNGEON_UNLOCK_TABLE
_02063420: .word _020A3CAD
	arm_func_end sub_02063394

	arm_func_start sub_02063424
sub_02063424: ; 0x02063424
	stmdb sp!, {r4, lr}
	cmp r0, #0xb
	ldreqb r0, [r1]
	mov r4, r2
	cmpeq r0, #5
	mov r0, r4
	bne _02063448
	bl GetNbFloors
	ldmia sp!, {r4, pc}
_02063448:
	bl GetNbFloors
	cmp r4, #0xae
	addne r0, r0, #1
	sub r0, r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02063424

	arm_func_start IsAvailableItem
IsAvailableItem: ; 0x0206345C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	b _02063498
_0206346C:
	and r0, r4, #0xff
	bl GetMaxReachedFloor
	cmp r0, #0
	beq _02063494
	mov r1, r5
	and r0, r4, #0xff
	bl IsItemAvailableInDungeonGroup
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_02063494:
	add r4, r4, #1
_02063498:
	cmp r4, #0xb4
	blt _0206346C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end IsAvailableItem

	arm_func_start GetAvailableItemDeliveryList
GetAvailableItemDeliveryList: ; 0x020634A8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	ldr r4, _020634F0 ; =ITEM_DELIVERY_TABLE
	mov r8, r0
	mov r5, r6
_020634BC:
	mov r0, r5, lsl #1
	ldrsh r7, [r4, r0]
	mov r0, r7
	bl IsAvailableItem
	cmp r0, #0
	movne r0, r6, lsl #1
	add r5, r5, #1
	strneh r7, [r8, r0]
	addne r6, r6, #1
	cmp r5, #0x16
	blt _020634BC
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_020634F0: .word ITEM_DELIVERY_TABLE
	arm_func_end GetAvailableItemDeliveryList

	arm_func_start sub_020634F4
sub_020634F4: ; 0x020634F4
	ldr r1, _02063500 ; =_020B0AD8
	str r0, [r1]
	bx lr
	.align 2, 0
_02063500: .word _020B0AD8
	arm_func_end sub_020634F4

	arm_func_start sub_02063504
sub_02063504: ; 0x02063504
	ldr r0, _02063518 ; =_020B0AD8
	ldr r0, [r0]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	.align 2, 0
_02063518: .word _020B0AD8
	arm_func_end sub_02063504

	arm_func_start sub_0206351C
sub_0206351C: ; 0x0206351C
	mov ip, #0
	strh ip, [r0]
	str ip, [r0, #8]
	str ip, [r0, #0xc]
	mov r3, ip
	mov r1, #6
_02063534:
	mla r2, ip, r1, r0
	add ip, ip, #1
	strh r3, [r2, #0x14]
	cmp ip, #3
	blt _02063534
	strb r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	str r3, [r0, #0x28]
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_0206351C

	arm_func_start sub_02063560
sub_02063560: ; 0x02063560
	stmdb sp!, {r3, lr}
	ldrsh r2, [r1]
	cmp r2, #0
	beq _020635BC
	mov r2, #0x8000
	strh r2, [r0]
	ldrsh r2, [r1, #2]
	add ip, r1, #4
	add r3, r0, #0x14
	strh r2, [r0, #4]
	ldrsh lr, [r1, #2]
	mov r2, #4
	strh lr, [r0, #2]
	str ip, [r0, #8]
	str ip, [r0, #0xc]
	ldrsh r1, [r1]
	add r1, ip, r1, lsl #2
	str r1, [r0, #0x10]
_020635A8:
	ldrb r0, [ip], #1
	subs r2, r2, #1
	strb r0, [r3], #1
	bne _020635A8
	ldmia sp!, {r3, pc}
_020635BC:
	mov r1, #0
	strh r1, [r0]
	ldmia sp!, {r3, pc}
	arm_func_end sub_02063560

	arm_func_start sub_020635C8
sub_020635C8: ; 0x020635C8
	ldr ip, _020635D4 ; =MemZero
	mov r1, #0xc
	bx ip
	.align 2, 0
_020635D4: .word MemZero
	arm_func_end sub_020635C8

	arm_func_start sub_020635D8
sub_020635D8: ; 0x020635D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	bl UnloadFile
	mov r0, r4
	mov r1, #0xc
	bl MemZero
	ldmia sp!, {r4, pc}
	arm_func_end sub_020635D8

	arm_func_start sub_02063600
sub_02063600: ; 0x02063600
	ldr ip, _0206360C ; =MemZero
	mov r1, #0x18
	bx ip
	.align 2, 0
_0206360C: .word MemZero
	arm_func_end sub_02063600

	arm_func_start sub_02063610
sub_02063610: ; 0x02063610
	ldr r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_02063610

	arm_func_start sub_02063628
sub_02063628: ; 0x02063628
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r1, #0x18
	mov r7, r0
	mov r5, r2
	bl MemZero
	mov r0, #0x18
	mul r4, r5, r0
	mov r0, r4
	mov r1, #0
	str r5, [r7, #0xc]
	bl MemAlloc
	mov r1, r4
	str r0, [r7, #8]
	bl MemZero
	mov r0, r7
	str r6, [r7, #4]
	bl sub_020636A8
	mov r0, #0x1f
	str r0, [r7, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02063628

	arm_func_start sub_0206367C
sub_0206367C: ; 0x0206367C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02063610
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #8]
	bl MemFree
	mov r0, r4
	mov r1, #0x18
	bl MemZero
	ldmia sp!, {r4, pc}
	arm_func_end sub_0206367C

	arm_func_start sub_020636A8
sub_020636A8: ; 0x020636A8
	ldr r1, [r0]
	cmp r1, #0
	beq _020636F0
	ldr r1, [r1]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	bx lr
_020636C4: ; jump table
	b _020636D8 ; case 0
	b _020636E4 ; case 1
	b _020636E4 ; case 2
	b _020636E4 ; case 3
	b _020636E4 ; case 4
_020636D8:
	mov r1, #0
	strb r1, [r0, #0x14]
	bx lr
_020636E4:
	mov r1, #1
	strb r1, [r0, #0x14]
	bx lr
_020636F0:
	ldr r1, [r0, #4]
	ldr r1, [r1]
	ldr r1, [r1]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	bx lr
_02063708: ; jump table
	b _0206371C ; case 0
	b _02063728 ; case 1
	b _02063728 ; case 2
	b _02063728 ; case 3
	b _02063728 ; case 4
_0206371C:
	mov r1, #0
	strb r1, [r0, #0x14]
	bx lr
_02063728:
	mov r1, #1
	strb r1, [r0, #0x14]
	bx lr
	arm_func_end sub_020636A8

	arm_func_start sub_02063734
sub_02063734: ; 0x02063734
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #0
	mov r4, #0x18
	b _02063764
_02063750:
	ldr r0, [r8, #8]
	ldr r1, [r7, r5, lsl #2]
	mla r0, r5, r4, r0
	bl sub_02063560
	add r5, r5, #1
_02063764:
	cmp r5, r6
	blt _02063750
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02063734

	arm_func_start sub_02063770
sub_02063770: ; 0x02063770
	ldrb r0, [r0, #0x15]
	bx lr
	arm_func_end sub_02063770

	arm_func_start sub_02063778
sub_02063778: ; 0x02063778
	mov r2, #0x18
	mul r2, r1, r2
	ldr r0, [r0, #8]
	ldrh r0, [r0, r2]
	tst r0, #0x8000
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_02063778

	arm_func_start sub_0206379C
sub_0206379C: ; 0x0206379C
	mov r2, #0x18
	mul r2, r1, r2
	ldr r0, [r0, #8]
	ldrh r0, [r0, r2]
	tst r0, #0x8000
	beq _020637C0
	tst r0, #0x2000
	movne r0, #1
	bxne lr
_020637C0:
	mov r0, #0
	bx lr
	arm_func_end sub_0206379C

	arm_func_start sub_020637C8
sub_020637C8: ; 0x020637C8
	stmdb sp!, {r4, lr}
	ldrb ip, [sp, #8]
	mov r4, r0
	mov r0, r4
	cmp ip, #0
	addne r3, r3, r2, lsl #8
	mov r3, r3, lsl #0x10
	mov r2, r1
	mov r1, r3, lsr #0x10
	bl sub_0200A29C
	mov r0, r4
	bl sub_0200A174
	ldmia sp!, {r4, pc}
	arm_func_end sub_020637C8

	arm_func_start sub_020637FC
sub_020637FC: ; 0x020637FC
	stmdb sp!, {r4, lr}
	ldrb ip, [sp, #8]
	mov r4, r0
	mov r0, r4
	cmp ip, #0
	addne r3, r3, r2, lsl #8
	mov r3, r3, lsl #0x10
	mov r2, r1
	mov r1, r3, lsr #0x10
	bl sub_0200A590
	mov r0, r4
	bl sub_0200A504
	ldmia sp!, {r4, pc}
	arm_func_end sub_020637FC

	arm_func_start sub_02063830
sub_02063830: ; 0x02063830
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, #0
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov fp, r3
	mov r5, r6
	ldr r7, [sp, #0x28]
	b _0206394C
_02063854:
	mov r0, sl
	mov r1, r5
	bl sub_02063778
	cmp r0, #0
	beq _02063948
	mov r0, sl
	mov r1, r5
	bl sub_0206379C
	cmp r0, #0
	bne _02063948
	ldr r1, [sl, #8]
	mov r0, #0x18
	mla r4, r5, r0, r1
	mov r0, #0
	strb r0, [sl, #0x15]
	ldrsh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	ldrsh r0, [r4, #4]
	cmp r0, #0
	bgt _020638F4
	ldrsh r0, [r4, #2]
	add r2, r4, #0x14
	strh r0, [r4, #4]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	ldrhs r1, [r4, #8]
	movhs r0, #1
	strhs r1, [r4, #0xc]
	strhsb r0, [sl, #0x15]
	ldr r3, [r4, #0xc]
	mov r1, #4
	add r0, r3, #4
	str r0, [r4, #0xc]
_020638E0:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _020638E0
	mov r6, #1
_020638F4:
	cmp r7, #0
	cmpeq r6, #0
	beq _02063948
	ldr r0, [sl]
	cmp r0, #0
	beq _02063924
	ldrb ip, [sl, #0x14]
	mov r2, sb
	add r1, r4, #0x14
	add r3, r8, r5
	str ip, [sp]
	bl sub_020637C8
_02063924:
	ldr r0, [sl, #4]
	cmp r0, #0
	beq _02063948
	ldrb ip, [sl, #0x14]
	mov r2, sb
	add r1, r4, #0x14
	add r3, r8, r5
	str ip, [sp]
	bl sub_020637FC
_02063948:
	add r5, r5, #1
_0206394C:
	cmp r5, fp
	blt _02063854
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_02063830

	arm_func_start sub_0206395C
sub_0206395C: ; 0x0206395C
	stmdb sp!, {r3, lr}
	ldr r0, _020639AC ; =0x00000668
	mov r1, #0
	bl MemAlloc
	ldr r2, _020639B0 ; =_020B0B04
	ldr r1, _020639AC ; =0x00000668
	str r0, [r2]
	bl MemZero
	ldr r0, _020639B0 ; =_020B0B04
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, #0x664]
	ldr r0, [r0]
	add r0, r0, #0x58
	bl sub_02064AB0
	ldr r0, _020639B0 ; =_020B0B04
	ldr r0, [r0]
	add r0, r0, #0x58
	bl sub_02064ADC
	ldmia sp!, {r3, pc}
	.align 2, 0
_020639AC: .word 0x00000668
_020639B0: .word _020B0B04
	arm_func_end sub_0206395C

	arm_func_start sub_020639B4
sub_020639B4: ; 0x020639B4
	stmdb sp!, {r4, lr}
	ldr ip, _020639E4 ; =_020B0B04
	mov r4, r0
	ldr r0, [ip]
	mov lr, r1
	mov ip, r2
	add r0, r0, r3, lsl #5
	mov r1, r4
	mov r2, lr
	mov r3, ip
	bl sub_020646CC
	ldmia sp!, {r4, pc}
	.align 2, 0
_020639E4: .word _020B0B04
	arm_func_end sub_020639B4

	arm_func_start sub_020639E8
sub_020639E8: ; 0x020639E8
	ldr r2, _02063A04 ; =_020B0B04
	ldr ip, _02063A08 ; =sub_02064C18
	ldr r3, [r2]
	mov r2, r1
	mov r1, r0
	add r0, r3, #0x40
	bx ip
	.align 2, 0
_02063A04: .word _020B0B04
_02063A08: .word sub_02064C18
	arm_func_end sub_020639E8

	arm_func_start sub_02063A0C
sub_02063A0C: ; 0x02063A0C
	ldr r1, _02063A1C ; =_020B0B04
	ldr r1, [r1]
	strb r0, [r1, #0x664]
	bx lr
	.align 2, 0
_02063A1C: .word _020B0B04
	arm_func_end sub_02063A0C

	arm_func_start sub_02063A20
sub_02063A20: ; 0x02063A20
	ldr r0, _02063A30 ; =_020B0B04
	ldr r0, [r0]
	ldrb r0, [r0, #0x664]
	bx lr
	.align 2, 0
_02063A30: .word _020B0B04
	arm_func_end sub_02063A20

	arm_func_start sub_02063A34
sub_02063A34: ; 0x02063A34
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r1
	bl sub_02063BB8
	movs r4, r0
	mov r0, #0
	bne _02063B20
	cmp r5, #1
	bne _02063A98
	mov r2, r4
	mov r1, #2
	bl sub_020090A0
	mov r2, r4
	mov r0, #1
	mov r1, #0
	bl sub_020090A0
	mov r2, r4
	mov r0, #2
	mov r1, #1
	bl sub_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	b _02063BA0
_02063A98:
	cmp r5, #2
	bne _02063AE0
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	mov r0, #1
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	mov r0, #2
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	b _02063BA0
_02063AE0:
	mov r2, r4
	mov r1, #1
	bl sub_020090A0
	mov r2, r4
	mov r0, #1
	mov r1, #0
	bl sub_020090A0
	mov r0, #2
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	b _02063BA0
_02063B20:
	cmp r5, #1
	mov r2, r4
	bne _02063B68
	mov r1, #2
	bl sub_020090A0
	mov r2, r4
	mov r0, #1
	mov r1, #0
	bl sub_020090A0
	mov r2, r4
	mov r0, #2
	mov r1, #1
	bl sub_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	b _02063BA0
_02063B68:
	mov r1, #1
	bl sub_020090A0
	mov r2, r4
	mov r0, #1
	mov r1, #0
	bl sub_020090A0
	mov r0, #2
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
_02063BA0:
	ldr r0, _02063BB4 ; =_020B0B04
	ldr r0, [r0]
	add r0, r0, r4
	strb r5, [r0, #0x660]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02063BB4: .word _020B0B04
	arm_func_end sub_02063A34

	arm_func_start sub_02063BB8
sub_02063BB8: ; 0x02063BB8
	cmp r0, #0
	cmpne r0, #2
	moveq r0, #0
	movne r0, #1
	bx lr
	arm_func_end sub_02063BB8

	arm_func_start sub_02063BCC
sub_02063BCC: ; 0x02063BCC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r1
	bl sub_02063BB8
	mov r4, r0
	cmp r5, #1
	beq _02063BFC
	cmp r5, #2
	beq _02063C60
	cmp r5, #3
	beq _02063CB4
	b _02063D18
_02063BFC:
	mov r2, r4
	mov r0, #0
	mov r1, #1
	bl sub_02009454
	mov r2, r4
	mov r0, #1
	mov r1, #2
	bl sub_02009454
	mov r0, #2
	mov r1, r0
	mov r2, r4
	bl sub_02009454
	mov r2, r4
	mov r0, #3
	mov r1, #2
	bl sub_02009454
	mov r0, #4
	mov r1, #2
	mov r2, r4
	bl sub_02009454
	mov r0, #0xff
	mov r1, #0
	mov r2, r4
	bl sub_020094C4
	b _02063DCC
_02063C60:
	mov r2, r4
	mov r0, #0
	mov r1, #2
	bl sub_02009454
	mov r2, r4
	mov r0, #1
	mov r1, #2
	bl sub_02009454
	mov r2, r4
	mov r0, #2
	mov r1, #1
	bl sub_02009454
	mov r2, r4
	mov r0, #3
	mov r1, #2
	bl sub_02009454
	mov r0, #4
	mov r1, #2
	mov r2, r4
	bl sub_02009454
	b _02063DCC
_02063CB4:
	mov r2, r4
	mov r0, #0
	mov r1, #2
	bl sub_02009454
	mov r0, #1
	mov r1, r0
	mov r2, r4
	bl sub_02009454
	mov r2, r4
	mov r0, #2
	mov r1, #1
	bl sub_02009454
	mov r2, r4
	mov r0, #3
	mov r1, #2
	bl sub_02009454
	mov r0, #4
	mov r1, #2
	mov r2, r4
	bl sub_02009454
	mov r0, #0xff
	mov r1, #0
	mov r2, r4
	bl sub_020094C4
	b _02063DCC
_02063D18:
	cmp r4, #0
	mov r2, r4
	mov r0, #0
	bne _02063D74
	mov r1, #1
	bl sub_02009454
	mov r2, r4
	mov r0, #1
	mov r1, #2
	bl sub_02009454
	mov r0, #2
	mov r1, r0
	mov r2, r4
	bl sub_02009454
	mov r2, r4
	mov r0, #3
	mov r1, #2
	bl sub_02009454
	mov r0, #4
	mov r1, #2
	mov r2, r4
	bl sub_02009454
	b _02063DBC
_02063D74:
	mov r1, #2
	bl sub_02009454
	mov r2, r4
	mov r0, #1
	mov r1, #2
	bl sub_02009454
	mov r0, #2
	mov r1, r0
	mov r2, r4
	bl sub_02009454
	mov r2, r4
	mov r0, #3
	mov r1, #2
	bl sub_02009454
	mov r0, #4
	mov r1, #2
	mov r2, r4
	bl sub_02009454
_02063DBC:
	mov r0, #0x40
	mov r1, r0
	mov r2, r4
	bl sub_020094C4
_02063DCC:
	ldr r0, _02063DE0 ; =_020B0B04
	ldr r0, [r0]
	add r0, r0, r4
	strb r5, [r0, #0x662]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02063DE0: .word _020B0B04
	arm_func_end sub_02063BCC

	arm_func_start sub_02063DE4
sub_02063DE4: ; 0x02063DE4
	stmdb sp!, {r3, lr}
	ldr r0, _02063E1C ; =_020B0B04
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #0x58
	bl sub_02064AFC
	ldr r0, _02063E1C ; =_020B0B04
	ldr r0, [r0]
	bl MemFree
	ldr r0, _02063E1C ; =_020B0B04
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02063E1C: .word _020B0B04
	arm_func_end sub_02063DE4

	arm_func_start sub_02063E20
sub_02063E20: ; 0x02063E20
	ldr r2, _02063E3C ; =_020B0B04
	mov r3, r0
	ldr r0, [r2]
	ldr ip, _02063E40 ; =sub_02064664
	add r0, r0, r1, lsl #5
	mov r1, r3
	bx ip
	.align 2, 0
_02063E3C: .word _020B0B04
_02063E40: .word sub_02064664
	arm_func_end sub_02063E20

	arm_func_start sub_02063E44
sub_02063E44: ; 0x02063E44
	stmdb sp!, {r3, lr}
	cmp r0, #2
	ldmeqia sp!, {r3, pc}
	ldr r1, _02063E64 ; =_020B0B04
	ldr r1, [r1]
	add r0, r1, r0, lsl #5
	bl sub_0206466C
	ldmia sp!, {r3, pc}
	.align 2, 0
_02063E64: .word _020B0B04
	arm_func_end sub_02063E44

	arm_func_start sub_02063E68
sub_02063E68: ; 0x02063E68
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_02063E68

	arm_func_start sub_02063E7C
sub_02063E7C: ; 0x02063E7C
	ldr r1, _02063E90 ; =_020B0B04
	ldr ip, _02063E94 ; =sub_020646E0
	ldr r1, [r1]
	add r0, r1, r0, lsl #5
	bx ip
	.align 2, 0
_02063E90: .word _020B0B04
_02063E94: .word sub_020646E0
	arm_func_end sub_02063E7C

	arm_func_start sub_02063E98
sub_02063E98: ; 0x02063E98
	ldr r1, _02063EAC ; =_020B0B04
	ldr ip, _02063EB0 ; =sub_020646E8
	ldr r1, [r1]
	add r0, r1, r0, lsl #5
	bx ip
	.align 2, 0
_02063EAC: .word _020B0B04
_02063EB0: .word sub_020646E8
	arm_func_end sub_02063E98

	arm_func_start sub_02063EB4
sub_02063EB4: ; 0x02063EB4
	stmdb sp!, {r3, lr}
	ldr r3, _02063EDC ; =_020B0B04
	mov ip, r0
	ldr r0, [r3]
	mov r3, r1
	add r0, r0, r2, lsl #5
	mov r1, ip
	mov r2, r3
	bl sub_02064758
	ldmia sp!, {r3, pc}
	.align 2, 0
_02063EDC: .word _020B0B04
	arm_func_end sub_02063EB4

	arm_func_start sub_02063EE0
sub_02063EE0: ; 0x02063EE0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr ip, _02063F2C ; =_020B0B04
	ldrb r4, [sp, #0x18]
	ldr r5, [ip]
	mov ip, #0x60
	str r3, [sp]
	mov r3, r2
	mov r2, r1
	ldr r1, [sp, #0x1c]
	str r4, [sp, #4]
	smlabb r0, r0, ip, r5
	str r1, [sp, #8]
	ldr lr, [sp, #0x20]
	ldr r1, [r0, #0xb0]
	add r0, r5, lr, lsl #5
	bl sub_0206478C
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02063F2C: .word _020B0B04
	arm_func_end sub_02063EE0

	arm_func_start sub_02063F30
sub_02063F30: ; 0x02063F30
	stmdb sp!, {r4, r5, r6, lr}
	ldr ip, _02063F74 ; =_020B0B04
	mov r5, r1
	ldr ip, [ip]
	mov r6, r0
	mov r1, r3
	add r0, ip, #0x40
	mov r4, r2
	bl sub_02064C58
	ldr r0, _02063F74 ; =_020B0B04
	mov r1, r6
	ldr r0, [r0]
	mov r2, r5
	mov r3, r4
	add r0, r0, #0x40
	bl sub_02064CC8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02063F74: .word _020B0B04
	arm_func_end sub_02063F30

	arm_func_start sub_02063F78
sub_02063F78: ; 0x02063F78
	stmdb sp!, {r3, lr}
	ldr r3, _02063FA0 ; =_020B0B04
	mov lr, r1
	ldr ip, [r3]
	mov r3, r2
	mov r1, r0
	mov r2, lr
	add r0, ip, #0x40
	bl sub_02064C60
	ldmia sp!, {r3, pc}
	.align 2, 0
_02063FA0: .word _020B0B04
	arm_func_end sub_02063F78

	arm_func_start sub_02063FA4
sub_02063FA4: ; 0x02063FA4
	ldr r2, _02063FC0 ; =_020B0B04
	ldr ip, _02063FC4 ; =sub_02064C90
	ldr r3, [r2]
	mov r2, r1
	mov r1, r0
	add r0, r3, #0x40
	bx ip
	.align 2, 0
_02063FC0: .word _020B0B04
_02063FC4: .word sub_02064C90
	arm_func_end sub_02063FA4

	arm_func_start sub_02063FC8
sub_02063FC8: ; 0x02063FC8
	stmdb sp!, {r3, lr}
	ldr r3, _02063FF0 ; =_020B0B04
	mov lr, r1
	ldr ip, [r3]
	mov r3, r2
	mov r1, r0
	mov r2, lr
	add r0, ip, #0x58
	bl sub_02064B0C
	ldmia sp!, {r3, pc}
	.align 2, 0
_02063FF0: .word _020B0B04
	arm_func_end sub_02063FC8

	arm_func_start sub_02063FF4
sub_02063FF4: ; 0x02063FF4
	ldr r2, _0206400C ; =_020B0B04
	mov r1, r0
	ldr r0, [r2]
	ldr ip, _02064010 ; =sub_02064C0C
	add r0, r0, #0x58
	bx ip
	.align 2, 0
_0206400C: .word _020B0B04
_02064010: .word sub_02064C0C
	arm_func_end sub_02063FF4

	arm_func_start sub_02064014
sub_02064014: ; 0x02064014
	stmdb sp!, {r3, lr}
	ldr ip, _02064048 ; =_020B0B04
	mov r3, #0x60
	ldr ip, [ip]
	mov lr, r1
	smlabb r0, r0, r3, ip
	ldr r3, [r0, #0xb0]
	add r0, ip, r2, lsl #5
	ldr r1, [r3, #0xc]
	ldr r3, [r3, #8]
	mov r2, lr
	bl sub_020646F0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02064048: .word _020B0B04
	arm_func_end sub_02064014

	arm_func_start sub_0206404C
sub_0206404C: ; 0x0206404C
	ldr r2, _02064074 ; =_020B0B04
	ldr ip, _02064078 ; =sub_020648FC
	ldr r3, [r2]
	mov r2, #0x60
	smlabb r0, r0, r2, r3
	ldr r2, [r0, #0xb0]
	add r0, r3, r1, lsl #5
	ldr r1, [r2, #0x10]
	mov r2, #0x10
	bx ip
	.align 2, 0
_02064074: .word _020B0B04
_02064078: .word sub_020648FC
	arm_func_end sub_0206404C

	arm_func_start sub_0206407C
sub_0206407C: ; 0x0206407C
	ldr r2, _02064094 ; =_020B0B04
	mov r1, r0
	ldr r0, [r2]
	ldr ip, _02064098 ; =sub_02064FE4
	add r0, r0, #0x40
	bx ip
	.align 2, 0
_02064094: .word _020B0B04
_02064098: .word sub_02064FE4
	arm_func_end sub_0206407C

	arm_func_start sub_0206409C
sub_0206409C: ; 0x0206409C
	ldr r2, _020640B8 ; =_020B0B04
	mov r1, #0x60
	ldr r2, [r2]
	add r2, r2, #0x58
	smlabb r0, r0, r1, r2
	add r0, r0, #0x50
	bx lr
	.align 2, 0
_020640B8: .word _020B0B04
	arm_func_end sub_0206409C

	arm_func_start sub_020640BC
sub_020640BC: ; 0x020640BC
	ldr ip, _020640C8 ; =MemZero
	mov r1, #0x40
	bx ip
	.align 2, 0
_020640C8: .word MemZero
	arm_func_end sub_020640BC

	arm_func_start sub_020640CC
sub_020640CC: ; 0x020640CC
	strh r1, [r0]
	bx lr
	arm_func_end sub_020640CC

	arm_func_start sub_020640D4
sub_020640D4: ; 0x020640D4
	strb r1, [r0, #0x3c]
	bx lr
	arm_func_end sub_020640D4

	arm_func_start sub_020640DC
sub_020640DC: ; 0x020640DC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	str r5, [r6, #0xc]
	mov r0, #1
	strb r0, [r6, #0x3d]
	mov r0, #0
	strb r0, [r6, #0x3e]
	str r0, [r6, #0x10]
	ldrsh r0, [r6]
	bl sub_0206409C
	mov r4, r0
	mov r0, r5
	bl sub_02064228
	mov r1, r0
	add r0, r6, #0x2c
	bl sub_02009498
	mov r0, r5
	bl sub_02064228
	mov r2, r0
	add r0, r6, #0x32
	add r1, r6, #0x34
	bl sub_020094E8
	mov r0, r5
	bl sub_02064228
	mov r1, r0
	add r0, r6, #0x28
	bl sub_020090F4
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _020641E4
	mov r0, r5
	bl sub_02063E98
	ldr r2, [r0, #4]
	mov r1, #0
	strh r2, [r6, #0x38]
	ldr r2, [r0, #8]
	strh r2, [r6, #0x3a]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r4, #8]
	stmib r6, {r0, r1}
	bl sub_02063A20
	cmp r0, #0
	mov r0, #0
	beq _020641A0
	mov r1, r5
	bl sub_02063A34
	b _020641C8
_020641A0:
	mov r2, r0
	mov r1, #1
	bl sub_02009454
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl sub_02009454
	mov r1, r5
	mov r0, #1
	bl sub_02063A34
_020641C8:
	ldrsh r0, [r6]
	mov r1, r5
	bl sub_0206404C
	mov r1, r5
	mov r0, #0
	bl sub_02063E20
	b _02064220
_020641E4:
	mov r0, #0
	str r0, [r6, #4]
	ldr r0, [r4, #0xc]
	str r0, [r6, #8]
	ldr r1, [r6, #0x10]
	bl sub_02063FA4
	ldr r0, [r6, #8]
	bl sub_0206407C
	mov r0, #0
	mov r1, #2
	bl sub_02063E20
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x10]
	add r2, r6, #0x14
	bl sub_02063F78
_02064220:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020640DC

	arm_func_start sub_02064228
sub_02064228: ; 0x02064228
	cmp r0, #0
	cmpne r0, #2
	moveq r0, #0
	movne r0, #1
	bx lr
	arm_func_end sub_02064228

	arm_func_start sub_0206423C
sub_0206423C: ; 0x0206423C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #2
	beq _02064264
	bl sub_02063E98
	ldrsh r1, [r4, #0x38]
	str r1, [r0, #4]
	ldrsh r1, [r4, #0x3a]
	str r1, [r0, #8]
_02064264:
	ldr r0, [r4, #0xc]
	bl sub_02064228
	mov r1, r0
	add r0, r4, #0x2c
	bl sub_0200946C
	ldr r0, [r4, #0xc]
	bl sub_02064228
	mov r2, r0
	ldrsh r0, [r4, #0x32]
	ldrsh r1, [r4, #0x34]
	bl sub_020094C4
	ldr r0, [r4, #0xc]
	bl sub_02064228
	mov r1, r0
	add r0, r4, #0x28
	bl sub_020090C0
	ldmia sp!, {r4, pc}
	arm_func_end sub_0206423C

	arm_func_start sub_020642A8
sub_020642A8: ; 0x020642A8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _020645C0
	ldrb r1, [r5, #0x3e]
	ldr r4, [r5, #0xc]
	cmp r1, #0
	beq _020642DC
	bl sub_0206423C
	mov r0, #0
	b _02064658
_020642DC:
	ldrb r0, [r5, #0x3c]
	cmp r0, #0
	movne r0, #1
	bne _02064658
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _02064484
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0x14
	stmib sp, {r0, r4}
	mov r2, #0
	ldrsh r0, [r5]
	mov r3, r2
	add r1, r5, #0x10
	bl sub_02063EE0
	mov r6, r0
	ldr r2, [r5, #0xc]
	add r0, sp, #0xc
	mov r1, #4
	bl sub_02063EB4
	cmp r6, #0
	beq _02064464
	ldrsh r0, [sp, #0xc]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r5, #0x1c]
	movne r0, #0
	strne r0, [r5, #0x20]
	strne r0, [r5, #0x24]
	ldrsh r1, [sp, #0xe]
	cmp r1, #0
	beq _020643A4
	cmp r1, #0x63
	ldreq r1, _02064660 ; =0x00000C1C
	moveq r0, #0
	streq r1, [r5, #0x20]
	streq r0, [r5, #0x24]
	beq _020643A4
	cmp r1, #0
	ldr r0, _02064660 ; =0x00000C1C
	ble _02064394
	bl _s32_div_f
	str r0, [r5, #0x24]
	str r0, [r5, #0x20]
	b _020643A4
_02064394:
	str r0, [r5, #0x20]
	ldrsh r1, [sp, #0xe]
	bl _s32_div_f
	str r0, [r5, #0x24]
_020643A4:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _02064478
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x20]
	ldr r2, [r1, #0x10]
	mov r1, #0x64
	add sb, r2, #0x380
	bl _s32_div_f
	mov r8, #0
	mov r7, r0
	mov r6, r8
_020643D4:
	mov r0, r4
	bl sub_02063E7C
	add r1, r8, #0xe0
	mov r2, r1, lsl #0x10
	mov r1, sb
	mov r3, r7
	mov r2, r2, asr #0x10
	str r6, [sp]
	bl sub_0200C020
	add r8, r8, #1
	cmp r8, #0x10
	add sb, sb, #4
	blt _020643D4
	mov r0, r4
	bl sub_02063E7C
	bl sub_0200A504
	mov r1, r4
	mov r0, #3
	bl sub_02063BCC
	mov r0, r4
	bl sub_02063E68
	mov r2, r0
	mov r0, #0x50
	mov r1, r0
	bl sub_020094C4
	ldr r1, [r5, #0x20]
	ldr r0, [r5, #0x24]
	adds r1, r1, r0
	str r1, [r5, #0x20]
	movmi r0, #0
	strmi r0, [r5, #0x20]
	bmi _02064478
	ldr r0, _02064660 ; =0x00000C1C
	cmp r1, r0
	strgt r0, [r5, #0x20]
	b _02064478
_02064464:
	mov r0, r4
	bl sub_02063E44
	mov r0, #1
	strb r0, [r5, #0x3e]
	b _02064658
_02064478:
	ldr r0, [r5, #0x10]
	add r0, r0, #1
	str r0, [r5, #0x10]
_02064484:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	bne _020645AC
	ldrsh r0, [r5]
	bl sub_0206409C
	ldr r1, [r5, #0x10]
	mov r8, #0xff
	subs r2, r1, #1
	ldr r1, [r0, #8]
	movmi r2, #0
	cmp r1, #0
	beq _020645AC
	ldmia r1, {r0, r1}
	sub r0, r0, #1
	cmp r2, r0
	ldr r7, [r1, r2, lsl #2]
	bne _02064504
	ldr r1, [r7, #0x1c]
	mov r0, r4
	mov r1, r1, asr #8
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #24
	add r8, r2, r1, ror #24
	bl sub_02063E68
	rsb r1, r8, #0xff
	mov r3, r1, lsl #0x10
	mov r1, r8, lsl #0x10
	mov r2, r0
	mov r0, r1, asr #0x10
	mov r1, r3, asr #0x10
	bl sub_020094C4
	b _0206458C
_02064504:
	ldrsh r0, [r7, #0xc]
	add r1, r1, r2, lsl #2
	ldr r6, [r1, #4]
	cmp r0, #0
	bne _0206458C
	ldr r0, [r7, #0x1c]
	cmp r0, #0xff00
	beq _0206458C
	ldrsh r1, [r7, #8]
	ldr r0, [r5, #0x14]
	sub r0, r1, r0
	mov r0, r0, lsl #8
	mov r1, r1, lsl #8
	bl sub_02001AB0
	ldr r7, [r7, #0x1c]
	ldr r1, [r6, #0x1c]
	sub r1, r1, r7
	bl MultiplyByFixedPoint
	add r0, r0, r7
	mov r0, r0, asr #8
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #24
	add r8, r1, r0, ror #24
	add r1, r8, r8, lsr #31
	mov r0, r4
	mov r6, r1, asr #1
	bl sub_02063E68
	rsb r1, r6, #0x80
	mov r3, r1, lsl #0x10
	mov r1, r6, lsl #0x10
	mov r2, r0
	mov r0, r1, asr #0x10
	mov r1, r3, asr #0x10
	bl sub_020094C4
_0206458C:
	cmp r8, #0xff
	mov r1, r4
	bne _020645A4
	mov r0, #0
	bl sub_02063BCC
	b _020645AC
_020645A4:
	mov r0, #2
	bl sub_02063BCC
_020645AC:
	ldr r1, [r5, #0x14]
	mov r0, #1
	sub r1, r1, #1
	str r1, [r5, #0x14]
	b _02064658
_020645C0:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02064654
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0206460C
	ldr r0, [r5, #0x10]
	add r2, r5, #0x14
	add r1, r0, #1
	str r1, [r5, #0x10]
	ldr r0, [r5, #8]
	bl sub_02063F78
	cmp r0, #0
	bne _0206460C
	mov r1, #0
	str r1, [r5, #0x10]
	ldr r0, [r5, #8]
	add r2, r5, #0x14
	bl sub_02063F78
_0206460C:
	ldrb r0, [r5, #0x3c]
	ldr r1, [r5, #0x10]
	cmp r0, #0
	ldr r0, [r5, #8]
	beq _02064634
	ldr r2, [r5, #0x14]
	mov r3, #1
	bl sub_02063F30
	mov r0, #1
	b _02064658
_02064634:
	ldr r2, [r5, #0x14]
	mov r3, #0
	bl sub_02063F30
	ldr r1, [r5, #0x14]
	mov r0, #1
	sub r1, r1, #1
	str r1, [r5, #0x14]
	b _02064658
_02064654:
	mov r0, #0
_02064658:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02064660: .word 0x00000C1C
	arm_func_end sub_020642A8

	arm_func_start sub_02064664
sub_02064664: ; 0x02064664
	strh r1, [r0, #0x14]
	bx lr
	arm_func_end sub_02064664

	arm_func_start sub_0206466C
sub_0206466C: ; 0x0206466C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r8, #0
	mov sb, r0
	add r5, sp, #0
	mov r4, r8
	mov r6, r8
_02064688:
	mov r7, r6
_0206468C:
	str r8, [sp, #4]
	str r7, [sp]
	ldr r0, [sb, #8]
	mov r1, r5
	mov r2, r4
	bl sub_0200B3FC
	add r7, r7, #1
	cmp r7, #0x40
	blt _0206468C
	add r8, r8, #1
	cmp r8, #0x20
	blt _02064688
	ldr r0, [sb, #8]
	bl sub_0200B330
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_0206466C

	arm_func_start sub_020646CC
sub_020646CC: ; 0x020646CC
	stmib r0, {r1, r2}
	mov r1, #0
	str r1, [r0, #0xc]
	str r3, [r0, #0x10]
	bx lr
	arm_func_end sub_020646CC

	arm_func_start sub_020646E0
sub_020646E0: ; 0x020646E0
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end sub_020646E0

	arm_func_start sub_020646E8
sub_020646E8: ; 0x020646E8
	ldr r0, [r0, #8]
	bx lr
	arm_func_end sub_020646E8

	arm_func_start sub_020646F0
sub_020646F0: ; 0x020646F0
	ldr r0, [r0, #4]
	mov ip, #0
	add r2, r0, r2
	b _0206474C
_02064700:
	ldr r0, [r1]
	add ip, ip, #1
	str r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	ldr r0, [r1, #8]
	str r0, [r2, #8]
	ldr r0, [r1, #0xc]
	str r0, [r2, #0xc]
	ldr r0, [r1, #0x10]
	str r0, [r2, #0x10]
	ldr r0, [r1, #0x14]
	str r0, [r2, #0x14]
	ldr r0, [r1, #0x18]
	str r0, [r2, #0x18]
	ldr r0, [r1, #0x1c]
	add r1, r1, #0x20
	str r0, [r2, #0x1c]
	add r2, r2, #0x20
_0206474C:
	cmp ip, r3
	bls _02064700
	bx lr
	arm_func_end sub_020646F0

	arm_func_start sub_02064758
sub_02064758: ; 0x02064758
	stmdb sp!, {r3, lr}
	mov lr, #0
	b _02064780
_02064764:
	add r3, r0, lr, lsl #1
	ldrsh ip, [r3, #0x16]
	add r3, lr, #1
	mov lr, lr, lsl #1
	mov r3, r3, lsl #0x10
	strh ip, [r1, lr]
	mov lr, r3, lsr #0x10
_02064780:
	cmp lr, r2
	blo _02064764
	ldmia sp!, {r3, pc}
	arm_func_end sub_02064758

	arm_func_start sub_0206478C
sub_0206478C: ; 0x0206478C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	ldrb r6, [sp, #0x3c]
	mov sl, r0
	mov r5, r1
	mov r4, r2
	str r3, [sp]
	cmp r6, #0
	beq _020647B4
	bl sub_0206466C
_020647B4:
	ldr r2, [r5, #0x14]
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _020647DC
	ldrb r0, [r2, #0xa]
	ldr r1, [r4]
	cmp r1, r0
	ldrgeb r0, [r2, #9]
	strge r0, [r4]
	b _020647F0
_020647DC:
	ldr r1, [r4]
	ldr r0, [r5]
	cmp r1, r0
	movge r0, #0
	bge _020648F0
_020647F0:
	ldr r2, [r5, #4]
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	ldr r2, [r2, r0, lsl #2]
	mov sb, #0
	ldrsh r0, [r2, #6]
	cmp r1, #0
	ldrsh r8, [r2, #4]
	str r0, [sp, #4]
	ldrnesh r0, [r2, #8]
	mov r5, sb
	add fp, r2, #0x24
	strne r0, [r1]
	ldrsh r0, [r2, #0xc]
	ldrsh r7, [sp, #0x38]
	strh r0, [sl, #0x16]
	ldrsh r0, [r2, #0xe]
	strh r0, [sl, #0x18]
	ldrsh r0, [r2, #0x10]
	strh r0, [sl, #0x1a]
	ldrsh r0, [r2, #0x12]
	strh r0, [sl, #0x1c]
	b _020648D8
_0206484C:
	cmp r7, #0x18
	bge _020648E4
	ldr r6, [sp]
	mov r4, #0
	cmp r8, #0
	ble _020648D0
	b _020648C8
_02064868:
	cmp sb, #0
	bne _02064888
	ldrh r2, [fp], #2
	tst r2, #0xf000
	ldreq r0, _020648F8 ; =0x000003FF
	andeq sb, r2, r0
	moveq r2, #0
	b _0206488C
_02064888:
	mov r2, #0
_0206488C:
	cmp sb, #0
	subne sb, sb, #1
	cmp r6, #0
	blt _020648C0
	cmp r6, #0x20
	bge _020648C0
	cmp r7, #0
	blt _020648C0
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [sl, #8]
	add r1, sp, #8
	bl sub_0200B3FC
_020648C0:
	add r4, r4, #1
	add r6, r6, #1
_020648C8:
	cmp r4, r8
	blt _02064868
_020648D0:
	add r5, r5, #1
	add r7, r7, #1
_020648D8:
	ldr r0, [sp, #4]
	cmp r5, r0
	blt _0206484C
_020648E4:
	ldr r0, [sl, #8]
	bl sub_0200B330
	mov r0, #1
_020648F0:
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020648F8: .word 0x000003FF
	arm_func_end sub_0206478C

	arm_func_start sub_020648FC
sub_020648FC: ; 0x020648FC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x10]
	mov r6, r1
	mov r5, r2
	cmp r0, #0
	beq _02064930
	mov r2, r6
	mov r3, r5
	mov r1, #0xe0
	bl sub_0200A5B0
	ldr r0, [r7, #0x10]
	bl sub_0200A504
_02064930:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	b _02064960
_02064944:
	add r0, r4, #0xe0
	mov r1, r0, lsl #0x10
	ldr r0, [r7, #0xc]
	mov r1, r1, lsr #0x10
	add r2, r6, r4, lsl #2
	bl sub_0200A29C
	add r4, r4, #1
_02064960:
	cmp r4, r5
	blt _02064944
	ldr r0, [r7, #0xc]
	bl sub_0200A174
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020648FC

	arm_func_start sub_02064974
sub_02064974: ; 0x02064974
	stmdb sp!, {r4, lr}
	mov r2, #0x60
	smlabb r4, r1, r2, r0
	ldrb r0, [r4, #0x40]
	cmp r0, #0
	beq _0206499C
	mov r0, r4
	mov r1, r2
	bl MemZero
	ldmia sp!, {r4, pc}
_0206499C:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0x41]
	cmp r1, #2
	bne _020649CC
	bl MemFree
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x48]
	ldr r0, _020649EC ; =_020A46B0
	bl Debug_Print0
	b _020649DC
_020649CC:
	bl MemFree
	ldr r0, _020649F0 ; =_020A46D0
	mov r1, r4
	bl Debug_Print0
_020649DC:
	mov r0, r4
	mov r1, #0x60
	bl MemZero
	ldmia sp!, {r4, pc}
	.align 2, 0
_020649EC: .word _020A46B0
_020649F0: .word _020A46D0
	arm_func_end sub_02064974

	arm_func_start sub_020649F4
sub_020649F4: ; 0x020649F4
	stmdb sp!, {r3, r4, r5, lr}
	add r1, r0, #0x600
	mov lr, #1
	ldrsh r4, [r1, #2]
	ldrsh r5, [r1]
	mov ip, lr
	mov r3, #0x60
	b _02064A6C
_02064A14:
	cmp r4, r5
	movge r4, ip
	smlabb r1, r4, r3, r0
	ldr r1, [r1, #0x50]
	cmp r1, #0
	bne _02064A54
	add r1, r4, #1
	add r0, r0, #0x600
	strh r1, [r0, #2]
	ldrsh r2, [r0, #2]
	ldrsh r1, [r0]
	cmp r2, r1
	movge r1, #1
	strgeh r1, [r0, #2]
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
_02064A54:
	add r1, lr, #1
	add r2, r4, #1
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	mov lr, r1, asr #0x10
	mov r4, r2, asr #0x10
_02064A6C:
	cmp lr, r5
	blt _02064A14
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020649F4

	arm_func_start sub_02064A7C
sub_02064A7C: ; 0x02064A7C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	ldr r1, [r0, #0x50]
	add r0, sp, #0
	bl HandleSir0TranslationVeneer
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	strb r0, [r4]
	ldr r0, [sp]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_02064A7C

	arm_func_start sub_02064AB0
sub_02064AB0: ; 0x02064AB0
	stmdb sp!, {r4, lr}
	ldr r1, _02064AD8 ; =0x00000608
	mov r4, r0
	bl MemZero
	add r0, r4, #0x600
	mov r1, #1
	strh r1, [r0, #2]
	strb r1, [r4, #0x604]
	strh r1, [r0, #2]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02064AD8: .word 0x00000608
	arm_func_end sub_02064AB0

	arm_func_start sub_02064ADC
sub_02064ADC: ; 0x02064ADC
	stmdb sp!, {r4, lr}
	mov r1, #0x600
	mov r4, r0
	bl MemZero
	add r0, r4, #0x600
	mov r1, #0x10
	strh r1, [r0]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02064ADC

	arm_func_start sub_02064AFC
sub_02064AFC: ; 0x02064AFC
	add r0, r0, #0x600
	mov r1, #0
	strh r1, [r0]
	bx lr
	arm_func_end sub_02064AFC

	arm_func_start sub_02064B0C
sub_02064B0C: ; 0x02064B0C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	add r0, r5, #0x600
	mov r8, r1
	ldrsh r4, [r0]
	mov r7, r2
	mov r6, r3
	mov r0, #1
	mov r1, #0x60
	b _02064B64
_02064B38:
	smlabb r3, r0, r1, r5
	ldrb r2, [r3, #0x41]
	cmp r2, #2
	ldreq r2, [r3, #0x44]
	cmpeq r8, r2
	ldreq r2, [r3, #0x48]
	cmpeq r7, r2
	beq _02064B70
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
_02064B64:
	cmp r0, r4
	blt _02064B38
	mvn r0, #0
_02064B70:
	mvn r1, #0
	cmp r0, r1
	beq _02064B94
	mov r1, #0x60
	smlabb r2, r0, r1, r5
	ldrsh r1, [r2, #0x4c]
	add r1, r1, #1
	strh r1, [r2, #0x4c]
	b _02064C04
_02064B94:
	mov r0, r5
	bl sub_020649F4
	mov r4, r0
	mov r0, #0x60
	smlabb r5, r4, r0, r5
	mov r0, #2
	strb r0, [r5, #0x41]
	str r8, [r5, #0x44]
	mov r0, r8
	mov r1, r7
	mov r3, r6
	str r7, [r5, #0x48]
	add r2, r5, #0x50
	bl DirectoryFileMngr_OpenDirectoryFile
	ldrsh r2, [r5, #0x4c]
	add r1, sp, #0
	mov r0, r5
	add r2, r2, #1
	strh r2, [r5, #0x4c]
	bl sub_02064A7C
	ldrb r1, [sp]
	cmp r1, #0
	movne r1, #0
	strne r1, [r5, #0x58]
	streq r0, [r5, #0x58]
	moveq r0, #0
	str r0, [r5, #0x5c]
	mov r0, r4
_02064C04:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02064B0C

	arm_func_start sub_02064C0C
sub_02064C0C: ; 0x02064C0C
	ldr ip, _02064C14 ; =sub_02064974
	bx ip
	.align 2, 0
_02064C14: .word sub_02064974
	arm_func_end sub_02064C0C

	arm_func_start sub_02064C18
sub_02064C18: ; 0x02064C18
	str r1, [r0, #4]
	strh r2, [r0, #8]
	bx lr
	arm_func_end sub_02064C18

	arm_func_start sub_02064C24
sub_02064C24: ; 0x02064C24
	stmdb sp!, {r4, lr}
	mov lr, r1
	ldr ip, [lr, #0x10]
	ldr r1, [lr, #0x18]
	add ip, lr, ip
	mov r4, r0
	mla r0, r1, r3, ip
	ldr r1, [r4, #4]
	mov r3, #0
	add r1, r1, r2
	ldr r2, [lr, #0x14]
	bl sub_0201E050
	ldmia sp!, {r4, pc}
	arm_func_end sub_02064C24

	arm_func_start sub_02064C58
sub_02064C58: ; 0x02064C58
	strb r1, [r0, #0x16]
	bx lr
	arm_func_end sub_02064C58

	arm_func_start sub_02064C60
sub_02064C60: ; 0x02064C60
	ldr r0, [r1, #0xc]
	cmp r2, r0
	movhs r0, #0
	bxhs lr
	ldr ip, [r1, #8]
	mov r0, #0x2c
	add r1, r1, ip
	mla r0, r2, r0, r1
	ldrsh r1, [r0, #8]
	mov r0, #1
	str r1, [r3]
	bx lr
	arm_func_end sub_02064C60

	arm_func_start sub_02064C90
sub_02064C90: ; 0x02064C90
	stmdb sp!, {r3, lr}
	ldr r3, [r1, #0xc]
	cmp r2, r3
	movhs r0, #0
	ldmhsia sp!, {r3, pc}
	ldr ip, [r1, #8]
	mov r3, #0x2c
	add ip, r1, ip
	mla r3, r2, r3, ip
	ldrsh r3, [r3, #0x18]
	mov r2, #0
	bl sub_02064C24
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end sub_02064C90

	arm_func_start sub_02064CC8
sub_02064CC8: ; 0x02064CC8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x44
	ldr r4, [r1, #0xc]
	mov sl, r0
	cmp r2, r4
	movhs r0, #0
	bhs _02064F84
	ldr r0, [r1, #0x28]
	ldr r4, _02064F8C ; =_020AFC70
	ldr r6, [r1, #8]
	ldr r5, [sl, #4]
	ldr r7, [r4]
	str r5, [sp, #0x14]
	add r5, r1, r6
	mov r4, #0x2c
	mla r4, r2, r4, r5
	ldrsh r6, [sl, #8]
	ldr r7, [r7, #0xe0]
	add r0, r1, r0
	add r6, r7, r6, lsl #9
	str r6, [sp, #0x18]
	ldrsh r8, [r4, #0x18]
	add r7, sp, #0x1c
	mov r6, #4
	add r8, r0, r8, lsl #3
_02064D2C:
	ldrh r0, [r8], #2
	subs r6, r6, #1
	strh r0, [r7], #2
	bne _02064D2C
	ldrh r0, [r1, #4]
	ldr r8, _02064F90 ; =0x00007FFF
	mov r7, #0
	bic sb, r0, #0x1800
	mov r6, #0x39
	mov r0, #0x21
	strh sb, [sp, #0x24]
	strh r8, [sp, #0x36]
	strh r8, [sp, #0x38]
	strh r8, [sp, #0x3a]
	strh r8, [sp, #0x3c]
	strh r7, [sp, #0x3e]
	strh r6, [sp, #0x12]
	strb r7, [sp, #0x42]
	strb r0, [sp, #0x40]
	ldr r0, [r1, #0xc]
	sub r0, r0, #1
	cmp r2, r0
	bne _02064DA0
	ldrh r0, [r4, #0xa]
	mov r0, r0, asr #8
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #24
	add r1, r1, r0, ror #24
	b _02064DEC
_02064DA0:
	add r2, r2, #1
	mov r0, #0x2c
	mla r5, r2, r0, r5
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	beq _02064DEC
	ldrsh r1, [r5, #8]
	sub r0, r1, r3
	mov r0, r0, lsl #8
	mov r1, r1, lsl #8
	bl sub_02001AB0
	ldrh r5, [r5, #0xa]
	mov r1, r7
	bl MultiplyByFixedPoint
	add r0, r0, r5
	mov r0, r0, asr #8
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #24
	add r1, r1, r0, ror #24
_02064DEC:
	ldrsh r6, [sp, #0x20]
	and r0, r1, #0xf8
	mov r2, r0, asr #3
	mov r1, r6
	mov r0, #0x100
	strb r2, [sp, #0x41]
	ldrsh r7, [sp, #0x22]
	bl _s32_div_f
	cmp r1, #0
	movne r5, #1
	moveq r5, #0
	mov r1, r6
	mov r0, #0x100
	bl _s32_div_f
	add r0, r0, r5
	mov r2, r0, lsl #0x10
	mov r1, r7
	mov r0, #0xc0
	mov r5, r2, asr #0x10
	bl _s32_div_f
	add r2, r5, #1
	cmp r1, #0
	str r2, [sp]
	ldrsh r2, [sl, #0x14]
	movne sb, #1
	moveq sb, #0
	mov r1, r7
	mov r0, #0xc0
	ldrsh r5, [sl, #0x12]
	str r2, [sp, #4]
	mvn r8, #0
	bl _s32_div_f
	add r0, r0, sb
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	add fp, r0, #1
	b _02064F2C
_02064E80:
	ldr r0, [sp, #4]
	add r1, r8, #1
	mla r2, r8, r7, r0
	mla r1, r7, r1, r0
	mov r0, r2, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsl #0x10
	str r0, [sp, #8]
	mov r0, r1, asr #0x10
	mvn sb, #0
	str r0, [sp, #0xc]
	b _02064F14
_02064EB0:
	add r0, sb, #1
	mla r0, r6, r0, r5
	strh r0, [sp, #0x2a]
	mla r0, sb, r6, r5
	strh r0, [sp, #0x26]
	ldr r0, [sp, #8]
	ldrsh r1, [sp, #0x26]
	strh r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	ldrsh r2, [sp, #0x28]
	strh r0, [sp, #0x30]
	ldrb r0, [sp, #0x40]
	strh r2, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	ldrsh r2, [sp, #0x2a]
	ldrsh r1, [sp, #0x30]
	add r0, r0, #1
	strb r0, [sp, #0x40]
	add r0, sp, #0x10
	strh r2, [sp, #0x32]
	strh r1, [sp, #0x34]
	bl sub_01FF8CDC
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	mov sb, r0, asr #0x10
_02064F14:
	ldr r0, [sp]
	cmp sb, r0
	blt _02064EB0
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
_02064F2C:
	cmp r8, fp
	blt _02064E80
	ldrb r0, [sl, #0x16]
	cmp r0, #0
	bne _02064F80
	ldrsh r2, [sl, #0x12]
	ldrsh r0, [r4, #0x14]
	mov r1, r6
	add r0, r2, r0
	strh r0, [sl, #0x12]
	ldrsh r2, [sl, #0x14]
	ldrsh r0, [r4, #0x16]
	add r0, r2, r0
	strh r0, [sl, #0x14]
	ldrsh r0, [sl, #0x12]
	bl _s32_div_f
	strh r1, [sl, #0x12]
	ldrsh r0, [sl, #0x14]
	mov r1, r7
	bl _s32_div_f
	strh r1, [sl, #0x14]
_02064F80:
	mov r0, #1
_02064F84:
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02064F8C: .word _020AFC70
_02064F90: .word 0x00007FFF
	arm_func_end sub_02064CC8

	arm_func_start sub_02064F94
sub_02064F94: ; 0x02064F94
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #0
	ldr r4, _02064FE0 ; =_020AFC70
	b _02064FD4
_02064FB0:
	ldr r0, [r4]
	mov r3, r5, lsl #0x10
	ldrsh r2, [r8, #8]
	mov r1, r7
	add r0, r0, #0xcc
	mov r3, r3, asr #0x10
	bl sub_0201E380
	add r5, r5, #1
	add r7, r7, #4
_02064FD4:
	cmp r5, r6
	blt _02064FB0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02064FE0: .word _020AFC70
	arm_func_end sub_02064F94

	arm_func_start sub_02064FE4
sub_02064FE4: ; 0x02064FE4
	ldr r3, [r1, #0x20]
	ldr ip, _02064FF8 ; =sub_02064F94
	ldr r2, [r1, #0x24]
	add r1, r1, r3
	bx ip
	.align 2, 0
_02064FF8: .word sub_02064F94
	arm_func_end sub_02064FE4

	arm_func_start sub_02064FFC
sub_02064FFC: ; 0x02064FFC
	mov r1, #0xc
	smulbb r1, r0, r1
	ldr r0, _02065010 ; =_020A5490
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_02065010: .word _020A5490
	arm_func_end sub_02064FFC

	arm_func_start sub_02065014
sub_02065014: ; 0x02065014
	mvn r1, #0
	cmp r0, r1
	beq _02065044
	mov r1, #0xc
	smulbb r1, r0, r1
	ldr r0, _0206504C ; =EVENTS
	ldrsh r0, [r0, r1]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #8
	moveq r0, #0
	bxeq lr
_02065044:
	mov r0, #1
	bx lr
	.align 2, 0
_0206504C: .word EVENTS
	arm_func_end sub_02065014

	arm_func_start sub_02065050
sub_02065050: ; 0x02065050
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldrsh r0, [r5]
	mvn r4, #0
	cmp r0, #0x2e
	ldreq r0, _02065494 ; =_020B0B08
	ldreqsh r0, [r0, #0x18]
	streqh r0, [r5]
	beq _020650B0
	cmp r0, #0x2f
	ldreq r0, _02065494 ; =_020B0B08
	ldreqsh r0, [r0, #0x16]
	streqh r0, [r5]
	beq _020650B0
	cmp r0, #0x30
	ldreq r0, _02065494 ; =_020B0B08
	ldreqsh r0, [r0, #0x14]
	streqh r0, [r5]
	beq _020650B0
	cmp r0, #0x31
	ldreq r0, _02065494 ; =_020B0B08
	ldreqsh r0, [r0, #0x12]
	streqh r0, [r5]
_020650B0:
	ldrsh r2, [r5]
	mvn r0, #0
	cmp r2, r0
	beq _0206548C
	mov r0, #0xc
	smulbb r1, r2, r0
	ldr r0, _02065498 ; =ENTITIES
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _020651AC
	cmp r2, #0
	bne _020651A4
	mov r0, #0
	mov r1, #0x34
	bl LoadScriptVariableValue
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02065198
_020650F8: ; jump table
	b _0206511C ; case 0
	b _02065128 ; case 1
	b _02065198 ; case 2
	b _02065134 ; case 3
	b _02065180 ; case 4
	b _02065180 ; case 5
	b _02065180 ; case 6
	b _02065180 ; case 7
	b _02065180 ; case 8
_0206511C:
	mov r0, #1
	strh r0, [r5]
	b _020651A4
_02065128:
	mov r0, #2
	strh r0, [r5]
	b _020651A4
_02065134:
	bl sub_020568A4
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	moveq r0, #1
	streqh r0, [r5]
	beq _020651A4
	bl GetMainCharacter1MemberIdx
	cmp r4, r0
	moveq r0, #1
	streqh r0, [r5]
	beq _020651A4
	bl GetMainCharacter2MemberIdx
	cmp r4, r0
	moveq r0, #2
	streqh r0, [r5]
	movne r0, #4
	strneh r0, [r5]
	b _020651A4
_02065180:
	mov r0, #0
	mov r1, #0x34
	bl LoadScriptVariableValue
	add r0, r0, #1
	strh r0, [r5]
	b _020651A4
_02065198:
	mvn r0, #0
	strh r0, [r5]
	b _0206548C
_020651A4:
	mov r4, #0
	b _02065488
_020651AC:
	cmp r0, #2
	bne _02065330
	mov r0, #0
	mov r1, #0x35
	bl LoadScriptVariableValue
	mov r4, r0
	mov r0, #0
	mov r1, #0x36
	bl LoadScriptVariableValue
	ldrsh r2, [r5]
	sub r1, r2, #0xa
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r1, #1
	bhi _020652D0
	cmp r2, #0xa
	bne _02065204
	cmp r4, #0
	moveq r4, r0
	b _02065210
_02065204:
	cmp r4, #0
	moveq r0, #0
	mov r4, r0
_02065210:
	cmp r4, #0xa
	addls pc, pc, r4, lsl #2
	b _020652C4
_0206521C: ; jump table
	b _020652C4 ; case 0
	b _02065248 ; case 1
	b _02065254 ; case 2
	b _020652C4 ; case 3
	b _02065260 ; case 4
	b _020652AC ; case 5
	b _020652AC ; case 6
	b _020652AC ; case 7
	b _020652AC ; case 8
	b _020652AC ; case 9
	b _020652B8 ; case 10
_02065248:
	mov r0, #0xc
	strh r0, [r5]
	b _020652D0
_02065254:
	mov r0, #0xd
	strh r0, [r5]
	b _020652D0
_02065260:
	bl sub_020568A4
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	moveq r0, #0xc
	streqh r0, [r5]
	beq _020652D0
	bl GetMainCharacter1MemberIdx
	cmp r4, r0
	moveq r0, #0xc
	streqh r0, [r5]
	beq _020652D0
	bl GetMainCharacter2MemberIdx
	cmp r4, r0
	moveq r0, #0xd
	streqh r0, [r5]
	movne r0, #0xf
	strneh r0, [r5]
	b _020652D0
_020652AC:
	add r0, r4, #0xb
	strh r0, [r5]
	b _020652D0
_020652B8:
	mov r0, #0x15
	strh r0, [r5]
	b _020652D0
_020652C4:
	mvn r0, #0
	strh r0, [r5]
	b _0206548C
_020652D0:
	ldrsh r0, [r5]
	sub r0, r0, #0xc
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02065324
_020652E4: ; jump table
	b _0206530C ; case 0
	b _02065314 ; case 1
	b _02065324 ; case 2
	b _0206531C ; case 3
	b _02065324 ; case 4
	b _02065324 ; case 5
	b _02065324 ; case 6
	b _02065324 ; case 7
	b _02065324 ; case 8
	b _0206531C ; case 9
_0206530C:
	mov r4, #2
	b _02065488
_02065314:
	mov r4, #1
	b _02065488
_0206531C:
	mov r4, #2
	b _02065488
_02065324:
	mvn r0, #0
	strh r0, [r5]
	b _0206548C
_02065330:
	cmp r0, #3
	bne _02065420
	cmp r2, #0x16
	blt _020653A8
	cmp r2, #0x19
	bgt _020653A8
	mov r0, #0xd
	sub r4, r2, #0x16
	bl OverlayIsLoaded
	cmp r0, #0
	beq _0206536C
	bl ov11_022E96E4
	cmp r0, #0
	mvnne r0, #0
	bne _0206548C
_0206536C:
	mov r0, #5
	bl Debug_GetDebugFlag
	cmp r0, #0
	beq _02065390
	ldrsh r0, [r5]
	cmp r0, #0x17
	bgt _02065414
	mvn r0, #0
	b _0206548C
_02065390:
	add r0, sp, #8
	bl sub_02056E04
	cmp r4, r0
	bge _02065414
	mvn r0, #0
	b _0206548C
_020653A8:
	cmp r2, #0x1a
	blt _02065414
	cmp r2, #0x1d
	bgt _02065414
	mov r0, #0xd
	sub r4, r2, #0x1a
	bl OverlayIsLoaded
	cmp r0, #0
	beq _020653DC
	bl ov11_022E96E4
	cmp r0, #0
	mvnne r0, #0
	bne _0206548C
_020653DC:
	mov r0, #5
	bl Debug_GetDebugFlag
	cmp r0, #0
	beq _02065400
	ldrsh r0, [r5]
	cmp r0, #0x1c
	bgt _02065414
	mvn r0, #0
	b _0206548C
_02065400:
	add r0, sp, #0
	bl sub_02056D70
	cmp r4, r0
	mvnlt r0, #0
	blt _0206548C
_02065414:
	mvn r0, #0
	strh r0, [r5]
	b _0206548C
_02065420:
	bl sub_020568A4
	ldrsh r1, [r5]
	mov r6, r0
	cmp r1, #0x3f
	bne _02065488
	mvn r1, #0
	cmp r6, r1
	moveq r0, #0x3c
	streqh r0, [r5]
	beq _02065488
	bl sub_02055410
	cmp r0, #0
	movne r0, #0x3c
	strneh r0, [r5]
	bne _02065488
	mov r0, r6
	bl sub_02055474
	cmp r0, #0
	movne r0, #0x3d
	strneh r0, [r5]
	bne _02065488
	mov r0, r6
	bl sub_020554D8
	cmp r0, #0
	movne r0, #0x3e
	strneh r0, [r5]
_02065488:
	mov r0, r4
_0206548C:
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02065494: .word _020B0B08
_02065498: .word ENTITIES
	arm_func_end sub_02065050

	arm_func_start sub_0206549C
sub_0206549C: ; 0x0206549C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	mov r5, r1
	bl sub_02065050
	mov r4, r0
	mov r0, #0
	strh r0, [r5]
	ldrsh lr, [r6]
	sub r1, r0, #1
	cmp lr, r1
	subeq r0, r0, #1
	beq _0206595C
	mov r1, #0xc
	smulbb r3, lr, r1
	ldr ip, _02065964 ; =ENTITIES
	ldrsh r2, [ip, r3]
	add r3, ip, r3
	cmp r2, #3
	bne _020656B4
	cmp lr, #0x16
	blt _020655BC
	cmp lr, #0x19
	bgt _020655BC
	mov r0, #0xd
	sub r4, lr, #0x16
	bl OverlayIsLoaded
	cmp r0, #0
	beq _02065540
	bl ov11_022E96E4
	cmp r0, #0
	beq _02065540
	ldr r0, _02065968 ; =ARM9_UNKNOWN_TABLE__NA_20A68BC
	mov r1, r4, lsl #1
	ldrsh r0, [r0, r1]
	strh r0, [r5]
	cmp r0, #0
	mvneq r0, #0
	streqh r0, [r6]
	mvn r0, #0
	b _0206595C
_02065540:
	mov r0, #5
	bl Debug_GetDebugFlag
	cmp r0, #0
	beq _02065580
	ldrsh r0, [r6]
	cmp r0, #0x16
	moveq r0, #0x5f
	streqh r0, [r5]
	subeq r0, r0, #0x60
	beq _0206595C
	cmp r0, #0x17
	bne _020656A8
	mov r0, #0x22
	strh r0, [r5]
	sub r0, r0, #0x23
	b _0206595C
_02065580:
	add r0, sp, #8
	bl sub_02056E04
	cmp r4, r0
	bge _020656A8
	ldr r0, _0206596C ; =TEAM_MEMBER_TABLE_PTR
	add r1, sp, #8
	mov r2, r4, lsl #1
	ldrsh r2, [r1, r2]
	ldr r3, [r0]
	mov r1, #0x44
	sub r0, r1, #0x45
	smlabb r1, r2, r1, r3
	ldrsh r1, [r1, #4]
	strh r1, [r5]
	b _0206595C
_020655BC:
	cmp lr, #0x1a
	blt _020656A8
	cmp lr, #0x1d
	bgt _020656A8
	mov r0, #0xd
	sub r4, lr, #0x1a
	bl OverlayIsLoaded
	cmp r0, #0
	beq _02065610
	bl ov11_022E96E4
	cmp r0, #0
	beq _02065610
	ldr r0, _02065968 ; =ARM9_UNKNOWN_TABLE__NA_20A68BC
	mov r1, r4, lsl #1
	ldrsh r0, [r0, r1]
	strh r0, [r5]
	cmp r0, #0
	mvneq r0, #0
	streqh r0, [r6]
	mvn r0, #0
	b _0206595C
_02065610:
	mov r0, #5
	bl Debug_GetDebugFlag
	cmp r0, #0
	beq _0206566C
	ldrsh r0, [r6]
	cmp r0, #0x1a
	bne _02065640
	bl GetPartner
	ldrsh r1, [r0, #4]
	mvn r0, #0
	strh r1, [r5]
	b _0206595C
_02065640:
	cmp r0, #0x1b
	moveq r0, #0x5f
	streqh r0, [r5]
	subeq r0, r0, #0x60
	beq _0206595C
	cmp r0, #0x1c
	bne _020656A8
	mov r0, #0x22
	strh r0, [r5]
	sub r0, r0, #0x23
	b _0206595C
_0206566C:
	add r0, sp, #0
	bl sub_02056D70
	cmp r4, r0
	bge _020656A8
	ldr r0, _0206596C ; =TEAM_MEMBER_TABLE_PTR
	add r1, sp, #0
	mov r2, r4, lsl #1
	ldrsh r2, [r1, r2]
	ldr r3, [r0]
	mov r1, #0x44
	sub r0, r1, #0x45
	smlabb r1, r2, r1, r3
	ldrsh r1, [r1, #4]
	strh r1, [r5]
	b _0206595C
_020656A8:
	mvn r0, #0
	strh r0, [r6]
	b _0206595C
_020656B4:
	cmp lr, #0x35
	bgt _02065734
	bge _020658A0
	cmp lr, #0x32
	bgt _02065718
	bge _02065860
	cmp lr, #0xf
	addls pc, pc, lr, lsl #2
	b _02065948
_020656D8: ; jump table
	b _02065948 ; case 0
	b _02065798 ; case 1
	b _020657A8 ; case 2
	b _020657B8 ; case 3
	b _020657C8 ; case 4
	b _02065948 ; case 5
	b _02065948 ; case 6
	b _02065948 ; case 7
	b _02065948 ; case 8
	b _02065948 ; case 9
	b _02065948 ; case 10
	b _02065948 ; case 11
	b _02065798 ; case 12
	b _020657A8 ; case 13
	b _020657B8 ; case 14
	b _020657C8 ; case 15
_02065718:
	cmp lr, #0x33
	bgt _02065728
	beq _02065880
	b _02065948
_02065728:
	cmp lr, #0x34
	beq _02065920
	b _02065948
_02065734:
	cmp lr, #0x37
	bgt _0206574C
	bge _020658E0
	cmp lr, #0x36
	beq _020658C0
	b _02065948
_0206574C:
	cmp lr, #0x38
	bgt _0206575C
	beq _02065900
	b _02065948
_0206575C:
	sub r2, lr, #0x39
	cmp r2, #0xa
	addls pc, pc, r2, lsl #2
	b _02065948
_0206576C: ; jump table
	b _02065840 ; case 0
	b _02065818 ; case 1
	b _0206582C ; case 2
	b _02065798 ; case 3
	b _020657A8 ; case 4
	b _020657B8 ; case 5
	b _020657C8 ; case 6
	b _020657D8 ; case 7
	b _020657E8 ; case 8
	b _020657F8 ; case 9
	b _02065808 ; case 10
_02065798:
	bl GetMainCharacter1
	ldrsh r0, [r0, #4]
	strh r0, [r5]
	b _02065958
_020657A8:
	bl GetMainCharacter2
	ldrsh r0, [r0, #4]
	strh r0, [r5]
	b _02065958
_020657B8:
	bl GetMainCharacter3
	ldrsh r0, [r0, #4]
	strh r0, [r5]
	b _02065958
_020657C8:
	bl sub_02056914
	ldrsh r0, [r0, #4]
	strh r0, [r5]
	b _02065958
_020657D8:
	bl GetHero
	ldrsh r0, [r0, #4]
	strh r0, [r5]
	b _02065958
_020657E8:
	bl GetPartner
	ldrsh r0, [r0, #4]
	strh r0, [r5]
	b _02065958
_020657F8:
	mov r1, #0x3e
	bl LoadScriptVariableValue
	strh r0, [r5]
	b _02065958
_02065808:
	mov r1, #0x40
	bl LoadScriptVariableValue
	strh r0, [r5]
	b _02065958
_02065818:
	ldr r2, _02065970 ; =_020B0B08
	sub r0, r1, #0xd
	ldrsh r1, [r2, #0xa]
	strh r1, [r5]
	b _0206595C
_0206582C:
	ldr r2, _02065970 ; =_020B0B08
	sub r0, r1, #0xd
	ldrsh r1, [r2, #4]
	strh r1, [r5]
	b _0206595C
_02065840:
	ldr r0, _02065970 ; =_020B0B08
	ldrsh r0, [r0, #0xc]
	cmp r0, #0
	strneh r0, [r5]
	subeq r0, r1, #0xd
	streqh r0, [r6]
	mvn r0, #0
	b _0206595C
_02065860:
	ldr r0, _02065970 ; =_020B0B08
	ldrsh r0, [r0, #0x10]
	strh r0, [r5]
	cmp r0, #0
	subeq r0, r1, #0xd
	streqh r0, [r6]
	mvn r0, #0
	b _0206595C
_02065880:
	ldr r0, _02065970 ; =_020B0B08
	ldrsh r0, [r0, #0xe]
	strh r0, [r5]
	cmp r0, #0
	mvneq r0, #0
	streqh r0, [r6]
	mvn r0, #0
	b _0206595C
_020658A0:
	ldr r0, _02065970 ; =_020B0B08
	ldrsh r0, [r0, #2]
	strh r0, [r5]
	cmp r0, #0
	subeq r0, r1, #0xd
	streqh r0, [r6]
	mvn r0, #0
	b _0206595C
_020658C0:
	ldr r0, _02065970 ; =_020B0B08
	ldrsh r0, [r0]
	strh r0, [r5]
	cmp r0, #0
	subeq r0, r1, #0xd
	streqh r0, [r6]
	mvn r0, #0
	b _0206595C
_020658E0:
	ldr r0, _02065970 ; =_020B0B08
	ldrsh r0, [r0, #8]
	strh r0, [r5]
	cmp r0, #0
	subeq r0, r1, #0xd
	streqh r0, [r6]
	mvn r0, #0
	b _0206595C
_02065900:
	ldr r0, _02065970 ; =_020B0B08
	ldrsh r0, [r0, #6]
	strh r0, [r5]
	cmp r0, #0
	subeq r0, r1, #0xd
	streqh r0, [r6]
	mvn r0, #0
	b _0206595C
_02065920:
	mov r0, #0
	mov r1, #0x44
	bl LoadScriptVariableValue
	strh r0, [r5]
	ldrsh r0, [r5]
	cmp r0, #0
	mvneq r0, #0
	streqh r0, [r6]
	mvn r0, #0
	b _0206595C
_02065948:
	ldrsh r0, [r5]
	cmp r0, #0
	ldreqsh r0, [r3, #2]
	streqh r0, [r5]
_02065958:
	mov r0, r4
_0206595C:
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02065964: .word ENTITIES
_02065968: .word ARM9_UNKNOWN_TABLE__NA_20A68BC
_0206596C: .word TEAM_MEMBER_TABLE_PTR
_02065970: .word _020B0B08
	arm_func_end sub_0206549C

	arm_func_start sub_02065974
sub_02065974: ; 0x02065974
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	add r0, sp, #8
	add r1, sp, #0
	bl sub_0206549C
	ldrsh r0, [sp]
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02065974

	arm_func_start GetActorMatchingStorageId
GetActorMatchingStorageId: ; 0x02065998
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	add r0, sp, #0x18
	bl sub_02065050
	ldrsh r1, [sp, #0x18]
	cmp r1, #1
	cmpne r1, #0xc
	cmpne r1, #0x3c
	bne _020659C8
	bl GetMainCharacter1MemberIdx
	b _02065B04
_020659C8:
	cmp r1, #2
	cmpne r1, #0xd
	cmpne r1, #0x3d
	bne _020659E0
	bl GetMainCharacter2MemberIdx
	b _02065B04
_020659E0:
	cmp r1, #3
	cmpne r1, #0xe
	cmpne r1, #0x3e
	bne _020659F8
	bl GetMainCharacter3MemberIdx
	b _02065B04
_020659F8:
	cmp r1, #4
	cmpne r1, #0xf
	cmpne r1, #0x3f
	bne _02065A10
	bl sub_020568A4
	b _02065B04
_02065A10:
	cmp r1, #0x40
	bne _02065A20
	bl GetHeroMemberIdx
	b _02065B04
_02065A20:
	cmp r1, #0x41
	bne _02065A30
	bl GetPartnerMemberIdx
	b _02065B04
_02065A30:
	cmp r1, #0x16
	blt _02065A84
	cmp r1, #0x19
	bgt _02065A84
	mov r0, #0xd
	sub r4, r1, #0x16
	bl OverlayIsLoaded
	cmp r0, #0
	beq _02065A64
	bl ov11_022E96E4
	cmp r0, #0
	mvnne r0, #0
	bne _02065B04
_02065A64:
	add r0, sp, #8
	bl sub_02056E04
	cmp r4, r0
	bge _02065B00
	add r0, sp, #8
	mov r1, r4, lsl #1
	ldrsh r0, [r0, r1]
	b _02065B04
_02065A84:
	cmp r1, #0x1a
	blt _02065AD8
	cmp r1, #0x1d
	bgt _02065AD8
	mov r0, #0xd
	sub r4, r1, #0x1a
	bl OverlayIsLoaded
	cmp r0, #0
	beq _02065AB8
	bl ov11_022E96E4
	cmp r0, #0
	mvnne r0, #0
	bne _02065B04
_02065AB8:
	add r0, sp, #0
	bl sub_02056D70
	cmp r4, r0
	bge _02065B00
	add r0, sp, #0
	mov r1, r4, lsl #1
	ldrsh r0, [r0, r1]
	b _02065B04
_02065AD8:
	cmp r1, #0x1e
	blt _02065AE8
	cmp r1, #0x2d
	ble _02065B00
_02065AE8:
	cmp r1, #0x99
	bne _02065B00
	mov r0, #0x214
	mov r1, #0
	bl sub_020555D0
	b _02065B04
_02065B00:
	mvn r0, #0
_02065B04:
	add sp, sp, #0x10
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end GetActorMatchingStorageId

	arm_func_start sub_02065B14
sub_02065B14: ; 0x02065B14
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	bxeq lr
	ldr r2, _02065B38 ; =ENTITIES
	mov r1, #0xc
	smlabb r0, r0, r1, r2
	ldrh r0, [r0, #8]
	bx lr
	.align 2, 0
_02065B38: .word ENTITIES
	arm_func_end sub_02065B14

	arm_func_start SetActorTalkMainAndActorTalkSub
SetActorTalkMainAndActorTalkSub: ; 0x02065B3C
	ldr r2, _02065B4C ; =_020B0B08
	strh r0, [r2, #0x18]
	strh r1, [r2, #0x16]
	bx lr
	.align 2, 0
_02065B4C: .word _020B0B08
	arm_func_end SetActorTalkMainAndActorTalkSub

	arm_func_start SetActorTalkMain
SetActorTalkMain: ; 0x02065B50
	ldr r1, _02065B5C ; =_020B0B08
	strh r0, [r1, #0x18]
	bx lr
	.align 2, 0
_02065B5C: .word _020B0B08
	arm_func_end SetActorTalkMain

	arm_func_start SetActorTalkSub
SetActorTalkSub: ; 0x02065B60
	ldr r1, _02065B6C ; =_020B0B08
	strh r0, [r1, #0x16]
	bx lr
	.align 2, 0
_02065B6C: .word _020B0B08
	arm_func_end SetActorTalkSub

	arm_func_start sub_02065B70
sub_02065B70: ; 0x02065B70
	ldr r1, _02065B7C ; =_020B0B08
	strh r0, [r1, #0x14]
	bx lr
	.align 2, 0
_02065B7C: .word _020B0B08
	arm_func_end sub_02065B70

	arm_func_start sub_02065B80
sub_02065B80: ; 0x02065B80
	ldr r2, _02065B90 ; =_020B0B08
	strh r0, [r2, #0x10]
	strh r1, [r2, #0xe]
	bx lr
	.align 2, 0
_02065B90: .word _020B0B08
	arm_func_end sub_02065B80

	arm_func_start sub_02065B94
sub_02065B94: ; 0x02065B94
	ldr ip, _02065BA8 ; =SaveScriptVariableValue
	mov r2, r0
	mov r0, #0
	mov r1, #0x44
	bx ip
	.align 2, 0
_02065BA8: .word SaveScriptVariableValue
	arm_func_end sub_02065B94

	arm_func_start sub_02065BAC
sub_02065BAC: ; 0x02065BAC
	ldr ip, _02065BC4 ; =_020B0B08
	strh r0, [ip, #2]
	strh r1, [ip]
	strh r2, [ip, #8]
	strh r3, [ip, #6]
	bx lr
	.align 2, 0
_02065BC4: .word _020B0B08
	arm_func_end sub_02065BAC

	arm_func_start sub_02065BC8
sub_02065BC8: ; 0x02065BC8
	ldr r1, _02065BD4 ; =_020B0B08
	strh r0, [r1, #0xc]
	bx lr
	.align 2, 0
_02065BD4: .word _020B0B08
	arm_func_end sub_02065BC8

	arm_func_start sub_02065BD8
sub_02065BD8: ; 0x02065BD8
	ldr ip, _02065BE8 ; =StrncpySimple
	mov r2, r1
	ldr r1, _02065BEC ; =_022B7310
	bx ip
	.align 2, 0
_02065BE8: .word StrncpySimple
_02065BEC: .word _022B7310
	arm_func_end sub_02065BD8

	arm_func_start sub_02065BF0
sub_02065BF0: ; 0x02065BF0
	ldr ip, _02065C00 ; =StrncpySimpleNoPadSafe
	ldr r1, _02065C04 ; =_022B7310
	mov r2, #0xa
	bx ip
	.align 2, 0
_02065C00: .word StrncpySimpleNoPadSafe
_02065C04: .word _022B7310
	arm_func_end sub_02065BF0

	arm_func_start sub_02065C08
sub_02065C08: ; 0x02065C08
	ldr ip, _02065C44 ; =_022B7310
	mov r3, #0
	b _02065C20
_02065C14:
	ldrb r2, [r0], #1
	add r3, r3, #1
	strb r2, [ip], #1
_02065C20:
	cmp r3, r1
	blt _02065C14
	mov r0, #0
	b _02065C38
_02065C30:
	strb r0, [ip], #1
	add r3, r3, #1
_02065C38:
	cmp r3, #0x10
	blt _02065C30
	bx lr
	.align 2, 0
_02065C44: .word _022B7310
	arm_func_end sub_02065C08

	arm_func_start RandomizeDemoActors
RandomizeDemoActors: ; 0x02065C48
	stmdb sp!, {r3, lr}
	mov r0, #0x12
	bl RandInt
	ldr r2, _02065C78 ; =DEMO_TEAMS
	mov r3, r0, lsl #2
	ldr r1, _02065C7C ; =_020A68CA
	ldrsh r2, [r2, r3]
	ldr r0, _02065C80 ; =_020B0B08
	ldrsh r1, [r1, r3]
	strh r2, [r0, #0xa]
	strh r1, [r0, #4]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02065C78: .word DEMO_TEAMS
_02065C7C: .word _020A68CA
_02065C80: .word _020B0B08
	arm_func_end RandomizeDemoActors

	arm_func_start sub_02065C84
sub_02065C84: ; 0x02065C84
	mov r2, #0
	ldr r1, _02065CAC ; =_022B7320
	mov r0, r2
_02065C90:
	strh r0, [r1]
	add r2, r2, #1
	strh r0, [r1, #2]
	cmp r2, #4
	add r1, r1, #4
	blt _02065C90
	bx lr
	.align 2, 0
_02065CAC: .word _022B7320
	arm_func_end sub_02065C84

	arm_func_start sub_02065CB0
sub_02065CB0: ; 0x02065CB0
	bx lr
	arm_func_end sub_02065CB0

	arm_func_start sub_02065CB4
sub_02065CB4: ; 0x02065CB4
	ldrh r2, [r1]
	ldr r3, _02065CD4 ; =_022B7320
	mov ip, r0, lsl #2
	strh r2, [r3, ip]
	ldrh r1, [r1, #2]
	add r0, r3, r0, lsl #2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_02065CD4: .word _022B7320
	arm_func_end sub_02065CB4

	arm_func_start sub_02065CD8
sub_02065CD8: ; 0x02065CD8
	ldr r2, _02065CF0 ; =_022B7320
	mov r3, r0
	mov r0, r1
	ldr ip, _02065CF4 ; =BulkItemToItem
	add r1, r2, r3, lsl #2
	bx ip
	.align 2, 0
_02065CF0: .word _022B7320
_02065CF4: .word BulkItemToItem
	arm_func_end sub_02065CD8

	arm_func_start ItemAtTableIdx
ItemAtTableIdx: ; 0x02065CF8
	ldr r3, _02065D18 ; =_022B7320
	mov r2, r0, lsl #2
	ldrh r2, [r3, r2]
	add r0, r3, r0, lsl #2
	strh r2, [r1]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_02065D18: .word _022B7320
	arm_func_end ItemAtTableIdx

	arm_func_start MainLoop
MainLoop: ; 0x02065D1C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	bl sub_020024A0
	mov r7, r0
	mov r8, #1
	bl sub_02065C84
	bl sub_020205E4
	bl LoadTblTalk
	bl sub_0201DD90
	bl sub_0201BB3C
	bl sub_0201D7A8
	ldr r0, _02066374 ; =WAN_TABLE
	mov r1, #0x80
	ldr r0, [r0]
	bl InitWanTable
	bl sub_0201F208
	bl DirectoryFileMngr_ExtractAllDirectoryFiles
	bl sub_0204AB18
	bl InitKaomadoStream
	bl sub_02025AD8
	bl sub_02026E78
	bl sub_020346C0
	mov r0, #0
	bl sub_0204B018
	mov r0, #2
	bl SetBothScreensWindowsColor
	bl sub_0204A1A4
	bl sub_02048420
	bl KeyWaitInit
	add r0, sp, #4
	bl ReadSaveHeader
#ifdef EUROPE
	mov r4, r0
	bl sub_020205F8
	cmp r4, #1
#else
	cmp r0, #1
#endif
	bne _02065DF0
	mov r0, #2
	bl LoadOverlay
	mov r0, #0xf
	bl LoadOverlay
	mov r0, r8
	bl ExplorersOfSkyMain
	mov r0, #0xf
	bl UnloadOverlay
	mov r0, #2
	bl UnloadOverlay
	mov r0, #2
	bl LoadOverlay
	mov r0, #0xf
	bl LoadOverlay
	mov r0, #4
	bl ExplorersOfSkyMain
	mov r0, #0xf
	bl UnloadOverlay
	mov r0, #2
	bl UnloadOverlay
_02065DF0:
	cmp r7, #0
	cmpne r7, #5
	mov r0, #2
	bne _02065E2C
	mov r4, #1
	bl LoadOverlay
	mov r0, #0xf
	bl LoadOverlay
	mov r0, #2
	bl ExplorersOfSkyMain
	mov r0, #0xf
	bl UnloadOverlay
	mov r0, #2
	bl UnloadOverlay
	b _02065E54
_02065E2C:
	mov r4, #0
	bl LoadOverlay
	mov r0, #0xf
	bl LoadOverlay
	mov r0, #1
	bl ExplorersOfSkyMain
	mov r0, #0xf
	bl UnloadOverlay
	mov r0, #2
	bl UnloadOverlay
_02065E54:
	bl SetAdventureLogStructLocation
	bl sub_0204F9B8
	bl GlobalProgressAlloc
	bl sub_02052C3C
	bl LoadWazaP
	bl sub_0200CA8C
	bl sub_0205C73C
	bl sub_0205B44C
	bl KeyWaitInit
	bl InitScriptVariableValues
	cmp r4, #0
	beq _02065EE0
	mov r0, #2
	bl LoadOverlay
	mov r0, #0xf
	bl LoadOverlay
	mov r0, #3
	bl ExplorersOfSkyMain
	mov r0, #0xf
	bl UnloadOverlay
	mov r0, #2
	bl UnloadOverlay
	mov r0, #0
	mov r1, #0x5c
	bl ZinitScriptVariable
	mov r0, #2
	bl LoadOverlay
	mov r0, #0xd
	bl LoadOverlay
	mov r0, #0
	bl ov11_022E82CC
	mov r0, #0xd
	bl UnloadOverlay
	mov r0, #2
	bl UnloadOverlay
_02065EE0:
	mov r0, #1
	bl LoadOverlay
	mov r0, #4
	bl LoadOverlay
	mov r0, #4
	bl ov00_022BE0C8
	mov r0, #4
	bl UnloadOverlay
	mov r0, #1
	bl UnloadOverlay
	bl sub_02048430
	mov r4, #0xf
	mov r5, #2
	mov sl, #4
	mov fp, r4
	mov r6, #0
_02065F20:
	mov r0, r6
	bl sub_0204B018
	bl sub_02048624
	cmp r8, #0
	beq _02065FE0
	bl NoteLoadBase
	movs sb, r0
	beq _02065FCC
	cmp sb, #1
	bne _02065F70
	mov r0, r5
	bl LoadOverlay
	mov r0, r4
	bl LoadOverlay
	mov r0, sl
	bl ExplorersOfSkyMain
	mov r0, fp
	bl UnloadOverlay
	mov r0, #2
	bl UnloadOverlay
_02065F70:
	mov r0, #1
	bl LoadOverlay
	mov r0, #4
	bl LoadOverlay
	mov r0, #3
	bl ov00_022BE0C8
	mov r0, #4
	bl UnloadOverlay
	mov r0, #1
	bl UnloadOverlay
	bl sub_02048454
	cmp sb, #5
	beq _02065FCC
	mov r0, #2
	bl LoadOverlay
	mov r0, #0xf
	bl LoadOverlay
	mov r0, #6
	bl ExplorersOfSkyMain
	mov r0, #0xf
	bl UnloadOverlay
	mov r0, #2
	bl UnloadOverlay
_02065FCC:
	add r0, sp, #0
	bl sub_0204AF98
	ldrb r0, [sp]
	bl sub_02027180
	bl sub_020205F8
_02065FE0:
	sub r0, r7, #6
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _020660B0
_02065FF0: ; jump table
	b _02066030 ; case 0
	b _02066040 ; case 1
	b _02066038 ; case 2
	b _02066048 ; case 3
	b _02066050 ; case 4
	b _02066058 ; case 5
	b _02066060 ; case 6
	b _02066068 ; case 7
	b _02066070 ; case 8
	b _02066078 ; case 9
	b _02066080 ; case 10
	b _02066088 ; case 11
	b _02066090 ; case 12
	b _02066098 ; case 13
	b _020660A0 ; case 14
	b _020660A8 ; case 15
_02066030:
	mov sb, #4
	b _020660FC
_02066038:
	mov sb, #6
	b _020660FC
_02066040:
	mov sb, #5
	b _020660FC
_02066048:
	mov sb, #7
	b _020660FC
_02066050:
	mov sb, #9
	b _020660FC
_02066058:
	mov sb, #0xa
	b _020660FC
_02066060:
	mov sb, #0xb
	b _020660FC
_02066068:
	mov sb, #0xc
	b _020660FC
_02066070:
	mov sb, #0xd
	b _020660FC
_02066078:
	mov sb, #0xe
	b _020660FC
_02066080:
	mov sb, #0xf
	b _020660FC
_02066088:
	mov sb, #0x10
	b _020660FC
_02066090:
	mov sb, #0x10
	b _020660FC
_02066098:
	mov sb, #0x12
	b _020660FC
_020660A0:
	mov sb, #0x13
	b _020660FC
_020660A8:
	mov sb, #0x14
	b _020660FC
_020660B0:
	cmp r7, #2
	moveq r7, #1
	beq _020660C8
	cmp r7, #3
	moveq r7, #2
	movne r7, #0
_020660C8:
	mov r0, #0
	bl sub_0204B018
	mov r0, #1
	bl LoadOverlay
	mov r0, #4
	bl LoadOverlay
	mov r0, r7
	bl ov00_022BE0C8
	mov sb, r0
	mov r0, #4
	bl UnloadOverlay
	mov r0, #1
	bl UnloadOverlay
_020660FC:
	cmp sb, #6
	mov r7, #1
	bne _02066134
	mov r0, r7
	mov r1, #0
	bl GetSosMailCount
	cmp r0, #0
	movne sb, #0xa
	bne _02066134
	mov r0, #7
	mov r1, #0
	bl GetSosMailCount
	cmp r0, #0
	movne sb, #9
_02066134:
	bl GetSpecialEpisodeType
	mov r1, r0
	ldr r0, _02066378 ; =_020A9208
	bl Debug_Print0
	sub r0, sb, #4
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02065F20
_02066154: ; jump table
	b _0206617C ; case 0
	b _020661B0 ; case 1
	b _020661FC ; case 2
	b _0206622C ; case 3
	b _02065F20 ; case 4
	b _0206625C ; case 5
	b _0206628C ; case 6
	b _020662BC ; case 7
	b _02066300 ; case 8
	b _02066330 ; case 9
_0206617C:
	mov r0, #2
	bl sub_0204B018
	bl sub_020484C0
	bl sub_02048644
	mov r0, #2
	bl LoadOverlay
	mov r0, #0
	bl MainGame
	mov r8, r0
	mov r0, #2
	bl UnloadOverlay
	bl sub_0204872C
	b _02065F20
_020661B0:
	bl sub_0204C918
	bl sub_0204C900
	mov r0, #3
	bl sub_0204B018
	bl sub_02048644
	bl InitSpecialEpisodeHero
	mov r0, #2
	mov r1, #0x36
	mov r2, #0
	bl SetScenarioScriptVar
	mov r0, #2
	bl LoadOverlay
	mov r0, #0
	bl MainGame
	mov r8, r0
	mov r0, #2
	bl UnloadOverlay
	bl sub_0204872C
	b _02065F20
_020661FC:
	mov r0, #2
	bl sub_0204B018
	bl sub_02048644
	mov r0, #2
	bl LoadOverlay
	mov r0, #1
	bl MainGame
	mov r8, r0
	mov r0, #2
	bl UnloadOverlay
	bl sub_0204872C
	b _02065F20
_0206622C:
	mov r0, #3
	bl sub_0204B018
	bl sub_02048644
	mov r0, #2
	bl LoadOverlay
	mov r0, #1
	bl MainGame
	mov r8, r0
	mov r0, #2
	bl UnloadOverlay
	bl sub_0204872C
	b _02065F20
_0206625C:
	mov r0, #2
	bl sub_0204B018
	bl sub_02048644
	mov r0, #2
	bl LoadOverlay
	mov r0, #2
	bl MainGame
	mov r8, r0
	mov r0, #2
	bl UnloadOverlay
	bl sub_0204872C
	b _02065F20
_0206628C:
	mov r0, #2
	bl sub_0204B018
	bl sub_02048644
	mov r0, #2
	bl LoadOverlay
	mov r0, #3
	bl MainGame
	mov r8, r0
	mov r0, #2
	bl UnloadOverlay
	bl sub_0204872C
	b _02065F20
_020662BC:
	mov r0, #4
	bl sub_0204B018
	bl sub_02048644
	bl sub_020485C4
	mov r0, #2
	mov r1, #0x33
	mov r2, #0
	bl SetScenarioScriptVar
	mov r0, #2
	bl LoadOverlay
	mov r0, #1
	bl MainGame
	mov r8, r0
	mov r0, #2
	bl UnloadOverlay
	bl sub_0204872C
	b _02065F20
_02066300:
	mov r0, #4
	bl sub_0204B018
	bl sub_02048644
	mov r0, #2
	bl LoadOverlay
	mov r0, #1
	bl MainGame
	mov r8, r0
	mov r0, #2
	bl UnloadOverlay
	bl sub_0204872C
	b _02065F20
_02066330:
	mov r0, #5
	bl sub_0204B018
	bl sub_02048644
	bl sub_020485D8
	mov r0, #2
	mov r1, #0x34
	mov r2, #0
	bl SetScenarioScriptVar
	mov r0, #2
	bl LoadOverlay
	mov r0, #1
	bl MainGame
	mov r8, r0
	mov r0, #2
	bl UnloadOverlay
	bl sub_0204872C
	b _02065F20
	.align 2, 0
_02066374: .word WAN_TABLE
_02066378: .word _020A9208
	arm_func_end MainLoop

	arm_func_start sub_0206637C
sub_0206637C: ; 0x0206637C
	stmdb sp!, {r3, lr}
	mov r0, #1
	bl OverlayIsLoaded
	cmp r0, #0
	beq _0206639C
	mov r0, #3
	bl ov00_022BE0C8
	ldmia sp!, {r3, pc}
_0206639C:
	mov r0, #1
	bl LoadOverlay
	mov r0, #4
	bl LoadOverlay
	mov r0, #3
	bl ov00_022BE0C8
	mov r0, #4
	bl UnloadOverlay
	mov r0, #1
	bl UnloadOverlay
	ldmia sp!, {r3, pc}
	arm_func_end sub_0206637C

	arm_func_start sub_020663C8
sub_020663C8: ; 0x020663C8
	stmdb sp!, {r3, lr}
	ldrsb ip, [sp, #8]
	str ip, [sp]
	bl sub_02046A9C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020663C8

	arm_func_start sub_020663DC
sub_020663DC: ; 0x020663DC
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, [sp, #0x10]
	ldrh lr, [sp, #0x14]
	str ip, [sp]
	mov ip, #0
	str lr, [sp, #4]
	str ip, [sp, #8]
	bl sub_02046A20
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end sub_020663DC

	arm_func_start sub_02066408
sub_02066408: ; 0x02066408
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, [sp, #0x10]
	ldrh lr, [sp, #0x14]
	str ip, [sp]
	ldr ip, [sp, #0x18]
	str lr, [sp, #4]
	str ip, [sp, #8]
	bl sub_02046A20
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end sub_02066408

	arm_func_start sub_02066434
sub_02066434: ; 0x02066434
	stmdb sp!, {r3, lr}
	bl sub_02046B04
	mvn r1, #1
	cmp r0, r1
	moveq r0, #0x1f
	ldmeqia sp!, {r3, pc}
	add r1, r1, #1
	cmp r0, r1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02066434

	arm_func_start sub_0206645C
sub_0206645C: ; 0x0206645C
	ldr ip, _02066464 ; =sub_02046BA0
	bx ip
	.align 2, 0
_02066464: .word sub_02046BA0
	arm_func_end sub_0206645C

	arm_func_start sub_02066468
sub_02066468: ; 0x02066468
	ldr ip, _02066474 ; =sub_02046BE8
	mov r2, #0
	bx ip
	.align 2, 0
_02066474: .word sub_02046BE8
	arm_func_end sub_02066468

	arm_func_start sub_02066478
sub_02066478: ; 0x02066478
	ldr ip, _02066484 ; =sub_02046C30
	mov r2, #0
	bx ip
	.align 2, 0
_02066484: .word sub_02046C30
	arm_func_end sub_02066478

	arm_func_start sub_02066488
sub_02066488: ; 0x02066488
	ldr ip, _02066490 ; =sub_02046BE8
	bx ip
	.align 2, 0
_02066490: .word sub_02046BE8
	arm_func_end sub_02066488

	arm_func_start sub_02066494
sub_02066494: ; 0x02066494
	stmdb sp!, {r3, lr}
	bl sub_02046C78
	cmp r0, #0
	movne r0, #0x1f
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02066494

	arm_func_start sub_020664AC
sub_020664AC: ; 0x020664AC
	ldr ip, _020664B4 ; =sub_02046D20
	bx ip
	.align 2, 0
_020664B4: .word sub_02046D20
	arm_func_end sub_020664AC

	arm_func_start sub_020664B8
sub_020664B8: ; 0x020664B8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020676AC
	ldr r2, _0206650C ; =_020B0B24
	mov r3, #0
	mov r0, #0xa8
	mov r1, #8
	strb r3, [r2]
	bl MemAlloc
	ldr r2, _0206650C ; =_020B0B24
	mov r1, #0xa8
	str r0, [r2, #4]
	bl MemZero
	ldr r1, _0206650C ; =_020B0B24
	mov r2, #0
	ldr r3, [r1, #4]
	mov r0, #1
	str r4, [r3, #8]
	ldr r1, [r1, #4]
	str r2, [r1]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206650C: .word _020B0B24
	arm_func_end sub_020664B8

	arm_func_start sub_02066510
sub_02066510: ; 0x02066510
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r0, _02066874 ; =_020B0B24
	ldr r1, [r0, #4]
	ldr r0, [r1]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02066868
_02066530: ; jump table
	b _02066544 ; case 0
	b _02066640 ; case 1
	b _02066700 ; case 2
	b _02066708 ; case 3
	b _02066724 ; case 4
_02066544:
	mov r2, #0
	add r1, r1, #0xa4
	mov r0, r2
_02066550:
	strb r0, [r1, r2]
	add r2, r2, #1
	cmp r2, #4
	blt _02066550
	ldr r0, _02066874 ; =_020B0B24
	mov r1, #0x98
	ldr r0, [r0, #4]
	add r0, r0, #0xc
	bl MemZero
	ldr r0, _02066874 ; =_020B0B24
	ldr r2, [r0, #4]
	add r1, r2, #0xa4
	str r1, [r2, #0x6c]
	ldr r0, [r0, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020665B4
	ldr r4, _02066878 ; =JOB_MENU_ITEMS_1
	bl sub_0205E954
	cmp r0, #0
	ldreq r0, _02066874 ; =_020B0B24
	moveq r1, #3
	ldreq r0, [r0, #4]
	streqb r1, [r0, #0xa4]
	b _020665D8
_020665B4:
	cmp r0, #1
	bne _020665D8
	ldr r4, _0206687C ; =JOB_MENU_ITEMS_2
	bl sub_0205EAC8
	cmp r0, #0
	ldreq r0, _02066874 ; =_020B0B24
	moveq r1, #3
	ldreq r0, [r0, #4]
	streqb r1, [r0, #0xa4]
_020665D8:
	bl sub_0205ED84
	cmp r0, #0
	ldreq r0, _02066874 ; =_020B0B24
	moveq r1, #3
	ldreq r0, [r0, #4]
	ldr r3, _02066874 ; =_020B0B24
	streqb r1, [r0, #0xa5]
	ldrsb r2, [r3]
	ldr ip, [r3, #4]
	mov r1, #0
	add r2, r4, r2, lsl #3
	ldr lr, [r2, #4]
	ldr r0, _02066880 ; =JOB_WINDOW_PARAMS_1
	str lr, [ip, #0xc]
	str r4, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r3, [r3, #4]
	ldr r2, _02066884 ; =0x00000233
	add r3, r3, #0xc
	bl sub_02046A20
	ldr r0, _02066874 ; =_020B0B24
	mov r1, #1
	ldr r0, [r0, #4]
	str r1, [r0]
	b _02066868
_02066640:
	bl sub_02046B04
	mov r4, r0
	mvn r1, #1
	cmp r4, r1
	moveq r4, #4
	beq _02066674
	sub r0, r1, #1
	cmp r4, r0
	moveq r4, #4
	beq _02066674
	add r0, r1, #1
	cmp r4, r0
	moveq r4, #0
_02066674:
	bl sub_02046BA0
	ldr r1, _02066874 ; =_020B0B24
	cmp r4, #1
	strb r0, [r1]
	bne _020666A4
	ldr r0, [r1, #4]
	mov r2, #0xa
	str r2, [r0, #4]
	ldr r0, [r1, #4]
	mov r1, #3
	str r1, [r0]
	b _02066868
_020666A4:
	cmp r4, #2
	bne _020666C8
	ldr r0, [r1, #4]
	mov r2, #0xb
	str r2, [r0, #4]
	ldr r0, [r1, #4]
	mov r1, #3
	str r1, [r0]
	b _02066868
_020666C8:
	cmp r4, #3
	bne _020666EC
	ldr r0, [r1, #4]
	mov r2, #0xe
	str r2, [r0, #4]
	ldr r0, [r1, #4]
	mov r1, #3
	str r1, [r0]
	b _02066868
_020666EC:
	cmp r4, #4
	ldreq r0, [r1, #4]
	moveq r1, #2
	streq r1, [r0]
	b _02066868
_02066700:
	mov r0, #1
	b _0206686C
_02066708:
	ldr r0, [r1, #4]
	bl sub_020668B4
	ldr r0, _02066874 ; =_020B0B24
	mov r1, #4
	ldr r0, [r0, #4]
	str r1, [r0]
	b _02066868
_02066724:
	bl sub_02066A44
	movs r4, r0
	beq _02066868
	bl sub_02067664
	add r0, r4, #1
	cmp r0, #0x17
	addls pc, pc, r0, lsl #2
	b _02066868
_02066744: ; jump table
	b _02066858 ; case 0
	b _02066868 ; case 1
	b _020667A4 ; case 2
	b _02066868 ; case 3
	b _020667B8 ; case 4
	b _020667C0 ; case 5
	b _020667C8 ; case 6
	b _020667D0 ; case 7
	b _020667D8 ; case 8
	b _020667E0 ; case 9
	b _020667E8 ; case 10
	b _020667F0 ; case 11
	b _020667F8 ; case 12
	b _02066800 ; case 13
	b _02066808 ; case 14
	b _02066810 ; case 15
	b _02066818 ; case 16
	b _02066820 ; case 17
	b _02066828 ; case 18
	b _02066830 ; case 19
	b _02066838 ; case 20
	b _02066840 ; case 21
	b _02066848 ; case 22
	b _02066850 ; case 23
_020667A4:
	ldr r0, _02066874 ; =_020B0B24
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0]
	b _02066868
_020667B8:
	mov r0, #2
	b _0206686C
_020667C0:
	mov r0, #3
	b _0206686C
_020667C8:
	mov r0, #4
	b _0206686C
_020667D0:
	mov r0, #5
	b _0206686C
_020667D8:
	mov r0, #6
	b _0206686C
_020667E0:
	mov r0, #7
	b _0206686C
_020667E8:
	mov r0, #8
	b _0206686C
_020667F0:
	mov r0, #9
	b _0206686C
_020667F8:
	mov r0, #0xa
	b _0206686C
_02066800:
	mov r0, #0xb
	b _0206686C
_02066808:
	mov r0, #0xc
	b _0206686C
_02066810:
	mov r0, #0xd
	b _0206686C
_02066818:
	mov r0, #0xe
	b _0206686C
_02066820:
	mov r0, #0xf
	b _0206686C
_02066828:
	mov r0, #0x10
	b _0206686C
_02066830:
	mov r0, #0x11
	b _0206686C
_02066838:
	mov r0, #0x12
	b _0206686C
_02066840:
	mov r0, #0x13
	b _0206686C
_02066848:
	mov r0, #0x14
	b _0206686C
_02066850:
	mov r0, #0x15
	b _0206686C
_02066858:
	ldr r0, _02066874 ; =_020B0B24
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0]
_02066868:
	mov r0, #0
_0206686C:
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02066874: .word _020B0B24
_02066878: .word JOB_MENU_ITEMS_1
_0206687C: .word JOB_MENU_ITEMS_2
_02066880: .word JOB_WINDOW_PARAMS_1
_02066884: .word 0x00000233
	arm_func_end sub_02066510

	arm_func_start sub_02066888
sub_02066888: ; 0x02066888
	stmdb sp!, {r3, lr}
	ldr r0, _020668B0 ; =_020B0B24
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _020668B0 ; =_020B0B24
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020668B0: .word _020B0B24
	arm_func_end sub_02066888

	arm_func_start sub_020668B4
sub_020668B4: ; 0x020668B4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	sub r0, r5, #0x13
	cmp r0, #2
	movls r0, #0
	ldmlsia sp!, {r3, r4, r5, pc}
	ldr r0, _02066988 ; =0x00000EF8
	mov r1, #8
	bl MemAlloc
	ldr r2, _0206698C ; =_020B0B2C
	ldr r1, _02066988 ; =0x00000EF8
	str r0, [r2, #0x14]
	bl MemZero
	ldr r0, _0206698C ; =_020B0B2C
	mov r2, #0
	ldr r4, [r0, #0x14]
	mov r1, r2
_020668F8:
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #0x4c]
	cmp r2, #0x20
	blt _020668F8
	ldr r0, _0206698C ; =_020B0B2C
	ldr r0, [r0, #0x14]
	str r5, [r0, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xef0]
	bl sub_020686F4
	mov r2, #0
	str r2, [r4, #0x74]
	sub r1, r2, #1
	str r1, [r4, #0x78]
	cmp r0, #0
	bne _0206695C
	bl sub_020692B4
	ldr r0, _0206698C ; =_020B0B2C
	ldr r0, [r0, #0x14]
	bl MemFree
	ldr r1, _0206698C ; =_020B0B2C
	mov r0, #0
	str r0, [r1, #0x14]
	ldmia sp!, {r3, r4, r5, pc}
_0206695C:
	sub r0, r2, #2
	strb r0, [r4, #0x7d]
	bl sub_020692FC
	mvn r1, #1
	ldr r0, _0206698C ; =_020B0B2C
	strb r1, [r4, #0xd85]
	ldr r0, [r0, #0x14]
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02066988: .word 0x00000EF8
_0206698C: .word _020B0B2C
	arm_func_end sub_020668B4

	arm_func_start sub_02066990
sub_02066990: ; 0x02066990
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	ldr r0, _02066A3C ; =0x00000EF8
	mov r1, #8
	mov r6, r2
	mov r5, r3
	bl MemAlloc
	ldr r2, _02066A40 ; =_020B0B2C
	ldr r1, _02066A3C ; =0x00000EF8
	str r0, [r2, #0x14]
	bl MemZero
	ldr r0, _02066A40 ; =_020B0B2C
	mov r1, #0
	ldr r4, [r0, #0x14]
	str r8, [r4, #4]
	str r7, [r4, #0x74]
	str r6, [r4, #0x6c]
	str r5, [r4, #0x78]
	str r1, [r4, #8]
	str r1, [r4, #0xef0]
	bl sub_020686F4
	cmp r0, #0
	bne _02066A10
	bl sub_020692B4
	ldr r0, _02066A40 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	bl MemFree
	ldr r1, _02066A40 ; =_020B0B2C
	mov r0, #0
	str r0, [r1, #0x14]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02066A10:
	mvn r0, #1
	strb r0, [r4, #0x7d]
	bl sub_020692FC
	mvn r1, #1
	ldr r0, _02066A40 ; =_020B0B2C
	strb r1, [r4, #0xd85]
	ldr r0, [r0, #0x14]
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02066A3C: .word 0x00000EF8
_02066A40: .word _020B0B2C
	arm_func_end sub_02066990

	arm_func_start sub_02066A44
sub_02066A44: ; 0x02066A44
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r6, [r0, #0x14]
	ldr r0, [r6]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02067494
_02066A64: ; jump table
	b _02066A80 ; case 0
	b _02066B08 ; case 1
	b _02066DA4 ; case 2
	b _02066DAC ; case 3
	b _020672F4 ; case 4
	b _02067374 ; case 5
	b _02067474 ; case 6
_02066A80:
	bl sub_020691B8
	ldr r0, _020674A0 ; =_020B0B2C
	mov r2, #1
	ldr r1, [r0, #0x14]
	str r2, [r1]
	ldr r1, [r6, #0xee4]
	cmp r1, #0
	bne _02066AF4
	ldr r1, [r0, #0x14]
	ldr r0, [r1, #4]
	sub r0, r0, #0xa
	cmp r0, #3
	bhi _02066AC8
	add r0, r1, #0x2e4
	ldr r1, _020674A4 ; =_020A92A8
	ldr r2, _020674A8 ; =sub_020696E8
	add r0, r0, #0xc00
	bl sub_0204707C
_02066AC8:
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	ldr r0, [r1, #4]
	cmp r0, #0xe
	bne _02067494
	add r0, r1, #0x2e4
	ldr r1, _020674A4 ; =_020A92A8
	ldr r2, _020674AC ; =sub_02069750
	add r0, r0, #0xc00
	bl sub_0204707C
	b _02067494
_02066AF4:
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047188
	b _02067494
_02066B08:
	ldrsb r0, [r6, #0x7d]
	bl sub_0202C748
	ldr r1, [r6, #0xef0]
	mov r4, r0
	cmp r1, #0
	strneb r4, [r1]
	ldrsb r0, [r6, #0x7d]
	bl IsCollectionMenuActive
	cmp r0, #0
	bne _02066D68
	ldrsb r0, [r6, #0x7d]
	bl sub_0202C75C
	movs r5, r0
	bpl _02066BAC
	mov r2, #0
	mov r1, r2
	b _02066B58
_02066B4C:
	add r0, r6, r2
	strb r1, [r0, #0x4c]
	add r2, r2, #1
_02066B58:
	ldr r0, [r6, #0x6c]
	cmp r2, r0
	blt _02066B4C
	mvn r0, #0
	str r0, [r6, #8]
	bl sub_020692B4
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	sub r0, r0, #0xa
	cmp r0, #3
	bhi _02066BA4
	bl sub_0205F5A8
	bl sub_0205F710
_02066BA4:
	mvn r0, #0
	b _02067498
_02066BAC:
	bl sub_020674E8
	cmp r0, #0
	beq _02066BE8
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	sub r0, r0, #0x12
	cmp r0, #1
	bhi _02066D68
	bl sub_020692B4
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #2
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02066D68
_02066BE8:
	ldr r3, [r6, #8]
	cmp r3, r5
	bne _02066D64
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	ldr r2, [r1, #4]
	cmp r2, #0xe
	cmpne r2, #0xf
	cmpne r2, #0x11
	moveq r0, #2
	streq r0, [r1]
	beq _02066D68
	sub r1, r2, #0xa
	cmp r1, #3
	bhi _02066CF4
	bl sub_0205ED84
	cmp r0, #8
	bge _02066CEC
	ldr r1, _020674A0 ; =_020B0B2C
	mov r0, #0
	ldr r1, [r1, #0x14]
	ldr r1, [r1, #4]
	sub r1, r1, #0xa
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02066CCC
_02066C50: ; jump table
	b _02066C60 ; case 0
	b _02066C7C ; case 1
	b _02066C98 ; case 2
	b _02066CB4 ; case 3
_02066C60:
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205E970
	b _02066CCC
_02066C7C:
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EAE8
	b _02066CCC
_02066C98:
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EBD8
	b _02066CCC
_02066CB4:
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EC38
_02066CCC:
	bl sub_0205F0B8
	bl sub_020686F4
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047188
_02066CEC:
	bl sub_020691B8
	b _02066D68
_02066CF4:
	cmp r2, #0x10
	bne _02066D04
	bl sub_020691B8
	b _02066D68
_02066D04:
	sub r1, r2, #0x12
	cmp r1, #1
	bhi _02066D30
	add r1, r6, r3
	mov r2, #1
	strb r2, [r1, #0x4c]
	ldr r0, [r0, #0x14]
	mov r1, #2
	str r1, [r0]
	bl sub_020692B4
	b _02066D68
_02066D30:
	cmp r2, #9
	cmpne r2, #0x14
	cmpne r2, #4
	bne _02066D58
	bl sub_020692B4
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #2
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02066D68
_02066D58:
	bl sub_020692B4
	mov r0, #1
	b _02067498
_02066D64:
	bl sub_020691B8
_02066D68:
	bl sub_020698B8
	cmp r0, #0
	beq _02066D90
	cmp r4, #0
	blt _02066D90
	ldr r0, [r6, #8]
	cmp r0, r4
	beq _02066D90
	str r4, [r6, #8]
	bl sub_0206937C
_02066D90:
	ldr r0, [r6, #0xee4]
	cmp r0, #0
	beq _02067494
	bl sub_020470D0
	b _02067494
_02066DA4:
	bl sub_02067708
	b _02067494
_02066DAC:
	bl sub_02046B04
	bl sub_02068308
	ldr r1, [r6, #0xef4]
	mov r4, r0
	cmp r1, #0
	beq _02066DD0
	bl sub_02046BA0
	ldr r1, [r6, #0xef4]
	strb r0, [r1]
_02066DD0:
	cmp r4, #1
	bne _02066E00
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	cmp r0, #9
	bne _02066DF4
	bl sub_0206955C
	bl sub_02046D20
_02066DF4:
	bl sub_020692B4
	mov r0, #1
	b _02067498
_02066E00:
	cmp r4, #2
	bne _02066EDC
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	cmp r0, #0xa
	bne _02066E3C
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205E970
	bl sub_0205F0B8
	b _02066EC0
_02066E3C:
	cmp r0, #0xb
	bne _02066E64
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EAE8
	bl sub_0205F0B8
	b _02066EC0
_02066E64:
	cmp r0, #0xc
	bne _02066E8C
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EBD8
	bl sub_0205F0B8
	b _02066EC0
_02066E8C:
	cmp r0, #0xd
	bne _02066EB4
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EC38
	bl sub_0205F0B8
	b _02066EC0
_02066EB4:
	cmp r0, #0x14
	moveq r0, #1
	beq _02067498
_02066EC0:
	bl sub_020686F4
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02066EDC:
	cmp r4, #3
	bne _02066EF4
	bl sub_02067C8C
	cmp r0, #0
	beq _02067494
	b _02067498
_02066EF4:
	cmp r4, #4
	bne _02066F44
	bl sub_02046BB4
	mov r0, #6
	bl PlaySeVolumeWrapper
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	mov r1, #4
	strb r1, [r0]
	bl sub_020686F4
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02066F44:
	cmp r4, #5
	bne _02067020
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	cmp r0, #0x11
	bne _02066F84
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205F588
	bl sub_0205F5A8
	mov r0, #1
	b _02067498
_02066F84:
	cmp r0, #0x12
	moveq r0, #1
	beq _02067498
	cmp r0, #0xe
	bne _02066FB4
	mov r0, #0
	bl PlaySeVolumeWrapper
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #4
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02066FB4:
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205F588
	bl sub_0205F5A8
	bl sub_0205ED84
	cmp r0, #0
	bne _02066FFC
	bl sub_020692B4
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	mvn r0, #0
	b _02067498
_02066FFC:
	bl sub_020686F4
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	mov r2, #0
	ldr r1, [r0, #0x14]
	mov r0, #1
	str r2, [r1]
	strb r0, [r6, #0xd84]
	b _02067494
_02067020:
	cmp r4, #6
	bne _020670F4
	ldr r3, [r6, #0x70]
	mov r1, #1
	add r0, r6, r3
	strb r1, [r0, #0x4c]
	add r2, r3, #1
	ldr r1, [r6, #0x6c]
	b _0206705C
_02067044:
	add r0, r6, r2
	ldrb r0, [r0, #0x4c]
	cmp r0, #0
	strne r2, [r6, #0x70]
	bne _02067064
	add r2, r2, #1
_0206705C:
	cmp r2, r1
	blt _02067044
_02067064:
	ldr r0, [r6, #0x70]
	cmp r0, r3
	bne _020670A0
	bl sub_020674E8
	cmp r0, #0
	bne _02067098
	bl sub_02046D20
	mov r1, #0
	ldr r0, _020674A0 ; =_020B0B2C
	str r1, [r6, #8]
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02067098:
	mov r0, #2
	b _02067498
_020670A0:
	str r0, [r6, #8]
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r1, _020674B0 ; =_020A937C
	ldrsb r3, [r0, #0xd]
	ldr r0, _020674B4 ; =_020B0B39
	ldr r2, _020674B8 ; =JOB_MENU_ITEMS_11
	ldr r1, [r1, r3, lsl #3]
	add r3, r6, #0x248
	str r1, [r6, #0xe48]
	str r0, [r6, #0xef4]
	mov r0, #0
	ldr r1, _020674BC ; =0x00003878
	str r2, [sp]
	str r1, [sp, #4]
	ldr r2, _020674C0 ; =0x00000233
	mov r1, r0
	add r3, r3, #0xc00
	str r0, [sp, #8]
	bl sub_02046A20
	b _02067494
_020670F4:
	sub r0, r4, #7
	cmp r0, #1
	bhi _02067494
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	ldr r0, [r1, #4]
	cmp r0, #0x11
	bne _02067134
	bl sub_02046D20
	ldr r1, [r6, #8]
	ldr r0, _020674A0 ; =_020B0B2C
	str r1, [r6, #0xd88]
	ldr r0, [r0, #0x14]
	mov r1, #0
	str r1, [r0]
	b _02067494
_02067134:
	cmp r0, #0x13
	bne _02067210
	ldr r3, [r6, #0x70]
	mov r1, #0
	add r0, r6, r3
	strb r1, [r0, #0x4c]
	mov r2, r3
	ldr r1, [r6, #0x6c]
	b _02067170
_02067158:
	add r0, r6, r2
	ldrb r0, [r0, #0x4c]
	cmp r0, #0
	strne r2, [r6, #0x70]
	bne _02067178
	add r2, r2, #1
_02067170:
	cmp r2, r1
	blt _02067158
_02067178:
	ldr r0, [r6, #0x70]
	cmp r0, r3
	bne _020671BC
	bl sub_020674E8
	cmp r0, #0
	bne _020671B4
	bl sub_02046D20
	mov r0, #0
	str r0, [r6, #8]
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_020671B4:
	mov r0, #2
	b _02067498
_020671BC:
	str r0, [r6, #8]
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r1, _020674B0 ; =_020A937C
	ldrsb r3, [r0, #0xd]
	ldr r0, _020674B4 ; =_020B0B39
	ldr r2, _020674B8 ; =JOB_MENU_ITEMS_11
	ldr r1, [r1, r3, lsl #3]
	add r3, r6, #0x248
	str r1, [r6, #0xe48]
	str r0, [r6, #0xef4]
	mov r0, #0
	ldr r1, _020674BC ; =0x00003878
	str r2, [sp]
	str r1, [sp, #4]
	ldr r2, _020674C0 ; =0x00000233
	mov r1, r0
	add r3, r3, #0xc00
	str r0, [sp, #8]
	bl sub_02046A20
	b _02067494
_02067210:
	cmp r0, #9
	bne _02067234
	bl sub_0206955C
	bl sub_02046D20
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02067234:
	cmp r0, #4
	bne _02067254
	bl sub_02046D20
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02067254:
	cmp r0, #0x12
	bne _02067298
	mov r2, #0
	mov r1, r2
	b _02067274
_02067268:
	add r0, r6, r2
	strb r1, [r0, #0x4c]
	add r2, r2, #1
_02067274:
	ldr r0, [r6, #0x6c]
	cmp r2, r0
	blt _02067268
	bl sub_02046D20
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02067298:
	cmp r0, #0x14
	bne _020672B8
	bl sub_02046D20
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_020672B8:
	cmp r0, #0xe
	bne _020672E8
	bl sub_02046BB4
	cmp r4, #7
	bne _020672D4
	mov r0, #0
	bl PlaySeVolumeWrapper
_020672D4:
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_020672E8:
	mov r0, #0
	str r0, [r1]
	b _02067494
_020672F4:
	mov r0, #0
	ldr r5, _020674C4 ; =_020A9268
	bl sub_02046D2C
	str r0, [r6, #0xee8]
	mov r0, #0
	bl sub_020474A0
	str r0, [r6, #0xeec]
	bl sub_020469BC
	bl sub_02068338
	ldr r0, _020674A0 ; =_020B0B2C
	add r3, r6, #0x248
	ldr r0, [r0, #0x14]
	mov r1, #0
	ldr r0, [r0, #4]
	ldr r2, _020674C0 ; =0x00000233
	cmp r0, #0xe
	moveq r0, #7
	streq r0, [r6, #0xe48]
	moveq r0, #0
	streq r0, [r6, #0xef4]
	ldreq r4, _020674C8 ; =JOB_MENU_ITEMS_4
	mov r0, r5
	str r4, [sp]
	str r1, [sp, #4]
	add r3, r3, #0xc00
	str r1, [sp, #8]
	bl sub_02046A20
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #5
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02067374:
	bl sub_02046B04
	bl sub_02068308
	ldr r1, [r6, #0xef4]
	mov r4, r0
	cmp r1, #0
	beq _02067398
	bl sub_02046BA0
	ldr r1, [r6, #0xef4]
	strb r0, [r1]
_02067398:
	cmp r4, #5
	bne _02067430
	bl sub_020469E8
	ldr r0, [r6, #0xee8]
	bl sub_02046D2C
	ldr r0, [r6, #0xeec]
	bl sub_020474A0
	mov r0, #0
	str r0, [r6, #0xee8]
	str r0, [r6, #0xeec]
	bl sub_02046BB4
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205F588
	bl sub_0205F5A8
	bl sub_0205ED84
	cmp r0, #0
	bne _0206740C
	bl sub_020692B4
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	mvn r0, #0
	b _02067498
_0206740C:
	bl sub_020686F4
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	mov r2, #0
	ldr r1, [r0, #0x14]
	mov r0, #1
	str r2, [r1]
	strb r0, [r6, #0xd84]
	b _02067494
_02067430:
	sub r0, r4, #7
	cmp r0, #1
	bhi _02067494
	bl sub_020469E8
	ldr r0, [r6, #0xee8]
	bl sub_02046D2C
	ldr r0, [r6, #0xeec]
	bl sub_020474A0
	mov r0, #0
	str r0, [r6, #0xee8]
	str r0, [r6, #0xeec]
	bl sub_02046BB4
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02067474:
	bl sub_02046C78
	cmp r0, #0
	beq _02067494
	bl sub_02046D20
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
_02067494:
	mov r0, #0
_02067498:
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_020674A0: .word _020B0B2C
_020674A4: .word _020A92A8
_020674A8: .word sub_020696E8
_020674AC: .word sub_02069750
_020674B0: .word _020A937C
_020674B4: .word _020B0B39
_020674B8: .word JOB_MENU_ITEMS_11
#ifdef EUROPE
_020674BC: .word 0x0000387A
#else
_020674BC: .word 0x00003878
#endif
_020674C0: .word 0x00000233
_020674C4: .word _020A9268
_020674C8: .word JOB_MENU_ITEMS_4
	arm_func_end sub_02066A44

	arm_func_start sub_020674CC
sub_020674CC: ; 0x020674CC
	ldr r0, _020674E4 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	ldr r0, [r1, #8]
	add r0, r1, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	bx lr
	.align 2, 0
_020674E4: .word _020B0B2C
	arm_func_end sub_020674CC

	arm_func_start sub_020674E8
sub_020674E8: ; 0x020674E8
	ldr r0, _02067520 ; =_020B0B2C
	mov ip, #0
	ldr r2, [r0, #0x14]
	mov r0, ip
	ldr r3, [r2, #0x6c]
	b _02067514
_02067500:
	add r1, r2, ip
	ldrb r1, [r1, #0x4c]
	add ip, ip, #1
	cmp r1, #0
	addne r0, r0, #1
_02067514:
	cmp ip, r3
	blt _02067500
	bx lr
	.align 2, 0
_02067520: .word _020B0B2C
	arm_func_end sub_020674E8

	arm_func_start sub_02067524
sub_02067524: ; 0x02067524
	stmdb sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	ldr r2, _02067580 ; =_020B0B2C
	b _02067568
_02067538:
	cmp lr, r1
	movge r0, #0
	ldmgeia sp!, {r4, pc}
	add r3, ip, r4
	ldrb r3, [r3, #0x4c]
	cmp r3, #0
	addne r3, ip, r4, lsl #1
	ldrnesh ip, [r3, #0xc]
	movne r3, lr, lsl #1
	addne lr, lr, #1
	strneh ip, [r0, r3]
	add r4, r4, #1
_02067568:
	ldr ip, [r2, #0x14]
	ldr r3, [ip, #0x6c]
	cmp r4, r3
	blt _02067538
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02067580: .word _020B0B2C
	arm_func_end sub_02067524

	arm_func_start sub_02067584
sub_02067584: ; 0x02067584
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x40
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	b _02067658
_02067598: ; jump table
	b _020675E8 ; case 0
	b _020675E8 ; case 1
	b _020675E8 ; case 2
	b _020675E8 ; case 3
	b _020675E8 ; case 4
	b _020675E8 ; case 5
	b _020675E8 ; case 6
	b _020675E8 ; case 7
	b _02067658 ; case 8
	b _020675E8 ; case 9
	b _020675E8 ; case 10
	b _020675E8 ; case 11
	b _020675E8 ; case 12
	b _020675E8 ; case 13
	b _02067638 ; case 14
	b _02067638 ; case 15
	b _02067638 ; case 16
	b _02067604 ; case 17
	b _020675E8 ; case 18
	b _02067650 ; case 19
_020675E8:
	add r1, sp, #0
	bl sub_02068390
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	b _0206765C
_02067604:
	bl sub_0204E210
	cmp r0, #1
	bne _02067638
	bl sub_0205ED84
	mov r4, r0
	bl GetAdventureLogDungeonFloor
	ldrb r0, [r0]
	bl DungeonRequestsDoneWrapper
	subs r0, r4, r0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	b _0206765C
_02067638:
	bl sub_0205ED84
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	b _0206765C
_02067650:
	mov r0, #0
	b _0206765C
_02067658:
	mov r0, #1
_0206765C:
	add sp, sp, #0x40
	ldmia sp!, {r4, pc}
	arm_func_end sub_02067584

	arm_func_start sub_02067664
sub_02067664: ; 0x02067664
	stmdb sp!, {r3, lr}
	ldr r0, _020676A8 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	bl sub_02069904
	bl sub_020692B4
	ldr r0, _020676A8 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	bl MemFree
	ldr r0, _020676A8 ; =_020B0B2C
	mov r1, #0
	str r1, [r0, #0x14]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020676A8: .word _020B0B2C
	arm_func_end sub_02067664

	arm_func_start sub_020676AC
sub_020676AC: ; 0x020676AC
	ldr r0, _02067704 ; =_020B0B2C
	mov r1, #0
	strb r1, [r0, #0x10]
	strb r1, [r0, #0xe]
	strb r1, [r0, #9]
	strb r1, [r0, #8]
	strb r1, [r0, #6]
	strb r1, [r0, #0xb]
	strb r1, [r0, #4]
	strb r1, [r0, #0xd]
	strb r1, [r0, #7]
	strb r1, [r0, #3]
	strb r1, [r0, #2]
	strb r1, [r0, #5]
	strb r1, [r0, #1]
	strb r1, [r0]
	strb r1, [r0, #0x13]
	strb r1, [r0, #0x12]
	strb r1, [r0, #0x11]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xf]
	bx lr
	.align 2, 0
_02067704: .word _020B0B2C
	arm_func_end sub_020676AC

	arm_func_start sub_02067708
sub_02067708: ; 0x02067708
#ifdef EUROPE
#define SUB_02067708_WORD_OFFSET 2
#else
#define SUB_02067708_WORD_OFFSET 0
#endif
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x5c
	ldr r1, _02067C00 ; =_020B0B2C
	mov r6, #0
	add r0, sp, #0xc
	mov sb, r6
	ldr r4, [r1, #0x14]
	ldr r7, _02067C04 ; =_020A9298
	ldr r8, _02067C08 ; =0x00000233
	bl InitPreprocessorArgs
	bl sub_02068338
	ldr r1, _02067C00 ; =_020B0B2C
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #4]
	sub r2, r2, #4
	cmp r2, #0x10
	addls pc, pc, r2, lsl #2
	b _02067BC4
_02067750: ; jump table
	b _02067AF8 ; case 0
	b _02067BC4 ; case 1
	b _02067BC4 ; case 2
	b _02067BC4 ; case 3
	b _02067BC4 ; case 4
	b _02067A80 ; case 5
	b _02067794 ; case 6
	b _020677F0 ; case 7
	b _0206784C ; case 8
	b _020678A8 ; case 9
	b _02067904 ; case 10
	b _020679E0 ; case 11
	b _02067BC4 ; case 12
	b _02067A50 ; case 13
	b _02067B20 ; case 14
	b _02067B3C ; case 15
	b _02067BA0 ; case 16
_02067794:
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205E970
	bl sub_0205EC98
	cmp r0, #0
	bne _020677C4
	bl sub_0205ED84
	cmp r0, #8
	blt _020677CC
_020677C4:
	mov r0, #3
	strb r0, [r4, #0xee0]
_020677CC:
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C0C ; =_020A9364
	ldrsb r2, [r0, #0x10]
	ldr r0, _02067C10 ; =_020B0B3C
	ldr r5, _02067C14 ; =JOB_MENU_ITEMS_10
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_020677F0:
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EAE8
	bl sub_0205EC98
	cmp r0, #0
	bne _02067820
	bl sub_0205ED84
	cmp r0, #8
	blt _02067828
_02067820:
	mov r0, #3
	strb r0, [r4, #0xee0]
_02067828:
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C0C ; =_020A9364
	ldrsb r2, [r0, #0xe]
	ldr r0, _02067C18 ; =_020B0B3A
	ldr r5, _02067C14 ; =JOB_MENU_ITEMS_10
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_0206784C:
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EBD8
	bl sub_0205EC98
	cmp r0, #0
	bne _0206787C
	bl sub_0205ED84
	cmp r0, #8
	blt _02067884
_0206787C:
	mov r0, #3
	strb r0, [r4, #0xee0]
_02067884:
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C0C ; =_020A9364
	ldrsb r2, [r0, #9]
	ldr r0, _02067C1C ; =_020B0B35
	ldr r5, _02067C14 ; =JOB_MENU_ITEMS_10
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_020678A8:
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EC38
	bl sub_0205EC98
	cmp r0, #0
	bne _020678D8
	bl sub_0205ED84
	cmp r0, #8
	blt _020678E0
_020678D8:
	mov r0, #3
	strb r0, [r4, #0xee0]
_020678E0:
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C0C ; =_020A9364
	ldrsb r2, [r0, #8]
	ldr r0, _02067C20 ; =_020B0B34
	ldr r5, _02067C14 ; =JOB_MENU_ITEMS_10
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_02067904:
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	mov r5, r0
	ldrb r0, [r5, #4]
	bl DungeonSwapIdToIdx
	ldrb r0, [r5]
	orr r8, r8, #0x400000
	orr r8, r8, #0x80000000
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0206798C
_02067940: ; jump table
	b _0206798C ; case 0
	b _02067954 ; case 1
	b _02067954 ; case 2
	b _02067954 ; case 3
	b _02067954 ; case 4
_02067954:
	mov r0, r5
	bl sub_0205ECF4
	cmp r0, #0
	movne r0, #3
	strneb r0, [r4, #0xee0]
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C24 ; =_020A9394
	ldrsb r2, [r0, #6]
	ldr r0, _02067C28 ; =_020B0B32
	ldr r5, _02067C2C ; =JOB_MENU_ITEMS_12
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_0206798C:
	ldrb r1, [r5, #1]
	cmp r1, #3
	ldreqb r0, [r5, #2]
	cmpeq r0, #3
	moveq r0, #3
	streqb r0, [r4, #0xee0]
	beq _020679BC
	cmp r1, #6
	ldreqb r0, [r5, #2]
	cmpeq r0, #4
	moveq r0, #3
	streqb r0, [r4, #0xee0]
_020679BC:
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C30 ; =_020A93B4
	ldrsb r2, [r0, #6]
	ldr r0, _02067C28 ; =_020B0B32
	ldr r5, _02067C34 ; =JOB_MENU_ITEMS_13
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_020679E0:
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	ldrb r0, [r0]
	cmp r0, #4
	beq _02067A2C
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	ldrb r0, [r0]
	cmp r0, #1
	movne r0, #3
	strneb r0, [r4, #0xee0]
_02067A2C:
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C38 ; =_020A92EC
	ldrsb r2, [r0, #0xb]
	ldr r0, _02067C3C ; =_020B0B37
	ldr r5, _02067C40 ; =JOB_MENU_ITEMS_5
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_02067A50:
	ldr r5, _02067C44 ; =JOB_MENU_ITEMS_7
	ldr r6, _02067C48 ; =0x000037B0
	mov r7, sb
	bl sub_020692B4
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C4C ; =_020A931C
	ldrsb r2, [r0, #4]
	ldr r0, _02067C50 ; =_020B0B30
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_02067A80:
	sub r1, r8, #0x100
	str r1, [sp, #0xc]
	add r1, r0, #0xd00
	mov r7, r6
	ldrsb r2, [r1, #0x85]
	sub r1, r7, #2
	ldr r5, _02067C54 ; =JOB_MENU_ITEMS_3
	cmp r2, r1
	ldreq r0, [r0, #4]
	ldr r6, _02067C58 ; =0x0000380C
	mov sb, #0x1000
	cmpeq r0, #9
	bne _02067AE4
	mov r0, r7
	mov r1, #3
	mov r2, #1
	bl CreatePortraitBox
	ldr r2, _02067C00 ; =_020B0B2C
	ldr r1, _02067C5C ; =_020A9278
	ldr r3, [r2, #0x14]
	strb r0, [r3, #0xd85]
	ldr r0, [r2, #0x14]
	add r0, r0, #0xd00
	ldrsb r0, [r0, #0x85]
	bl ShowPortraitInPortraitBox
_02067AE4:
	ldr r1, [r5, #0xc]
	mov r0, #0
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_02067AF8:
	ldrsb r2, [r1, #0xc]
	ldr r1, _02067C60 ; =_020A9304
	ldr r0, _02067C64 ; =_020B0B38
	ldr r1, [r1, r2, lsl #3]
	ldr r5, _02067C68 ; =JOB_MENU_ITEMS_6
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
#ifdef EUROPE
	ldr r6, _02067FF0 ; =0x0000380F
#else
	rsb r6, r8, #0x3a40
#endif
	mov r7, sb
	b _02067BC4
_02067B20:
	mov r0, #7
	mov r7, r6
	str r0, [r4, #0xe48]
	str r7, [r4, #0xef4]
	ldr r5, _02067C6C ; =JOB_MENU_ITEMS_9
	ldr r6, _02067C70 ; =0x000038BF
	b _02067BC4
_02067B3C:
	ldr r1, [r4, #0x6c]
	ldr r5, _02067C74 ; =JOB_MENU_ITEMS_11
	ldr r6, _02067C78 ; =0x00003878
	mov r2, sb
	b _02067B68
_02067B50:
	add r0, r4, r2
	ldrb r0, [r0, #0x4c]
	cmp r0, #0
	strne r2, [r4, #0x70]
	bne _02067B70
	add r2, r2, #1
_02067B68:
	cmp r2, r1
	blt _02067B50
_02067B70:
	ldr r0, [r4, #0x70]
	mov r7, #0
	str r0, [r4, #8]
	bl sub_0206937C
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C7C ; =_020B0B39
	ldrsb r0, [r0, #0xd]
	add r0, r5, r0, lsl #3
	ldr r0, [r0, #4]
	str r0, [r4, #0xe48]
	str r1, [r4, #0xef4]
	b _02067BC4
_02067BA0:
	ldrsb r2, [r1, #7]
	ldr r1, _02067C80 ; =_020A9334
	ldr r0, _02067C84 ; =_020B0B33
	ldr r1, [r1, r2, lsl #3]
	ldr r5, _02067C88 ; =JOB_MENU_ITEMS_8
	str r1, [r4, #0xe48]
#ifdef EUROPE
	ldr r6, _02068014 ; =0x000037B5
#else
	add r6, r8, #0x3580
#endif
	str r0, [r4, #0xef4]
	mov r7, sb
_02067BC4:
	add r3, r4, #0x248
	stmia sp, {r5, r6}
	add r4, sp, #0xc
	mov r0, r7
	mov r1, sb
	mov r2, r8
	add r3, r3, #0xc00
	str r4, [sp, #8]
	bl sub_02046A20
	ldr r0, _02067C00 ; =_020B0B2C
	mov r1, #3
	ldr r0, [r0, #0x14]
	str r1, [r0]
	add sp, sp, #0x5c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02067C00: .word _020B0B2C
_02067C04: .word _020A9298
_02067C08: .word 0x00000233
_02067C0C: .word _020A9364
_02067C10: .word _020B0B3C
_02067C14: .word JOB_MENU_ITEMS_10
_02067C18: .word _020B0B3A
_02067C1C: .word _020B0B35
_02067C20: .word _020B0B34
_02067C24: .word _020A9394
_02067C28: .word _020B0B32
_02067C2C: .word JOB_MENU_ITEMS_12
_02067C30: .word _020A93B4
_02067C34: .word JOB_MENU_ITEMS_13
_02067C38: .word _020A92EC
_02067C3C: .word _020B0B37
_02067C40: .word JOB_MENU_ITEMS_5
_02067C44: .word JOB_MENU_ITEMS_7
_02067C48: .word 0x000037B0 + SUB_02067708_WORD_OFFSET
_02067C4C: .word _020A931C
_02067C50: .word _020B0B30
_02067C54: .word JOB_MENU_ITEMS_3
_02067C58: .word 0x0000380C + SUB_02067708_WORD_OFFSET
_02067C5C: .word _020A9278
_02067C60: .word _020A9304
_02067C64: .word _020B0B38
_02067C68: .word JOB_MENU_ITEMS_6
#ifdef EUROPE
_02067FF0: .word 0x0000380F
#endif
_02067C6C: .word JOB_MENU_ITEMS_9
_02067C70: .word 0x000038BF + SUB_02067708_WORD_OFFSET
_02067C74: .word JOB_MENU_ITEMS_11
_02067C78: .word 0x00003878 + SUB_02067708_WORD_OFFSET
_02067C7C: .word _020B0B39
_02067C80: .word _020A9334
_02067C84: .word _020B0B33
_02067C88: .word JOB_MENU_ITEMS_8
#ifdef EUROPE
_02068014: .word 0x000037B5
#endif
	arm_func_end sub_02067708

	arm_func_start sub_02067C8C
sub_02067C8C: ; 0x02067C8C
#ifdef EUROPE
#define SUB_02067C8C_WORD_OFFSET 2
#else
#define SUB_02067C8C_WORD_OFFSET 0
#endif
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x60
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r6, [r0, #0x14]
	bl sub_02046BB4
	mov r0, #6
	bl PlaySeVolumeWrapper
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	mov r4, r0
	ldrb r0, [r4, #4]
	bl DungeonSwapIdToIdx
	mov r5, r0
	add r0, sp, #8
	str r0, [sp]
	ldrb r0, [r4, #1]
	add r1, r4, #2
	add r2, sp, #4
	add r3, sp, #0xc
	bl sub_0206276C
	ldrb r1, [r4, #1]
	cmp r1, #0xe
	ldreqb r0, [r4, #2]
	cmpeq r0, #1
	bne _02067E70
	bl GetRank
	ldrb r1, [sp, #4]
	cmp r1, r0
	bhi _02067D3C
	bl GetScenarioBalance
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bgt _02067D3C
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02067D7C
	mov r0, #0x16
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	bne _02067D7C
_02067D3C:
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _020682E4 ; =0x0000381F
	mov r0, #0x1c
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_02067D7C:
	mov r0, r5
	bl GetDungeonMode
	cmp r0, #3
	bne _02067DCC
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _020682E8 ; =0x00003820
	mov r0, #0x1c
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_02067DCC:
	ldrb r0, [r4, #4]
	mov r4, #0
	sub r0, r0, #0x49
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _02067E4C
_02067DE4: ; jump table
	b _02067E30 ; case 0
	b _02067E4C ; case 1
	b _02067E28 ; case 2
	b _02067E4C ; case 3
	b _02067E18 ; case 4
	b _02067E4C ; case 5
	b _02067E20 ; case 6
	b _02067E4C ; case 7
	b _02067E38 ; case 8
	b _02067E4C ; case 9
	b _02067E48 ; case 10
	b _02067E4C ; case 11
	b _02067E40 ; case 12
_02067E18:
	mov r4, #3
	b _02067E4C
_02067E20:
	mov r4, #4
	b _02067E4C
_02067E28:
	mov r4, #5
	b _02067E4C
_02067E30:
	mov r4, #6
	b _02067E4C
_02067E38:
	mov r4, #7
	b _02067E4C
_02067E40:
	mov r4, #8
	b _02067E4C
_02067E48:
	mov r4, #9
_02067E4C:
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205F588
	bl sub_0205F5A8
	mov r0, r4
	b _020682D8
_02067E70:
	cmp r1, #3
	ldreqb r0, [r4, #2]
	cmpeq r0, #3
	bne _02067FE0
	ldrb r0, [r4, #4]
	bl sub_02063394
	cmp r0, #1
	bne _02067ED0
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
#ifdef EUROPE
	ldr r1, _02068678 ; =0x00003826
	mov r0, #0x1c
#else
	mov r0, #0x1c
	rsb r1, r0, #0x3840
#endif
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_02067ED0:
	cmp r0, #0
	beq _02067F28
	add r0, sp, #0x10
	bl InitPreprocessorArgs
	ldrb r0, [r4, #4]
	str r0, [sp, #0x20]
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _020682EC ; =0x00003825
	add r2, sp, #0x10
	mov r0, #0x1c
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_02067F28:
	mov r0, r5
	mov r1, #3
	bl sub_0204D018
	mov r0, #5
	strb r0, [r4]
	ldrb r0, [r4, #4]
	sub r0, r0, #0x57
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _02067FE0
_02067F50: ; jump table
	b _02067F80 ; case 0
	b _02067F88 ; case 1
	b _02067F90 ; case 2
	b _02067F98 ; case 3
	b _02067FA0 ; case 4
	b _02067FA8 ; case 5
	b _02067FB0 ; case 6
	b _02067FB8 ; case 7
	b _02067FC0 ; case 8
	b _02067FC8 ; case 9
	b _02067FD0 ; case 10
	b _02067FD8 ; case 11
_02067F80:
	mov r0, #0xa
	b _020682D8
_02067F88:
	mov r0, #0xb
	b _020682D8
_02067F90:
	mov r0, #0xc
	b _020682D8
_02067F98:
	mov r0, #0xd
	b _020682D8
_02067FA0:
	mov r0, #0xe
	b _020682D8
_02067FA8:
	mov r0, #0xf
	b _020682D8
_02067FB0:
	mov r0, #0x10
	b _020682D8
_02067FB8:
	mov r0, #0x11
	b _020682D8
_02067FC0:
	mov r0, #0x12
	b _020682D8
_02067FC8:
	mov r0, #0x13
	b _020682D8
_02067FD0:
	mov r0, #0x14
	b _020682D8
_02067FD8:
	mov r0, #0x15
	b _020682D8
_02067FE0:
	ldrb r0, [r4, #1]
	cmp r0, #0xb
	bne _02068158
	ldrb r1, [r4, #2]
	cmp r1, #1
	blo _02068158
	cmp r1, #5
	bhi _02068158
	add r1, r4, #2
	mov r2, #0xff
	bl CheckAcceptedMissionByTypeAndDungeon
	cmp r0, #0
	beq _02068054
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _020682F0 ; =0x00003821
	mov r0, #0x1c
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_02068054:
	bl GetRank
	ldrb r1, [sp, #4]
	cmp r1, r0
	bhi _02068090
	bl GetScenarioBalance
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bgt _02068090
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020680D0
	mov r0, #0x16
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	bne _020680D0
_02068090:
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
#ifdef EUROPE
	mov r0, #0x1c
	rsb r1, r0, #0x3840
#else
	ldr r1, _020682F4 ; =0x00003822
	mov r0, #0x1c
#endif
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_020680D0:
	ldrb r0, [r4, #2]
	cmp r0, #5
	bne _02068158
	mov r0, #0
	bl sub_0204CA1C
	cmp r0, #0
	bne _0206812C
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _020682F8 ; =0x00003823
	mov r0, #0x1c
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_0206812C:
	mov r0, r5
	bl GetDungeonMode
	cmp r0, #3
	beq _02068158
	mov r0, r5
	mov r1, #3
	bl sub_0204D018
	mov r0, #5
	strb r0, [r4]
	mov r0, #0x16
	b _020682D8
_02068158:
	ldrb r1, [r4, #1]
	cmp r1, #6
	ldreqb r0, [r4, #2]
	cmpeq r0, #4
	bne _02068260
	ldrb r0, [r4, #4]
	bl sub_02063394
	mov r6, r0
	bl GetRank
	ldrb r1, [sp, #4]
	cmp r1, r0
	bhi _020681BC
	bl GetScenarioBalance
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bgt _020681BC
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020681B4
	mov r0, #0x16
	bl GetPerformanceFlagWithChecks
	cmp r0, #0
	beq _020681BC
_020681B4:
	cmp r6, #1
	bne _020681FC
_020681BC:
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _020682FC ; =0x00003826
	mov r0, #0x1c
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_020681FC:
	cmp r6, #0
	beq _02068244
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _02068300 ; =0x00003827
	mov r0, #0x1c
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_02068244:
	mov r2, #5
	mov r0, r5
	mov r1, #3
	strb r2, [r4]
	bl sub_0204D018
	mov r0, #0xe
	b _020682D8
_02068260:
	cmp r1, #0xc
	beq _020682B8
	ldrb r0, [r4, #4]
	bl sub_02062BB8
	cmp r0, #0
	bne _020682B8
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _02068304 ; =0x00003828
	mov r0, #0x1c
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_020682B8:
	mov r0, #5
	strb r0, [r4]
	bl sub_020686F4
	bl sub_0206937C
	ldr r1, _020682E0 ; =_020B0B2C
	mov r0, #0
	ldr r1, [r1, #0x14]
	str r0, [r1]
_020682D8:
	add sp, sp, #0x60
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_020682E0: .word _020B0B2C
_020682E4: .word 0x0000381F + SUB_02067C8C_WORD_OFFSET
_020682E8: .word 0x00003820 + SUB_02067C8C_WORD_OFFSET
#ifdef EUROPE
_02068678: .word 0x00003826
#endif
_020682EC: .word 0x00003825 + SUB_02067C8C_WORD_OFFSET
_020682F0: .word 0x00003821 + SUB_02067C8C_WORD_OFFSET
#ifndef EUROPE
_020682F4: .word 0x00003822
#endif
_020682F8: .word 0x00003823 + SUB_02067C8C_WORD_OFFSET
_020682FC: .word 0x00003826 + SUB_02067C8C_WORD_OFFSET
_02068300: .word 0x00003827 + SUB_02067C8C_WORD_OFFSET
_02068304: .word 0x00003828 + SUB_02067C8C_WORD_OFFSET
	arm_func_end sub_02067C8C

	arm_func_start sub_02068308
sub_02068308: ; 0x02068308
	mvn r2, #1
	cmp r0, r2
	moveq r0, #8
	bxeq lr
	sub r1, r2, #1
	cmp r0, r1
	moveq r0, #8
	bxeq lr
	add r1, r2, #1
	cmp r0, r1
	moveq r0, #0
	bx lr
	arm_func_end sub_02068308

	arm_func_start sub_02068338
sub_02068338: ; 0x02068338
	stmdb sp!, {r3, lr}
	ldr r0, _0206838C ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	add r2, r0, #0xee0
	mov r0, r1
_02068350:
	strb r0, [r2, r1]
	add r1, r1, #1
	cmp r1, #4
	blt _02068350
	ldr r0, _0206838C ; =_020B0B2C
	mov r1, #0x98
	ldr r0, [r0, #0x14]
	add r0, r0, #0x248
	add r0, r0, #0xc00
	bl MemZero
	ldr r0, _0206838C ; =_020B0B2C
	ldr r1, [r0, #0x14]
	add r0, r1, #0xee0
	str r0, [r1, #0xea8]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206838C: .word _020B0B2C
	arm_func_end sub_02068338

	arm_func_start sub_02068390
sub_02068390: ; 0x02068390
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	cmp r0, #0x12
	mov r4, #0
	addls pc, pc, r0, lsl #2
	b _020686E4
_020683AC: ; jump table
	b _020683F8 ; case 0
	b _02068468 ; case 1
	b _020684A0 ; case 2
	b _02068510 ; case 3
	b _020684D8 ; case 4
	b _02068548 ; case 5
	b _02068430 ; case 6
	b _02068580 ; case 7
	b _020686E4 ; case 8
	b _020684A0 ; case 9
	b _020685B8 ; case 10
	b _020685E8 ; case 11
	b _02068618 ; case 12
	b _02068634 ; case 13
	b _02068650 ; case 14
	b _020686E4 ; case 15
	b _020686E4 ; case 16
	b _020686E4 ; case 17
	b _02068680 ; case 18
_020683F8:
	ldr r1, _020686F0 ; =_020B0A54
	mov ip, r4
	mov r0, #0xb0
_02068404:
	mul r2, ip, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #0
	movne r2, r4, lsl #1
	strneh ip, [r5, r2]
	add ip, ip, #1
	addne r4, r4, #1
	cmp ip, #0x20
	blt _02068404
	b _020686E4
_02068430:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_0206843C:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #6
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _0206843C
	b _020686E4
_02068468:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_02068474:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #1
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _02068474
	b _020686E4
_020684A0:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_020684AC:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #2
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _020684AC
	b _020686E4
_020684D8:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_020684E4:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #4
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _020684E4
	b _020686E4
_02068510:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_0206851C:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #3
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _0206851C
	b _020686E4
_02068548:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_02068554:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #5
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _02068554
	b _020686E4
_02068580:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_0206858C:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #7
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _0206858C
	b _020686E4
_020685B8:
	mov r6, r4
_020685BC:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205E984
	cmp r0, #0
	moveq r0, r4, lsl #1
	streqh r6, [r5, r0]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #8
	blt _020685BC
	b _020686E4
_020685E8:
	mov r6, r4
_020685EC:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EB00
	cmp r0, #0
	moveq r0, r4, lsl #1
	streqh r6, [r5, r0]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #8
	blt _020685EC
	b _020686E4
_02068618:
	mov r0, r4
	bl sub_0205EBF0
	cmp r0, #0
	moveq r0, r4
	streqh r0, [r5]
	addeq r4, r4, #1
	b _020686E4
_02068634:
	mov r0, r4
	bl sub_0205EC50
	cmp r0, #0
	moveq r0, r4
	streqh r0, [r5]
	addeq r4, r4, #1
	b _020686E4
_02068650:
	mov r6, r4
_02068654:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205F0F0
	cmp r0, #0
	moveq r0, r4, lsl #1
	streqh r6, [r5, r0]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #8
	blt _02068654
	b _020686E4
_02068680:
	sub r0, r4, #1
	strb r0, [sp]
	bl sub_0204E210
	cmp r0, #2
	bne _020686A8
	add r0, sp, #0
	bl sub_0204F1B4
	cmp r0, #0
	mvneq r0, #0
	streqb r0, [sp]
_020686A8:
	ldrsb ip, [sp]
	ldr r1, _020686F0 ; =_020B0A54
	mov lr, #2
	mov r0, #0xb0
_020686B8:
	cmp ip, lr
	mulne r2, lr, r0
	ldrne r3, [r1]
	ldrneb r2, [r3, r2]
	cmpne r2, #0
	movne r2, r4, lsl #1
	strneh lr, [r5, r2]
	add lr, lr, #1
	addne r4, r4, #1
	cmp lr, #0x20
	blt _020686B8
_020686E4:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_020686F0: .word _020B0A54
	arm_func_end sub_02068390

	arm_func_start sub_020686F4
sub_020686F4: ; 0x020686F4
#ifdef EUROPE
#define SUB_020686F4_WORD_OFFSET 2
#else
#define SUB_020686F4_WORD_OFFSET 0
#endif
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x68
	ldr r0, _02068E14 ; =_020B0B2C
	mov r4, #0
	ldr r7, [r0, #0x14]
	ldr r5, [r7, #4]
	cmp r5, #0x15
	addls pc, pc, r5, lsl #2
	b _02068E08
_02068718: ; jump table
	b _02068770 ; case 0
	b _02068770 ; case 1
	b _02068770 ; case 2
	b _02068770 ; case 3
	b _02068770 ; case 4
	b _02068770 ; case 5
	b _02068770 ; case 6
	b _02068770 ; case 7
	b _02068770 ; case 8
	b _02068770 ; case 9
	b _020688D0 ; case 10
	b _02068960 ; case 11
	b _020689F0 ; case 12
	b _02068A6C ; case 13
	b _02068AE8 ; case 14
	b _02068AE8 ; case 15
	b _02068AE8 ; case 16
	b _02068AE8 ; case 17
	b _02068770 ; case 18
	b _02068C48 ; case 19
	b _02068CA4 ; case 20
	b _02068D00 ; case 21
_02068770:
	add r1, r7, #0x188
	mov r0, r5
	add r4, r1, #0xc00
	bl sub_02067584
	cmp r0, #0
	movne r4, #0
	bne _02068E08
	ldr r0, _02068E14 ; =_020B0B2C
	add r1, r7, #0xc
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	bl sub_02068390
	str r0, [r7, #0x6c]
	mov r0, #0
	bl sub_0205B77C
	bl sub_02068E7C
	mov r1, #0
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	cmp r5, #9
	bgt _02068800
	cmp r5, #0
	addge pc, pc, r5, lsl #2
	b _020688C0
_020687D8: ; jump table
	b _020688C0 ; case 0
	b _020688C0 ; case 1
	b _02068838 ; case 2
	b _0206880C ; case 3
	b _0206880C ; case 4
	b _0206882C ; case 5
	b _020688C0 ; case 6
	b _020688C0 ; case 7
	b _020688C0 ; case 8
	b _02068838 ; case 9
_02068800:
	cmp r5, #0x12
	beq _02068858
	b _020688C0
_0206880C:
	ldr r0, _02068E14 ; =_020B0B2C
	ldr r1, _02068E1C ; =_020B0B2E
	ldrsb r2, [r0, #2]
	ldr r0, _02068E20 ; =0x00003815
	str r2, [r7, #8]
	str r1, [r7, #0xef0]
	strh r0, [r4, #8]
	b _020688C8
_0206882C:
	ldr r0, _02068E24 ; =0x00003817
	strh r0, [r4, #8]
	b _020688C8
_02068838:
	ldr r1, _02068E28 ; =0x00003816
	ldr r0, _02068E14 ; =_020B0B2C
	strh r1, [r4, #8]
	ldrsb r1, [r0, #5]
	ldr r0, _02068E2C ; =_020B0B31
	str r1, [r7, #8]
	str r0, [r7, #0xef0]
	b _020688C8
_02068858:
	ldr r1, _02068E30 ; =0x00003818
	ldr r0, _02068E34 ; =sub_02069598
	strh r1, [r4, #8]
	str r0, [r7, #0xe40]
	mov r1, #1
	ldr r0, _02068E14 ; =_020B0B2C
	strb r1, [r7, #0x7c]
	ldrsb r1, [r0, #1]
	ldr r0, _02068E38 ; =_020B0B2D
	str r1, [r7, #8]
	str r0, [r7, #0xef0]
	b _020688A4
_02068888:
	bl sub_020693EC
	ldrb r0, [r0]
	cmp r0, #0
	bne _020688B0
	ldr r0, [r7, #8]
	sub r0, r0, #1
	str r0, [r7, #8]
_020688A4:
	ldr r0, [r7, #8]
	cmp r0, #0
	bgt _02068888
_020688B0:
	ldr r1, [r7, #8]
	ldr r0, _02068E14 ; =_020B0B2C
	strb r1, [r0, #1]
	b _020688C8
_020688C0:
	ldr r0, _02068E3C ; =0x00003F1E
	strh r0, [r4, #8]
_020688C8:
	mov r4, #1
	b _02068E08
_020688D0:
	add r0, r7, #0x188
	mov r6, r4
	add r5, r0, #0xc00
_020688DC:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205E984
	cmp r0, #0
	addeq r0, r7, r4, lsl #1
	streqh r6, [r0, #0xc]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #8
	blt _020688DC
	str r4, [r7, #0x6c]
	cmp r4, #0
	moveq r4, #0
	beq _02068E08
	mov r0, #0
	bl sub_0205E970
	ldr r1, _02068E40 ; =sub_02069074
	mov r2, #0
	bl sub_020690D8
	ldr r1, _02068E44 ; =0x00003819
	ldr r0, _02068E14 ; =_020B0B2C
	strh r1, [r5, #8]
	ldrsb r2, [r0, #0x12]
	ldr r0, _02068E48 ; =_020B0B3E
	mov r1, #0
	str r2, [r7, #8]
	str r0, [r7, #0xef0]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	mov r4, #1
	b _02068E08
_02068960:
	add r0, r7, #0x188
	mov r6, r4
	add r5, r0, #0xc00
_0206896C:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EB00
	cmp r0, #0
	addeq r0, r7, r4, lsl #1
	streqh r6, [r0, #0xc]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #8
	blt _0206896C
	str r4, [r7, #0x6c]
	cmp r4, #0
	moveq r4, #0
	beq _02068E08
	mov r0, #0
	bl sub_0205EAE8
	ldr r1, _02068E40 ; =sub_02069074
	mov r2, #0
	bl sub_020690D8
	ldr r1, _02068E4C ; =0x0000381A
	ldr r0, _02068E14 ; =_020B0B2C
	strh r1, [r5, #8]
	ldrsb r2, [r0, #0x11]
	ldr r0, _02068E50 ; =_020B0B3D
	mov r1, #0
	str r2, [r7, #8]
	str r0, [r7, #0xef0]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	mov r4, #1
	b _02068E08
_020689F0:
	add r1, r7, #0x188
	mov r0, r4
	add r5, r1, #0xc00
	bl sub_0205EBF0
	cmp r0, #0
	moveq r0, r4
	streqh r0, [r7, #0xc]
	addeq r4, r4, #1
	str r4, [r7, #0x6c]
	cmp r4, #0
	moveq r4, #0
	beq _02068E08
	mov r0, #0
	bl sub_0205EBD8
	ldr r1, _02068E40 ; =sub_02069074
	mov r2, #0
	bl sub_020690D8
	ldr r1, _02068E54 ; =0x0000381B
	ldr r0, _02068E14 ; =_020B0B2C
	strh r1, [r5, #8]
	ldrsb r2, [r0, #0xa]
	ldr r0, _02068E58 ; =_020B0B36
	mov r1, #0
	str r2, [r7, #8]
	str r0, [r7, #0xef0]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	mov r4, #1
	b _02068E08
_02068A6C:
	add r1, r7, #0x188
	mov r0, r4
	add r5, r1, #0xc00
	bl sub_0205EC50
	cmp r0, #0
	moveq r0, r4
	streqh r0, [r7, #0xc]
	addeq r4, r4, #1
	str r4, [r7, #0x6c]
	cmp r4, #0
	moveq r4, #0
	beq _02068E08
	mov r0, #0
	bl sub_0205EC38
	ldr r1, _02068E40 ; =sub_02069074
	mov r2, #0
	bl sub_020690D8
	ldr r1, _02068E5C ; =0x0000381C
	ldr r0, _02068E14 ; =_020B0B2C
	strh r1, [r5, #8]
	ldrsb r2, [r0, #0xf]
	ldr r0, _02068E60 ; =_020B0B3B
	mov r1, #0
	str r2, [r7, #8]
	str r0, [r7, #0xef0]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	mov r4, #1
	b _02068E08
_02068AE8:
	add r0, r7, #0x188
	cmp r5, #0x11
	add r8, r0, #0xc00
	bne _02068B74
	bl sub_0204E210
	cmp r0, #1
	bne _02068B74
	mov r6, r4
_02068B08:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	mov r1, r6, lsl #0x18
	mov r5, r0
	mov r0, r1, asr #0x18
	bl sub_0205F0F0
	cmp r0, #0
	bne _02068B64
	bl GetAdventureLogDungeonFloor
	ldrb r1, [r5, #4]
	ldrb r0, [r0]
	cmp r1, r0
	bne _02068B58
	ldrb r0, [r5]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	beq _02068B64
_02068B58:
	add r0, r7, r4, lsl #1
	strh r6, [r0, #0xc]
	add r4, r4, #1
_02068B64:
	add r6, r6, #1
	cmp r6, #8
	blt _02068B08
	b _02068BA0
_02068B74:
	mov r5, #0
_02068B78:
	mov r0, r5, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205F0F0
	cmp r0, #0
	addeq r0, r7, r4, lsl #1
	streqh r5, [r0, #0xc]
	add r5, r5, #1
	addeq r4, r4, #1
	cmp r5, #8
	blt _02068B78
_02068BA0:
	str r4, [r7, #0x6c]
	cmp r4, #0
	moveq r4, #0
	beq _02068E08
	mov r0, #0
	bl GetAcceptedMission
	mov r1, #0
	mov r2, #1
	bl sub_020690D8
	ldr r0, _02068E14 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	ldr r1, [r1, #4]
	cmp r1, #0xe
	bne _02068BF4
	ldr r2, _02068E64 ; =0x0000381D
	ldr r1, _02068E68 ; =_020B0B2C
	strh r2, [r8, #8]
	ldrsb r0, [r0]
	str r0, [r7, #8]
	str r1, [r7, #0xef0]
	b _02068C18
_02068BF4:
#ifdef EUROPE
	sub r0, r1, #0xf
	cmp r0, #2
	bhi _02068C18
	cmp r1, #0x11
	ldreq r1, _02068E64 ; =0x0000381F
	ldr r0, _02068E14 ; =_020B0B2C
	ldrne r1, _02068E6C ; =0x00003820
	strh r1, [r8, #8]
	ldrsb r1, [r0, #0x13]
	ldr r0, _02068E70 ; =_020B0B3F
	str r1, [r7, #8]
	str r0, [r7, #0xef0]
#else
	sub r1, r1, #0xf
	cmp r1, #2
	bhi _02068C18
	ldr r2, _02068E6C ; =0x0000381E
	ldr r1, _02068E70 ; =_020B0B3F
	strh r2, [r8, #8]
	ldrsb r0, [r0, #0x13]
	str r0, [r7, #8]
	str r1, [r7, #0xef0]
#endif
_02068C18:
	ldr r1, [r7, #0x6c]
	ldr r0, [r7, #8]
	mov r4, #1
	cmp r0, r1
	subge r0, r1, #1
	strge r0, [r7, #8]
	mov r1, #0
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	b _02068E08
_02068C48:
	add r0, r7, #0x188
	add r5, r0, #0xc00
	ldr r0, [r7, #0x74]
	mov r2, r4
	b _02068C70
_02068C5C:
	add r1, r7, r4, lsl #1
	strh r4, [r1, #0xc]
	add r1, r7, r4
	strb r2, [r1, #0x4c]
	add r4, r4, #1
_02068C70:
	ldr r1, [r7, #0x6c]
	cmp r4, r1
	blt _02068C5C
	bl sub_02068E7C
	ldr r0, _02068E28 ; =0x00003816
	ldr r1, _02068E34 ; =sub_02069598
	strh r0, [r5, #8]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	mov r4, #1
	strb r4, [r7, #0x7c]
	b _02068E08
_02068CA4:
	add r0, r7, #0x188
	add r5, r0, #0xc00
	b _02068CBC
_02068CB0:
	add r0, r7, r4, lsl #1
	strh r4, [r0, #0xc]
	add r4, r4, #1
_02068CBC:
	ldr r0, [r7, #0x6c]
	cmp r4, r0
	blt _02068CB0
	bl sub_0206901C
	ldr r0, [r7, #0x74]
	ldr r1, _02068E74 ; =sub_020690A4
	mov r2, #0
	bl sub_020690D8
	ldr r0, _02068E6C ; =0x0000381E
	mov r1, #0
	strh r0, [r5, #8]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	mov r4, #1
	b _02068E08
_02068D00:
	add r0, r7, #0x188
	add r6, r0, #0xc00
	b _02068D18
_02068D0C:
	add r0, r7, r4, lsl #1
	strh r4, [r0, #0xc]
	add r4, r4, #1
_02068D18:
	ldr r0, [r7, #0x6c]
	cmp r4, r0
	blt _02068D0C
	mov r8, #0
	str r8, [r7, #0x80]
	add r5, sp, #0
	add r4, sp, #0x47
	add fp, sp, #0x48
	mov sb, #0x68
	b _02068DB0
_02068D40:
	add r0, r7, r8, lsl #1
	ldrsh r0, [r0, #0xc]
	ldr r2, [r7, #0x74]
	mov r1, r5
	add sl, r2, r0, lsl #5
	mov r0, sl
	bl sub_02060150
	mov r0, sl
	mov r1, r4
	mov r2, fp
	mov r3, #0
	bl sub_02069958
	str sl, [sp, #0x5c]
	ldr r1, [r7, #0x80]
	add sl, sp, #0
	mla r0, r1, sb, r7
	add lr, r0, #0x84
	mov ip, #6
_02068D88:
	ldmia sl!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _02068D88
	ldmia sl, {r0, r1}
	stmia lr, {r0, r1}
	ldr r0, [r7, #0x80]
	add r8, r8, #1
	add r0, r0, #1
	str r0, [r7, #0x80]
_02068DB0:
	ldr r0, [r7, #0x6c]
	cmp r8, r0
	blt _02068D40
	bl sub_0206901C
	mov r1, #0
	ldr r0, _02068E6C ; =0x0000381E
	str r1, [r6]
	strh r0, [r6, #8]
	mov r0, #0x10
	str r0, [r6, #0xc]
	mov r0, #0x1a
	str r0, [r6, #4]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	ldr r0, _02068E14 ; =_020B0B2C
	strb r1, [r7, #0x7c]
	ldrsb r1, [r0, #3]
	ldr r0, _02068E78 ; =_020B0B2F
	mov r4, #1
	str r1, [r7, #8]
	str r0, [r7, #0xef0]
_02068E08:
	mov r0, r4
	add sp, sp, #0x68
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02068E14: .word _020B0B2C
_02068E18: .word sub_02069660
_02068E1C: .word _020B0B2E
_02068E20: .word 0x00003815 + SUB_020686F4_WORD_OFFSET
_02068E24: .word 0x00003817 + SUB_020686F4_WORD_OFFSET
_02068E28: .word 0x00003816 + SUB_020686F4_WORD_OFFSET
_02068E2C: .word _020B0B31
_02068E30: .word 0x00003818 + SUB_020686F4_WORD_OFFSET
_02068E34: .word sub_02069598
_02068E38: .word _020B0B2D
_02068E3C: .word 0x00003F1E + SUB_020686F4_WORD_OFFSET
_02068E40: .word sub_02069074
_02068E44: .word 0x00003819 + SUB_020686F4_WORD_OFFSET
_02068E48: .word _020B0B3E
_02068E4C: .word 0x0000381A + SUB_020686F4_WORD_OFFSET
_02068E50: .word _020B0B3D
_02068E54: .word 0x0000381B + SUB_020686F4_WORD_OFFSET
_02068E58: .word _020B0B36
_02068E5C: .word 0x0000381C + SUB_020686F4_WORD_OFFSET
_02068E60: .word _020B0B3B
_02068E64: .word 0x0000381D + SUB_020686F4_WORD_OFFSET
_02068E68: .word _020B0B2C
_02068E6C: .word 0x0000381E + SUB_020686F4_WORD_OFFSET
_02068E70: .word _020B0B3F
_02068E74: .word sub_020690A4
_02068E78: .word _020B0B2F
	arm_func_end sub_020686F4

	arm_func_start sub_02068E7C
sub_02068E7C: ; 0x02068E7C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x68
	ldr r1, _02069018 ; =_020B0B2C
	mov r8, r0
	ldr r7, [r1, #0x14]
	add r4, r7, #0x188
	bl sub_0206901C
	mov r5, #0
	str r5, [r7, #0xd88]
	mov r0, #0x10
	str r0, [r4, #0xc0c]
	str r5, [r7, #0x80]
	b _02068FF4
_02068EB0:
	add r0, r7, r5, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r2, #0
	mov r1, #7
	mov r0, r0, lsl #0x18
	mov r3, r0, asr #0x18
	mov r0, #0xb0
	mla r6, r3, r0, r8
	add r0, r6, #4
	strb r2, [sp, #0x46]
	strb r2, [sp, #0x48]
	str r0, [sp, #8]
	strh r2, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r2, [sp, #0x16]
	strb r1, [sp, #0x1a]
	str r2, [sp, #0x5c]
	str r6, [sp, #0x64]
	bl GetLanguageType
	ldrsb r1, [r6, #0x1c]
	cmp r1, r0
	movne r0, #0
	strne r0, [sp, #0xc]
	strne r0, [sp, #0x54]
	strne r0, [sp, #0x58]
	bne _02068F34
	add r2, r6, #0x1d
	add r1, r6, #0x32
	add r0, r6, #0x56
	str r2, [sp, #0xc]
	str r1, [sp, #0x54]
	str r0, [sp, #0x58]
_02068F34:
	ldr r0, [sp, #0x54]
	mov r1, #1
	cmp r0, #0
	ldrneh r0, [r0]
	cmpne r0, #0
	movne r1, #0
	cmp r1, #0
	movne r1, #0
	moveq r1, #6
	ldrb r0, [r6]
	strb r1, [sp, #0x44]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02068FAC
_02068F6C: ; jump table
	b _02068FAC ; case 0
	b _02068FA0 ; case 1
	b _02068FA0 ; case 2
	b _02068FAC ; case 3
	b _02068F88 ; case 4
	b _02068F94 ; case 5
	b _02068F94 ; case 6
_02068F88:
	mov r0, #3
	strb r0, [sp, #0x47]
	b _02068FB4
_02068F94:
	mov r0, #4
	strb r0, [sp, #0x47]
	b _02068FB4
_02068FA0:
	mov r0, #1
	strb r0, [sp, #0x47]
	b _02068FB4
_02068FAC:
	mov r0, #2
	strb r0, [sp, #0x47]
_02068FB4:
	ldr r1, [r7, #0x80]
	mov r0, #0x68
	mla r0, r1, r0, r7
	add lr, sp, #0
	add ip, r0, #0x84
	mov r6, #6
_02068FCC:
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _02068FCC
	ldmia lr, {r0, r1}
	stmia ip, {r0, r1}
	ldr r0, [r7, #0x80]
	add r5, r5, #1
	add r0, r0, #1
	str r0, [r7, #0x80]
_02068FF4:
	ldr r0, [r7, #0x6c]
	cmp r5, r0
	blt _02068EB0
	mov r0, #0x10
	str r0, [r4, #0xc0c]
	mov r0, #0x1a
	str r0, [r4, #0xc04]
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02069018: .word _020B0B2C
	arm_func_end sub_02068E7C

	arm_func_start sub_0206901C
sub_0206901C: ; 0x0206901C
	stmdb sp!, {r3, lr}
	ldr r0, _02069070 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	add r2, r0, #0xe20
	mov r0, r1
_02069034:
	strb r0, [r2, r1]
	add r1, r1, #1
	cmp r1, #0x20
	blt _02069034
	ldr r0, _02069070 ; =_020B0B2C
	mov r1, #0x98
	ldr r0, [r0, #0x14]
	add r0, r0, #0x188
	add r0, r0, #0xc00
	bl MemZero
	ldr r0, _02069070 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	add r0, r1, #0xe20
	str r0, [r1, #0xde8]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02069070: .word _020B0B2C
	arm_func_end sub_0206901C

	arm_func_start sub_02069074
sub_02069074: ; 0x02069074
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl sub_0205EC98
	cmp r0, #0
	movne r0, #3
	strneb r0, [r4]
	bl sub_0205ED84
	cmp r0, #8
	ldrgeb r0, [r4]
	orrge r0, r0, #1
	strgeb r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02069074

	arm_func_start sub_020690A4
sub_020690A4: ; 0x020690A4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_0205EC98
	cmp r0, #0
	bne _020690CC
	mov r0, r5
	bl sub_0205FA38
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020690CC:
	mov r0, #3
	strb r0, [r4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020690A4

	arm_func_start sub_020690D8
sub_020690D8: ; 0x020690D8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x68
	ldr r3, _020691B4 ; =_020B0B2C
	mov sb, r0
	ldr r6, [r3, #0x14]
	mov r8, r1
	mov r7, r2
	bl sub_0206901C
	mov r5, #0
	str r5, [r6, #0x80]
	add r4, r6, #0xe20
	mov fp, #0x68
	b _02069188
_0206910C:
	add r0, r6, r5, lsl #1
	ldrsh r0, [r0, #0xc]
	add r1, sp, #0
	add sl, sb, r0, lsl #5
	mov r0, sl
	bl sub_02060150
	mov r0, sl
	add r1, sp, #0x47
	add r2, sp, #0x48
	mov r3, r7
	bl sub_02069958
	cmp r8, #0
	beq _0206914C
	mov r0, sl
	add r1, r4, r5
	blx r8
_0206914C:
	ldr r1, [r6, #0x80]
	add sl, sp, #0
	mla r0, r1, fp, r6
	add lr, r0, #0x84
	mov ip, #6
_02069160:
	ldmia sl!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _02069160
	ldmia sl, {r0, r1}
	stmia lr, {r0, r1}
	ldr r0, [r6, #0x80]
	add r5, r5, #1
	add r0, r0, #1
	str r0, [r6, #0x80]
_02069188:
	ldr r0, [r6, #0x6c]
	cmp r5, r0
	blt _0206910C
	mov r0, #0
	str r0, [r6, #0xd88]
	mov r0, #0x10
	str r0, [r6, #0xd94]
	mov r0, #0x1a
	str r0, [r6, #0xd8c]
	add sp, sp, #0x68
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020691B4: .word _020B0B2C
	arm_func_end sub_020690D8

	arm_func_start sub_020691B8
sub_020691B8: ; 0x020691B8
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r2, _020692A8 ; =_020B0B2C
	mvn r1, #1
	ldr ip, [r2, #0x14]
	ldrsb r0, [ip, #0x7d]
	cmp r0, r1
	bne _0206926C
	ldr r0, [ip, #8]
	mov r3, #4
	str r0, [ip, #0xd88]
	ldr lr, [r2, #0x14]
	ldr r0, _020692AC ; =_020A9288
	ldr r1, [lr, #0xe40]
	add r2, lr, #0x188
	str r1, [sp]
	ldr ip, [lr, #0x80]
	ldr r1, _020692B0 ; =0x00441E33
	str ip, [sp, #4]
	str r3, [sp, #8]
	ldr r3, [lr, #0xe44]
	add r2, r2, #0xc00
	bl CreateCollectionMenu
	ldr r3, _020692A8 ; =_020B0B2C
	mov r1, #0
	ldr ip, [r3, #0x14]
	mov r2, #0xc
	strb r0, [ip, #0x7d]
	ldr r0, [r3, #0x14]
	ldrsb r0, [r0, #0x7d]
	bl sub_0202C6F0
	ldr r0, _020692A8 ; =_020B0B2C
	mov r1, #1
	ldr r0, [r0, #0x14]
	ldrsb r0, [r0, #0x7d]
	bl SetCollectionMenuField0x1B2
	ldr r0, _020692A8 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #0x7c]
	cmp r0, #0
	bne _02069290
	ldrsb r0, [r1, #0x7d]
	mov r1, #1
	bl sub_0202D07C
	b _02069290
_0206926C:
	ldrb r1, [ip, #0xd84]
	cmp r1, #0
	beq _0206928C
	ldr r1, [ip, #0x80]
	mov r2, #4
	mov r3, #0
	bl sub_0202C654
	b _02069290
_0206928C:
	bl sub_0202C620
_02069290:
	ldr r0, _020692A8 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	strb r1, [r0, #0xd84]
	add sp, sp, #0xc
	ldmia sp!, {pc}
	.align 2, 0
_020692A8: .word _020B0B2C
_020692AC: .word _020A9288
_020692B0: .word 0x00441E33
	arm_func_end sub_020691B8

	arm_func_start sub_020692B4
sub_020692B4: ; 0x020692B4
	stmdb sp!, {r3, lr}
	ldr r0, _020692F8 ; =_020B0B2C
	mvn r1, #1
	ldr r0, [r0, #0x14]
	ldrsb r0, [r0, #0x7d]
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl sub_0202836C
	ldr r0, _020692F8 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldrsb r0, [r0, #0x7d]
	bl CloseCollectionMenu
	ldr r0, _020692F8 ; =_020B0B2C
	mvn r1, #1
	ldr r0, [r0, #0x14]
	strb r1, [r0, #0x7d]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020692F8: .word _020B0B2C
	arm_func_end sub_020692B4

	arm_func_start sub_020692FC
sub_020692FC: ; 0x020692FC
	stmdb sp!, {r3, lr}
	ldr r0, _02069378 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r1, [r0, #4]
	sub r0, r1, #0xe
	cmp r0, #3
	bhi _02069328
	bl sub_02069444
	mov r1, #1
	bl sub_02069800
	ldmia sp!, {r3, pc}
_02069328:
	cmp r1, #0xa
	cmpne r1, #0xb
	cmpne r1, #0xc
	cmpne r1, #0xd
	beq _02069348
	sub r0, r1, #0x14
	cmp r0, #1
	bhi _02069358
_02069348:
	bl sub_02069444
	mov r1, #0
	bl sub_02069800
	ldmia sp!, {r3, pc}
_02069358:
	cmp r1, #0x13
	bne _0206936C
	bl sub_0206941C
	bl sub_02069790
	ldmia sp!, {r3, pc}
_0206936C:
	bl sub_020693EC
	bl sub_02069790
	ldmia sp!, {r3, pc}
	.align 2, 0
_02069378: .word _020B0B2C
	arm_func_end sub_020692FC

	arm_func_start sub_0206937C
sub_0206937C: ; 0x0206937C
	stmdb sp!, {r3, lr}
	ldr r0, _020693E8 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r1, [r0, #4]
	cmp r1, #0xa
	cmpne r1, #0xb
	cmpne r1, #0xc
	cmpne r1, #0xd
	cmpne r1, #0xe
	cmpne r1, #0xf
	cmpne r1, #0x10
	cmpne r1, #0x11
	beq _020693BC
	sub r0, r1, #0x14
	cmp r0, #1
	bhi _020693C8
_020693BC:
	bl sub_02069444
	bl sub_02069894
	ldmia sp!, {r3, pc}
_020693C8:
	cmp r1, #0x13
	bne _020693DC
	bl sub_0206941C
	bl sub_02069870
	ldmia sp!, {r3, pc}
_020693DC:
	bl sub_020693EC
	bl sub_02069870
	ldmia sp!, {r3, pc}
	.align 2, 0
_020693E8: .word _020B0B2C
	arm_func_end sub_0206937C

	arm_func_start sub_020693EC
sub_020693EC: ; 0x020693EC
	ldr r1, _02069414 ; =_020B0B2C
	ldr r0, _02069418 ; =_020B0A54
	ldr r3, [r1, #0x14]
	ldr r2, [r0]
	ldr r1, [r3, #8]
	mov r0, #0xb0
	add r1, r3, r1, lsl #1
	ldrsh r1, [r1, #0xc]
	smlabb r0, r1, r0, r2
	bx lr
	.align 2, 0
_02069414: .word _020B0B2C
_02069418: .word _020B0A54
	arm_func_end sub_020693EC

	arm_func_start sub_0206941C
sub_0206941C: ; 0x0206941C
	ldr r1, _02069440 ; =_020B0B2C
	mov r0, #0xb0
	ldr r3, [r1, #0x14]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0x74]
	add r1, r3, r1, lsl #1
	ldrsh r1, [r1, #0xc]
	smlabb r0, r1, r0, r2
	bx lr
	.align 2, 0
_02069440: .word _020B0B2C
	arm_func_end sub_0206941C

	arm_func_start sub_02069444
sub_02069444: ; 0x02069444
	stmdb sp!, {r3, lr}
	ldr r0, _02069558 ; =_020B0B2C
	ldr r2, [r0, #0x14]
	ldr r0, [r2, #4]
	sub r0, r0, #0xa
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _02069550
_02069464: ; jump table
	b _02069494 ; case 0
	b _020694B0 ; case 1
	b _020694CC ; case 2
	b _020694E8 ; case 3
	b _02069504 ; case 4
	b _02069504 ; case 5
	b _02069504 ; case 6
	b _02069504 ; case 7
	b _02069550 ; case 8
	b _02069550 ; case 9
	b _02069520 ; case 10
	b _02069538 ; case 11
_02069494:
	ldr r0, [r2, #8]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205E970
	ldmia sp!, {r3, pc}
_020694B0:
	ldr r0, [r2, #8]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EAE8
	ldmia sp!, {r3, pc}
_020694CC:
	ldr r0, [r2, #8]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EBD8
	ldmia sp!, {r3, pc}
_020694E8:
	ldr r0, [r2, #8]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EC38
	ldmia sp!, {r3, pc}
_02069504:
	ldr r0, [r2, #8]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	ldmia sp!, {r3, pc}
_02069520:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x74]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	add r0, r1, r0, lsl #5
	ldmia sp!, {r3, pc}
_02069538:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x74]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	add r0, r1, r0, lsl #5
	ldmia sp!, {r3, pc}
_02069550:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02069558: .word _020B0B2C
	arm_func_end sub_02069444

	arm_func_start sub_0206955C
sub_0206955C: ; 0x0206955C
	stmdb sp!, {r3, lr}
	ldr r0, _02069594 ; =_020B0B2C
	mvn r1, #1
	ldr r0, [r0, #0x14]
	add r0, r0, #0xd00
	ldrsb r0, [r0, #0x85]
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ClosePortraitBox
	ldr r0, _02069594 ; =_020B0B2C
	mvn r1, #1
	ldr r0, [r0, #0x14]
	strb r1, [r0, #0xd85]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02069594: .word _020B0B2C
	arm_func_end sub_0206955C

	arm_func_start sub_02069598
sub_02069598: ; 0x02069598
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _0206965C ; =_020B0B2C
	tst r0, #0x400
	ldr r5, [r1, #0x14]
	beq _02069654
	ldrsb r0, [r5, #0x7d]
	ldr r6, [r5, #8]
	bl sub_0202C748
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _0206964C
	add r4, r5, #0x4c
	ldrb r0, [r4, r6]
	cmp r0, #0
	beq _02069600
	mov r0, #6
	bl PlaySeVolumeWrapper
	mov r0, #0
	strb r0, [r4, r6]
	bl sub_020674E8
	cmp r0, #0
	bne _02069644
	ldrsb r0, [r5, #0x7d]
	mov r1, #0
	bl sub_0202D07C
	b _02069644
_02069600:
	ldr r0, [r5, #0x78]
	cmp r0, #0
	blt _0206961C
	bl sub_020674E8
	ldr r1, [r5, #0x78]
	cmp r0, r1
	bhs _0206963C
_0206961C:
	mov r0, #6
	bl PlaySeVolumeWrapper
	ldrsb r0, [r5, #0x7d]
	mov r1, #1
	bl sub_0202D07C
	mov r0, #1
	strb r0, [r4, r6]
	b _02069644
_0206963C:
	mov r0, #2
	bl PlaySeVolumeWrapper
_02069644:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_0206964C:
	mov r0, #3
	bl PlaySeVolumeWrapper
_02069654:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0206965C: .word _020B0B2C
	arm_func_end sub_02069598

	arm_func_start sub_02069660
sub_02069660: ; 0x02069660
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, _020696E4 ; =_020B0B2C
	mov r5, r0
	ldr r0, [r3, #0x14]
	add r0, r0, r1
	ldrb r0, [r0, #0x4c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r2]
	mov r0, #0x68
	mul r4, r1, r0
	ldr r0, _020696E4 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, r4
	ldr r0, [r0, #0xe0]
	cmp r0, #0
	beq _020696C4
	bl sub_0205E238
	cmp r0, #0
	beq _020696C4
	mov r0, r5
	bl sub_02060E24
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
_020696C4:
	ldr r1, _020696E4 ; =_020B0B2C
	mov r0, r5
	ldr r1, [r1, #0x14]
	add r1, r1, #0x84
	add r1, r1, r4
	bl sub_02060AFC
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020696E4: .word _020B0B2C
	arm_func_end sub_02069660

	arm_func_start sub_020696E8
sub_020696E8: ; 0x020696E8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x154
	mov r4, r0
	add r0, sp, #0x104
	bl InitPreprocessorArgs
	bl sub_0205ED84
	str r0, [sp, #0x128]
	mov r0, #8
	str r0, [sp, #0x12c]
	add r3, sp, #0x104
	str r3, [sp]
	ldr r2, _0206974C ; =0x00003813
	add r0, sp, #4
	mov r1, #0x100
	mov r3, #0
	bl PreprocessStringFromId
	mov r0, r4
	mov r1, #0
	mov r2, #3
	add r3, sp, #4
	bl DrawTextInWindow
	mov r0, r4
	bl UpdateWindow
	add sp, sp, #0x154
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
#ifdef EUROPE
_0206974C: .word 0x00003815
#else
_0206974C: .word 0x00003813
#endif
	arm_func_end sub_020696E8

	arm_func_start sub_02069750
sub_02069750: ; 0x02069750
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x100
	ldr r1, _0206978C ; =0x00003814
	mov r4, r0
	add r0, sp, #0
	bl GetStringFromFileVeneer
	add r3, sp, #0
	mov r0, r4
	mov r1, #0
	mov r2, #3
	bl DrawTextInWindow
	mov r0, r4
	bl UpdateWindow
	add sp, sp, #0x100
	ldmia sp!, {r4, pc}
	.align 2, 0
#ifdef EUROPE
_0206978C: .word 0x00003816
#else
_0206978C: .word 0x00003814
#endif
	arm_func_end sub_02069750

	arm_func_start sub_02069790
sub_02069790: ; 0x02069790
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x14
	mov r1, #8
	bl MemAlloc
	ldr r2, _020697F4 ; =_020B0B44
	mov r1, #0x14
	str r0, [r2]
	bl MemZero
	ldr r0, _020697F4 ; =_020B0B44
	mov ip, #0
	ldr r2, [r0]
	ldr r1, _020697F8 ; =JOB_WINDOW_PARAMS_2
	str r4, [r2]
	ldr r3, [r0]
	ldr r2, _020697FC ; =sub_02069AEC
	strh ip, [r3, #8]
	ldr r0, [r0]
	add r0, r0, #0xc
	bl sub_0204707C
	ldr r0, _020697F4 ; =_020B0B44
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x10]
	ldmia sp!, {r4, pc}
	.align 2, 0
_020697F4: .word _020B0B44
_020697F8: .word JOB_WINDOW_PARAMS_2
_020697FC: .word sub_02069AEC
	arm_func_end sub_02069790

	arm_func_start sub_02069800
sub_02069800: ; 0x02069800
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #0x14
	mov r1, #8
	bl MemAlloc
	ldr r2, _02069864 ; =_020B0B44
	mov r1, #0x14
	str r0, [r2]
	bl MemZero
	ldr r0, _02069864 ; =_020B0B44
	mov ip, #0
	ldr r2, [r0]
	ldr r1, _02069868 ; =JOB_WINDOW_PARAMS_2
	str r5, [r2, #4]
	ldr r3, [r0]
	ldr r2, _0206986C ; =sub_02069CC0
	strh ip, [r3, #8]
	ldr r0, [r0]
	add r0, r0, #0xc
	bl sub_0204707C
	ldr r0, _02069864 ; =_020B0B44
	ldr r0, [r0]
	strb r4, [r0, #0x10]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02069864: .word _020B0B44
_02069868: .word JOB_WINDOW_PARAMS_2
_0206986C: .word sub_02069CC0
	arm_func_end sub_02069800

	arm_func_start sub_02069870
sub_02069870: ; 0x02069870
	ldr r1, _0206988C ; =_020B0B44
	ldr ip, _02069890 ; =sub_02047188
	ldr r2, [r1]
	str r0, [r2]
	ldr r0, [r1]
	add r0, r0, #0xc
	bx ip
	.align 2, 0
_0206988C: .word _020B0B44
_02069890: .word sub_02047188
	arm_func_end sub_02069870

	arm_func_start sub_02069894
sub_02069894: ; 0x02069894
	ldr r1, _020698B0 ; =_020B0B44
	ldr ip, _020698B4 ; =sub_02047188
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r0, [r1]
	add r0, r0, #0xc
	bx ip
	.align 2, 0
_020698B0: .word _020B0B44
_020698B4: .word sub_02047188
	arm_func_end sub_02069894

	arm_func_start sub_020698B8
sub_020698B8: ; 0x020698B8
	stmdb sp!, {r3, lr}
	ldr r0, _02069900 ; =_020B0B44
	ldr r0, [r0]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _020698F8
	bl sub_020470D0
	ldr r0, _02069900 ; =_020B0B44
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl sub_02047148
	mvn r1, #0
	cmp r0, r1
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
_020698F8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02069900: .word _020B0B44
	arm_func_end sub_020698B8

	arm_func_start sub_02069904
sub_02069904: ; 0x02069904
	stmdb sp!, {r3, lr}
	ldr r0, _0206993C ; =_020B0B44
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #0xc
	bl sub_02047150
	ldr r0, _0206993C ; =_020B0B44
	ldr r0, [r0]
	bl MemFree
	ldr r0, _0206993C ; =_020B0B44
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206993C: .word _020B0B44
	arm_func_end sub_02069904

	arm_func_start sub_02069940
sub_02069940: ; 0x02069940
	ldr r1, _02069954 ; =_020B0B44
	ldr r1, [r1]
	cmp r1, #0
	strneh r0, [r1, #8]
	bx lr
	.align 2, 0
_02069954: .word _020B0B44
	arm_func_end sub_02069940

	arm_func_start sub_02069958
sub_02069958: ; 0x02069958
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r5, #0
	b _02069AD0
_02069974:
	mov r0, r5, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _02069ACC
	ldrb r1, [sb, #1]
	ldrb r0, [r4, #1]
	cmp r1, r0
	ldreqb r1, [sb, #2]
	ldreqb r0, [r4, #2]
	cmpeq r1, r0
	ldreqb r1, [sb, #4]
	ldreqb r0, [r4, #4]
	cmpeq r1, r0
	ldreqb r1, [sb, #5]
	ldreqb r0, [r4, #5]
	cmpeq r1, r0
	ldreq r1, [sb, #8]
	ldreq r0, [r4, #8]
	cmpeq r1, r0
	ldreqsh r1, [sb, #0xe]
	ldreqsh r0, [r4, #0xe]
	cmpeq r1, r0
	ldreqsh r1, [sb, #0x10]
	ldreqsh r0, [r4, #0x10]
	cmpeq r1, r0
	ldreqsh r1, [sb, #0x12]
	ldreqsh r0, [r4, #0x12]
	cmpeq r1, r0
	ldreqsh r1, [sb, #0x14]
	ldreqsh r0, [r4, #0x14]
	cmpeq r1, r0
	ldreqb r0, [sb, #0x16]
	ldreqb r1, [r4, #0x16]
	cmpeq r0, r1
	bne _02069ACC
	add r1, sb, #0x18
	add r2, r4, #0x18
	bl sub_0205C870
	cmp r0, #0
	beq _02069ACC
	add r0, sb, #0x1a
	add r1, r4, #0x1a
	bl sub_0205C8E0
	cmp r0, #0
	beq _02069ACC
	ldrb r0, [r4]
	sub r0, r0, #4
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02069AA4
_02069A48: ; jump table
	b _02069A5C ; case 0
	b _02069A6C ; case 1
	b _02069A88 ; case 2
	b _02069A6C ; case 3
	b _02069A6C ; case 4
_02069A5C:
	mov r0, #1
	strb r0, [r8]
	strb r0, [r7]
	b _02069ABC
_02069A6C:
	cmp r6, #0
	movne r0, #3
	moveq r0, #1
	strb r0, [r8]
	mov r0, #2
	strb r0, [r7]
	b _02069ABC
_02069A88:
	cmp r6, #0
	movne r0, #0
	moveq r0, #1
	strb r0, [r8]
	mov r0, #3
	strb r0, [r7]
	b _02069ABC
_02069AA4:
	cmp r6, #0
	movne r0, #0
	moveq r0, #1
	strb r0, [r8]
	mov r0, #0
	strb r0, [r7]
_02069ABC:
	cmp r6, #0
	moveq r0, #0
	streqb r0, [r7]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02069ACC:
	add r5, r5, #1
_02069AD0:
	cmp r5, #8
	blt _02069974
	mov r0, #2
	strb r0, [r8]
	mov r0, #0
	strb r0, [r7]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_02069958

	arm_func_start sub_02069AEC
sub_02069AEC: ; 0x02069AEC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x68
	ldr r1, _02069CBC ; =_020B0B44
	mov r2, #0
	ldr r1, [r1]
	mov r5, r0
	ldr r4, [r1]
	add r0, r4, #4
	strb r2, [sp, #0x46]
	strh r2, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r2, [sp, #0x16]
	str r2, [sp, #0x5c]
	str r4, [sp, #0x64]
	str r0, [sp, #8]
	ldrsh r0, [r4, #0xa2]
	cmp r0, #0
	moveq r0, #7
	streqb r0, [sp, #0x1a]
	beq _02069B60
	mov r0, #2
	strb r0, [sp, #0x1a]
	ldrh r0, [r4, #0x9e]
	strh r0, [sp, #0x28]
	ldrh r0, [r4, #0xa0]
	strh r0, [sp, #0x2a]
	ldrh r0, [r4, #0xa2]
	strh r0, [sp, #0x2c]
_02069B60:
	bl GetLanguageType
	ldrsb r1, [r4, #0x1c]
	cmp r1, r0
	movne r0, #0
	strne r0, [sp, #0xc]
	strne r0, [sp, #0x54]
	strne r0, [sp, #0x58]
	bne _02069B98
	add r2, r4, #0x1d
	add r1, r4, #0x32
	add r0, r4, #0x56
	str r2, [sp, #0xc]
	str r1, [sp, #0x54]
	str r0, [sp, #0x58]
_02069B98:
	ldrb r0, [r4]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02069C00
_02069BA8: ; jump table
	b _02069C00 ; case 0
	b _02069C00 ; case 1
	b _02069C00 ; case 2
	b _02069C00 ; case 3
	b _02069C00 ; case 4
	b _02069BC8 ; case 5
	b _02069BF4 ; case 6
	b _02069BC8 ; case 7
_02069BC8:
	ldr r0, _02069CBC ; =_020B0B44
	ldr r1, [r0]
	ldrsh r0, [r1, #8]
	cmp r0, #0
	movne r0, #6
	strneb r0, [sp, #0x1a]
	ldrnesh r0, [r1, #8]
	strneh r0, [sp, #0x3c]
	mov r0, #0
	strb r0, [sp, #0x48]
	b _02069C50
_02069BF4:
	mov r0, #0
	strb r0, [sp, #0x48]
	b _02069C50
_02069C00:
	ldrb r0, [r4, #0xae]
	bl sub_0205BD40
	cmp r0, #0
	beq _02069C24
	cmp r0, #1
	beq _02069C30
	cmp r0, #2
	beq _02069C3C
	b _02069C48
_02069C24:
	mov r0, #6
	strb r0, [sp, #0x48]
	b _02069C50
_02069C30:
	mov r0, #4
	strb r0, [sp, #0x48]
	b _02069C50
_02069C3C:
	mov r0, #5
	strb r0, [sp, #0x48]
	b _02069C50
_02069C48:
	mov r0, #0
	strb r0, [sp, #0x48]
_02069C50:
	ldr r0, [sp, #0x54]
	mov r1, #1
	cmp r0, #0
	ldrneh r0, [r0]
	cmpne r0, #0
	movne r1, #0
	cmp r1, #0
	movne r1, #0
	moveq r1, #6
	ldr r0, [sp, #0x58]
	strb r1, [sp, #0x44]
	cmp r0, #0
	ldrneh r0, [r0]
	mov r1, #1
	cmpne r0, #0
	movne r1, #0
	cmp r1, #0
	movne r2, #0
	moveq r2, #9
	add r0, sp, #0
	mov r1, r5
	strb r2, [sp, #0x45]
	bl sub_02060FD8
	mov r0, r5
	bl UpdateWindow
	add sp, sp, #0x68
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02069CBC: .word _020B0B44
	arm_func_end sub_02069AEC

	arm_func_start sub_02069CC0
sub_02069CC0: ; 0x02069CC0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x68
	ldr r1, _02069D3C ; =_020B0B44
	mov r6, r0
	ldr r0, [r1]
	ldr r4, [r0, #4]
	ldrb r5, [r0, #0x10]
	mov r0, r4
	bl sub_0205E238
	cmp r0, #0
	beq _02069CFC
	mov r0, r6
	mov r1, r4
	bl sub_02061C60
	b _02069D2C
_02069CFC:
	add r1, sp, #0
	mov r0, r4
	bl sub_02060150
	add r1, sp, #0x47
	add r2, sp, #0x48
	mov r0, r4
	mov r3, r5
	bl sub_02069958
	add r0, sp, #0
	mov r1, r6
	str r4, [sp, #0x5c]
	bl sub_02060FD8
_02069D2C:
	mov r0, r6
	bl UpdateWindow
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02069D3C: .word _020B0B44
	arm_func_end sub_02069CC0

	arm_func_start sub_02069D40
sub_02069D40: ; 0x02069D40
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0xc4
	mov r1, #8
	bl MemAlloc
	ldr r2, _02069D90 ; =_020B0B48
	mov r1, #0xc4
	str r0, [r2]
	bl MemZero
	ldr r0, _02069D90 ; =_020B0B48
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1]
	ldr r1, [r0]
	strh r4, [r1, #0xc0]
	ldr r1, [r0]
	add r0, r1, #0x37
	bic r0, r0, #0x1f
	str r0, [r1, #0x14]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02069D90: .word _020B0B48
	arm_func_end sub_02069D40

	arm_func_start sub_02069D94
sub_02069D94: ; 0x02069D94
	stmdb sp!, {r3, lr}
	ldr r0, _02069DBC ; =_020B0B48
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _02069DBC ; =_020B0B48
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02069DBC: .word _020B0B48
	arm_func_end sub_02069D94

	arm_func_start sub_02069DC0
sub_02069DC0: ; 0x02069DC0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20c
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r5, [r0]
	ldr r1, [r5]
	cmp r1, #0x3000
	bgt _02069E30
	bge _0206A388
	ldr r0, _0206A5E4 ; =0x00001001
	cmp r1, r0
	bgt _02069E10
	cmp r1, #0x1000
	blt _02069E04
	beq _0206A0AC
	cmp r1, r0
	beq _0206A104
	b _0206A5D4
_02069E04:
	cmp r1, #0
	beq _02069E84
	b _0206A5D4
_02069E10:
	cmp r1, #0x2000
	bgt _02069E20
	beq _0206A464
	b _0206A5D4
_02069E20:
	add r0, r0, #0x1000
	cmp r1, r0
	beq _0206A490
	b _0206A5D4
_02069E30:
	cmp r1, #0x4000
	bgt _02069E4C
	bge _0206A4A4
	ldr r0, _0206A5E8 ; =0x00003001
	cmp r1, r0
	beq _0206A3A0
	b _0206A5D4
_02069E4C:
	ldr r0, _0206A5EC ; =0x00004004
	cmp r1, r0
	bgt _02069E78
	sub r0, r0, #3
	subs r0, r1, r0
	addpl pc, pc, r0, lsl #2
	b _0206A5D4
_02069E68: ; jump table
	b _0206A4F8 ; case 0
	b _0206A4C4 ; case 1
	b _0206A584 ; case 2
	b _0206A5B0 ; case 3
_02069E78:
	cmp r1, #0x8000
	beq _0206A5C4
	b _0206A5D4
_02069E84:
	add r4, r5, #0x58
	add r5, r5, #0x90
	bl ov03_0233CAA8
	cmp r0, #1
	bne _02069F90
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, [r0]
	cmp r1, #0
	movne r0, #1
	strne r0, [r1, #0xc]
	mov r0, r4
	mov r1, #0x38
	bl MemZero
	mov r0, r5
	mov r1, #0x18
	bl MemZero
	ldr r1, _0206A5E0 ; =_020B0B48
	mov r2, #0x18
	ldr r0, [r1]
	mov r6, #0x38
	str r2, [r0, #0xa8]
	ldr r0, [r1]
	ldr r3, _0206A5F0 ; =sub_0206A628
	str r5, [r0, #0xac]
	ldr r2, [r1]
	mov r0, #0
	str r6, [r2, #0xb0]
	ldr r2, [r1]
	mov r8, #1
	str r4, [r2, #0xb4]
	ldr r2, [r1]
	mov r7, #9
	str r3, [r2, #0xb8]
	ldr r2, [r1]
	mov r3, #0x12
	strb r0, [r2, #0xbc]
	ldr r6, [r1]
	mov r2, #0x11
	strb r8, [r6, #0x10]
	ldr r6, [r1]
	ldr r6, [r6, #0x14]
	strb r7, [r6]
	ldr r1, [r1]
	ldr r1, [r1, #0x14]
	strb r0, [r1, #1]
	strb r3, [r4]
	strb r2, [r5]
	bl GetLanguageType
	strb r0, [r5, #2]
	ldrsb r1, [r5, #2]
	add r0, r5, #4
	strb r1, [r4, #2]
	bl GetMainTeamNameWithCheck
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _02069F6C
	add r0, r5, #4
	bl SetQuestionMarks
_02069F6C:
	add r0, r5, #4
	mov r1, #0x14
	bl ov01_02337B3C
	ldr r1, _0206A5E0 ; =_020B0B48
	strb r0, [r5, #3]
	ldr r0, [r1]
	mov r1, #0x1000
	str r1, [r0]
	b _0206A5D4
_02069F90:
	bl ov03_0233CAA8
	cmp r0, #0
	bne _0206A5D4
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, [r0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0xc]
	mov r0, r4
	mov r1, #0x38
	bl MemZero
	mov r0, r5
	mov r1, #0x18
	bl MemZero
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r0, [r0]
	ldrsh r0, [r0, #0xc0]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	mov sl, r0
	add sb, r4, #0x18
	ldmia sl!, {r0, r1, r2, r3}
	stmia sb!, {r0, r1, r2, r3}
	ldmia sl, {r0, r1, r2, r3}
	ldr ip, _0206A5E0 ; =_020B0B48
	stmia sb, {r0, r1, r2, r3}
	ldr r0, [ip]
	mov r8, #0x38
	str r8, [r0, #0xa8]
	ldr r0, [ip]
	mov r7, #0x18
	str r4, [r0, #0xac]
	ldr r0, [ip]
	ldr r6, _0206A5F4 ; =_02337B68
	str r7, [r0, #0xb0]
	ldr r0, [ip]
	mov lr, #0
	str r5, [r0, #0xb4]
	ldr r0, [ip]
	mov fp, #9
	str r6, [r0, #0xb8]
	ldr r0, [ip]
	strb lr, [r0, #0xbc]
	ldr r0, [ip]
	strb lr, [r0, #0x10]
	ldr r0, [ip]
	ldr r0, [r0, #0x14]
	strb fp, [r0]
	ldr r0, [ip]
	ldr r0, [r0, #0x14]
	strb lr, [r0, #1]
	mov r0, #0x12
	strb r0, [r4]
	mov r0, #0x11
	strb r0, [r5]
	bl GetLanguageType
	strb r0, [r5, #2]
	ldrsb r1, [r5, #2]
	add r0, r4, #4
	strb r1, [r4, #2]
	bl GetMainTeamNameWithCheck
	add r0, r4, #4
	mov r1, #0x34
	bl ov01_02337B3C
	strb r0, [r4, #3]
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x1000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A0AC:
	add r0, r5, #0xa8
	mov r4, #1
	str r0, [sp, #0xac]
	str r4, [sp, #0xa8]
	ldr r1, [r5, #0xc]
	add r0, sp, #0xa8
	str r1, [sp, #0xb8]
	ldrb r3, [r5, #0x10]
	mov r2, #0x20
	mov r1, #0
	strb r3, [sp, #0xbc]
	ldr r3, [r5, #0x14]
	str r3, [sp, #0xc0]
	strh r2, [sp, #0xc4]
	strb r1, [sp, #0xc6]
	str r4, [sp, #0xc8]
	bl ov01_02337BA0
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A5E4 ; =0x00001001
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A104:
	bl ov01_02337E0C
	movs r4, r0
	beq _0206A5D4
	bl ov01_02337C54
	cmp r4, #0xe
	addls pc, pc, r4, lsl #2
	b _0206A5D4
_0206A120: ; jump table
	b _0206A5D4 ; case 0
	b _0206A380 ; case 1
	b _0206A5D4 ; case 2
	b _0206A5D4 ; case 3
	b _0206A15C ; case 4
	b _0206A380 ; case 5
	b _0206A380 ; case 6
	b _0206A380 ; case 7
	b _0206A380 ; case 8
	b _0206A380 ; case 9
	b _0206A380 ; case 10
	b _0206A380 ; case 11
	b _0206A380 ; case 12
	b _0206A380 ; case 13
	b _0206A380 ; case 14
_0206A15C:
	bl ov03_0233CAA8
	cmp r0, #1
	bne _0206A300
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r0, [r0]
	add r0, r0, #0x70
	bl sub_0205E238
	cmp r0, #0
	beq _0206A244
	mov r0, #2
	bl sub_0204C94C
	cmp r0, #0
	beq _0206A1B0
	ldr r1, _0206A5F8 ; =0x000037A8
	mov r0, #0x1c
	bl ov03_0233CDC8
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A5FC ; =0x00002001
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A1B0:
	add r0, sp, #0x1bc
	bl InitPreprocessorArgs
	mov r0, #2
	mov r1, #1
	bl sub_0204C978
	add r0, sp, #0x7e
	mov r1, #0x2a
	bl MemZero
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r4, [r0]
	bl GetLanguageType
	ldrsb r1, [r4, #0x5a]
	cmp r1, r0
	add r0, sp, #0x7e
	bne _0206A1FC
	add r1, r4, #0x5c
	mov r2, #0x14
	bl StrncpySimpleNoPadSafe
	b _0206A204
_0206A1FC:
	ldr r1, _0206A600 ; =0x000038C9
	bl GetStringFromFileVeneer
_0206A204:
	ldr r1, _0206A604 ; =0x0000379F
	add r3, sp, #0x7e
	add r2, sp, #0x1bc
	mov r0, #0x1c
	str r3, [sp, #0x1f4]
	bl ov03_0233CDD8
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x70
	bl sub_02069800
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x2000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A244:
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r0, [r0]
	add r0, r0, #0x70
	bl sub_0205F0B8
	cmp r0, #0
	bne _0206A2EC
	bl sub_0205F5A8
	bl sub_0205F710
	add r0, sp, #0x16c
	bl InitPreprocessorArgs
	add r0, sp, #0x54
	mov r1, #0x2a
	bl MemZero
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r4, [r0]
	bl GetLanguageType
	ldrsb r1, [r4, #0x5a]
	cmp r1, r0
	add r0, sp, #0x54
	bne _0206A2A4
	add r1, r4, #0x5c
	mov r2, #0x14
	bl StrncpySimpleNoPadSafe
	b _0206A2AC
_0206A2A4:
	ldr r1, _0206A600 ; =0x000038C9
	bl GetStringFromFileVeneer
_0206A2AC:
	ldr r1, _0206A604 ; =0x0000379F
	add r3, sp, #0x54
	add r2, sp, #0x16c
	mov r0, #0x1c
	str r3, [sp, #0x1a4]
	bl ov03_0233CDD8
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x70
	bl sub_02069800
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x2000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A2EC:
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x3000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A300:
	bl ov03_0233CAA8
	cmp r0, #0
	bne _0206A5D4
	add r0, sp, #0x11c
	bl InitPreprocessorArgs
	add r0, sp, #0x2a
	mov r1, #0x2a
	bl MemZero
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r4, [r0]
	bl GetLanguageType
	ldrsb r1, [r4, #0x92]
	cmp r1, r0
	add r0, sp, #0x2a
	bne _0206A34C
	add r1, r4, #0x94
	mov r2, #0x14
	bl StrncpySimpleNoPadSafe
	b _0206A354
_0206A34C:
	ldr r1, _0206A600 ; =0x000038C9
	bl GetStringFromFileVeneer
_0206A354:
	ldr r1, _0206A608 ; =0x00003793
	add r3, sp, #0x2a
	add r2, sp, #0x11c
	mov r0, #0x1c
	str r3, [sp, #0x154]
	bl ov03_0233CDD8
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x8000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A380:
	mov r0, #1
	b _0206A5D8
_0206A388:
	bl ov03_0233CAD8
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A5E8 ; =0x00003001
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A3A0:
	bl ov03_0233CB3C
	cmp r0, #2
	bne _0206A450
	bl ov03_0233CB10
	add r0, sp, #0xcc
	bl InitPreprocessorArgs
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r0, [r0]
	add r0, r0, #0x70
	bl sub_0205F0B8
	bl sub_0205F5A8
	bl sub_0205F710
	add r0, sp, #0
	mov r1, #0x2a
	bl MemZero
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r4, [r0]
	bl GetLanguageType
	ldrsb r1, [r4, #0x5a]
	cmp r1, r0
	add r0, sp, #0
	bne _0206A408
	add r1, r4, #0x5c
	mov r2, #0x14
	bl StrncpySimpleNoPadSafe
	b _0206A410
_0206A408:
	ldr r1, _0206A600 ; =0x000038C9
	bl GetStringFromFileVeneer
_0206A410:
	ldr r1, _0206A604 ; =0x0000379F
	add r3, sp, #0
	add r2, sp, #0xcc
	mov r0, #0x1c
	str r3, [sp, #0x104]
	bl ov03_0233CDD8
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x70
	bl sub_02069800
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x2000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A450:
	cmp r0, #1
	bne _0206A5D4
	bl ov03_0233CB10
	mov r0, #1
	b _0206A5D8
_0206A464:
	bl ov03_0233CDE4
	mov r4, r0
	bl sub_020698B8
	cmp r4, #0x12
	bne _0206A5D4
	bl sub_02069904
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x4000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A490:
	bl ov03_0233CDE4
	cmp r0, #0x12
	bne _0206A5D4
	mov r0, #1
	b _0206A5D8
_0206A4A4:
	ldr r1, _0206A60C ; =0x0000023B
	mov r0, #0
	bl ov03_0233CDC8
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A610 ; =0x00004002
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A4C4:
	bl ov03_0233CDE4
	cmp r0, #0x12
	bne _0206A5D4
	mov r0, #0xe0
	mov r1, #0x88
	mov r2, #1
	bl sub_02029F88
	bl sub_02003B94
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A614 ; =0x00004001
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A4F8:
	mov r0, #3
	bl NoteSaveBase
	mov r4, r0
	bl sub_02003BC8
	bl sub_02029FBC
	cmp r4, #0
	bne _0206A558
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r0, [r0]
	add r0, r0, #0x70
	bl sub_0205E238
	cmp r0, #0
	mov r0, #0x1c
	beq _0206A53C
	ldr r1, _0206A618 ; =0x0000379E
	bl ov03_0233CDC8
	b _0206A544
_0206A53C:
	mov r1, #0x23c
	bl ov03_0233CDC8
_0206A544:
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A61C ; =0x00004003
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A558:
	cmp r4, #1
	moveq r0, #3
	beq _0206A5D8
	ldr r1, _0206A620 ; =0x00000239
	mov r0, #0x1c
	bl ov03_0233CDC8
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A5EC ; =0x00004004
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A584:
	bl ov03_0233CDE4
	cmp r0, #0x12
	bne _0206A5D4
	ldr r1, _0206A624 ; =0x000037A0
	mov r0, #0x1c
	bl ov03_0233CDC8
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x8000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A5B0:
	bl ov03_0233CDE4
	cmp r0, #0x12
	bne _0206A5D4
	mov r0, #1
	b _0206A5D8
_0206A5C4:
	bl ov03_0233CDE4
	cmp r0, #0x12
	moveq r0, #2
	beq _0206A5D8
_0206A5D4:
	mov r0, #0
_0206A5D8:
	add sp, sp, #0x20c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
#ifdef EUROPE
#define SUB_02069DC0_OFFSET 2
#else
#define SUB_02069DC0_OFFSET 0
#endif
_0206A5E0: .word _020B0B48
_0206A5E4: .word 0x00001001
_0206A5E8: .word 0x00003001
_0206A5EC: .word 0x00004004
_0206A5F0: .word sub_0206A628
_0206A5F4: .word ov01_02337B68
_0206A5F8: .word 0x000037A8 + SUB_02069DC0_OFFSET
_0206A5FC: .word 0x00002001
_0206A600: .word 0x000038C9 + SUB_02069DC0_OFFSET
_0206A604: .word 0x0000379F + SUB_02069DC0_OFFSET
_0206A608: .word 0x00003793 + SUB_02069DC0_OFFSET
_0206A60C: .word 0x0000023B
_0206A610: .word 0x00004002
_0206A614: .word 0x00004001
_0206A618: .word 0x0000379E + SUB_02069DC0_OFFSET
_0206A61C: .word 0x00004003
_0206A620: .word 0x00000239
_0206A624: .word 0x000037A0 + SUB_02069DC0_OFFSET
	arm_func_end sub_02069DC0

	arm_func_start sub_0206A628
sub_0206A628: ; 0x0206A628
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov03_0233CAA8
	cmp r0, #1
	bne _0206A70C
	add r0, r4, #4
	mov r1, #0x34
	bl ov01_02337B3C
	ldrb r1, [r4, #3]
	cmp r0, r1
	movne r0, #3
	ldmneia sp!, {r4, pc}
	ldrb r0, [r4]
	cmp r0, #0x12
	movne r0, #2
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x18
	bl sub_0205E238
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x18
	bl sub_0205D1F4
	cmp r0, #0
	moveq r0, #6
	ldmeqia sp!, {r4, pc}
	ldrsh r0, [r4, #0x2c]
	mov r1, #1
	bl CanSendItem
	cmp r0, #0
	moveq r0, #6
	ldmeqia sp!, {r4, pc}
	ldrb r0, [r4, #0x2e]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0206A6E4
_0206A6B8: ; jump table
	b _0206A6E4 ; case 0
	b _0206A6CC ; case 1
	b _0206A6CC ; case 2
	b _0206A6CC ; case 3
	b _0206A6CC ; case 4
_0206A6CC:
	ldrsh r0, [r4, #0x30]
	mov r1, #1
	bl CanSendItem
	cmp r0, #0
	moveq r0, #6
	ldmeqia sp!, {r4, pc}
_0206A6E4:
	add r0, r4, #0x18
	bl sub_0205EC98
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x18
	bl sub_0205FA38
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
_0206A70C:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_0206A628

	arm_func_start DungeonSwapIdToIdx
DungeonSwapIdToIdx: ; 0x0206A714
	mov ip, #0
	ldr r3, _0206A74C ; =DUNGEON_SWAP_ID_TABLE
	b _0206A73C
_0206A720:
	mov r1, ip, lsl #0x10
	ldrb r2, [r3, r1, asr #16]
	mov r1, r1, asr #0x10
	cmp r2, r0
	moveq r0, r1
	bxeq lr
	add ip, ip, #1
_0206A73C:
	cmp ip, #0xd5
	blt _0206A720
	mvn r0, #0
	bx lr
	.align 2, 0
_0206A74C: .word DUNGEON_SWAP_ID_TABLE
	arm_func_end DungeonSwapIdToIdx

	arm_func_start DungeonSwapIdxToId
DungeonSwapIdxToId: ; 0x0206A750
	mvn r1, #0
	cmp r0, r1
	ldrne r1, _0206A768 ; =DUNGEON_SWAP_ID_TABLE
	moveq r0, #0xff
	ldrneb r0, [r1, r0]
	bx lr
	.align 2, 0
_0206A768: .word DUNGEON_SWAP_ID_TABLE
	arm_func_end DungeonSwapIdxToId

	arm_func_start GetDungeonModeSpecial
GetDungeonModeSpecial: ; 0x0206A76C
	stmdb sp!, {r3, lr}
	cmp r0, #0xd6
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	cmp r0, #0xb4
	blt _0206A790
	cmp r0, #0xd3
	movle r0, #3
	ldmleia sp!, {r3, pc}
_0206A790:
	cmp r0, #0xd7
	moveq r0, #2
	ldmeqia sp!, {r3, pc}
	cmp r0, #0xd8
	moveq r0, #3
	ldmeqia sp!, {r3, pc}
	bl GetDungeonMode
	cmp r0, #1
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	sub r0, r0, #2
	cmp r0, #1
	movls r0, #2
	movhi r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end GetDungeonModeSpecial

	arm_func_start sub_0206A7CC
sub_0206A7CC: ; 0x0206A7CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r4, #0x3e8
	bne _0206A7F4
	mov r0, #0
	mov r1, #0x20
	bl LoadScriptVariableValue
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	b _0206A82C
_0206A7F4:
	ldr r0, _0206A848 ; =0x000003E9
	cmp r4, r0
	bne _0206A82C
	bl sub_0204E6FC
	cmp r0, #2
	bne _0206A814
	bl sub_0204E780
	b _0206A818
_0206A814:
	bl sub_0204E770
_0206A818:
	cmp r0, #0xff
	addne r0, r0, #1
	mvneq r4, #0
	movne r0, r0, lsl #0x10
	movne r4, r0, asr #0x10
_0206A82C:
	cmp r4, #0xd1
	bne _0206A840
	bl GetExecuteSpecialEpisodeType
	cmp r0, #4
	moveq r4, #0xd2
_0206A840:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206A848: .word 0x000003E9
	arm_func_end sub_0206A7CC

	arm_func_start sub_0206A84C
sub_0206A84C: ; 0x0206A84C
	cmp r0, #0xb4
	addlo r0, r0, #1
	movlo r0, r0, lsl #0x10
	movlo r0, r0, asr #0x10
	bxlo lr
	blo _0206A870
	cmp r0, #0xd3
	movls r0, #0xb8
	bxls lr
_0206A870:
	mvn r0, #0
	bx lr
	arm_func_end sub_0206A84C

	arm_func_start sub_0206A878
sub_0206A878: ; 0x0206A878
	stmdb sp!, {r3, lr}
	bl sub_0206A7CC
	mvn r1, #0
	cmp r0, r1
	ldrne r1, _0206A89C ; =MAP_MARKER_PLACEMENTS
	movne r0, r0, lsl #3
	ldrnesh r1, [r1, r0]
	mov r0, r1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206A89C: .word MAP_MARKER_PLACEMENTS
	arm_func_end sub_0206A878

	arm_func_start sub_0206A8A0
sub_0206A8A0: ; 0x0206A8A0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	bl sub_0206A7CC
	mov r5, r0
	mov r0, r4
	bl sub_0206A7CC
	mvn r1, #0
	cmp r5, r1
	mov r4, r0
	ldrne r0, _0206A908 ; =_020A94D2
	movne r2, r5, lsl #3
	ldrnesh r0, [r0, r2]
	cmpne r0, r1
	movne r5, r0
	mvn r0, #0
	cmp r4, r0
	ldrne r1, _0206A908 ; =_020A94D2
	movne r2, r4, lsl #3
	ldrnesh r1, [r1, r2]
	cmpne r1, r0
	movne r4, r1
	cmp r5, r4
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0206A908: .word _020A94D2
	arm_func_end sub_0206A8A0

	arm_func_start sub_0206A90C
sub_0206A90C: ; 0x0206A90C
#ifdef EUROPE
#define SUB_0206A90C_WORD_OFFSET 2
#else
#define SUB_0206A90C_WORD_OFFSET 0
#endif
	stmdb sp!, {r3, lr}
	bl sub_0206A7CC
	mvn r1, #0
	cmp r0, r1
	ldreq r0, _0206A964 ; =0x0000403A
	ldmeqia sp!, {r3, pc}
	cmp r0, #0
	ldreq r0, _0206A968 ; =0x00004033
	ldmeqia sp!, {r3, pc}
	cmp r0, #1
	blt _0206A950
	cmp r0, #0xb4
	bgt _0206A950
	sub r0, r0, #1
	and r0, r0, #0xff
	bl sub_02024934
	ldmia sp!, {r3, pc}
_0206A950:
	add r0, r0, #0x7f + SUB_0206A90C_WORD_OFFSET
	add r0, r0, #0x3f00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206A964: .word 0x0000403A + SUB_0206A90C_WORD_OFFSET
_0206A968: .word 0x00004033 + SUB_0206A90C_WORD_OFFSET
	arm_func_end sub_0206A90C

	arm_func_start sub_0206A96C
sub_0206A96C: ; 0x0206A96C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r2
	bl sub_0206A7CC
	mvn r2, #0
	cmp r0, r2
	moveq r0, r2
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _0206A9D8 ; =MAP_MARKER_PLACEMENTS
	cmp r5, r2
	add r3, r1, r0, lsl #3
	ldrnesh r1, [r3]
	cmpne r1, r5
	movne r0, r2
	ldmneia sp!, {r3, r4, r5, pc}
	ldrsh r2, [r3, #2]
	cmp r2, r0
	mvnne r1, #0
	cmpne r2, r1
	ldrne r1, _0206A9D8 ; =MAP_MARKER_PLACEMENTS
	movne r0, r2
	addne r3, r1, r2, lsl #3
	ldrsh r1, [r3, #4]
	str r1, [r4]
	ldrsh r1, [r3, #6]
	str r1, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0206A9D8: .word MAP_MARKER_PLACEMENTS
	arm_func_end sub_0206A96C

	arm_func_start sub_0206A9DC
sub_0206A9DC: ; 0x0206A9DC
	stmdb sp!, {r4, lr}
	bl GetExecuteSpecialEpisodeType
	mov r4, r0
	cmp r4, #4
	bne _0206AA24
	mov r0, #0x3e8
	bl sub_0206A7CC
	ldr r1, _0206AA34 ; =MAP_MARKER_PLACEMENTS
	mov r0, r0, lsl #3
	ldrsh r0, [r1, r0]
	ldr r1, _0206AA38 ; =0xFFFFFED2
	add r1, r0, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r1, #1
	ldmlsia sp!, {r4, pc}
_0206AA24:
	ldr r0, _0206AA3C ; =_020A94C6
	mov r1, r4, lsl #1
	ldrsh r0, [r0, r1]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206AA34: .word MAP_MARKER_PLACEMENTS
#ifdef EUROPE
_0206AA38: .word 0xFFFFFEC6
#else
_0206AA38: .word 0xFFFFFED2
#endif
_0206AA3C: .word _020A94C6
	arm_func_end sub_0206A9DC

	arm_func_start sub_0206AA40
sub_0206AA40: ; 0x0206AA40
	stmdb sp!, {r3, lr}
	bl GetExecuteSpecialEpisodeType
	ldr r1, _0206AA58 ; =_020A94BC
	mov r0, r0, lsl #1
	ldrsh r0, [r1, r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206AA58: .word _020A94BC
	arm_func_end sub_0206AA40

	arm_func_start sub_0206AA5C
sub_0206AA5C: ; 0x0206AA5C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r5, r0
	mov r0, #0x40
	mov r1, #1
	bl MemAlloc
	ldr r2, _0206AB90 ; =_020B0B4C
	mov r1, #0x40
	str r0, [r2, #8]
	bl MemZero
	ldr r0, _0206AB90 ; =_020B0B4C
	mov r1, #0x20
	ldr r4, [r0, #8]
	add r0, r4, #4
	bl MemZero
	mov r1, #0
	str r1, [r4, #0x20]
	ldr r0, _0206AB90 ; =_020B0B4C
	strh r1, [r4, #0x1c]
	ldr r1, [r0, #8]
	str r5, [r1]
	ldr r2, [r0, #8]
	ldr r0, [r2]
	cmp r0, #1
	bne _0206AB3C
	ldr r0, _0206AB94 ; =0x00001F64
	mov r1, #6
	add r4, r2, #4
	bl MemAlloc
	ldr r1, _0206AB94 ; =0x00001F64
	mov r5, r0
	bl MemZero
	mov r8, #0x58
	mov sl, #0
	mvn r7, #0
	mov r6, r8
_0206AAE8:
	mul sb, sl, r6
	mov r1, r8
	add r0, r5, sb
	bl MemZero
	add sl, sl, #1
	strh r7, [r5, sb]
	cmp sl, #0x50
	blt _0206AAE8
	add r0, r5, #0x1000
	ldr r2, _0206AB90 ; =_020B0B4C
	str r4, [r0, #0xf5c]
	ldr r0, [r2, #8]
	mov r1, #5
	str r5, [r0, #0x28]
	ldr r0, [r2, #8]
	add r0, r0, #4
	bl sub_0206BBE0
	ldr r1, _0206AB90 ; =_020B0B4C
	ldr r1, [r1, #8]
	str r0, [r1, #0x24]
	b _0206AB5C
_0206AB3C:
	cmp r0, #2
	bne _0206AB5C
	add r0, r2, #4
	mov r1, #4
	bl sub_0206BBE0
	ldr r1, _0206AB90 ; =_020B0B4C
	ldr r1, [r1, #8]
	str r0, [r1, #0x24]
_0206AB5C:
	ldr r1, _0206AB90 ; =_020B0B4C
	mov r3, #0
	ldr r2, [r1, #8]
	mov r0, #0x80
	str r3, [r2, #0x2c]
	ldr r2, [r1, #8]
	strb r3, [r2, #0x30]
	ldr r2, [r1, #8]
	str r3, [r2, #0x34]
	ldr r1, [r1, #8]
	strb r3, [r1, #0x31]
	bl ov10_022C2340
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0206AB90: .word _020B0B4C
_0206AB94: .word 0x00001F64
	arm_func_end sub_0206AA5C

	arm_func_start sub_0206AB98
sub_0206AB98: ; 0x0206AB98
	ldr r0, _0206ABAC ; =_020B0B4C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x30]
	bx lr
	.align 2, 0
_0206ABAC: .word _020B0B4C
	arm_func_end sub_0206AB98

	arm_func_start sub_0206ABB0
sub_0206ABB0: ; 0x0206ABB0
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r0, _0206AD28 ; =_020B0B4C
	ldr r4, [r0, #8]
	cmp r4, #0
	ldrneb r0, [r4, #0x30]
	cmpne r0, #0
	beq _0206AD1C
	ldr r0, [r4]
	ldr r1, _0206AD2C ; =_020B0B5C
	cmp r0, #1
	movne r5, #1
	moveq r5, #0
	ldr r1, [r1, r5, lsl #3]
	add r0, sp, #8
	mov r2, #6
	bl LoadWteFromRom
	ldr r0, _0206AD30 ; =_020B0B60
	mov r1, #0
	ldr r0, [r0, r5, lsl #3]
	bl sub_0201DF38
	str r0, [r4, #0x14]
	mov r2, #0
	ldr r1, [r4, #0x20]
	add r0, sp, #8
	mov r3, r2
	bl sub_0201E12C
	add r0, sp, #8
	bl sub_0201E13C
	ldr r1, [r4, #0x20]
	add r0, sp, #0x10
	str r1, [r4, #0x18]
	ldr r2, [r4, #0x20]
	ldr r1, _0206AD34 ; =_020A9F34
	add r2, r2, #0x8000
	str r2, [r4, #0x20]
	mov r2, #6
	bl LoadWteFromRom
	ldr r0, _0206AD38 ; =_020A9F48
	mov r1, #0
	bl sub_0201DF38
	str r0, [r4, #4]
	ldr r1, [r4, #0x20]
	add r0, sp, #0x10
	mov r2, #1
	mov r3, #0
	bl sub_0201E12C
	add r0, sp, #0x10
	bl sub_0201E13C
	ldr r1, [r4, #0x20]
	add r0, sp, #0x10
	str r1, [r4, #8]
	ldr r2, [r4, #0x20]
	ldr r1, _0206AD3C ; =_020A9F5C
	add r2, r2, #0x2000
	str r2, [r4, #0x20]
	mov r2, #6
	bl LoadWteFromRom
	ldr r0, _0206AD40 ; =_020A9F70
	mov r1, #0
	bl sub_0201DF38
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x20]
	add r0, sp, #0x10
	mov r2, #2
	mov r3, #0
	bl sub_0201E12C
	add r0, sp, #0x10
	bl sub_0201E13C
	ldr r0, [r4, #0x20]
	mov r2, #0
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x20]
	ldr r0, _0206AD44 ; =WAN_TABLE
	add r1, r1, #0x4000
	str r1, [r4, #0x20]
	ldr r0, [r0]
	ldr r1, _0206AD48 ; =_020A9F84
	bl LoadWanTableEntry
	strh r0, [r4, #0x1c]
	mov r3, #1
	str r3, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldrsh r0, [r4, #0x1c]
	mov r1, #0x2c0
	bl sub_0201D9C8
	ldr r0, _0206AD28 ; =_020B0B4C
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #0x30]
_0206AD1C:
	mov r0, #1
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0206AD28: .word _020B0B4C
_0206AD2C: .word _020B0B5C
_0206AD30: .word _020B0B60
_0206AD34: .word _020A9F34
_0206AD38: .word _020A9F48
_0206AD3C: .word _020A9F5C
_0206AD40: .word _020A9F70
_0206AD44: .word WAN_TABLE
_0206AD48: .word _020A9F84
	arm_func_end sub_0206ABB0

	arm_func_start sub_0206AD4C
sub_0206AD4C: ; 0x0206AD4C
	ldr r0, _0206AD7C ; =_020B0B4C
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0206AD74
	ldrb r0, [r0, #0x31]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
_0206AD74:
	mov r0, #0
	bx lr
	.align 2, 0
_0206AD7C: .word _020B0B4C
	arm_func_end sub_0206AD4C

	arm_func_start sub_0206AD80
sub_0206AD80: ; 0x0206AD80
	ldr r0, _0206AD9C ; =_020B0B4C
	ldr r1, [r0, #8]
	cmp r1, #0
	ldrne r0, [r1, #0x34]
	addne r0, r0, #1
	strne r0, [r1, #0x34]
	bx lr
	.align 2, 0
_0206AD9C: .word _020B0B4C
	arm_func_end sub_0206AD80

	arm_func_start sub_0206ADA0
sub_0206ADA0: ; 0x0206ADA0
	ldr r1, _0206ADB4 ; =_020B0B4C
	ldr r1, [r1, #8]
	cmp r1, #0
	strne r0, [r1, #0x38]
	bx lr
	.align 2, 0
_0206ADB4: .word _020B0B4C
	arm_func_end sub_0206ADA0

	arm_func_start sub_0206ADB8
sub_0206ADB8: ; 0x0206ADB8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x4c
	ldr r0, _0206B9BC ; =_020B0B4C
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0
	beq _0206B9B4
	bl ov10_022C23EC
	ldr r0, _0206B9BC ; =_020B0B4C
	ldr r8, [r0, #8]
	ldrb r0, [r8, #0x30]
	cmp r0, #0
	bne _0206B9B0
	ldr r0, [r8, #0x2c]
	cmp r0, #0
	beq _0206AE00
	cmp r0, #1
	b _0206B99C
_0206AE00:
	ldr r0, [r8, #0x38]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r8, #0x38]
	bgt _0206B99C
	ldr r0, [r8]
	cmp r0, #1
	bne _0206B678
	ldr r7, [r8, #0x24]
	ldr sb, [r8, #0x28]
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _0206AE48
	cmp r0, #1
	beq _0206AF78
	cmp r0, #2
	beq _0206B1D4
	b _0206B670
_0206AE48:
	ldr r1, [r7, #0x2d4]
	mov r0, #0xc0
	ldr fp, [r7, #0x2d8]
	mov r6, #0
	bl _s32_div_f
	mov sb, r0, lsl #8
	mov r0, #0x14000
	rsb r0, r0, #0
	str r0, [sp, #0x2c]
	b _0206AF50
_0206AE70:
	mul r0, r6, sb
	ands r5, r6, #1
	movne r4, #0x14000
	ldr r1, _0206B9BC ; =_020B0B4C
	ldreq r4, [sp, #0x2c]
	str r0, [sp, #0x18]
	ldr r1, [r1, #4]
	rsb r0, r4, #0
	bl _s32_div_f
	str r0, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	mov r0, #0x58
	mul sl, r6, r0
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r7]
	ldr r3, [sp, #0x18]
	mov r1, fp
	add r0, r0, sl
	mov r2, r4
	bl sub_0206BC3C
	cmp r5, #0
	movne r0, #0
	moveq r0, #0x10000
	add r2, r4, r0
	ldr r5, [r7, #4]
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r5, sl
	mov r1, fp
	bl sub_0206BD04
	ldrsh r0, [r5, sl]
	bl sub_0201F324
	ldrsh r1, [r0, #0x1a]
	add r6, r6, #1
	add r1, r1, r1, lsr #31
	mov r1, r1, asr #1
	strh r1, [r0, #8]
	mov r1, #0
	strh r1, [r0, #0xa]
_0206AF50:
	ldr r0, [r7, #0x2d4]
	cmp r6, r0
	blt _0206AE70
	ldr r0, _0206B9BC ; =_020B0B4C
	ldr r0, [r0, #4]
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	add r0, r0, #1
	str r0, [r7, #0xc]
	b _0206B670
_0206AF78:
	mov r4, #0
	mov fp, #0x58
	b _0206B04C
_0206AF84:
	mul r5, r4, fp
	ldr r6, [r7]
	add sl, r6, r5
	ldr r1, [sl, #8]
	ldr r0, [sl, #0x18]
	add r0, r1, r0
	str r0, [sl, #8]
	ldr r1, [sl, #0xc]
	ldr r0, [sl, #0x1c]
	add r0, r1, r0
	str r0, [sl, #0xc]
	ldrsh r0, [r6, r5]
	bl sub_0201F324
	ldr r2, [sl, #8]
	mov r1, r2, asr #7
	add r1, r2, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r0]
	ldrsh r0, [r6, r5]
	bl sub_0201F324
	ldr r2, [sl, #0xc]
	mov r1, r2, asr #7
	add r1, r2, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r0, #2]
	ldr r6, [r7, #4]
	add sl, r6, r5
	ldr r1, [sl, #8]
	ldr r0, [sl, #0x18]
	add r0, r1, r0
	str r0, [sl, #8]
	ldr r1, [sl, #0xc]
	ldr r0, [sl, #0x1c]
	add r0, r1, r0
	str r0, [sl, #0xc]
	ldrsh r0, [r6, r5]
	bl sub_0201F324
	ldr r2, [sl, #8]
	mov r1, r2, asr #7
	add r1, r2, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r0]
	ldrsh r0, [r6, r5]
	bl sub_0201F324
	ldr r2, [sl, #0xc]
	add r4, r4, #1
	mov r1, r2, asr #7
	add r1, r2, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r0, #2]
_0206B04C:
	ldr r0, [r7, #0x2d4]
	cmp r4, r0
	blt _0206AF84
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0206B0E0
	mov r6, #0
	mov fp, r6
	b _0206B0D0
_0206B070:
	mov r0, #0x58
	mul r4, r6, r0
	ldr r5, [r7]
	ldrsh r0, [r5, r4]
	add sl, r5, r4
	bl sub_0201F324
	str fp, [sl, #8]
	str fp, [sl, #0x18]
	str fp, [sl, #0x1c]
	ldrsh r0, [r5, r4]
	bl sub_0201F324
	ldr r2, [sl, #8]
	mov r1, r2, asr #7
	add r1, r2, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r0]
	ldrsh r0, [r5, r4]
	bl sub_0201F324
	ldr r2, [sl, #0xc]
	add r6, r6, #1
	mov r1, r2, asr #7
	add r1, r2, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r0, #2]
_0206B0D0:
	ldr r0, [r7, #0x2d4]
	cmp r6, r0
	blt _0206B070
	b _0206B0E8
_0206B0E0:
	sub r0, r0, #1
	str r0, [r7, #8]
_0206B0E8:
	ldr r0, [r7, #4]
	ldr r0, [r0, #8]
	cmp r0, #0x11000
	ble _0206B670
	add r0, sb, #0x1000
	ldr r5, [r0, #0xf5c]
	mov r1, #0x8000
	str r1, [r0, #0xb8c]
	mov r1, #0x6000
	str r1, [r0, #0xb90]
	bl sub_0201F36C
	add r1, sb, #0x1b00
	strh r0, [r1, #0x84]
	ldrsh r0, [r1, #0x84]
	bl sub_0201F324
	mov r4, r0
	mov r2, #0
	strb r2, [r4, #0x3c]
	mov r1, #0x80
	strh r1, [r4, #0x2a]
	add r3, sb, #0x1000
	ldr sl, [r3, #0xb8c]
	mov r6, #2
	mov r1, sl, asr #7
	add r1, sl, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r4]
	ldr r3, [r3, #0xb90]
	mov r1, r3, asr #7
	add r1, r3, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r4, #2]
	str r6, [sp]
	str r2, [sp, #4]
	ldr r1, [r5, #8]
	ldr r3, [r5, #0xc]
	bl sub_0201E7D8
	ldrsh r0, [r4, #0x1a]
	mov r5, #0
	mov r1, #0x28
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	strh r0, [r4, #8]
	ldrsh r2, [r4, #0x1c]
	add r3, sb, #0x1000
	mov r0, #0x1000
	add r2, r2, r2, lsr #31
	mov r2, r2, asr #1
	strh r2, [r4, #0xa]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	str r1, [r3, #0xbd4]
	bl _s32_div_f
	add r1, sb, #0x1b00
	strh r0, [r1, #0xcc]
	ldr r0, [r7, #0xc]
	add r0, r0, #1
	str r0, [r7, #0xc]
	b _0206B670
_0206B1D4:
	add r0, sb, #0x1b00
	ldrsh r3, [r0, #0x84]
	add r0, sb, #0x1000
	add r1, sb, #0x384
	mvn r2, #0
	cmp r3, r2
	add r6, r1, #0x1800
	ldr r7, [r0, #0xf5c]
	beq _0206B2D4
	ldrsh r0, [r6]
	bl sub_0201F324
	ldr r1, [r6, #4]
	mov r5, r0
	cmp r1, #2
	ldrh r4, [r5, #0x10]
	bge _0206B298
	ldr r0, [r6, #0x4c]
	add r1, r0, #1
	str r1, [r6, #0x4c]
	ldr r0, [r6, #0x50]
	cmp r1, r0
	ble _0206B298
	ldr r0, [r6, #4]
	add r0, r0, #1
	str r0, [r6, #4]
	cmp r0, #2
	bne _0206B278
	ldr r1, [r6, #0x50]
	mov r0, #0xc00
	bl _s32_div_f
	strh r0, [r6, #0x48]
	add r0, sb, #0x1000
	mov r1, #1
	str r1, [r0, #0xbf0]
	mov r1, #8
	str r1, [r0, #0xbe8]
	ldr r1, [r0, #0xbec]
	str r1, [r0, #0xbe0]
	ldr r1, [r0, #0xbf0]
	str r1, [r0, #0xbe4]
	b _0206B290
_0206B278:
	cmp r0, #1
	bne _0206B290
	ldr r1, [r6, #0x50]
	mov r0, #0xc00
	bl _s32_div_f
	strh r0, [r6, #0x48]
_0206B290:
	mov r0, #0
	str r0, [r6, #0x4c]
_0206B298:
	ldrsh r0, [r6, #0x48]
	ldr r1, [r6, #4]
	cmp r1, #1
	subeq r4, r4, r0
	beq _0206B2C8
	cmp r1, #2
	add r4, r4, r0
	bne _0206B2C8
	add r0, r0, #0x20
	cmp r4, #0x4000
	strh r0, [r6, #0x48]
	movge r4, #0x4000
_0206B2C8:
	strh r4, [r5, #0x10]
	ldrh r0, [r5, #0x10]
	strh r0, [r5, #0x12]
_0206B2D4:
	add r0, sb, #0x1000
	ldr r1, [r0, #0xbf4]
	cmp r1, #0
	beq _0206B2F0
	cmp r1, #1
	beq _0206B3C4
	b _0206B670
_0206B2F0:
	mov r5, #0
	mov r2, #1
	str r5, [r0, #0xbdc]
	mov r1, #0x10
	str r2, [r0, #0xbe0]
	str r1, [r0, #0xbec]
	str r1, [r0, #0xbe8]
	mov r1, #8
	str r1, [r0, #0xbf0]
	rsb r1, r2, #0x3e8
	str r1, [r0, #0xbe4]
	ldr r4, [r0, #0xf5c]
	add r0, sb, #0x3f8
	add fp, r0, #0x1800
_0206B328:
	mov r0, #0x7c
	mla r6, r5, r0, fp
	mov r0, r6
	bl InitAnimationControlWithSet__0201C0B0
	ldrsh r1, [r4, #0x18]
	mov r0, r6
	bl SetSpriteIdForAnimationControl
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xc
	mul r1, r5, r0
	ldr r0, _0206B9C0 ; =_020A9EE0
	mov r2, #0
	add sl, r0, r1
	ldr r1, [r0, r1]
	mov r0, r6
	mov r3, #0x2c0
	bl SetAnimationForAnimationControl
	ldr r1, [sl, #4]
	mov r0, r6
	strh r1, [r6, #0x1c]
	ldr r2, [sl, #8]
	mov r1, #0
	strh r2, [r6, #0x1e]
	bl sub_0201D12C
	add r5, r5, #1
	cmp r5, #7
	blt _0206B328
	add r0, sb, #0x1000
	mov r1, #1
	strb r1, [r0, #0xf60]
	ldr r1, [r0, #0xbf4]
	add r1, r1, #1
	str r1, [r0, #0xbf4]
_0206B3C4:
	add r0, sb, #0x1000
	ldr r2, [r0, #0xbe0]
	add r1, r2, #1
	str r1, [r0, #0xbe0]
	ldr r0, [r0, #0xbec]
	cmp r2, r0
	ble _0206B54C
	bl Rand16Bit
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #31
	add r0, r1, r0, ror #31
	add r4, r0, #3
	ldr r0, _0206B9C4 ; =0x000001FF
	mov r5, #0
	add r0, r0, #0xe00
	str r0, [sp, #0x34]
	b _0206B51C
_0206B408:
	bl Rand16Bit
	bl Rand16Bit
	ldr r1, _0206B9BC ; =_020B0B4C
	ldr r2, [r1, #0xc]
	ldr r1, _0206B9C4 ; =0x000001FF
	and r0, r0, r1
	add r0, r2, r0
	str r0, [sp, #0x14]
	bl Rand16Bit
	ldr r1, _0206B9BC ; =_020B0B4C
	and r0, r0, #0xf
	ldr r1, [r1]
	add fp, r1, r0
	bl Rand16Bit
	ldr r1, [r7]
	ldr r1, [r1]
	ldr r1, [r1, #4]
	sub r1, r1, #1
	bl _s32_div_f
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	bl Rand16Bit
	mov r1, #0xd0
	bl _s32_div_f
	add sl, r1, #0x10
	bl Rand16Bit
	str sl, [sp]
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, [sp, #0x34]
	mov r2, #0x8000
	and sl, r0, r1
	mov r0, sb
	mov r1, r7
	mov r3, #0x6000
	bl sub_0206BDF4
	movs r6, r0
	beq _0206B510
	ldrsh r0, [r6]
	bl sub_0201F324
	ldrsh r2, [r0, #0x1a]
	mov r1, r6
	add r2, r2, r2, lsr #31
	mov r2, r2, asr #1
	strh r2, [r0, #8]
	ldrsh r2, [r0, #0x1c]
	add r2, r2, r2, lsr #31
	mov r2, r2, asr #1
	strh r2, [r0, #0xa]
	mov r2, #0x800
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	ldr r0, _0206B9C8 ; =sub_0206BFA8
	bl ov10_022C2450
	mov r0, #0x8000
	str r0, [r6, #0x30]
	mov r0, #0x6000
	str r0, [r6, #0x34]
	mov r0, #0
	str r0, [r6, #0x24]
	str sl, [r6, #0x20]
	ldr r0, [sp, #0x14]
	str fp, [r6, #0x38]
	str r0, [r6, #0x3c]
_0206B510:
	cmp r6, #0
	beq _0206B524
	add r5, r5, #1
_0206B51C:
	cmp r5, r4
	blt _0206B408
_0206B524:
	bl Rand16Bit
	add r2, sb, #0x1000
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	ldr r3, [r2, #0xbe8]
	add r0, r1, r0, ror #29
	add r0, r3, r0
	str r0, [r2, #0xbec]
	mov r0, #0
	str r0, [r2, #0xbe0]
_0206B54C:
	add r0, sb, #0x1000
	ldr r1, [r0, #0xbe4]
	add r1, r1, #1
	str r1, [r0, #0xbe4]
	ldr r0, [r0, #0xbf0]
	cmp r1, r0
	ble _0206B670
	bl Rand16Bit
	ldr r1, _0206B9CC ; =0x00000FFF
	mov r4, #0
	and r0, r0, r1
	mov r5, r0, lsl #0x10
	sub fp, r1, #0xe00
_0206B580:
	bl Rand16Bit
	ldr r1, [r7]
	ldr r1, [r1]
	ldr r1, [r1, #4]
	sub r1, r1, #1
	bl _s32_div_f
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	bl Rand16Bit
	mov r1, #0xd0
	bl _s32_div_f
	add sl, r1, #0x10
	bl Rand16Bit
	str sl, [sp]
	and sl, r0, fp
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r7
	mov r2, #0x8000
	mov r3, #0x6000
	bl sub_0206BDF4
	movs r6, r0
	beq _0206B658
	ldrsh r0, [r6]
	bl sub_0201F324
	mov r1, #0
	strh r1, [r0, #0x12]
	mov r2, r1
	ldr r1, _0206B9D0 ; =0x00005555
	strh r2, [r0, #0x10]
	mul r1, r4, r1
	add r0, r1, r5, lsr #16
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r6, #0x20]
	mov r0, r4, lsl #1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x20]
	bl sub_02001980
	add r1, sl, #0x300
	bl MultiplyByFixedPoint
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x20]
	bl sub_020018D0
	add r1, sl, #0x300
	rsb r0, r0, #0
	bl MultiplyByFixedPoint
	str r0, [r6, #0x1c]
	ldr r0, _0206B9D4 ; =sub_0206BEAC
	mov r1, r6
	bl ov10_022C2450
_0206B658:
	add r4, r4, #1
	cmp r4, #3
	blt _0206B580
	add r0, sb, #0x1000
	mov r1, #0
	str r1, [r0, #0xbe4]
_0206B670:
	mov r4, #0
	b _0206B990
_0206B678:
	cmp r0, #2
	bne _0206B990
	ldr r5, [r8, #0x24]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0206B6A4
	cmp r0, #1
	beq _0206B838
	cmp r0, #2
	beq _0206B984
	b _0206B98C
_0206B6A4:
	ldr r0, _0206B9D8 ; =_020A9E80
	add r4, sp, #0x3c
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, [r5, #0x2d8]
	mov r6, #0
	str r0, [sp, #0x20]
	mov r0, #0x14000
	rsb r0, r0, #0
	str r0, [sp, #0x30]
	mov r0, r0, asr #0x11
	str r0, [sp, #0x38]
	b _0206B810
_0206B6D8:
	add r0, sp, #0x3c
	ldr r0, [r0, r6, lsl #2]
	tst r6, #1
	mov r0, r0, lsl #8
	add r0, r0, #0x800
	movne sb, #0x2000
	moveq sb, #0
	str r0, [sp, #0x24]
	cmp r6, #2
	movlt r0, #1
	movge r0, #0
	ands r4, r0, #0xff
	ldreq r0, [sp, #0x38]
	ldr r1, _0206B9BC ; =_020B0B4C
	muleq r0, sb, r0
	moveq sb, r0
	cmp r4, #0
	ldrne sl, [sp, #0x30]
	ldr r1, [r1, #4]
	moveq sl, #0x14000
	rsb r0, sl, #0
	bl _s32_div_f
	str r0, [sp, #0x28]
	mov r0, #0x58
	mul r7, r6, r0
	mov r0, r6, lsl #0x10
	mov r1, r0, asr #0x10
	ldr fp, [r5]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x24]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	add r0, fp, r7
	add r2, sl, sb
	bl sub_0206BC3C
	ldrsh r0, [fp, r7]
	bl sub_0201F324
	ldrsh r1, [r0, #0x1c]
	cmp r1, #0x28
	moveq r3, #3
	beq _0206B7A4
	cmp r1, #0x20
	moveq r3, #2
	movne r3, #1
_0206B7A4:
	cmp r4, #0
	movne r0, #0x10000
	moveq r0, #0
	add r0, sl, r0
	add r2, r0, sb
	ldr r4, [r5, #4]
	ldr r0, [sp, #0x28]
	add r1, r1, r1, lsr #31
	str r0, [sp]
	mov r0, r3, lsl #0x10
	mov sb, r0, asr #0x10
	ldr r0, [sp, #0x24]
	mov r1, r1, asr #1
	add r3, r0, r1, lsl #8
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	str sb, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	add r0, r4, r7
	bl sub_0206BD04
	ldrsh r0, [r4, r7]
	bl sub_0201F324
	add r6, r6, #1
_0206B810:
	ldr r0, [r5, #0x2d4]
	cmp r6, r0
	blt _0206B6D8
	ldr r0, _0206B9BC ; =_020B0B4C
	ldr r0, [r0, #4]
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _0206B98C
_0206B838:
	mov sb, #0
	mov r6, #1
	mov fp, sb
	b _0206B95C
_0206B848:
	mov r0, #0x58
	mul sl, sb, r0
	ldr r0, [r5]
	add r4, r0, sl
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0206B8F8
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	ble _0206B8A0
	ldr r0, [r4, #8]
	cmp r0, #0
	stmgeib r4, {r6, fp}
	bge _0206B8C0
_0206B8A0:
	cmp r1, #0
	bge _0206B8C0
	ldr r0, [r4, #8]
	cmp r0, #0
	movle r0, #0
	strle r0, [r4, #8]
	movle r0, #1
	strle r0, [r4, #4]
_0206B8C0:
	ldrsh r0, [r4]
	bl sub_0201F324
	ldr r2, [r4, #8]
	mov r1, r2, asr #7
	add r1, r2, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r0]
	ldrsh r0, [r4]
	bl sub_0201F324
	ldr r2, [r4, #0xc]
	mov r1, r2, asr #7
	add r1, r2, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r0, #2]
_0206B8F8:
	ldr r4, [r5, #4]
	add r7, r4, sl
	ldr r1, [r7, #8]
	ldr r0, [r7, #0x18]
	add r0, r1, r0
	str r0, [r7, #8]
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x1c]
	add r0, r1, r0
	str r0, [r7, #0xc]
	ldrsh r0, [r4, sl]
	bl sub_0201F324
	ldr r2, [r7, #8]
	mov r1, r2, asr #7
	add r1, r2, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r0]
	ldrsh r0, [r4, sl]
	bl sub_0201F324
	ldr r2, [r7, #0xc]
	add sb, sb, #1
	mov r1, r2, asr #7
	add r1, r2, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r0, #2]
_0206B95C:
	ldr r0, [r5, #0x2d4]
	cmp sb, r0
	blt _0206B848
	ldr r0, [r5, #4]
	ldr r0, [r0, #8]
	cmp r0, #0x11000
	ldrgt r0, [r5, #0xc]
	addgt r0, r0, #1
	strgt r0, [r5, #0xc]
	b _0206B98C
_0206B984:
	mov r4, #1
	b _0206B990
_0206B98C:
	mov r4, #0
_0206B990:
	cmp r4, #0
	movne r0, #1
	strneb r0, [r8, #0x31]
_0206B99C:
	ldr r0, _0206B9BC ; =_020B0B4C
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x3c]
	add r0, r0, #1
	str r0, [r1, #0x3c]
_0206B9B0:
	mov r0, #1
_0206B9B4:
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0206B9BC: .word _020B0B4C
_0206B9C0: .word _020A9EE0
_0206B9C4: .word 0x000001FF
_0206B9C8: .word sub_0206BFA8
_0206B9CC: .word 0x00000FFF
_0206B9D0: .word 0x00005555
_0206B9D4: .word sub_0206BEAC
_0206B9D8: .word _020A9E80
	arm_func_end sub_0206ADB8

	arm_func_start sub_0206B9DC
sub_0206B9DC: ; 0x0206B9DC
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, _0206BA58 ; =_020B0B4C
	ldr r1, [r0, #8]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r0, [r1, #0x30]
	cmp r0, #0
	bne _0206BA50
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	beq _0206BA14
	cmp r0, #1
	b _0206BA50
_0206BA14:
	ldr r1, [r1, #0x28]
	cmp r1, #0
	addne r0, r1, #0x1000
	ldrneb r0, [r0, #0xf60]
	cmpne r0, #0
	beq _0206BA50
	add r0, r1, #0x3f8
	mov r6, #0
	add r5, r0, #0x1800
	mov r4, #0x7c
_0206BA3C:
	mla r0, r6, r4, r5
	bl sub_0201CF5C
	add r6, r6, #1
	cmp r6, #7
	blt _0206BA3C
_0206BA50:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0206BA58: .word _020B0B4C
	arm_func_end sub_0206B9DC

	arm_func_start sub_0206BA5C
sub_0206BA5C: ; 0x0206BA5C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _0206BB8C ; =_020B0B4C
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl ov10_022C23B0
	ldr r0, _0206BB8C ; =_020B0B4C
	ldr r5, [r0, #8]
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r7, [r5, #0x24]
	cmp r7, #0
	beq _0206BAE8
	mov r6, #0
	mov r4, #0x58
	b _0206BABC
_0206BA9C:
	mul r8, r6, r4
	ldr r0, [r7]
	add r0, r0, r8
	bl sub_0206BB94
	ldr r0, [r7, #4]
	add r0, r0, r8
	bl sub_0206BB94
	add r6, r6, #1
_0206BABC:
	ldr r0, [r7, #0x2d4]
	cmp r6, r0
	blt _0206BA9C
	ldr r0, [r7]
	bl MemFree
	ldr r0, [r7, #4]
	bl MemFree
	ldr r0, [r5, #0x24]
	bl MemFree
	mov r0, #0
	str r0, [r5, #0x24]
_0206BAE8:
	ldr r0, _0206BB8C ; =_020B0B4C
	ldr r5, [r0, #8]
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0206BB3C
	mov r6, #0
	mov r4, #0x58
_0206BB04:
	ldr r0, [r5, #0x28]
	mla r0, r6, r4, r0
	bl sub_0206BB94
	add r6, r6, #1
	cmp r6, #0x50
	blt _0206BB04
	ldr r0, [r5, #0x28]
	add r0, r0, #0x384
	add r0, r0, #0x1800
	bl sub_0206BB94
	ldr r0, [r5, #0x28]
	bl MemFree
	mov r0, #0
	str r0, [r5, #0x28]
_0206BB3C:
	ldr r0, _0206BB8C ; =_020B0B4C
	ldr r4, [r0, #8]
	add r0, r4, #0x14
	bl sub_0201E020
	add r0, r4, #4
	bl sub_0201E020
	add r0, r4, #0xc
	bl sub_0201E020
	ldr r0, _0206BB90 ; =WAN_TABLE
	ldrsh r1, [r4, #0x1c]
	ldr r0, [r0]
	bl DeleteWanTableEntryVeneer
	ldr r0, _0206BB8C ; =_020B0B4C
	ldr r0, [r0, #8]
	bl MemFree
	ldr r0, _0206BB8C ; =_020B0B4C
	mov r1, #0
	str r1, [r0, #8]
	bl sub_0201F248
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0206BB8C: .word _020B0B4C
_0206BB90: .word WAN_TABLE
	arm_func_end sub_0206BA5C

	arm_func_start sub_0206BB94
sub_0206BB94: ; 0x0206BB94
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrsh r1, [r4]
	mvn r0, #0
	cmp r1, r0
	ldmeqia sp!, {r4, pc}
	cmp r1, #0
	bne _0206BBBC
	ldr r0, _0206BBDC ; =_020A9F98
	bl Debug_Print0
_0206BBBC:
	ldrsh r0, [r4]
	bl sub_0201F2AC
	mov r0, r4
	mov r1, #0x58
	bl MemZero
	mvn r0, #0
	strh r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206BBDC: .word _020A9F98
	arm_func_end sub_0206BB94

	arm_func_start sub_0206BBE0
sub_0206BBE0: ; 0x0206BBE0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r0, #0x2dc
	mov r1, #6
	bl MemAlloc
	mov r1, #0x2dc
	mov r4, r0
	bl MemZero
	mov r0, #0x58
	mul r5, r6, r0
	mov r0, r5
	str r7, [r4, #0x2d8]
	mov r1, #6
	bl MemAlloc
	str r0, [r4]
	mov r0, r5
	mov r1, #6
	bl MemAlloc
	str r0, [r4, #4]
	mov r0, r4
	str r6, [r4, #0x2d4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0206BBE0

	arm_func_start sub_0206BC3C
sub_0206BC3C: ; 0x0206BC3C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r1, #0x58
	mov r5, r0
	mov r7, r2
	mov r6, r3
	bl MemZero
	mvn r0, #0
	strh r0, [r5]
	bl sub_0201F36C
	strh r0, [r5]
	ldrsh r1, [r5]
	mvn r0, #0
	cmp r1, r0
	beq _0206BCF8
	str r7, [r5, #8]
	ldr r1, [sp, #0x20]
	str r6, [r5, #0xc]
	ldr r0, [sp, #0x24]
	str r1, [r5, #0x18]
	str r0, [r5, #0x1c]
	ldrsh r0, [r5]
	bl sub_0201F324
	mov r1, #0
	ldr r2, [sp, #0x28]
	strb r1, [r0, #0x3c]
	strh r2, [r0, #0x2a]
	ldr ip, [r5, #8]
	ldrsh r3, [sp, #0x30]
	mov r2, ip, asr #7
	add r2, ip, r2, lsr #24
	mov r2, r2, asr #8
	strh r2, [r0]
	ldr r5, [r5, #0xc]
	mov r3, r3, lsl #0x14
	mov r2, r5, asr #7
	add r2, r5, r2, lsr #24
	mov r2, r2, asr #8
	strh r2, [r0, #2]
	str r1, [sp]
	mov r1, r3, asr #0x10
	str r1, [sp, #4]
	ldrsh r2, [sp, #0x2c]
	ldr r1, [r4, #0x10]
	ldr r3, [r4, #0x14]
	bl sub_0201E7D8
_0206BCF8:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0206BC3C

	arm_func_start sub_0206BD04
sub_0206BD04: ; 0x0206BD04
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r1, #0x58
	mov r6, r0
	mov r7, r2
	mov r4, r3
	bl MemZero
	mvn r0, #0
	strh r0, [r6]
	bl sub_0201F36C
	strh r0, [r6]
	ldrsh r1, [r6]
	mvn r0, #0
	cmp r1, r0
	moveq r0, #0
	beq _0206BDEC
	str r7, [r6, #8]
	ldr r1, [sp, #0x20]
	str r4, [r6, #0xc]
	ldr r0, [sp, #0x24]
	str r1, [r6, #0x18]
	str r0, [r6, #0x1c]
	ldrsh r0, [r6]
	bl sub_0201F324
	mov r4, r0
	mov r2, #0
	strb r2, [r4, #0x3c]
	ldr r1, [sp, #0x28]
	ldrsh r2, [sp, #0x30]
	strh r1, [r4, #0x2a]
	ldr r3, [r6, #8]
	mov r2, r2, lsl #0x14
	mov r1, r3, asr #7
	add r1, r3, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r4]
	ldr r3, [r6, #0xc]
	mov r1, r3, asr #7
	add r1, r3, r1, lsr #24
	mov r1, r1, asr #8
	strh r1, [r4, #2]
	mov r1, #1
	str r1, [sp]
	mov r1, r2, asr #0x10
	str r1, [sp, #4]
	ldrsh r2, [sp, #0x2c]
	ldmia r5, {r1, r3}
	bl sub_0201E7D8
	ldrsh r1, [r4, #0x1a]
	mov r0, #1
	add r1, r1, r1, lsr #31
	mov r1, r1, asr #1
	strh r1, [r4, #8]
	ldrsh r1, [r4, #0x1c]
	add r1, r1, r1, lsr #31
	mov r1, r1, asr #1
	strh r1, [r4, #0xa]
_0206BDEC:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0206BD04

	arm_func_start sub_0206BDF4
sub_0206BDF4: ; 0x0206BDF4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov ip, #0
	mov r4, r0
	mov r8, ip
	mov r0, ip
	mov r5, #0x58
	mvn r6, #0
	b _0206BE48
_0206BE18:
	cmp ip, #0x50
	movge ip, r0
	mul r7, ip, r5
	ldrsh r7, [r4, r7]
	cmp r7, r6
	beq _0206BE54
	add r7, r8, #1
	add lr, ip, #1
	mov ip, r7, lsl #0x10
	mov lr, lr, lsl #0x10
	mov r8, ip, asr #0x10
	mov ip, lr, asr #0x10
_0206BE48:
	cmp r8, #0x50
	blt _0206BE18
	mvn ip, #0
_0206BE54:
	cmp ip, #0
	movlt r0, #0
	blt _0206BEA4
	mov r0, #0x58
	mla r6, ip, r0, r4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r5, [sp, #0x30]
	ldrsh r0, [sp, #0x34]
	str r5, [sp, #8]
	ldrsh r5, [sp, #0x38]
	str r0, [sp, #0xc]
	mov r0, r6
	str r5, [sp, #0x10]
	bl sub_0206BD04
	cmp r0, #0
	moveq r0, #0
	movne r0, r6
	strne r4, [r6, #0x54]
_0206BEA4:
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end sub_0206BDF4

	arm_func_start sub_0206BEAC
sub_0206BEAC: ; 0x0206BEAC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #4]
	ldrsh r0, [r4]
	bl sub_0201F324
	ldr r1, [r4, #0x40]
	mov r5, r0
	cmp r1, #0
	ble _0206BEEC
	ldrsh r0, [r4]
	mov r1, #0
	bl sub_0201F348
	ldr r0, [r4, #0x40]
	sub r0, r0, #1
	str r0, [r4, #0x40]
	ldmia sp!, {r4, r5, r6, pc}
_0206BEEC:
	ldrh r0, [r5, #0x10]
	cmp r0, #0x1000
	beq _0206BF10
	add r0, r0, #0x100
	cmp r0, #0x1000
	movge r0, #0x1000
	strh r0, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	strh r0, [r5, #0x10]
_0206BF10:
	ldrsh r0, [r4]
	mov r1, #1
	bl sub_0201F348
	ldr r2, [r4, #8]
	ldr r1, [r4, #0x18]
	mvn r0, #0x3f
	add r1, r2, r1
	str r1, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	add r1, r2, r1
	str r1, [r4, #0xc]
	ldrsh r1, [r5]
	cmp r1, r0
	blt _0206BF68
	cmp r1, #0x140
	bgt _0206BF68
	ldrsh r1, [r5, #2]
	cmp r1, r0
	blt _0206BF68
	cmp r1, #0x100
	ble _0206BF7C
_0206BF68:
	mov r0, r4
	bl sub_0206BB94
	mov r0, r6
	bl ov10_022C24DC
	ldmia sp!, {r4, r5, r6, pc}
_0206BF7C:
	ldr r1, [r4, #8]
	mov r0, r1, asr #7
	add r0, r1, r0, lsr #24
	mov r0, r0, asr #8
	strh r0, [r5]
	ldr r1, [r4, #0xc]
	mov r0, r1, asr #7
	add r0, r1, r0, lsr #24
	mov r0, r0, asr #8
	strh r0, [r5, #2]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0206BEAC

	arm_func_start sub_0206BFA8
sub_0206BFA8: ; 0x0206BFA8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r4, [r6, #4]
	ldrsh r0, [r4]
	bl sub_0201F324
	mov r5, r0
	ldr r0, [r4, #0x20]
	bl sub_02001980
	ldr r1, [r4, #0x24]
	bl MultiplyByFixedPoint
	ldr r1, [r4, #0x30]
	add r7, r1, r0
	ldr r0, [r4, #0x20]
	bl sub_020018D0
	ldr r1, [r4, #0x24]
	rsb r0, r0, #0
	bl MultiplyByFixedPoint
	ldr r2, [r4, #0x34]
	ldr r1, _0206C0D4 ; =0x00000FFF
	add r0, r2, r0
	str r7, [r4, #8]
	str r0, [r4, #0xc]
	ldr r2, [r4, #0x20]
	ldr r0, [r4, #0x38]
	add r2, r2, r0
	and r0, r2, r1
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x24]
	ldrh r0, [r5, #0x10]
	cmp r0, #0x1000
	addlo r0, r0, #0x80
	strloh r0, [r5, #0x10]
	ldrloh r0, [r5, #0x12]
	addlo r0, r0, #0x80
	strloh r0, [r5, #0x12]
	ldr r1, [r4, #0x3c]
	mvn r0, #0x3f
	add r1, r1, #8
	str r1, [r4, #0x3c]
	ldrsh r1, [r5]
	cmp r1, r0
	blt _0206C078
	cmp r1, #0x140
	bgt _0206C078
	ldrsh r1, [r5, #2]
	cmp r1, r0
	blt _0206C078
	cmp r1, #0x140
	ble _0206C08C
_0206C078:
	mov r0, r4
	bl sub_0206BB94
	mov r0, r6
	bl ov10_022C24DC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0206C08C:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	ldr r0, [r4, #0x20]
	movlt r0, r0, lsl #4
	movge r0, r0, lsl #4
	rsbge r0, r0, #0x10000
	strh r0, [r5, #0x28]
	ldr r1, [r4, #8]
	mov r0, r1, asr #7
	add r0, r1, r0, lsr #24
	mov r0, r0, asr #8
	strh r0, [r5]
	ldr r1, [r4, #0xc]
	mov r0, r1, asr #7
	add r0, r1, r0, lsr #24
	mov r0, r0, asr #8
	strh r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206C0D4: .word 0x00000FFF
	arm_func_end sub_0206BFA8

	arm_func_start sub_0206C0D8
sub_0206C0D8: ; 0x0206C0D8
	ldr r1, _0206C0E8 ; =_020B0B6C
	ldrsh r1, [r1]
	strh r1, [r0]
	bx lr
	.align 2, 0
_0206C0E8: .word _020B0B6C
	arm_func_end sub_0206C0D8

	arm_func_start sub_0206C0EC
sub_0206C0EC: ; 0x0206C0EC
	ldr r1, _0206C0F8 ; =_020B0B6C
	strh r0, [r1]
	bx lr
	.align 2, 0
_0206C0F8: .word _020B0B6C
	arm_func_end sub_0206C0EC

	arm_func_start sub_0206C0FC
sub_0206C0FC: ; 0x0206C0FC
	ldr r1, _0206C10C ; =_020B0B70
	ldrsh r1, [r1, #2]
	strh r1, [r0]
	bx lr
	.align 2, 0
_0206C10C: .word _020B0B70
	arm_func_end sub_0206C0FC

	arm_func_start sub_0206C110
sub_0206C110: ; 0x0206C110
	ldr r1, _0206C11C ; =_020B0B70
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_0206C11C: .word _020B0B70
	arm_func_end sub_0206C110

	arm_func_start sub_0206C120
sub_0206C120: ; 0x0206C120
	ldr r1, _0206C130 ; =_020B0B70
	ldrsh r1, [r1]
	strh r1, [r0]
	bx lr
	.align 2, 0
_0206C130: .word _020B0B70
	arm_func_end sub_0206C120

	arm_func_start sub_0206C134
sub_0206C134: ; 0x0206C134
	ldr r1, _0206C140 ; =_020B0B70
	strh r0, [r1]
	bx lr
	.align 2, 0
_0206C140: .word _020B0B70
	arm_func_end sub_0206C134

	arm_func_start sub_0206C144
sub_0206C144: ; 0x0206C144
	ldr r3, _0206C160 ; =_020B0B74
	mov r2, #8
_0206C14C:
	ldrb r1, [r3], #1
	subs r2, r2, #1
	strb r1, [r0], #1
	bne _0206C14C
	bx lr
	.align 2, 0
_0206C160: .word _020B0B74
	arm_func_end sub_0206C144

	arm_func_start sub_0206C164
sub_0206C164: ; 0x0206C164
	ldr r3, _0206C180 ; =_020B0B74
	mov r2, #8
_0206C16C:
	ldrb r1, [r0], #1
	subs r2, r2, #1
	strb r1, [r3], #1
	bne _0206C16C
	bx lr
	.align 2, 0
_0206C180: .word _020B0B74
	arm_func_end sub_0206C164

	arm_func_start sub_0206C184
sub_0206C184: ; 0x0206C184
	ldr ip, _0206C198 ; =sub_0207A7EC
	mov r0, #0
	mov r2, r1
	sub r1, r0, #1
	bx ip
	.align 2, 0
_0206C198: .word sub_0207A7EC
	arm_func_end sub_0206C184

	arm_func_start sub_0206C19C
sub_0206C19C: ; 0x0206C19C
	stmdb sp!, {r4, lr}
	mov r4, r1
	mov r0, #0
	mov r2, r4
	sub r1, r0, #1
	bl sub_0207A8F4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0206C19C

	arm_func_start sub_0206C1BC
sub_0206C1BC: ; 0x0206C1BC
	bx lr
	arm_func_end sub_0206C1BC

	arm_func_start sub_0206C1C0
sub_0206C1C0: ; 0x0206C1C0
	stmdb sp!, {r4, lr}
	ldr r1, _0206C248 ; =DRIVER_WORK
	mov r2, #1
	movs r4, r0
	strb r2, [r1, #0x3d]
	subeq r0, r2, #0x100
	ldmeqia sp!, {r4, pc}
	mov r1, #0x40
	bl sub_0206CCBC
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r1, #8
	strb r1, [r4, #0x10]
	strb r0, [r4, #0x11]
	strh r0, [r4, #0x14]
	mov r1, #0xf
	strh r1, [r4, #0x16]
	mov r1, #0x14
	strb r1, [r4, #0x12]
	mov r1, #4
	strh r1, [r4, #0x18]
	ldr r2, _0206C24C ; =_0206C184
	strh r1, [r4, #0x1a]
	ldr r1, _0206C250 ; =_0206C19C
	str r2, [r4, #0x1c]
	str r1, [r4, #0x20]
	ldr r1, _0206C254 ; =sub_0206C1BC
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	str r1, [r4, #0x2c]
	str r0, [r4, #0x30]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206C248: .word DRIVER_WORK
_0206C24C: .word sub_0206C184
_0206C250: .word sub_0206C19C
_0206C254: .word sub_0206C1BC
	arm_func_end sub_0206C1C0

	arm_func_start sub_0206C258
sub_0206C258: ; 0x0206C258
	stmdb sp!, {r3, r4, r5, lr}
	movs r4, r0
	bne _0206C27C
	mov r1, #0
	mov r2, r1
	mvn r0, #0x17
	bl sub_0206C854
	mov r0, #2
	ldmia sp!, {r3, r4, r5, pc}
_0206C27C:
	tst r4, #3
	beq _0206C29C
	mov r1, #0
	mov r2, r1
	mvn r0, #0x17
	bl sub_0206C854
	mov r0, #2
	ldmia sp!, {r3, r4, r5, pc}
_0206C29C:
	ldr r0, [r4, #8]
	mov r5, #0
	cmp r0, #0
	beq _0206C2B4
	tst r0, #0xf
	beq _0206C2B8
_0206C2B4:
	orr r5, r5, #4
_0206C2B8:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0206C2CC
	tst r0, #0xf
	beq _0206C2D0
_0206C2CC:
	orr r5, r5, #8
_0206C2D0:
	ldrb r0, [r4, #0x11]
	ldrb r1, [r4, #0x10]
	cmp r0, #0
	cmpne r0, #1
	orrne r5, r5, #0x100
	cmp r1, #4
	ldrb r0, [r4, #0x12]
	orrlo r5, r5, #0x200
	cmp r0, r1
	ldrsh r1, [r4, #0x14]
	orrls r5, r5, #0x400
	ldrsh r0, [r4, #0x16]
	cmp r1, #0
	orrne r5, r5, #0x4000
	cmp r0, #0x10
	orrge r5, r5, #0x8000
	cmp r1, r0
	orrgt r5, r5, #0xc000
	cmp r5, #0
	beq _0206C330
	mov r1, r5
	mvn r0, #0x17
	mov r2, #0
	bl sub_0206C854
_0206C330:
	mov r0, r5
	str r5, [r4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0206C258

	arm_func_start sub_0206C33C
sub_0206C33C: ; 0x0206C33C
	stmdb sp!, {r3, lr}
	cmp r0, #0
	strne r1, [r0, #8]
	strne r2, [r0, #0xc]
	movne r0, #0
	ldmneia sp!, {r3, pc}
	mov r1, #0
	mov r2, r1
	mvn r0, #0x17
	bl sub_0206C854
	mvn r0, #0x17
	ldmia sp!, {r3, pc}
	arm_func_end sub_0206C33C

	arm_func_start sub_0206C36C
sub_0206C36C: ; 0x0206C36C
	stmdb sp!, {r3, lr}
	cmp r0, #0
	strneb r1, [r0, #0x11]
	strneb r2, [r0, #0x10]
	movne r0, #0
	ldmneia sp!, {r3, pc}
	mov r1, #0
	mov r2, r1
	mvn r0, #0x17
	bl sub_0206C854
	mvn r0, #0x17
	ldmia sp!, {r3, pc}
	arm_func_end sub_0206C36C

	arm_func_start sub_0206C39C
sub_0206C39C: ; 0x0206C39C
	stmdb sp!, {r3, lr}
	cmp r0, #0
	bne _0206C3C0
	mov r1, #0
	mov r2, r1
	mvn r0, #0x17
	bl sub_0206C854
	mvn r0, #0x17
	ldmia sp!, {r3, pc}
_0206C3C0:
	cmp r1, #0
	movlt r1, #0
	cmp r2, #0
	strh r1, [r0, #0x14]
	movlt r2, #0xf
	strh r2, [r0, #0x16]
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0206C39C

	arm_func_start sub_0206C3E0
sub_0206C3E0: ; 0x0206C3E0
	stmdb sp!, {r4, lr}
	ldr r1, _0206C5F8 ; =DRIVER_WORK
	mov r4, r0
	ldrsb r1, [r1]
	cmp r1, #1
	bne _0206C410
	mov r1, #0
	mov r2, r1
	mvn r0, #0xbf
	bl sub_0206C854
	mvn r0, #0xbf
	ldmia sp!, {r4, pc}
_0206C410:
	bl sub_0206C258
	movs r1, r0
	beq _0206C430
	mvn r0, #0x1d
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x1d
	ldmia sp!, {r4, pc}
_0206C430:
	bl sub_0207AD54
	mov r0, #0
	mov r1, r0
	bl sub_0207AEF4
	bl sub_0207AFF0
	ldr r0, _0206C5F8 ; =DRIVER_WORK
	mov r3, #0
	strh r3, [r0, #2]
	str r3, [r0, #4]
	str r3, [r0, #0x10]
	mov r2, #0xff
	mov r1, #1
	strb r2, [r0, #0x3c]
	strb r1, [r0, #0x3d]
	rsb r1, r1, #0x1000
	strh r1, [r0, #0x3e]
	str r3, [r0, #0x2c]
	ldrb r1, [r4, #0x11]
	cmp r1, #0
	ldreq r2, _0206C5FC ; =0x00002710
	moveq r1, #0x64
	ldrne r2, _0206C600 ; =0x0000414B
	movne r1, #0x3c
	strh r2, [r0, #0x28]
	str r1, [r0, #0x30]
	ldr r2, _0206C604 ; =0x00BC614E
	ldr r1, _0206C5F8 ; =DRIVER_WORK
	ldr r0, _0206C608 ; =_022B8330
	str r2, [r1, #0x34]
	ldrb r1, [r4, #0x11]
	strb r1, [r0, #0xdd8]
	bl sub_0206C814
	ldr r1, _0206C5F8 ; =DRIVER_WORK
	mov r0, #1
	strb r0, [r1, #0x38]
	mov r3, #2
	ldr r2, _0206C60C ; =_020B1290
	ldr r0, _0206C608 ; =_022B8330
	strb r3, [r1, #0x39]
	str r2, [r0, #0xed4]
	mov r2, #0
	str r2, [r1, #0x71c]
	str r2, [r1, #0x720]
	str r2, [r1, #0x724]
	str r2, [r1, #0x728]
	ldrb r1, [r4, #0x10]
	ldr ip, _0206C610 ; =DRIVER_WORK
	mov r3, r2
	strb r1, [r0, #0xd10]
_0206C4F4:
	add r2, r2, #1
	strb r3, [ip, #0x674]
	cmp r2, #0x80
	add ip, ip, #1
	blt _0206C4F4
	ldr ip, _0206C5F8 ; =DRIVER_WORK
	mov r0, #0x64
	strb r0, [ip, #0x67b]
	mov r0, #0x7f
	strb r0, [ip, #0x67f]
	mov r0, #0x40
	strb r0, [ip, #0x67e]
	add r0, r4, #0x28
	ldr lr, _0206C614 ; =_022B734C
	ldmia r0, {r0, r1, r2}
	stmia lr, {r0, r1, r2}
	ldrsh ip, [ip, #0x28]
	ldr r1, _0206C608 ; =_022B8330
	mov r2, #1
	str r3, [r1, #0xec8]
	str r2, [r1, #0xecc]
	str r3, [r1, #0xebc]
	ldr r0, _0206C618 ; =_022B9130
	str r3, [r1, #0xec0]
	sub r2, r2, #2
	strh r2, [r0, #0xc4]
	strh ip, [r0, #0xc6]
	strb r3, [r1, #0xed0]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, r4, #0x1c
	bl sub_0206C91C
	ldrsh r0, [r4, #0x16]
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl sub_020743DC
	bl sub_02074338
	bl sub_02070124
	bl sub_02075600
	bl sub_020729A4
	ldr r1, _0206C61C ; =_022B7331
	mov r2, #1
	mov r0, #0x7f
_0206C5A4:
	add r2, r2, #1
	strb r0, [r1, #0x40]
	cmp r2, #0x10
	add r1, r1, #1
	blt _0206C5A4
	ldr r0, _0206C5F8 ; =DRIVER_WORK
	mov r1, #0
	strb r1, [r0, #0x40]
	bl sub_02070E0C
	ldrb r0, [r4, #0x12]
	bl sub_0206CD9C
	ldr r0, _0206C5F8 ; =DRIVER_WORK
	mov r1, #1
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0x1a]
	bl sub_0206E920
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206C5F8: .word DRIVER_WORK
_0206C5FC: .word 0x00002710
_0206C600: .word 0x0000414B
_0206C604: .word 0x00BC614E
_0206C608: .word _022B8330
_0206C60C: .word _020B1290
_0206C610: .word DRIVER_WORK
_0206C614: .word _022B734C
_0206C618: .word _022B9130
_0206C61C: .word _022B7331
	arm_func_end sub_0206C3E0

	arm_func_start sub_0206C620
sub_0206C620: ; 0x0206C620
	stmdb sp!, {r3, lr}
	ldr r0, _0206C684 ; =DRIVER_WORK
	ldrsb r0, [r0]
	cmp r0, #0
	mvneq r0, #0xc0
	ldmeqia sp!, {r3, pc}
	bl sub_0206CE28
	mov r0, #0
	bl sub_0206C7F4
	bl sub_020756E8
	bl sub_02070158
	bl sub_02070148
	bl sub_02070EA0
	bl sub_02074338
	bl sub_0206C98C
	bl sub_0206C814
	ldr r1, _0206C684 ; =DRIVER_WORK
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	str r0, [r1, #0x2c]
	str r0, [r1, #4]
	str r0, [r1, #0x10]
	strh r0, [r1, #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206C684: .word DRIVER_WORK
	arm_func_end sub_0206C620

	arm_func_start sub_0206C688
sub_0206C688: ; 0x0206C688
	stmdb sp!, {r3, lr}
	ldr r0, _0206C6B8 ; =DRIVER_WORK
	ldrsb r1, [r0]
	cmp r1, #0
	ldrnesb r0, [r0, #1]
	ldmneia sp!, {r3, pc}
	mov r1, #0
	mov r2, r1
	mvn r0, #0xc0
	bl sub_0206C854
	mvn r0, #0xc0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206C6B8: .word DRIVER_WORK
	arm_func_end sub_0206C688

	arm_func_start sub_0206C6BC
sub_0206C6BC: ; 0x0206C6BC
	stmdb sp!, {r3, lr}
	ldr r0, _0206C750 ; =DRIVER_WORK
	ldrsb r1, [r0]
	cmp r1, #0
	bne _0206C6E8
	mov r1, #0
	mov r2, r1
	mvn r0, #0xc0
	bl sub_0206C854
	mvn r0, #0xc0
	ldmia sp!, {r3, pc}
_0206C6E8:
	ldrsb r1, [r0, #1]
	cmp r1, #1
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	mov r1, #1
	strb r1, [r0, #1]
	bl sub_02070F4C
	ldr r0, _0206C750 ; =DRIVER_WORK
	mov r1, #0
	ldr r0, [r0, #0x664]
	bl sub_0206DC0C
	ldr r0, _0206C750 ; =DRIVER_WORK
	mov r1, #0
	ldr r0, [r0, #0x668]
	bl sub_0206DC0C
	mov r0, #0
	bl sub_0206F6FC
	mov r0, #0
	bl sub_02070188
	mov r0, #0
	bl sub_020743DC
	ldr r0, _0206C750 ; =DRIVER_WORK
	mov r1, #2
	strb r1, [r0, #0x38]
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206C750: .word DRIVER_WORK
	arm_func_end sub_0206C6BC

	arm_func_start sub_0206C754
sub_0206C754: ; 0x0206C754
	stmdb sp!, {r4, lr}
	ldr r1, _0206C7F0 ; =DRIVER_WORK
	mov r4, r0
	ldrsb r0, [r1, #1]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #1
	strb r2, [r1, #0x38]
	ldrh r0, [r1, #0x3e]
	mov r1, r4
	tst r0, #0xf
	ldr r0, _0206C7F0 ; =DRIVER_WORK
	moveq r2, #0
	mov r2, r2, lsl #0x18
	ldr r0, [r0, #0x664]
	mov r2, r2, asr #0x18
	bl sub_0206DC78
	ldr r0, _0206C7F0 ; =DRIVER_WORK
	ldrh r0, [r0, #0x3e]
	tst r0, #0xf0
	movne r1, #1
	ldr r0, _0206C7F0 ; =DRIVER_WORK
	moveq r1, #0
	mov r2, r1, lsl #0x18
	ldr r0, [r0, #0x668]
	mov r1, r4
	mov r2, r2, asr #0x18
	bl sub_0206DC78
	mov r0, r4
	bl sub_0206F774
	mov r0, r4
	bl sub_020701B0
	ldr r0, _0206C7F0 ; =DRIVER_WORK
	mov r1, #0
	strb r1, [r0, #1]
	bl sub_02070EDC
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206C7F0: .word DRIVER_WORK
	arm_func_end sub_0206C754

	arm_func_start sub_0206C7F4
sub_0206C7F4: ; 0x0206C7F4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0206DADC
	mov r0, r4
	bl sub_0206F4E0
	mov r0, r4
	bl sub_0206F9A4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0206C7F4

	arm_func_start sub_0206C814
sub_0206C814: ; 0x0206C814
	ldr r1, _0206C848 ; =DRIVER_WORK
	mov r2, #0
	str r2, [r1, #0x654]
	str r2, [r1, #0x658]
	ldr r0, _0206C84C ; =_022B8330
	str r2, [r1, #0x65c]
	str r2, [r0, #0xddc]
	str r2, [r1, #0x660]
	str r2, [r1, #0x664]
	str r2, [r1, #0x668]
	ldr ip, _0206C850 ; =sub_0206E8AC
	str r2, [r1, #0x66c]
	bx ip
	.align 2, 0
_0206C848: .word DRIVER_WORK
_0206C84C: .word _022B8330
_0206C850: .word sub_0206E8AC
	arm_func_end sub_0206C814

	arm_func_start sub_0206C854
sub_0206C854: ; 0x0206C854
	stmdb sp!, {r3, lr}
	ldr r3, _0206C880 ; =DRIVER_WORK
	stmib r3, {r0, r1, r2}
	ldr ip, [r3, #0x1c]
	cmp ip, #0
	ldmeqia sp!, {r3, pc}
	mov r1, #0
	ldr r2, _0206C884 ; =_022B7334
	mov r3, r1
	blx ip
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206C880: .word DRIVER_WORK
_0206C884: .word _022B7334
	arm_func_end sub_0206C854

	arm_func_start sub_0206C888
sub_0206C888: ; 0x0206C888
	stmdb sp!, {r3, lr}
	ldr r3, _0206C8BC ; =DRIVER_WORK
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	str r2, [r3, #0x18]
	ldr ip, [r3, #0x20]
	cmp ip, #0
	ldmeqia sp!, {r3, pc}
	mov r1, #0
	ldr r2, _0206C8C0 ; =_022B7340
	mov r3, r1
	blx ip
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206C8BC: .word DRIVER_WORK
_0206C8C0: .word _022B7340
	arm_func_end sub_0206C888

	arm_func_start sub_0206C8C4
sub_0206C8C4: ; 0x0206C8C4
	mov r3, r0, lsr #0x18
	mov r2, r0, lsr #8
	mov r1, r0, lsl #8
	mov r0, r0, lsl #0x18
	and r3, r3, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	and r1, r1, #0xff0000
	orr r1, r2, r1
	and r0, r0, #0xff000000
	orr r0, r1, r0
	bx lr
	arm_func_end sub_0206C8C4

	arm_func_start SoundUtilGetRandomNumber
SoundUtilGetRandomNumber: ; 0x0206C8F4
	ldr r1, _0206C914 ; =DRIVER_WORK
	ldr r0, _0206C918 ; =0x00007FFF
	ldr r2, [r1, #0x34]
	eor r2, r2, r2, lsl #17
	eor r2, r2, r2, asr #15
	str r2, [r1, #0x34]
	and r0, r2, r0
	bx lr
	.align 2, 0
_0206C914: .word DRIVER_WORK
_0206C918: .word 0x00007FFF
	arm_func_end SoundUtilGetRandomNumber

	arm_func_start sub_0206C91C
sub_0206C91C: ; 0x0206C91C
	mov ip, r1
	tst r0, #0xf
	bicne r0, r0, #0xf
	ldr r1, _0206C980 ; =DRIVER_WORK
	addne r0, r0, #0x10
	subne ip, ip, #0x10
	add r3, r0, ip
	str r0, [r1, #0x6f4]
	str r3, [r1, #0x6f8]
	str ip, [r1, #0x6fc]
	ldr r3, _0206C984 ; =0x74647373
	mov r1, #0x82
	str r3, [r0]
	strb r1, [r0, #4]
	mov r3, #0
	strb r3, [r0, #5]
	add r1, r0, #0x10
	str r1, [r0, #8]
	str r3, [r0, #0xc]
	strb r3, [r0, #6]
	ldr r3, _0206C988 ; =_022B7A30
	ldmia r2, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, ip
	bx lr
	.align 2, 0
_0206C980: .word DRIVER_WORK
_0206C984: .word 0x74647373
_0206C988: .word _022B7A30
	arm_func_end sub_0206C91C

	arm_func_start sub_0206C98C
sub_0206C98C: ; 0x0206C98C
	ldr r0, _0206C9A4 ; =DRIVER_WORK
	mov r1, #0
	str r1, [r0, #0x6f4]
	str r1, [r0, #0x6f8]
	str r1, [r0, #0x6fc]
	bx lr
	.align 2, 0
_0206C9A4: .word DRIVER_WORK
	arm_func_end sub_0206C98C

	arm_func_start sub_0206C9A8
sub_0206C9A8: ; 0x0206C9A8
	ldr ip, _0206C9B4 ; =sub_0206C9BC
	ldr r2, _0206C9B8 ; =0x72657375
	bx ip
	.align 2, 0
_0206C9B4: .word sub_0206C9BC
_0206C9B8: .word 0x72657375
	arm_func_end sub_0206C9A8

	arm_func_start sub_0206C9BC
sub_0206C9BC: ; 0x0206C9BC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _0206CAC4 ; =DRIVER_WORK
	mov lr, r0
	ldr r0, [r3, #0x6f4]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0206CAC8 ; =0x04000208
	cmp r1, #0
	ldrh ip, [r4]
	moveq r1, #0x10
	mov r0, #0
	sub r5, r1, #1
	strh r0, [r4]
	ldr r3, _0206CAC4 ; =DRIVER_WORK
	mvn r0, r5
	add r4, lr, r5
	and r4, r0, r4
	ldr r3, [r3, #0x6f4]
	add r6, r4, #0x10
_0206CA0C:
	ldr r4, [r3, #0xc]
	cmp r4, #0
	bne _0206CA2C
	ldr r4, _0206CAC4 ; =DRIVER_WORK
	ldr r7, [r3, #8]
	ldr r4, [r4, #0x6f8]
	sub r5, r4, r7
	b _0206CA40
_0206CA2C:
	ldr r7, [r3, #8]
	sub r5, r4, r7
	cmp r5, r6
	movlt r3, r4
	blt _0206CA0C
_0206CA40:
	cmp r5, r6
	bge _0206CA5C
	ldr r2, _0206CAC8 ; =0x04000208
	mov r0, #0
	ldrh r1, [r2]
	strh ip, [r2]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0206CA5C:
	add r4, r7, #0x10
	sub r1, r1, #1
	add r1, r4, r1
	and r1, r0, r1
	sub r6, r1, #0x10
	add r4, r6, #0x10
	add r0, r4, lr
	str r0, [r6, #8]
	str r2, [r1, #-0x10]
	mov r0, #2
	strb r0, [r6, #4]
	mov r0, #0
	strb r0, [r6, #5]
	ldr r1, [r3, #0xc]
	ldr r5, _0206CAC8 ; =0x04000208
	str r1, [r6, #0xc]
	str r6, [r3, #0xc]
	strb r0, [r6, #6]
	strb r0, [r3, #6]
	ldrh r1, [r5]
	mov r1, r4
	mov r2, lr
	strh ip, [r5]
	bl ArrayFill32Fast
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206CAC4: .word DRIVER_WORK
_0206CAC8: .word 0x04000208
	arm_func_end sub_0206C9BC

	arm_func_start sub_0206CACC
sub_0206CACC: ; 0x0206CACC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r3, _0206CC0C ; =DRIVER_WORK
	mov r6, r0
	ldr r0, [r3, #0x6f4]
	mov r5, r1
	cmp r0, #0
	bne _0206CB00
	mov r1, r6
	mov r2, r5
	mvn r0, #0xc1
	bl sub_0206C854
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0206CB00:
	ldr r3, _0206CC10 ; =0x04000208
	cmp r5, #0
	ldrh ip, [r3]
	moveq r5, #0x10
	sub r4, r5, #1
	mov r1, #0
	strh r1, [r3]
	ldr r0, _0206CC0C ; =DRIVER_WORK
	mvn lr, r4
	add r3, r6, r4
	and r3, lr, r3
	ldr r0, [r0, #0x6f4]
	mov r4, r1
	add r3, r3, #0x10
_0206CB38:
	ldr r8, [r0, #0xc]
	cmp r8, #0
	bne _0206CB64
	ldr r7, _0206CC0C ; =DRIVER_WORK
	ldr r8, [r0, #8]
	ldr sb, [r7, #0x6f8]
	sub r7, sb, r8
	cmp r7, r3
	movge r1, r0
	movge r4, sb
	b _0206CB80
_0206CB64:
	ldr r7, [r0, #8]
	sub r7, r8, r7
	cmp r7, r3
	movge r1, r0
	movge r4, r8
	mov r0, r8
	b _0206CB38
_0206CB80:
	cmp r1, #0
	bne _0206CB9C
	ldr r2, _0206CC10 ; =0x04000208
	mov r0, #0
	ldrh r1, [r2]
	strh ip, [r2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0206CB9C:
	sub r0, r4, r3
	add r3, r0, #0x10
	sub r0, r5, #1
	add r0, r3, r0
	and r0, lr, r0
	str r2, [r0, #-0x10]
	sub r7, r0, #0x10
	add r4, r7, #0x10
	mov r0, #0x22
	strb r0, [r7, #4]
	mov r0, #0
	strb r0, [r7, #5]
	strb r5, [r7, #7]
	add r2, r4, r6
	str r2, [r7, #8]
	ldr r2, [r1, #0xc]
	ldr r3, _0206CC10 ; =0x04000208
	str r2, [r7, #0xc]
	str r7, [r1, #0xc]
	strb r0, [r7, #6]
	strb r0, [r1, #6]
	ldrh r1, [r3]
	mov r1, r4
	mov r2, r6
	strh ip, [r3]
	bl ArrayFill32Fast
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0206CC0C: .word DRIVER_WORK
_0206CC10: .word 0x04000208
	arm_func_end sub_0206CACC

	arm_func_start sub_0206CC14
sub_0206CC14: ; 0x0206CC14
	stmdb sp!, {r3, lr}
	ldr r2, _0206CCB4 ; =DRIVER_WORK
	mov r1, r0
	ldr r0, [r2, #0x6f4]
	cmp r0, #0
	bne _0206CC40
	mvn r0, #0xc1
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0xc1
	ldmia sp!, {r3, pc}
_0206CC40:
	ldr r0, _0206CCB8 ; =0x04000208
	mov ip, #0
	ldrh r3, [r0]
	sub lr, r1, #0x10
	strh ip, [r0]
	ldr r0, [r2, #0x6f4]
	cmp r0, lr
	beq _0206CC70
_0206CC60:
	mov ip, r0
	ldr r0, [r0, #0xc]
	cmp r0, lr
	bne _0206CC60
_0206CC70:
	cmp ip, #0
	beq _0206CC94
	ldr r0, [lr, #0xc]
	ldr r1, _0206CCB8 ; =0x04000208
	str r0, [ip, #0xc]
	ldrh r0, [r1]
	mov r0, #0
	strh r3, [r1]
	ldmia sp!, {r3, pc}
_0206CC94:
	ldr ip, _0206CCB8 ; =0x04000208
	mvn r0, #0x8b
	ldrh r2, [ip]
	mov r2, #0
	strh r3, [ip]
	bl sub_0206C854
	mvn r0, #0x8b
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206CCB4: .word DRIVER_WORK
_0206CCB8: .word 0x04000208
	arm_func_end sub_0206CC14

	arm_func_start sub_0206CCBC
sub_0206CCBC: ; 0x0206CCBC
	cmp r1, #0x10
	blt _0206CCE4
	mov r2, #0
_0206CCC8:
	str r2, [r0, #0xc]
	str r2, [r0, #8]
	sub r1, r1, #0x10
	str r2, [r0, #4]
	cmp r1, #0x10
	str r2, [r0], #0x10
	bge _0206CCC8
_0206CCE4:
	cmp r1, #4
	blt _0206CD00
	mov r2, #0
_0206CCF0:
	sub r1, r1, #4
	cmp r1, #4
	str r2, [r0], #4
	bge _0206CCF0
_0206CD00:
	cmp r1, #0
	bxle lr
	mov r2, #0
_0206CD0C:
	strb r2, [r0], #1
	subs r1, r1, #1
	bne _0206CD0C
	bx lr
	arm_func_end sub_0206CCBC

	arm_func_start sub_0206CD1C
sub_0206CD1C: ; 0x0206CD1C
	stmdb sp!, {r4, r5, r6, lr}
	ldr r3, _0206CD98 ; =DRIVER_WORK
	mov r6, r0
	ldrsb r0, [r3]
	mov r4, r2
	mov r5, r1
	cmp r0, #0
	mvneq r4, #0xc0
	beq _0206CD80
	cmp r6, #0
	mvneq r4, #0x17
	beq _0206CD80
	beq _0206CD80
	ldr r0, [r6]
	bl sub_0206C8C4
	cmp r5, r0
	mvnne r4, #0x10
	bne _0206CD80
	cmp r4, #0
	ldrneh r0, [r6, #0xc]
	cmpne r0, r4
	mvnne r4, #0x12
	bne _0206CD80
	ldrh r0, [r6, #0xe]
	ldmia sp!, {r4, r5, r6, pc}
_0206CD80:
	mov r0, r4
	mov r1, r6
	mov r2, #0
	bl sub_0206C854
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0206CD98: .word DRIVER_WORK
	arm_func_end sub_0206CD1C

	arm_func_start sub_0206CD9C
sub_0206CD9C: ; 0x0206CD9C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _0206CE18 ; =_022B8330
	mov r1, #0x4000
	str r1, [r3, #0xde0]
	mov ip, #0
	str ip, [r3, #0xde4]
	mov r4, r0
	str ip, [r3, #0xde8]
	strb r4, [r3, #0xdec]
	strb ip, [r3, #0xded]
	strb ip, [r3, #0xdee]
	ldr r2, _0206CE1C ; =0x72727473
	mov r0, #0x800
	mov r1, #0x10
	strb ip, [r3, #0xdef]
	bl sub_0206CACC
	ldr r1, _0206CE18 ; =_022B8330
	mov r2, #0x800
	str r0, [r1, #0xeb0]
	stmia sp, {r2, r4}
	ldr r2, [r1, #0xeb0]
	ldr r0, _0206CE20 ; =_022B9120
	add r3, r2, #0x800
	ldr r1, _0206CE24 ; =sub_0206CE68
	mov r2, #0
	bl StartThread
	ldr r0, _0206CE20 ; =_022B9120
	bl sub_02079940
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206CE18: .word _022B8330
_0206CE1C: .word 0x72727473
_0206CE20: .word _022B9120
_0206CE24: .word sub_0206CE68
	arm_func_end sub_0206CD9C

	arm_func_start sub_0206CE28
sub_0206CE28: ; 0x0206CE28
	stmdb sp!, {r3, lr}
	ldr r1, _0206CE60 ; =_022B8330
	mov r2, #0
	ldr r0, _0206CE64 ; =_022B9120
	strb r2, [r1, #0xded]
	mov r2, #1
	strb r2, [r1, #0xdee]
	bl sub_02079940
	ldr r0, _0206CE64 ; =_022B9120
	bl sub_02079800
	ldr r0, _0206CE60 ; =_022B8330
	ldr r0, [r0, #0xeb0]
	bl sub_0206CC14
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206CE60: .word _022B8330
_0206CE64: .word _022B9120
	arm_func_end sub_0206CE28

	arm_func_start sub_0206CE68
sub_0206CE68: ; 0x0206CE68
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r5, _0206CEC4 ; =_022B8330
	mov r6, #0
	add r4, r5, #0xd00
	mov sb, #1
	mov r8, r6
	mov r7, r6
_0206CE84:
	mov r0, r8
	strb sb, [r5, #0xdef]
	bl sub_02079888
	strb r7, [r5, #0xdef]
	ldrsb r0, [r4, #0xee]
	cmp r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r5, #0xeb4]
	cmp r0, #0
	beq _0206CE84
	ldr r1, [r5, #0xeb8]
	bl sub_0206D3D8
	str r6, [r5, #0xeb4]
	str r6, [r5, #0xeb8]
	b _0206CE84
_0206CEC0:
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0206CEC4: .word _022B8330
	arm_func_end sub_0206CE68

	arm_func_start sub_0206CEC8
sub_0206CEC8: ; 0x0206CEC8
	mov r0, #0
	bx lr
	arm_func_end sub_0206CEC8

	arm_func_start sub_0206CED0
sub_0206CED0: ; 0x0206CED0
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xb4
	movs r5, r0
	bne _0206CEFC
	mov r1, #0
	mov r2, r1
	mvn r0, #0x17
	bl sub_0206C854
	add sp, sp, #0xb4
	mvn r0, #0x17
	ldmia sp!, {r3, r4, r5, r6, pc}
_0206CEFC:
	ldr r4, _0206D0E8 ; =_022B8330
	cmp r1, #0
	moveq r1, #0x4000
	cmp r2, #0
	ldreq r2, _0206D0EC ; =sub_0206CEC8
	str r1, [r4, #0xde0]
	str r2, [r4, #0xde4]
	add r0, sp, #0x1c
	str r3, [r4, #0xde8]
	bl sub_0206D6F0
	add r0, sp, #0x1c
	mov r1, r5
	bl sub_0206D700
	cmp r0, #0
	addlt sp, sp, #0xb4
	ldmltia sp!, {r3, r4, r5, r6, pc}
	mov r2, #0x50
	mov r3, #0
	mov r6, #1
	add r4, sp, #4
	add r0, sp, #0x1c
	add r1, sp, #0x64
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	str r4, [sp]
	bl sub_0206D73C
	ldr r1, _0206D0F0 ; =0x7377646C
	ldr r2, _0206D0F4 ; =0x00000415
	add r0, sp, #0x64
	mov r3, #4
	bl sub_0206CD1C
	movs r4, r0
	bpl _0206CFA4
	add r0, sp, #0x1c
	bl sub_0206D72C
	add sp, sp, #0xb4
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, pc}
_0206CFA4:
	ldrh r0, [sp, #0x72]
	bl sub_0206D650
	cmp r0, #0
	beq _0206CFD8
	add r0, sp, #0x1c
	bl sub_0206D72C
	mov r1, r4
	mvn r0, #0x47
	mov r2, #0
	bl sub_0206C854
	add sp, sp, #0xb4
	mvn r0, #0x47
	ldmia sp!, {r3, r4, r5, r6, pc}
_0206CFD8:
	ldr r6, [sp, #0xb0]
	ldr r2, _0206D0F8 ; =0x66767772
	add r0, r6, #0x60
	mov r1, #0x10
	bl sub_0206C9BC
	movs r4, r0
	bne _0206D018
	add r0, sp, #0x1c
	bl sub_0206D72C
	mov r1, #0
	mov r2, r1
	mvn r0, #0x7f
	bl sub_0206C854
	add sp, sp, #0xb4
	mvn r0, #0x7f
	ldmia sp!, {r3, r4, r5, r6, pc}
_0206D018:
	ldrh r0, [sp, #0x72]
	add r3, r6, #0x70
	add r2, sp, #4
	strh r0, [r4]
	ldrsh ip, [sp, #0xaa]
	add r0, sp, #0x1c
	add r1, r4, #0x60
	strh ip, [r4, #2]
	str r3, [r4, #4]
	ldr ip, [sp, #0xb0]
	mov r3, #0x50
	str ip, [sp, #4]
	str ip, [sp, #8]
	str r2, [sp]
	add r2, ip, #0x10
	bl sub_0206D73C
	ldr r0, [r4, #0x60]
	bl sub_0206C8C4
	ldr r1, _0206D0FC ; =0x77617669
	cmp r0, r1
	addne sp, sp, #0xb4
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	add r1, r4, #0x70
	add r0, sp, #0x1c
	str r1, [r4, #8]
	bl sub_0206D72C
	mov r1, #0
	ldr r0, _0206D100 ; =0x04000208
	str r1, [r4, #0x5c]
	ldrh r3, [r0]
	ldr r2, _0206D104 ; =_022B910C
	strh r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	beq _0206D0B8
_0206D0A8:
	add r2, r0, #0x5c
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	bne _0206D0A8
_0206D0B8:
	ldr r1, _0206D100 ; =0x04000208
	str r4, [r2]
	ldrh r0, [r1]
	add r0, r4, #0x14
	strh r3, [r1]
	bl sub_0206D6F0
	mov r1, r5
	add r0, r4, #0x14
	bl sub_0206D700
	ldrh r0, [r4]
	add sp, sp, #0xb4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_0206D0E8: .word _022B8330
_0206D0EC: .word sub_0206CEC8
_0206D0F0: .word 0x7377646C
_0206D0F4: .word 0x00000415
_0206D0F8: .word 0x66767772
_0206D0FC: .word 0x77617669
_0206D100: .word 0x04000208
_0206D104: .word _022B910C
	arm_func_end sub_0206CED0

	arm_func_start sub_0206D108
sub_0206D108: ; 0x0206D108
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	str r2, [sp]
	ldr r1, _0206D2E4 ; =0x7377646C
	ldr r2, _0206D2E8 ; =0x00000415
	mov r3, #4
	mov sl, r0
	bl sub_0206CD1C
	movs r4, r0
	ldmmiia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	bl sub_0206D6A0
	cmp r0, #0
	beq _0206D158
	mov r1, r4
	mvn r0, #0x47
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x47
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0206D158:
	ldr r2, _0206D2EC ; =0x69766177
	mov r0, #0x28
	mov r1, #0x10
	bl sub_0206C9BC
	movs sb, r0
	mov r1, #0
	bne _0206D188
	mov r2, r1
	mvn r0, #0x7f
	bl sub_0206C854
	mvn r0, #0x7f
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0206D188:
	str sl, [sb]
	strh r4, [sb, #4]
	strh r1, [sb, #6]
	ldrsh r0, [sl, #0x46]
	add r8, sl, #0x50
	strh r0, [sb, #8]
	ldrsh r0, [sl, #0x48]
	strh r0, [sb, #0xa]
	ldrb r0, [sl, #0x4a]
	strb r0, [sb, #0xc]
	ldrb r0, [sl, #0x4b]
	strb r0, [sb, #0xd]
	str r1, [sb, #0x10]
	str r1, [sb, #0x14]
	str r1, [sb, #0x18]
	str r1, [sb, #0x1c]
	str r1, [sb, #0x20]
	str r1, [sb, #0x24]
	ldr r0, [sl, #0x50]
	bl sub_0206C8C4
	ldr r7, _0206D2F0 ; =0x656F6420
	cmp r0, r7
	beq _0206D270
	ldr fp, _0206D2F4 ; =0x77617669
	ldr r4, _0206D2F8 ; =0x70726769
	ldr r6, _0206D2FC ; =0x70636D64
	ldr r5, _0206D300 ; =0x6B677270
_0206D1F4:
	ldr r0, [r8]
	bl sub_0206C8C4
	cmp r0, r6
	bhi _0206D218
	bhs _0206D23C
	cmp r0, r5
	addeq r0, r8, #0x10
	streq r0, [sb, #0x18]
	b _0206D244
_0206D218:
	cmp r0, r4
	bhi _0206D22C
	addeq r0, r8, #0x10
	streq r0, [sb, #0x14]
	b _0206D244
_0206D22C:
	cmp r0, fp
	addeq r0, r8, #0x10
	streq r0, [sb, #0x10]
	b _0206D244
_0206D23C:
	add r0, r8, #0x10
	str r0, [sb, #0x1c]
_0206D244:
	ldrb r1, [r8, #8]
	ldr r0, [r8, #0xc]
	sub r2, r1, #1
	add r0, r0, #0x10
	mvn r1, r2
	add r0, r0, r2
	and r0, r1, r0
	ldr r0, [r8, r0]!
	bl sub_0206C8C4
	cmp r0, r7
	bne _0206D1F4
_0206D270:
	ldr r1, _0206D304 ; =0x04000208
	mov r0, #0
	ldrh r3, [r1]
	ldr r2, _0206D308 ; =_022B7990
	strh r0, [r1]
	ldr r0, [r2]
	cmp r0, #0
	beq _0206D2A0
_0206D290:
	add r2, r0, #0x24
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _0206D290
_0206D2A0:
	ldr r1, _0206D304 ; =0x04000208
	str sb, [r2]
	ldrh r0, [r1]
	strh r3, [r1]
	ldrb r0, [sl, #0x4b]
	cmp r0, #2
	bne _0206D2DC
	ldrh r1, [sl, #0x40]
	ldr r0, [sp]
	cmp r0, #0
	strh r1, [sb, #6]
	beq _0206D2DC
	ldrh r0, [sb, #4]
	ldr r1, [sp]
	bl sub_0206D328
_0206D2DC:
	ldrh r0, [sb, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0206D2E4: .word 0x7377646C
_0206D2E8: .word 0x00000415
_0206D2EC: .word 0x69766177
_0206D2F0: .word 0x656F6420
_0206D2F4: .word 0x77617669
_0206D2F8: .word 0x70726769
_0206D2FC: .word 0x70636D64
_0206D300: .word 0x6B677270
_0206D304: .word 0x04000208
_0206D308: .word _022B7990
	arm_func_end sub_0206D108

	arm_func_start sub_0206D30C
sub_0206D30C: ; 0x0206D30C
	ldr r0, _0206D324 ; =_022B8330
	ldr r0, [r0, #0xeb4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_0206D324: .word _022B8330
	arm_func_end sub_0206D30C

	arm_func_start sub_0206D328
sub_0206D328: ; 0x0206D328
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r6, r1
	bl sub_0206D6A0
	movs r4, r0
	bne _0206D358
	mov r1, r5
	mvn r0, #0x40
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x40
	ldmia sp!, {r4, r5, r6, pc}
_0206D358:
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	mvnne r0, #0x4c
	ldmneia sp!, {r4, r5, r6, pc}
	ldrh r0, [r4, #6]
	bl sub_0206D650
	cmp r0, #0
	bne _0206D390
	mov r1, #0
	mov r2, r1
	mvn r0, #0x4b
	bl sub_0206C854
	mvn r0, #0x4b
	ldmia sp!, {r4, r5, r6, pc}
_0206D390:
	ldr r5, [r4, #0x20]
	cmp r5, #0
	bne _0206D3AC
	mov r0, r4
	mov r1, #0
	bl sub_0206D3D8
	mov r5, r0
_0206D3AC:
	cmp r6, #0
	beq _0206D3C8
	ldr r1, _0206D3D0 ; =_022B8330
	ldr r0, _0206D3D4 ; =_022B9120
	str r4, [r1, #0xeb4]
	str r6, [r1, #0xeb8]
	bl sub_02079940
_0206D3C8:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0206D3D0: .word _022B8330
_0206D3D4: .word _022B9120
	arm_func_end sub_0206D328

	arm_func_start sub_0206D3D8
sub_0206D3D8: ; 0x0206D3D8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sl, r0
	ldrh r0, [sl, #6]
	mov sb, r1
	bl sub_0206D650
	movs r4, r0
	bne _0206D414
	mov r1, #0
	mov r2, r1
	mvn r0, #0x4b
	bl sub_0206C854
	add sp, sp, #0x1c
	mvn r0, #0x4b
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0206D414:
	mov r6, #0
	str r6, [sp, #8]
	ldr r0, [sl, #0x20]
	mov r5, sb
	str r0, [sp, #4]
	ldrsh r0, [sl, #8]
	mov r7, r6
	str r0, [sp, #0x14]
	ldrsh r0, [sl, #8]
	cmp r0, #0
	ble _0206D4D4
	add fp, sp, #4
_0206D444:
	mov r1, r7, lsl #0x10
	mov r0, sl
	mov r1, r1, asr #0x10
	bl ReadWaviEntry
	cmp r0, #0
	beq _0206D4C4
	str r5, [r0, #0x24]
	ldr r2, [r4, #8]
	mov r1, r7, lsl #1
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _0206D4C4
	add r2, r7, #1
	str r2, [sp, #0x18]
	ldr r2, [r0, #0x2c]
	ldr r0, [r0, #0x28]
	cmp sb, #0
	add r0, r2, r0
	mov r8, r0, lsl #2
	beq _0206D4BC
	str fp, [sp]
	ldr r0, [r4, #8]
	ldr r3, [r4, #4]
	add r0, r0, r1
	ldr ip, [r0, #0x24]
	mov r1, r5
	mov r2, r8
	add r0, r4, #0x14
	add r3, ip, r3
	bl sub_0206D73C
_0206D4BC:
	add r6, r6, r8
	add r5, r5, r8
_0206D4C4:
	ldrsh r0, [sl, #8]
	add r7, r7, #1
	cmp r7, r0
	blt _0206D444
_0206D4D4:
	mov r0, r6
	str r6, [sl, #0x20]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0206D3D8

	arm_func_start sub_0206D4E4
sub_0206D4E4: ; 0x0206D4E4
	stmdb sp!, {r4, lr}
	ldr r2, _0206D550 ; =0x04000208
	mov r1, #0
	ldrh ip, [r2]
	mov r4, r0
	ldr r3, _0206D554 ; =_022B7990
	strh r1, [r2]
	b _0206D508
_0206D504:
	add r3, r0, #0x24
_0206D508:
	ldr r0, [r3]
	cmp r0, #0
	ldrneh r1, [r0, #4]
	cmpne r1, r4
	bne _0206D504
	ldr r2, _0206D550 ; =0x04000208
	cmp r0, #0
	ldreqh r1, [r2]
	mvneq r0, #0x40
	streqh ip, [r2]
	ldmeqia sp!, {r4, pc}
	ldr r1, [r0, #0x24]
	str r1, [r3]
	ldrh r1, [r2]
	strh ip, [r2]
	bl sub_0206CC14
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206D550: .word 0x04000208
_0206D554: .word _022B7990
	arm_func_end sub_0206D4E4

	arm_func_start ReadWaviEntry
ReadWaviEntry: ; 0x0206D558
	ldr r2, [r0, #0x10]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	ldrsh r0, [r0, #8]
	cmp r0, r1
	movle r0, #0
	bxle lr
	mov r0, r1, lsl #1
	ldrh r0, [r2, r0]
	cmp r0, #0
	moveq r0, #0
	addne r0, r2, r0
	bx lr
	arm_func_end ReadWaviEntry

	arm_func_start sub_0206D590
sub_0206D590: ; 0x0206D590
	ldr r2, [r0, #0x14]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	ldrsh r0, [r0, #0xa]
	cmp r0, r1
	movle r0, #0
	bxle lr
	mov r0, r1, lsl #1
	ldrh r0, [r2, r0]
	cmp r0, #0
	moveq r0, #0
	addne r0, r2, r0
	bx lr
	arm_func_end sub_0206D590

	arm_func_start sub_0206D5C8
sub_0206D5C8: ; 0x0206D5C8
	stmdb sp!, {r3, lr}
	ldrb lr, [r0, #2]
	cmp lr, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #0
	addeq r1, r0, #0x60
	beq _0206D600
	ldrb ip, [r1, #1]
	sub r0, lr, #1
	cmp ip, r0
	movge r0, #0
	ldmgeia sp!, {r3, pc}
	add r1, r1, #0x30
_0206D600:
	sub r0, lr, #1
_0206D604:
	ldrb ip, [r1, #4]
	cmp r2, ip
	blo _0206D638
	ldrb ip, [r1, #5]
	cmp r2, ip
	bhi _0206D638
	ldrb ip, [r1, #8]
	cmp r3, ip
	blt _0206D638
	ldrb ip, [r1, #9]
	cmp r3, ip
	movle r0, r1
	ldmleia sp!, {r3, pc}
_0206D638:
	ldrb ip, [r1, #1]
	cmp ip, r0
	addlt r1, r1, #0x30
	blt _0206D604
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0206D5C8

	arm_func_start sub_0206D650
sub_0206D650: ; 0x0206D650
	ldr r3, _0206D698 ; =0x04000208
	mov r2, #0
	ldrh ip, [r3]
	ldr r1, _0206D69C ; =_022B8330
	strh r2, [r3]
	ldr r3, [r1, #0xddc]
	cmp r3, #0
	beq _0206D684
_0206D670:
	ldrh r1, [r3]
	cmp r1, r0
	ldrne r3, [r3, #0x5c]
	cmpne r3, #0
	bne _0206D670
_0206D684:
	ldr r2, _0206D698 ; =0x04000208
	mov r0, r3
	ldrh r1, [r2]
	strh ip, [r2]
	bx lr
	.align 2, 0
_0206D698: .word 0x04000208
_0206D69C: .word _022B8330
	arm_func_end sub_0206D650

	arm_func_start sub_0206D6A0
sub_0206D6A0: ; 0x0206D6A0
	ldr r3, _0206D6E8 ; =0x04000208
	mov r2, #0
	ldrh ip, [r3]
	ldr r1, _0206D6EC ; =DRIVER_WORK
	strh r2, [r3]
	ldr r3, [r1, #0x660]
	cmp r3, #0
	beq _0206D6D4
_0206D6C0:
	ldrh r1, [r3, #4]
	cmp r1, r0
	ldrne r3, [r3, #0x24]
	cmpne r3, #0
	bne _0206D6C0
_0206D6D4:
	ldr r2, _0206D6E8 ; =0x04000208
	mov r0, r3
	ldrh r1, [r2]
	strh ip, [r2]
	bx lr
	.align 2, 0
_0206D6E8: .word 0x04000208
_0206D6EC: .word DRIVER_WORK
	arm_func_end sub_0206D6A0

	arm_func_start sub_0206D6F0
sub_0206D6F0: ; 0x0206D6F0
	stmdb sp!, {r3, lr}
	bl FileInit
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0206D6F0

	arm_func_start sub_0206D700
sub_0206D700: ; 0x0206D700
	stmdb sp!, {r3, lr}
	bl sub_0207F6C4
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	mov r1, #0
	mov r2, r1
	mvn r0, #0x27
	bl sub_0206C854
	mvn r0, #0x27
	ldmia sp!, {r3, pc}
	arm_func_end sub_0206D700

	arm_func_start sub_0206D72C
sub_0206D72C: ; 0x0206D72C
	stmdb sp!, {r3, lr}
	bl sub_0207F70C
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0206D72C

	arm_func_start sub_0206D73C
sub_0206D73C: ; 0x0206D73C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r7, [sp, #0x28]
	mov sb, r1
	mov r8, r2
	mov r1, r3
	mov r2, #0
	mov sl, r0
	bl sub_0207F828
	str r8, [r7, #8]
	mov r0, #0
	str r0, [r7, #0xc]
	cmp r8, #0
	ble _0206D7F0
	ldr r5, _0206D7F8 ; =0x04000006
	ldr fp, _0206D7FC ; =_022B8330
	mov r4, #2
_0206D77C:
	ldr r6, [fp, #0xde0]
	cmp r8, r6
	movlt r6, r8
_0206D788:
	ldrh r0, [r5]
	cmp r0, #0xb4
	blt _0206D7A0
	mov r0, r4
	bl sub_02079B14
	b _0206D788
_0206D7A0:
	mov r0, sl
	mov r1, sb
	mov r2, r6
	bl sub_0207F808
	mov r0, sl
	bl sub_0207F748
	ldr r1, [r7, #0xc]
	mov r0, r7
	add r1, r1, r6
	str r1, [r7, #0xc]
	ldr r1, [r7, #4]
	sub r8, r8, r6
	add r1, r1, r6
	str r1, [r7, #4]
	add sb, sb, r6
	ldr r1, [fp, #0xde8]
	ldr r2, [fp, #0xde4]
	blx r2
	cmp r8, #0
	bgt _0206D77C
_0206D7F0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0206D7F8: .word 0x04000006
_0206D7FC: .word _022B8330
	arm_func_end sub_0206D73C

	arm_func_start sub_0206D800
sub_0206D800: ; 0x0206D800
	mov r0, #0
	bx lr
	arm_func_end sub_0206D800

	arm_func_start sub_0206D808
sub_0206D808: ; 0x0206D808
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0206D8F8 ; =0x736D646C
	ldr r2, _0206D8FC ; =0x00000415
	mov r3, #4
	mov r7, r0
	bl sub_0206CD1C
	cmp r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	add r6, r0, #0x10000
	mov r0, r6
	bl sub_0206E654
	cmp r0, #0
	beq _0206D854
	mov r1, r6
	mvn r0, #0x48
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0206D854:
	mov r0, r7
	mov r1, #1
	bl FindSmdlSongChunk
	movs r5, r0
	bne _0206D880
	mov r1, r7
	mvn r0, #0x42
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x42
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0206D880:
	ldrb r0, [r5, #6]
	ldrb r1, [r5, #7]
	ldr r2, _0206D900 ; =0x7165736D
	bl sub_0206E6A0
	movs r4, r0
	mvneq r0, #0x7f
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	str r6, [r4, #0x28]
	mov r1, r5
	str r7, [r4, #0x1c]
	bl sub_0206E554
	mov r1, #0
	ldr r0, _0206D904 ; =0x04000208
	strb r1, [r4, #0xa]
	ldrh r3, [r0]
	ldr r2, _0206D908 ; =_022B7994
	strh r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	beq _0206D8E0
_0206D8D0:
	add r2, r0, #0xa4
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	bne _0206D8D0
_0206D8E0:
	ldr r1, _0206D904 ; =0x04000208
	str r4, [r2]
	ldrh r0, [r1]
	strh r3, [r1]
	ldr r0, [r4, #0x28]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206D8F8: .word 0x736D646C
_0206D8FC: .word 0x00000415
_0206D900: .word 0x7165736D
_0206D904: .word 0x04000208
_0206D908: .word _022B7994
	arm_func_end sub_0206D808

	arm_func_start sub_0206D90C
sub_0206D90C: ; 0x0206D90C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0206E654
	cmp r0, #0
	bne _0206D938
	mov r1, r4
	mvn r0, #0x41
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x41
	ldmia sp!, {r4, pc}
_0206D938:
	bl sub_0206E7D8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0206D90C

	arm_func_start sub_0206D944
sub_0206D944: ; 0x0206D944
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_0206E654
	cmp r0, #0
	bne _0206D978
	mov r1, r6
	mvn r0, #0x41
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x41
	ldmia sp!, {r4, r5, r6, pc}
_0206D978:
	cmp r5, #0
	strne r5, [r0, #0x9c]
	strne r4, [r0, #0xa0]
	bne _0206D998
	ldr r2, _0206D9A0 ; =sub_0206D800
	mov r1, #0
	str r2, [r0, #0x9c]
	str r1, [r0, #0xa0]
_0206D998:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0206D9A0: .word sub_0206D800
	arm_func_end sub_0206D944

	arm_func_start sub_0206D9A4
sub_0206D9A4: ; 0x0206D9A4
	stmdb sp!, {r3, lr}
	bl sub_0206E654
	cmp r0, #0
	mvneq r0, #0x41
	ldrnesb r0, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end sub_0206D9A4

	arm_func_start ResumeBgm
ResumeBgm: ; 0x0206D9BC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, r1
	mov r6, r2
	bl sub_0206E654
	movs r5, r0
	bne _0206D9F0
	mov r1, r7
	mvn r0, #0x41
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x41
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0206D9F0:
	ldrsb r0, [r5, #1]
	cmp r0, #1
	bne _0206DA14
	mov r1, r7
	mvn r0, #0x3d
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x3d
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0206DA14:
	ldrsb r0, [r5]
	cmp r0, #0
	moveq r6, #1
	cmp r6, #1
	bne _0206DA50
	ldrsb r0, [r5, #4]
	cmp r0, #1
	bne _0206DA40
	mov r0, r7
	mov r1, #0
	bl sub_0206DA9C
_0206DA40:
	mov r0, r5
	bl sub_0206E26C
	cmp r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
_0206DA50:
	mov r0, #0
	str r0, [r5, #0x68]
	strh r0, [r5, #0x74]
	strb r6, [r5, #2]
	bl sub_0206C688
	cmp r0, #0
	ldrnesb r0, [r5, #9]
	mov r1, #0
	mov r2, r1
	cmpne r0, #0
	movne ip, #1
	moveq ip, #0
	mov r0, r5
	mov r3, r4
	strb ip, [r5, #8]
	bl sub_0206DB7C
	cmp r0, #0
	movge r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ResumeBgm

	arm_func_start sub_0206DA9C
sub_0206DA9C: ; 0x0206DA9C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_0206E654
	cmp r0, #0
	mov r2, #0
	bne _0206DACC
	mov r1, r5
	mvn r0, #0x41
	bl sub_0206C854
	mvn r0, #0x41
	ldmia sp!, {r3, r4, r5, pc}
_0206DACC:
	mov r1, r4
	bl sub_0206E3C4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0206DA9C

	arm_func_start sub_0206DADC
sub_0206DADC: ; 0x0206DADC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _0206DB34 ; =0x04000208
	mov r2, #0
	ldrh r4, [r3]
	ldr r1, _0206DB38 ; =DRIVER_WORK
	mov r7, r0
	strh r2, [r3]
	ldr r6, [r1, #0x664]
	cmp r6, #0
	beq _0206DB24
	mov r5, r2
_0206DB08:
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl sub_0206E3C4
	ldr r6, [r6, #0xa4]
	cmp r6, #0
	bne _0206DB08
_0206DB24:
	ldr r1, _0206DB34 ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206DB34: .word 0x04000208
_0206DB38: .word DRIVER_WORK
	arm_func_end sub_0206DADC

	arm_func_start sub_0206DB3C
sub_0206DB3C: ; 0x0206DB3C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_0206E654
	cmp r0, #0
	bne _0206DB6C
	mov r1, r5
	mvn r0, #0x41
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x41
	ldmia sp!, {r3, r4, r5, pc}
_0206DB6C:
	mov r1, r4
	bl sub_0206DD70
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0206DB3C

	arm_func_start sub_0206DB7C
sub_0206DB7C: ; 0x0206DB7C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	strh r1, [r4, #0x2c]
	mov r5, r3
	strb r2, [r4, #0x14]
	ldrsh r2, [r5, #2]
	cmp r2, #0
	mvnlt r0, #0
	blt _0206DBB4
	ldr r1, _0206DC08 ; =DRIVER_WORK
	mov r0, #0x3e8
	ldrsh r1, [r1, #0x28]
	smulbb r0, r2, r0
	bl _s32_div_f
_0206DBB4:
	strh r0, [r4, #0x1a]
	mov r2, #0
	strb r2, [r4, #2]
	mov r0, r4
	mov r1, r5
	strb r2, [r4, #7]
	bl sub_0206DD70
	ldrsb r0, [r4, #8]
	cmp r0, #0
	bne _0206DBF8
	ldrsb r0, [r4, #2]
	cmp r0, #0
	bne _0206DBF0
	ldr r0, [r4, #0x24]
	bl sub_02073504
_0206DBF0:
	mov r0, #1
	strb r0, [r4, #5]
_0206DBF8:
	mov r0, #1
	strb r0, [r4, #4]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0206DC08: .word DRIVER_WORK
	arm_func_end sub_0206DB7C

	arm_func_start sub_0206DC0C
sub_0206DC0C: ; 0x0206DC0C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r4, r0
	beq _0206DC6C
	ldr r7, _0206DC74 ; =0x04000208
	mov r8, #0
	mov r5, #1
_0206DC24:
	ldrsb r0, [r4, #4]
	cmp r0, #1
	ldreqsb r0, [r4, #6]
	cmpeq r0, #0
	ldreqsb r0, [r4, #9]
	cmpeq r0, #1
	bne _0206DC60
	strb r8, [r4, #5]
	ldrh r6, [r7]
	strh r8, [r7]
	ldr r0, [r4, #0x24]
	bl sub_02073480
	ldrh r0, [r7]
	strh r6, [r7]
	strb r5, [r4, #8]
_0206DC60:
	ldr r4, [r4, #0xa4]
	cmp r4, #0
	bne _0206DC24
_0206DC6C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0206DC74: .word 0x04000208
	arm_func_end sub_0206DC0C

	arm_func_start sub_0206DC78
sub_0206DC78: ; 0x0206DC78
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs sl, r0
	mov sb, r1
	mov r8, r2
	beq _0206DD64
	mov r0, #0x3e8
	mul r7, sb, r0
	mov fp, #1
_0206DC98:
	ldrsb r0, [sl, #8]
	cmp r0, #1
	bne _0206DD58
	cmp r8, #1
	bne _0206DCC8
	mov r0, #0
	str r0, [sl, #0x68]
	strh r0, [sl, #0x74]
	strb r0, [sl, #6]
	ldr r0, [sl, #0x24]
	mov r1, #0
	bl sub_020734AC
_0206DCC8:
	cmp sb, #0
	ldrsb r4, [sl, #0x98]
	moveq r6, #0
	beq _0206DCF4
	ldr r0, _0206DD6C ; =DRIVER_WORK
	ldrsh r1, [r0, #0x28]
	mov r0, r7
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r6, r0, lsr #0x10
	moveq r6, #1
_0206DCF4:
	mov r1, r4, lsl #0x10
	str r1, [sl, #0x70]
	cmp r6, #0
	mov r5, r6
	streq r1, [sl, #0x68]
	beq _0206DD28
	ldr r0, [sl, #0x68]
	subs r0, r1, r0
	moveq r5, #0
	beq _0206DD28
	mov r1, r6
	bl _s32_div_f
	str r0, [sl, #0x6c]
_0206DD28:
	strh r5, [sl, #0x74]
	cmp r6, #0
	ldrneb r0, [sl, #0xc]
	orrne r0, r0, #4
	strneb r0, [sl, #0xc]
	bne _0206DD4C
	ldr r0, [sl, #0x24]
	mov r1, r4
	bl sub_020736E8
_0206DD4C:
	strb fp, [sl, #5]
	mov r0, #0
	strb r0, [sl, #8]
_0206DD58:
	ldr sl, [sl, #0xa4]
	cmp sl, #0
	bne _0206DC98
_0206DD64:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0206DD6C: .word DRIVER_WORK
	arm_func_end sub_0206DC78

	arm_func_start sub_0206DD70
sub_0206DD70: ; 0x0206DD70
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r1
	ldrb r1, [r6]
	mov r7, r0
	tst r1, #1
	beq _0206DE38
	ldrsh r4, [r6, #4]
	ldrh r1, [r6, #6]
	cmp r4, #0
	moveq r4, #0x100
	cmp r1, #0
	moveq r5, #0
	beq _0206DDC4
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _0206E05C ; =DRIVER_WORK
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r5, r0, lsr #0x10
	moveq r5, #1
_0206DDC4:
	mov r1, r4, lsl #0x10
	str r1, [r7, #0x50]
	cmp r5, #0
	mov r4, r5
	streq r1, [r7, #0x48]
	beq _0206DDF8
	ldr r0, [r7, #0x48]
	subs r0, r1, r0
	moveq r4, #0
	beq _0206DDF8
	mov r1, r5
	bl _s32_div_f
	str r0, [r7, #0x4c]
_0206DDF8:
	strh r4, [r7, #0x54]
	cmp r5, #0
	bne _0206DE2C
	ldr r1, [r7, #0x48]
	ldrb r0, [r7, #0x17]
	mov r1, r1, asr #0x10
	smulbb r0, r1, r0
	movs r1, r0, lsr #8
	ldr r0, _0206E060 ; =0x03938700
	moveq r1, #1
	bl _u32_div_f
	str r0, [r7, #0x44]
	b _0206DE38
_0206DE2C:
	ldrb r0, [r7, #0xc]
	orr r0, r0, #1
	strb r0, [r7, #0xc]
_0206DE38:
	ldrb r0, [r6]
	tst r0, #2
	beq _0206DEDC
	ldrh r1, [r6, #0xa]
	ldrsh r4, [r6, #8]
	cmp r1, #0
	moveq r5, #0
	beq _0206DE78
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _0206E05C ; =DRIVER_WORK
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r5, r0, lsr #0x10
	moveq r5, #1
_0206DE78:
	mov r1, r4, lsl #0x10
	str r1, [r7, #0x60]
	cmp r5, #0
	mov r4, r5
	streq r1, [r7, #0x58]
	beq _0206DEAC
	ldr r0, [r7, #0x58]
	subs r0, r1, r0
	moveq r4, #0
	beq _0206DEAC
	mov r1, r5
	bl _s32_div_f
	str r0, [r7, #0x5c]
_0206DEAC:
	strh r4, [r7, #0x64]
	cmp r5, #0
	ldrneb r0, [r7, #0xc]
	orrne r0, r0, #2
	strneb r0, [r7, #0xc]
	bne _0206DEDC
	ldr r1, [r7, #0x58]
	ldr r0, [r7, #0x24]
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl sub_02073654
_0206DEDC:
	ldrb r0, [r6]
	tst r0, #4
	beq _0206DF98
	ldrsh r4, [r6, #0xc]
	ldrsh r1, [r6, #0xe]
	strb r4, [r7, #0x98]
	ldrsb r0, [r7, #8]
	cmp r0, #1
	moveq r4, #0
	moveq r1, r4
	mov r0, r1, lsl #0x10
	movs r1, r0, lsr #0x10
	moveq r5, #0
	beq _0206DF34
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _0206E05C ; =DRIVER_WORK
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r5, r0, lsr #0x10
	moveq r5, #1
_0206DF34:
	mov r0, r4, lsl #0x18
	mov r0, r0, asr #0x18
	mov r1, r0, lsl #0x10
	str r1, [r7, #0x70]
	cmp r5, #0
	mov r8, r5
	streq r1, [r7, #0x68]
	beq _0206DF70
	ldr r0, [r7, #0x68]
	subs r0, r1, r0
	moveq r8, #0
	beq _0206DF70
	mov r1, r5
	bl _s32_div_f
	str r0, [r7, #0x6c]
_0206DF70:
	strh r8, [r7, #0x74]
	cmp r5, #0
	ldrneb r0, [r7, #0xc]
	orrne r0, r0, #4
	strneb r0, [r7, #0xc]
	bne _0206DF98
	mov r1, r4, lsl #0x18
	ldr r0, [r7, #0x24]
	mov r1, r1, asr #0x18
	bl sub_020736E8
_0206DF98:
	ldrb r0, [r6]
	tst r0, #8
	beq _0206E048
	ldrh r0, [r6, #0x10]
	ldrh r1, [r6, #0x12]
	mov r0, r0, lsl #0x18
	cmp r1, #0
	mov r4, r0, asr #0x18
	moveq r5, #0
	beq _0206DFE0
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _0206E05C ; =DRIVER_WORK
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r5, r0, lsr #0x10
	moveq r5, #1
_0206DFE0:
	mov r1, r4, lsl #0x10
	str r1, [r7, #0x80]
	cmp r5, #0
	mov r4, r5
	streq r1, [r7, #0x78]
	beq _0206E014
	ldr r0, [r7, #0x78]
	subs r0, r1, r0
	moveq r4, #0
	beq _0206E014
	mov r1, r5
	bl _s32_div_f
	str r0, [r7, #0x7c]
_0206E014:
	strh r4, [r7, #0x84]
	cmp r5, #0
	ldrneb r0, [r7, #0xc]
	orrne r0, r0, #0x10
	strneb r0, [r7, #0xc]
	bne _0206E048
	ldr r1, [r7, #0x78]
	ldr r0, [r7, #0x24]
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	bl sub_020737B8
_0206E048:
	ldrsh r0, [r7, #0x1a]
	cmp r0, #0
	movlt r0, #0
	strlth r0, [r7, #0x1a]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0206E05C: .word DRIVER_WORK
_0206E060: .word 0x03938700
	arm_func_end sub_0206DD70

	arm_func_start sub_0206E064
sub_0206E064: ; 0x0206E064
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl sub_0206E654
	movs r4, r0
	bne _0206E098
	mov r1, r8
	mvn r0, #0x41
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x41
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0206E098:
	cmp r6, #0
	bne _0206E0B8
	mov r1, r8
	mvn r0, #0x17
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x17
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0206E0B8:
	cmp r7, #0x12
	mov r5, #0
	addls pc, pc, r7, lsl #2
	b _0206E1F8
_0206E0C8: ; jump table
	b _0206E1F8 ; case 0
	b _0206E114 ; case 1
	b _0206E174 ; case 2
	b _0206E180 ; case 3
	b _0206E18C ; case 4
	b _0206E1F8 ; case 5
	b _0206E1F8 ; case 6
	b _0206E1F8 ; case 7
	b _0206E1C4 ; case 8
	b _0206E1A4 ; case 9
	b _0206E198 ; case 10
	b _0206E1D0 ; case 11
	b _0206E1EC ; case 12
	b _0206E1F8 ; case 13
	b _0206E1F8 ; case 14
	b _0206E1F8 ; case 15
	b _0206E1F8 ; case 16
	b _0206E1F8 ; case 17
	b _0206E1DC ; case 18
_0206E114:
	ldrsb r2, [r4, #4]
	mov r0, #0x3e8
	ldr r1, _0206E214 ; =DRIVER_WORK
	strb r2, [r6]
	ldrsb r2, [r4, #6]
	strb r2, [r6, #1]
	ldrsb r2, [r4, #1]
	strb r2, [r6, #2]
	strb r5, [r6, #3]
	ldr r2, [r4, #0x34]
	ldr r1, [r1, #0x30]
	mul r0, r2, r0
	bl _u32_div_f
	str r0, [r6, #4]
	ldr r1, [r4, #0x38]
	mov r0, r4
	str r1, [r6, #8]
	bl sub_0206E218
	strh r0, [r6, #0xc]
	ldrb r0, [r4, #0x17]
	strb r0, [r6, #0xf]
	ldrb r0, [r4, #0x16]
	strb r0, [r6, #0xe]
	b _0206E20C
_0206E174:
	ldrsb r0, [r4, #4]
	str r0, [r6]
	b _0206E20C
_0206E180:
	ldrb r0, [r4, #0x17]
	str r0, [r6]
	b _0206E20C
_0206E18C:
	ldrsb r0, [r4, #1]
	str r0, [r6]
	b _0206E20C
_0206E198:
	bl sub_0206E218
	str r0, [r6]
	b _0206E20C
_0206E1A4:
	ldr r1, [r4, #0x34]
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _0206E214 ; =DRIVER_WORK
	ldr r1, [r1, #0x30]
	bl _u32_div_f
	str r0, [r6]
	b _0206E20C
_0206E1C4:
	ldr r0, [r4, #0x38]
	str r0, [r6]
	b _0206E20C
_0206E1D0:
	ldrb r0, [r4, #0x16]
	str r0, [r6]
	b _0206E20C
_0206E1DC:
	ldr r0, [r4, #0x68]
	mov r0, r0, asr #0x10
	str r0, [r6]
	b _0206E20C
_0206E1EC:
	ldrb r0, [r4, #0x17]
	str r0, [r6]
	b _0206E20C
_0206E1F8:
	mov r1, r8
	mvn r0, #0x17
	mov r2, #0
	bl sub_0206C854
	mvn r5, #0x17
_0206E20C:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0206E214: .word DRIVER_WORK
	arm_func_end sub_0206E064

	arm_func_start sub_0206E218
sub_0206E218: ; 0x0206E218
	ldrb ip, [r0, #0xf]
	add r2, r0, #0xa8
	ldr r0, _0206E268 ; =0x0000FFFF
	cmp ip, #0
	mov r3, #0
	ble _0206E258
_0206E230:
	ldrsb r1, [r2, #2]
	cmp r1, #1
	bne _0206E248
	ldrh r1, [r2, #0xa]
	cmp r0, r1
	movhi r0, r1
_0206E248:
	add r3, r3, #1
	cmp r3, ip
	add r2, r2, #0x5c
	blt _0206E230
_0206E258:
	ldr r1, _0206E268 ; =0x0000FFFF
	cmp r0, r1
	moveq r0, #0
	bx lr
	.align 2, 0
_0206E268: .word 0x0000FFFF
	arm_func_end sub_0206E218

	arm_func_start sub_0206E26C
sub_0206E26C: ; 0x0206E26C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x28]
	mov r1, #0
	bl sub_02073458
	ldrb r1, [r4, #0x13]
	ldr r0, [r4, #0x24]
	mov r2, #0
	bl sub_0207356C
	mov lr, #0
	str lr, [r4, #4]
	strb lr, [r4, #3]
	mov r0, #1
	strb r0, [r4, #9]
	ldr r0, _0206E3BC ; =DRIVER_WORK
	strb lr, [r4, #0xd]
	ldr r2, [r0, #0x2c]
	mov r1, #0x78
	str r2, [r4, #0x30]
	str lr, [r4, #0x34]
	str lr, [r4, #0x38]
	strb r1, [r4, #0x17]
	str lr, [r4, #0x3c]
	ldrb r2, [r4, #0x15]
	ldrsh r1, [r0, #0x28]
	ldr r0, _0206E3C0 ; =0x0007A120
	mov r2, r2, lsl #3
	mul r1, r2, r1
	str r1, [r4, #0x40]
	str r0, [r4, #0x44]
	strb lr, [r4, #0xc]
	mov r0, #0x1000000
	str r0, [r4, #0x48]
	strh lr, [r4, #0x54]
	str lr, [r4, #0x58]
	strh lr, [r4, #0x64]
	mov r0, #0x7f0000
	str r0, [r4, #0x68]
	strh lr, [r4, #0x74]
	mov r0, #0x400000
	str r0, [r4, #0x78]
	strh lr, [r4, #0x84]
	mov r0, #0x7f
	strb r0, [r4, #0x98]
	ldrb r0, [r4, #0xf]
	add ip, r4, #0xa8
	cmp r0, #0
	ble _0206E3AC
	mov r3, #1
	mov r2, lr
	mov r1, #0x7f
	mov r0, #4
	mov r5, #0xc8
_0206E344:
	ldr r6, [ip, #0x18]
	cmp r6, #0
	beq _0206E38C
	strb r3, [ip, #2]
	strh r2, [ip, #0xa]
	ldr r6, [ip, #0x18]
	str r6, [ip, #0x1c]
	str r2, [ip, #0xc]
	str r2, [ip, #0x14]
	strb r1, [ip, #5]
	strb r0, [ip, #4]
	strb r2, [ip, #6]
	str r2, [ip, #0x20]
	ldr r7, [r4, #0x24]
	ldrb r6, [ip, #3]
	add r7, r7, #0x10
	mla r7, r6, r5, r7
	str r7, [ip, #0x54]
_0206E38C:
	ldrb r6, [r4, #0xd]
	add lr, lr, #1
	add ip, ip, #0x5c
	add r6, r6, #1
	strb r6, [r4, #0xd]
	ldrb r6, [r4, #0xf]
	cmp lr, r6
	blt _0206E344
_0206E3AC:
	mov r0, #1
	strb r0, [r4]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206E3BC: .word DRIVER_WORK
_0206E3C0: .word 0x0007A120
	arm_func_end sub_0206E26C

	arm_func_start sub_0206E3C4
sub_0206E3C4: ; 0x0206E3C4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrsb r0, [r5, #1]
	mov r4, r2
	cmp r0, #1
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrsb r0, [r5, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r1, #0
	beq _0206E49C
	ldr r0, [r5, #0x68]
	movs r0, r0, asr #0x10
	beq _0206E49C
	mov r0, #1
	strb r0, [r5, #7]
	mov r6, #0
	strb r6, [r5, #0x98]
	cmp r1, #0
	beq _0206E43C
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _0206E4E0 ; =DRIVER_WORK
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r6, r0, lsr #0x10
	moveq r6, #1
_0206E43C:
	mov r1, #0
	str r1, [r5, #0x70]
	cmp r6, #0
	mov r4, r6
	streq r1, [r5, #0x68]
	beq _0206E470
	ldr r0, [r5, #0x68]
	rsbs r0, r0, #0
	moveq r4, r1
	beq _0206E470
	mov r1, r6
	bl _s32_div_f
	str r0, [r5, #0x6c]
_0206E470:
	strh r4, [r5, #0x74]
	cmp r6, #0
	bne _0206E48C
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_020736E8
	b _0206E4D8
_0206E48C:
	ldrb r0, [r5, #0xc]
	orr r0, r0, #4
	strb r0, [r5, #0xc]
	b _0206E4D8
_0206E49C:
	mov r1, #0
	str r1, [r5, #4]
	ldr r0, _0206E4E4 ; =0x04000208
	strb r1, [r5, #8]
	ldrh r6, [r0]
	strh r1, [r0]
	ldr r0, [r5, #0x24]
	bl sub_02073480
	cmp r4, #1
	bne _0206E4CC
	ldr r0, [r5, #0x24]
	bl sub_020733BC
_0206E4CC:
	ldr r1, _0206E4E4 ; =0x04000208
	ldrh r0, [r1]
	strh r6, [r1]
_0206E4D8:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0206E4E0: .word DRIVER_WORK
_0206E4E4: .word 0x04000208
	arm_func_end sub_0206E3C4

	arm_func_start FindSmdlSongChunk
FindSmdlSongChunk: ; 0x0206E4E8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _0206E54C ; =0x736F6E67
	ldr r7, _0206E550 ; =0x656F6420
	mov r5, r1
	add r4, r0, #0x40
_0206E4FC:
	ldr r0, [r4]
	bl sub_0206C8C4
	cmp r0, r7
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, r6
	ldreqsh r1, [r4, #0x10]
	addeq r0, r4, #0x10
	cmpeq r1, r5
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r4, #8]
	ldr r0, [r4, #0xc]
	sub r2, r1, #1
	add r0, r0, #0x10
	mvn r1, r2
	add r0, r0, r2
	and r0, r1, r0
	add r4, r4, r0
	b _0206E4FC
_0206E548:
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206E54C: .word 0x736F6E67
_0206E550: .word 0x656F6420
	arm_func_end FindSmdlSongChunk

	arm_func_start sub_0206E554
sub_0206E554: ; 0x0206E554
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r7, r0
	mov r6, r1
	ldrb r1, [r6, #6]
	ldrb r0, [r7, #0xe]
	cmp r1, r0
	mvnhi r0, #0
	ldmhiia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrh r0, [r6, #2]
	add r4, r6, #0x30
	add r5, r7, #0xa8
	mov r0, r0, asr #3
	strb r0, [r7, #0x15]
	ldrb r0, [r6, #4]
	strb r0, [r7, #0x11]
	ldrb r0, [r6, #6]
	strb r0, [r7, #0xf]
	ldrb r0, [r6, #7]
	strb r0, [r7, #0x10]
	ldrb r0, [r6, #0x1b]
	strb r0, [r7, #0x12]
	ldrb r0, [r6, #0x19]
	strb r0, [r7, #0x13]
	ldrb r0, [r6, #0x1a]
	strb r0, [r7, #0x14]
	ldrb r0, [r6, #0x18]
	tst r0, #0x80
	movne r0, #1
	moveq r0, #0
	strb r0, [r7, #0xb]
	ldr r0, [r6, #0x30]
	bl sub_0206C8C4
	ldr sb, _0206E648 ; =0x74726B20
	ldr sl, _0206E64C ; =0x626E6B6C
	ldr r8, _0206E650 ; =0x656F6320
	b _0206E634
_0206E5E4:
	cmp r0, sl
	beq _0206E610
	cmp r0, sb
	bne _0206E610
	add r0, r4, #0x14
	str r0, [r5, #0x18]
	ldrb r0, [r4, #0x10]
	strh r0, [r5]
	ldrb r0, [r4, #0x11]
	strb r0, [r5, #3]
	add r5, r5, #0x5c
_0206E610:
	ldrb r1, [r4, #8]
	ldr r0, [r4, #0xc]
	sub r2, r1, #1
	add r0, r0, #0x10
	mvn r1, r2
	add r0, r0, r2
	and r0, r1, r0
	ldr r0, [r4, r0]!
	bl sub_0206C8C4
_0206E634:
	cmp r0, r8
	bne _0206E5E4
	str r6, [r7, #0x20]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0206E648: .word 0x74726B20
_0206E64C: .word 0x626E6B6C
_0206E650: .word 0x656F6320
	arm_func_end sub_0206E554

	arm_func_start sub_0206E654
sub_0206E654: ; 0x0206E654
	ldr r3, _0206E698 ; =0x04000208
	ldr r1, _0206E69C ; =DRIVER_WORK
	ldrh ip, [r3]
	mov r2, #0
	strh r2, [r3]
	ldr r3, [r1, #0x664]
	b _0206E674
_0206E670:
	ldr r3, [r3, #0xa4]
_0206E674:
	cmp r3, #0
	ldrne r1, [r3, #0x28]
	cmpne r1, r0
	bne _0206E670
	ldr r2, _0206E698 ; =0x04000208
	mov r0, r3
	ldrh r1, [r2]
	strh ip, [r2]
	bx lr
	.align 2, 0
_0206E698: .word 0x04000208
_0206E69C: .word DRIVER_WORK
	arm_func_end sub_0206E654

	arm_func_start sub_0206E6A0
sub_0206E6A0: ; 0x0206E6A0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0x5c
	mul r0, r7, r0
	mov r6, r1
	add r0, r0, #0xa8
	mov r1, #0x10
	mov r5, r2
	bl sub_0206C9BC
	movs r4, r0
	bne _0206E6E4
	mov r1, #0
	mov r2, r1
	mvn r0, #0x83
	bl sub_0206C854
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0206E6E4:
	mov r3, #0
	str r3, [r4]
	str r3, [r4, #4]
	str r3, [r4, #8]
	strb r3, [r4, #0x16]
	strb r3, [r4, #0xd]
	str r3, [r4, #0x30]
	str r3, [r4, #0x28]
	strh r3, [r4, #0x2c]
	mov r0, #6
	strb r0, [r4, #0x15]
	strb r3, [r4, #0xd]
	and r0, r7, #0xff
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x10]
	strb r3, [r4, #0x11]
	strb r3, [r4, #0x12]
	strb r3, [r4, #0x13]
	str r3, [r4, #0x1c]
	ldr r1, _0206E7C8 ; =0x76656400
	and r2, r5, #0xff
	mov r0, r6
	orr r1, r2, r1
	str r3, [r4, #0x20]
	bl sub_02073280
	str r0, [r4, #0x24]
	cmp r0, #0
	bne _0206E778
	mov r0, r4
	bl sub_0206CC14
	mov r1, #0
	mov r2, r1
	mvn r0, #0x85
	bl sub_0206C854
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0206E778:
	mov r0, #0x78
	strb r0, [r4, #0x17]
	mov r3, #0
	str r3, [r4, #0x3c]
	ldr r0, _0206E7CC ; =DRIVER_WORK
	ldrb r2, [r4, #0x15]
	ldrsh r0, [r0, #0x28]
	ldr r1, _0206E7D0 ; =0x0007A120
	mov r2, r2, lsl #3
	mul r0, r2, r0
	str r0, [r4, #0x40]
	ldr r0, _0206E7D4 ; =sub_0206D800
	str r1, [r4, #0x44]
	str r0, [r4, #0x9c]
	str r3, [r4, #0xa0]
	mov r0, r4
	str r3, [r4, #0xa4]
	bl sub_0206E85C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206E7C8: .word 0x76656400
_0206E7CC: .word DRIVER_WORK
_0206E7D0: .word 0x0007A120
_0206E7D4: .word sub_0206D800
	arm_func_end sub_0206E6A0

	arm_func_start sub_0206E7D8
sub_0206E7D8: ; 0x0206E7D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrsb r1, [r4, #4]
	cmp r1, #1
	bne _0206E7F8
	mov r1, #0
	mov r2, r1
	bl sub_0206E3C4
_0206E7F8:
	ldr r1, _0206E854 ; =0x04000208
	mov r0, #0
	ldrh r3, [r1]
	ldr r2, _0206E858 ; =_022B7994
	strh r0, [r1]
	b _0206E814
_0206E810:
	add r2, r0, #0xa4
_0206E814:
	ldr r0, [r2]
	cmp r0, #0
	cmpne r0, r4
	bne _0206E810
	cmp r0, #0
	ldrne r0, [r4, #0xa4]
	ldr r1, _0206E854 ; =0x04000208
	strne r0, [r2]
	ldrh r0, [r1]
	strh r3, [r1]
	ldr r0, [r4, #0x24]
	bl sub_02073350
	mov r0, r4
	bl sub_0206CC14
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206E854: .word 0x04000208
_0206E858: .word _022B7994
	arm_func_end sub_0206E7D8

	arm_func_start sub_0206E85C
sub_0206E85C: ; 0x0206E85C
	ldrb r1, [r0, #0xf]
	add r3, r0, #0xa8
	mov ip, #0
	cmp r1, #0
	bxle lr
	mov r2, ip
_0206E874:
	strb r2, [r3, #2]
	strh ip, [r3]
	strb ip, [r3, #3]
	strh r2, [r3, #0xa]
	str r2, [r3, #0x18]
	str r2, [r3, #0x1c]
	str r2, [r3, #0x20]
	str r2, [r3, #0x54]
	ldrb r1, [r0, #0xf]
	add ip, ip, #1
	add r3, r3, #0x5c
	cmp ip, r1
	blt _0206E874
	bx lr
	arm_func_end sub_0206E85C

	arm_func_start sub_0206E8AC
sub_0206E8AC: ; 0x0206E8AC
	stmdb sp!, {r3, lr}
	ldr r2, _0206E914 ; =DRIVER_WORK
	mov r1, #0
	mvn r0, #0
_0206E8BC:
	add r1, r1, #1
	str r0, [r2, #0x54]
	cmp r1, #0x80
	add r2, r2, #0xc
	blt _0206E8BC
	ldr r2, _0206E914 ; =DRIVER_WORK
	ldr ip, _0206E918 ; =_022B7380
	mov lr, #0
	mov r0, #0xc
_0206E8E0:
	add lr, lr, #1
	mul r3, lr, r0
	add r1, ip, r3
	str r1, [r2, #0x58]
	cmp lr, #0x7f
	add r2, r2, #0xc
	blt _0206E8E0
	ldr r1, _0206E91C ; =_022B7388
	mov r2, #0
	ldr r0, _0206E914 ; =DRIVER_WORK
	str r2, [r1, r3]
	str ip, [r0, #0x650]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206E914: .word DRIVER_WORK
_0206E918: .word _022B7380
_0206E91C: .word _022B7388
	arm_func_end sub_0206E8AC

	arm_func_start sub_0206E920
sub_0206E920: ; 0x0206E920
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r2, _0206EA08 ; =DRIVER_WORK
	mov sb, r0
	ldrsb r0, [r2]
	mov r8, r1
	mov r1, #0
	cmp r0, #0
	bne _0206E954
	mov r2, r1
	mvn r0, #0xc0
	bl sub_0206C854
	mvn r0, #0xc0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0206E954:
	ldr r4, [r2, #0x668]
	ldr r0, _0206EA0C ; =0x04000208
	str r1, [r2, #0x668]
	ldrh r5, [r0]
	cmp r4, #0
	strh r1, [r0]
	beq _0206E984
_0206E970:
	mov r0, r4
	ldr r4, [r4, #0xa4]
	bl sub_0206E7D8
	cmp r4, #0
	bne _0206E970
_0206E984:
	ldr r1, _0206EA0C ; =0x04000208
	mov r6, #0
	ldrh r0, [r1]
	ldr r0, _0206EA08 ; =DRIVER_WORK
	mov r4, r6
	strh r5, [r1]
	strb sb, [r0, #0x3a]
	strb r8, [r0, #0x3b]
	ldrh r7, [r1]
	cmp sb, #0
	ldr r5, _0206EA10 ; =_022B7998
	strh r6, [r1]
	ble _0206E9F4
	mov r0, r8, lsl #0x10
	ldr r8, _0206EA14 ; =0x71657365
	mov sl, r0, lsr #0x10
_0206E9C4:
	mov r0, sl
	mov r1, sl
	mov r2, r8
	bl sub_0206E6A0
	cmp r0, #0
	mvneq r6, #0x83
	beq _0206E9F4
	add r4, r4, #1
	str r0, [r5]
	cmp r4, sb
	add r5, r0, #0xa4
	blt _0206E9C4
_0206E9F4:
	ldr r2, _0206EA0C ; =0x04000208
	mov r0, r6
	ldrh r1, [r2]
	strh r7, [r2]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0206EA08: .word DRIVER_WORK
_0206EA0C: .word 0x04000208
_0206EA10: .word _022B7998
_0206EA14: .word 0x71657365
	arm_func_end sub_0206E920

	arm_func_start sub_0206EA18
sub_0206EA18: ; 0x0206EA18
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _0206EBA8 ; =0x7365646C
	ldr r2, _0206EBAC ; =0x00000415
	mov r3, #4
	mov r4, r0
	bl sub_0206CD1C
	movs r5, r0
	ldmmiia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	bl sub_0206F340
	cmp r0, #0
	beq _0206EA64
	mov r1, r5
	mvn r0, #0x49
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x49
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0206EA64:
	ldr r2, _0206EBB0 ; =0x66646573
	mov r0, #0x1c
	mov r1, #0x10
	bl sub_0206C9BC
	movs sl, r0
	bne _0206EA94
	mov r1, r5
	mvn r0, #0x7f
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x7f
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0206EA94:
	str r4, [sl]
	ldrsh r2, [r4, #0x30]
	mov r1, #0
	mov r0, #1
	strh r2, [sl, #4]
	strh r5, [sl, #6]
	str r1, [sl, #8]
	str r1, [sl, #0xc]
	str r1, [sl, #0x10]
	str r1, [sl, #0x14]
	strb r0, [sl, #0x18]
	ldrb r0, [r4, #0x35]
	cmp r0, #0
	beq _0206EB60
	add r8, r4, #0x40
	ldr r4, _0206EBB4 ; =0x73657120
	ldr r7, _0206EBB8 ; =0x656F6420
	ldr r6, _0206EBBC ; =0x626E6B6C
	ldr r5, _0206EBC0 ; =0x6D63726C
	mov fp, r1
_0206EAE4:
	ldr r0, [r8]
	mov sb, fp
	bl sub_0206C8C4
	cmp r0, r7
	bhi _0206EB0C
	bhs _0206EB30
	cmp r0, r6
	addeq r0, r8, #0x10
	streq r0, [sl, #0x14]
	b _0206EB34
_0206EB0C:
	cmp r0, r5
	bhi _0206EB20
	addeq r0, r8, #0x10
	streq r0, [sl, #0x10]
	b _0206EB34
_0206EB20:
	cmp r0, r4
	addeq r0, r8, #0x10
	streq r0, [sl, #0xc]
	b _0206EB34
_0206EB30:
	mov sb, #1
_0206EB34:
	cmp sb, #1
	beq _0206EB60
	ldrb r1, [r8, #8]
	ldr r0, [r8, #0xc]
	sub r2, r1, #1
	add r0, r0, #0x10
	mvn r1, r2
	add r0, r0, r2
	and r0, r1, r0
	add r8, r8, r0
	b _0206EAE4
_0206EB60:
	ldr r1, _0206EBC4 ; =0x04000208
	mov r0, #0
	ldrh r3, [r1]
	ldr r2, _0206EBC8 ; =_022B799C
	strh r0, [r1]
	ldr r0, [r2]
	cmp r0, #0
	beq _0206EB90
_0206EB80:
	add r2, r0, #8
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0206EB80
_0206EB90:
	ldr r1, _0206EBC4 ; =0x04000208
	str sl, [r2]
	ldrh r0, [r1]
	strh r3, [r1]
	ldrh r0, [sl, #6]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0206EBA8: .word 0x7365646C
_0206EBAC: .word 0x00000415
_0206EBB0: .word 0x66646573
_0206EBB4: .word 0x73657120
_0206EBB8: .word 0x656F6420
_0206EBBC: .word 0x626E6B6C
_0206EBC0: .word 0x6D63726C
_0206EBC4: .word 0x04000208
_0206EBC8: .word _022B799C
	arm_func_end sub_0206EA18

	arm_func_start sub_0206EBCC
sub_0206EBCC: ; 0x0206EBCC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0206F54C
	ldr r1, _0206EC54 ; =0x04000208
	mov r0, #0
	ldrh ip, [r1]
	ldr r3, _0206EC58 ; =_022B799C
	strh r0, [r1]
	b _0206EBF4
_0206EBF0:
	add r3, r0, #8
_0206EBF4:
	ldr r0, [r3]
	cmp r0, #0
	ldrneh r1, [r0, #6]
	cmpne r1, r4
	bne _0206EBF0
	cmp r0, #0
	bne _0206EC34
	ldr r3, _0206EC54 ; =0x04000208
	mov r1, r4
	ldrh r0, [r3]
	mov r2, #0
	mvn r0, #0x43
	strh ip, [r3]
	bl sub_0206C854
	mvn r0, #0x43
	ldmia sp!, {r4, pc}
_0206EC34:
	ldr r1, [r0, #8]
	ldr r2, _0206EC54 ; =0x04000208
	str r1, [r3]
	ldrh r1, [r2]
	strh ip, [r2]
	bl sub_0206CC14
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206EC54: .word 0x04000208
_0206EC58: .word _022B799C
	arm_func_end sub_0206EBCC

	arm_func_start sub_0206EC5C
sub_0206EC5C: ; 0x0206EC5C
	stmdb sp!, {r4, r5, r6, lr}
	movs r4, r1
	mov r6, r0
	beq _0206EC74
	cmp r2, #0
	bgt _0206EC8C
_0206EC74:
	mov r1, r6
	mvn r0, #0x17
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x17
	ldmia sp!, {r4, r5, r6, pc}
_0206EC8C:
	mov r0, r6, lsl #0x10
	mov r5, r0, lsr #0x10
	mov r0, r5
	bl sub_0206F340
	cmp r0, #0
	bne _0206ECBC
	mov r1, r5
	mvn r0, #0x43
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x43
	ldmia sp!, {r4, r5, r6, pc}
_0206ECBC:
	ldr r2, [r0, #0x14]
	cmp r2, #0
	bne _0206ECE0
	mov r1, r5
	mvn r0, #0x4d
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x4d
	ldmia sp!, {r4, r5, r6, pc}
_0206ECE0:
	mov r0, r6, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0xf
	ldrh r1, [r2, r0]
	cmp r1, #0
	mvneq r0, #0x44
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r0, [r2, r1]
	add r1, r2, r1
	add r3, r1, #4
	cmp r0, #0
	mov r2, #0
	ldmleia sp!, {r4, r5, r6, pc}
_0206ED14:
	ldrh r0, [r3], #2
	add r2, r2, #1
	strh r0, [r4], #2
	ldrb r0, [r1]
	cmp r2, r0
	blt _0206ED14
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0206EC5C

	arm_func_start sub_0206ED30
sub_0206ED30: ; 0x0206ED30
	mvn r2, #0
	cmp r0, r2
	beq _0206EDAC
	ldr r2, _0206EDF8 ; =DRIVER_WORK
	ldr r3, [r2, #0x668]
	cmp r3, #0
	beq _0206EDF0
_0206ED4C:
	ldrsb r2, [r3, #4]
	cmp r2, #1
	ldreq r2, [r3, #0x28]
	cmpeq r2, r0
	bne _0206ED9C
	cmp r1, #0
	bne _0206ED7C
	ldrsb r0, [r3, #6]
	cmp r0, #0
	moveq r0, #1
	movne r0, #2
	bx lr
_0206ED7C:
	ldrh r2, [r3, #0x2c]
	cmp r2, r1
	bne _0206ED9C
	ldrsb r0, [r3, #6]
	cmp r0, #0
	moveq r0, #1
	movne r0, #2
	bx lr
_0206ED9C:
	ldr r3, [r3, #0xa4]
	cmp r3, #0
	bne _0206ED4C
	b _0206EDF0
_0206EDAC:
	ldr r0, _0206EDF8 ; =DRIVER_WORK
	ldr r2, [r0, #0x668]
	cmp r2, #0
	beq _0206EDF0
_0206EDBC:
	ldrsb r0, [r2, #4]
	cmp r0, #1
	ldreqh r0, [r2, #0x2c]
	cmpeq r0, r1
	bne _0206EDE4
	ldrsb r0, [r2, #6]
	cmp r0, #0
	moveq r0, #1
	movne r0, #2
	bx lr
_0206EDE4:
	ldr r2, [r2, #0xa4]
	cmp r2, #0
	bne _0206EDBC
_0206EDF0:
	mov r0, #0
	bx lr
	.align 2, 0
_0206EDF8: .word DRIVER_WORK
	arm_func_end sub_0206ED30

	arm_func_start sub_0206EDFC
sub_0206EDFC: ; 0x0206EDFC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r0, sl, lsl #0x10
	mov r5, r0, lsr #0x10
	mov r0, r5
	mov fp, r1
	mov sb, r2
	bl sub_0206F340
	movs r4, r0
	bne _0206EE3C
	mov r1, r5
	mvn r0, #0x43
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x43
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0206EE3C:
	mov r0, sl, asr #0x10
	mov r1, r0, lsl #0x10
	ldr r5, [r4]
	ldr r2, [r4, #0xc]
	mov r0, r5
	mov r1, r1, asr #0x10
	bl sub_0206EFB0
	movs r6, r0
	bne _0206EE78
	mov r1, sl
	mvn r0, #0x44
	mov r2, #0
	bl sub_0206C888
	mvn r0, #0x44
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0206EE78:
	ldrb r0, [r6, #0x18]
	ldrb r1, [sb]
	ldrb r8, [r6, #0x1a]
	tst r0, #1
	moveq r0, #1
	movne r0, #0
	mov r0, r0, lsl #0x18
	mov r2, r0, asr #0x18
	tst r1, #0x40
	bne _0206EECC
	cmp r8, #0
	ldrb r1, [r6, #0x1c]
	bne _0206EEBC
	mov r0, sl
	bl sub_0206EFF8
	and r0, r0, #0xff
	b _0206EEDC
_0206EEBC:
	mov r0, r8
	bl sub_0206F100
	and r0, r0, #0xff
	b _0206EEDC
_0206EECC:
	mov r0, fp
	mov r1, r2
	bl sub_0206F208
	and r0, r0, #0xff
_0206EEDC:
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r6, #0x1b]
	ldrb r1, [r6, #0x19]
	ldrb r2, [r6, #0x1c]
	bl sub_0206F2C4
	movs r7, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrsb r1, [r7, #4]
	cmp r1, #1
	bne _0206EF1C
	mov r1, #0
	mov r2, #1
	bl sub_0206E3C4
_0206EF1C:
	str sl, [r7, #0x28]
	mov r0, r7
	str r5, [r7, #0x1c]
	bl sub_0206E85C
	mov r0, r7
	mov r1, r6
	bl sub_0206E554
	movs r1, r0
	bpl _0206EF54
	mov r2, sl
	mvn r0, #0x4e
	bl sub_0206C854
	mvn r0, #0x4e
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0206EF54:
	mov r0, r7
	bl sub_0206E26C
	mov r0, #0
	str r0, [r7, #0x68]
	strh r0, [r7, #0x74]
	mov r0, #1
	strb r0, [r7, #2]
	ldrsb r0, [r4, #0x18]
	strb r0, [r7, #9]
	bl sub_0206C688
	ldrsb r3, [r4, #0x18]
	mov r1, fp
	mov r2, r8
	and r3, r3, r0
	strb r3, [r7, #8]
	mov r3, #1
	strb r3, [r7, #0xa]
	mov r0, r7
	mov r3, sb
	bl sub_0206DB7C
	cmp r0, #0
	movge r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0206EDFC

	arm_func_start sub_0206EFB0
sub_0206EFB0: ; 0x0206EFB0
	cmp r1, #0
	movlt r0, #0
	bxlt lr
	ldrsh r3, [r0, #0x30]
	cmp r3, r1
	movle r0, #0
	bxle lr
	ldrb r3, [r0, #0x35]
	cmp r3, #0
	moveq r2, r0
	addeq r3, r0, #0x40
	movne r3, r2
	mov r0, r1, lsl #1
	ldrh r0, [r3, r0]
	cmp r0, #0
	moveq r0, #0
	addne r0, r2, r0
	bx lr
	arm_func_end sub_0206EFB0

	arm_func_start sub_0206EFF8
sub_0206EFF8: ; 0x0206EFF8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	movs sb, r1
	mov r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r3, _0206F0F8 ; =0x04000208
	cmp r2, #1
	ldrh r1, [r3]
	str r1, [sp]
	strh r0, [r3]
	bne _0206F0AC
	ldr r4, _0206F0FC ; =DRIVER_WORK
	mov fp, r0
	mov r6, r0
	mvn r5, #0x80000000
_0206F034:
	ldr r1, [r4, #0x668]
	mov r7, r6
	mov r2, r5
	cmp r1, #0
	beq _0206F07C
_0206F048:
	ldrsb r0, [r1, #4]
	cmp r0, #1
	ldreq r0, [r1, #0x28]
	cmpeq r0, sl
	bne _0206F070
	ldr r0, [r1, #0x30]
	add r7, r7, #1
	cmp r2, r0
	movhi r2, r0
	movhi r8, r1
_0206F070:
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	bne _0206F048
_0206F07C:
	cmp r7, sb
	blt _0206F09C
	cmp r8, #0
	beq _0206F09C
	mov r0, r8
	mov r1, fp
	mov r2, #1
	bl sub_0206E3C4
_0206F09C:
	cmp r7, sb
	bgt _0206F034
	mov r0, #0
	b _0206F0E4
_0206F0AC:
	ldr r1, _0206F0FC ; =DRIVER_WORK
	ldr r2, [r1, #0x668]
	cmp r2, #0
	beq _0206F0DC
_0206F0BC:
	ldrsb r1, [r2, #4]
	cmp r1, #1
	ldreq r1, [r2, #0x28]
	ldr r2, [r2, #0xa4]
	cmpeq r1, sl
	addeq r0, r0, #1
	cmp r2, #0
	bne _0206F0BC
_0206F0DC:
	cmp r0, sb
	movlt r0, #0
_0206F0E4:
	ldr r2, _0206F0F8 ; =0x04000208
	ldrh r1, [r2]
	ldr r1, [sp]
	strh r1, [r2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0206F0F8: .word 0x04000208
_0206F0FC: .word DRIVER_WORK
	arm_func_end sub_0206EFF8

	arm_func_start sub_0206F100
sub_0206F100: ; 0x0206F100
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	movs sb, r1
	mov r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r3, _0206F200 ; =0x04000208
	cmp r2, #1
	ldrh r1, [r3]
	str r1, [sp]
	strh r0, [r3]
	bne _0206F1B4
	ldr r4, _0206F204 ; =DRIVER_WORK
	mov fp, r0
	mov r6, r0
	mvn r5, #0x80000000
_0206F13C:
	ldr r1, [r4, #0x668]
	mov r7, r6
	mov r2, r5
	cmp r1, #0
	beq _0206F184
_0206F150:
	ldrsb r0, [r1, #4]
	cmp r0, #1
	ldreqb r0, [r1, #0x14]
	cmpeq r0, sl
	bne _0206F178
	ldr r0, [r1, #0x30]
	add r7, r7, #1
	cmp r2, r0
	movhi r2, r0
	movhi r8, r1
_0206F178:
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	bne _0206F150
_0206F184:
	cmp r7, sb
	blt _0206F1A4
	cmp r8, #0
	beq _0206F1A4
	mov r0, r8
	mov r1, fp
	mov r2, #1
	bl sub_0206E3C4
_0206F1A4:
	cmp r7, sb
	bgt _0206F13C
	mov r0, #0
	b _0206F1EC
_0206F1B4:
	ldr r1, _0206F204 ; =DRIVER_WORK
	ldr r2, [r1, #0x668]
	cmp r2, #0
	beq _0206F1E4
_0206F1C4:
	ldrsb r1, [r2, #4]
	cmp r1, #1
	ldreqb r1, [r2, #0x14]
	ldr r2, [r2, #0xa4]
	cmpeq r1, sl
	addeq r0, r0, #1
	cmp r2, #0
	bne _0206F1C4
_0206F1E4:
	cmp r0, sb
	movlt r0, #0
_0206F1EC:
	ldr r2, _0206F200 ; =0x04000208
	ldrh r1, [r2]
	ldr r1, [sp]
	strh r1, [r2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0206F200: .word 0x04000208
_0206F204: .word DRIVER_WORK
	arm_func_end sub_0206F100

	arm_func_start sub_0206F208
sub_0206F208: ; 0x0206F208
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r2, _0206F2BC ; =0x04000208
	mov r4, #0
	ldrh r6, [r2]
	mov r7, r0
	cmp r1, #1
	strh r4, [r2]
	bne _0206F274
	ldr r0, _0206F2C0 ; =DRIVER_WORK
	ldr r5, [r0, #0x668]
	cmp r5, #0
	beq _0206F2A8
	mov sb, r4
	mov r8, #1
_0206F240:
	ldrsb r0, [r5, #4]
	cmp r0, #1
	ldreqh r0, [r5, #0x2c]
	cmpeq r0, r7
	bne _0206F264
	mov r0, r5
	mov r1, sb
	mov r2, r8
	bl sub_0206E3C4
_0206F264:
	ldr r5, [r5, #0xa4]
	cmp r5, #0
	bne _0206F240
	b _0206F2A8
_0206F274:
	ldr r0, _0206F2C0 ; =DRIVER_WORK
	ldr r1, [r0, #0x668]
	cmp r1, #0
	beq _0206F2A8
_0206F284:
	ldrsb r0, [r1, #4]
	cmp r0, #1
	ldreqh r0, [r1, #0x2c]
	cmpeq r0, r7
	moveq r4, #1
	beq _0206F2A8
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	bne _0206F284
_0206F2A8:
	ldr r2, _0206F2BC ; =0x04000208
	mov r0, r4
	ldrh r1, [r2]
	strh r6, [r2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0206F2BC: .word 0x04000208
_0206F2C0: .word DRIVER_WORK
	arm_func_end sub_0206F208

	arm_func_start sub_0206F2C4
sub_0206F2C4: ; 0x0206F2C4
	stmdb sp!, {r3, lr}
	ldr r2, _0206F338 ; =0x04000208
	mov r3, #0
	ldrh lr, [r2]
	ldr r1, _0206F33C ; =DRIVER_WORK
	sub ip, r3, #1
	strh r3, [r2]
	ldr r2, [r1, #0x668]
	cmp r2, #0
	beq _0206F324
_0206F2EC:
	ldrsb r1, [r2, #4]
	cmp r1, #0
	moveq r3, r2
	beq _0206F324
	ldrb r1, [r2, #0x12]
	cmp r1, r0
	blo _0206F318
	ldr r1, [r2, #0x30]
	cmp ip, r1
	movhi ip, r1
	movhi r3, r2
_0206F318:
	ldr r2, [r2, #0xa4]
	cmp r2, #0
	bne _0206F2EC
_0206F324:
	ldr r2, _0206F338 ; =0x04000208
	mov r0, r3
	ldrh r1, [r2]
	strh lr, [r2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206F338: .word 0x04000208
_0206F33C: .word DRIVER_WORK
	arm_func_end sub_0206F2C4

	arm_func_start sub_0206F340
sub_0206F340: ; 0x0206F340
	ldr r3, _0206F384 ; =0x04000208
	ldr r1, _0206F388 ; =DRIVER_WORK
	ldrh ip, [r3]
	mov r2, #0
	strh r2, [r3]
	ldr r3, [r1, #0x66c]
	b _0206F360
_0206F35C:
	ldr r3, [r3, #8]
_0206F360:
	cmp r3, #0
	ldrneh r1, [r3, #6]
	cmpne r1, r0
	bne _0206F35C
	ldr r2, _0206F384 ; =0x04000208
	mov r0, r3
	ldrh r1, [r2]
	strh ip, [r2]
	bx lr
	.align 2, 0
_0206F384: .word 0x04000208
_0206F388: .word DRIVER_WORK
	arm_func_end sub_0206F340

	arm_func_start sub_0206F38C
sub_0206F38C: ; 0x0206F38C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mvn r0, #0
	mov r7, r1
	mov r6, r2
	cmp r8, r0
	ldr r2, _0206F4D8 ; =0x04000208
	mov r1, #0
	beq _0206F478
	cmp r7, #0
	bne _0206F414
	ldrh r4, [r2]
	ldr r0, _0206F4DC ; =DRIVER_WORK
	strh r1, [r2]
	ldr r7, [r0, #0x668]
	cmp r7, #0
	beq _0206F404
	mov r5, #1
_0206F3D4:
	ldrsb r0, [r7, #4]
	cmp r0, #1
	ldreq r0, [r7, #0x28]
	cmpeq r0, r8
	bne _0206F3F8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl sub_0206E3C4
_0206F3F8:
	ldr r7, [r7, #0xa4]
	cmp r7, #0
	bne _0206F3D4
_0206F404:
	ldr r1, _0206F4D8 ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
	b _0206F4D0
_0206F414:
	ldrh r4, [r2]
	ldr r0, _0206F4DC ; =DRIVER_WORK
	strh r1, [r2]
	ldr r5, [r0, #0x668]
	cmp r5, #0
	beq _0206F468
	mov sb, #1
_0206F430:
	ldrsb r0, [r5, #4]
	cmp r0, #1
	ldreq r0, [r5, #0x28]
	cmpeq r0, r8
	ldreqh r0, [r5, #0x2c]
	cmpeq r0, r7
	bne _0206F45C
	mov r0, r5
	mov r1, r6
	mov r2, sb
	bl sub_0206E3C4
_0206F45C:
	ldr r5, [r5, #0xa4]
	cmp r5, #0
	bne _0206F430
_0206F468:
	ldr r1, _0206F4D8 ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
	b _0206F4D0
_0206F478:
	ldrh r4, [r2]
	ldr r0, _0206F4DC ; =DRIVER_WORK
	strh r1, [r2]
	ldr r8, [r0, #0x668]
	cmp r8, #0
	beq _0206F4C4
	mov r5, #1
_0206F494:
	ldrsb r0, [r8, #4]
	cmp r0, #1
	ldreqh r0, [r8, #0x2c]
	cmpeq r0, r7
	bne _0206F4B8
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl sub_0206E3C4
_0206F4B8:
	ldr r8, [r8, #0xa4]
	cmp r8, #0
	bne _0206F494
_0206F4C4:
	ldr r1, _0206F4D8 ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
_0206F4D0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0206F4D8: .word 0x04000208
_0206F4DC: .word DRIVER_WORK
	arm_func_end sub_0206F38C

	arm_func_start sub_0206F4E0
sub_0206F4E0: ; 0x0206F4E0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _0206F544 ; =0x04000208
	mov r2, #0
	ldrh r4, [r3]
	ldr r1, _0206F548 ; =DRIVER_WORK
	mov r5, r0
	strh r2, [r3]
	ldr r7, [r1, #0x668]
	cmp r7, #0
	beq _0206F534
	mov r6, #1
_0206F50C:
	ldrsb r0, [r7, #4]
	cmp r0, #1
	bne _0206F528
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl sub_0206E3C4
_0206F528:
	ldr r7, [r7, #0xa4]
	cmp r7, #0
	bne _0206F50C
_0206F534:
	ldr r1, _0206F544 ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206F544: .word 0x04000208
_0206F548: .word DRIVER_WORK
	arm_func_end sub_0206F4E0

	arm_func_start sub_0206F54C
sub_0206F54C: ; 0x0206F54C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _0206F5C0 ; =0x04000208
	mov r2, #0
	ldrh r5, [r3]
	ldr r1, _0206F5C4 ; =DRIVER_WORK
	mov r6, r0
	strh r2, [r3]
	ldr r4, [r1, #0x668]
	cmp r4, #0
	beq _0206F5B0
	mov r8, r2
	mov r7, #1
_0206F57C:
	ldrsb r0, [r4, #4]
	cmp r0, #1
	ldreq r0, [r4, #0x28]
	moveq r0, r0, lsl #0x10
	cmpeq r6, r0, lsr #16
	bne _0206F5A4
	mov r0, r4
	mov r1, r8
	mov r2, r7
	bl sub_0206E3C4
_0206F5A4:
	ldr r4, [r4, #0xa4]
	cmp r4, #0
	bne _0206F57C
_0206F5B0:
	ldr r1, _0206F5C0 ; =0x04000208
	ldrh r0, [r1]
	strh r5, [r1]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0206F5C0: .word 0x04000208
_0206F5C4: .word DRIVER_WORK
	arm_func_end sub_0206F54C

	arm_func_start sub_0206F5C8
sub_0206F5C8: ; 0x0206F5C8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mvn r0, #0
	mov r6, r1
	mov r5, r2
	cmp r7, r0
	ldr r2, _0206F6F4 ; =0x04000208
	mov r1, #0
	beq _0206F69C
	cmp r6, #0
	bne _0206F648
	ldrh r4, [r2]
	ldr r0, _0206F6F8 ; =DRIVER_WORK
	strh r1, [r2]
	ldr r6, [r0, #0x668]
	cmp r6, #0
	beq _0206F638
_0206F60C:
	ldrsb r0, [r6, #4]
	cmp r0, #1
	ldreq r0, [r6, #0x28]
	cmpeq r0, r7
	bne _0206F62C
	mov r0, r6
	mov r1, r5
	bl sub_0206DD70
_0206F62C:
	ldr r6, [r6, #0xa4]
	cmp r6, #0
	bne _0206F60C
_0206F638:
	ldr r1, _0206F6F4 ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
	b _0206F6EC
_0206F648:
	ldrh r4, [r2]
	ldr r0, _0206F6F8 ; =DRIVER_WORK
	strh r1, [r2]
	ldr r8, [r0, #0x668]
	cmp r8, #0
	beq _0206F68C
_0206F660:
	ldr r0, [r8, #0x28]
	cmp r0, r7
	ldreqh r0, [r8, #0x2c]
	cmpeq r0, r6
	bne _0206F680
	mov r0, r8
	mov r1, r5
	bl sub_0206DD70
_0206F680:
	ldr r8, [r8, #0xa4]
	cmp r8, #0
	bne _0206F660
_0206F68C:
	ldr r1, _0206F6F4 ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
	b _0206F6EC
_0206F69C:
	ldrh r4, [r2]
	ldr r0, _0206F6F8 ; =DRIVER_WORK
	strh r1, [r2]
	ldr r7, [r0, #0x668]
	cmp r7, #0
	beq _0206F6E0
_0206F6B4:
	ldrsb r0, [r7, #4]
	cmp r0, #1
	ldreqh r0, [r7, #0x2c]
	cmpeq r0, r6
	bne _0206F6D4
	mov r0, r7
	mov r1, r5
	bl sub_0206DD70
_0206F6D4:
	ldr r7, [r7, #0xa4]
	cmp r7, #0
	bne _0206F6B4
_0206F6E0:
	ldr r1, _0206F6F4 ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
_0206F6EC:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0206F6F4: .word 0x04000208
_0206F6F8: .word DRIVER_WORK
	arm_func_end sub_0206F5C8

	arm_func_start sub_0206F6FC
sub_0206F6FC: ; 0x0206F6FC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _0206F76C ; =0x04000208
	ldr r1, _0206F770 ; =_022B9208
	ldrh r5, [r2]
	ldr r4, [r1, #0x1cc]
	mov r1, #0
	mov r6, r0
	strh r1, [r2]
	cmp r4, #0
	beq _0206F758
	mov r8, #1
	mov r7, r8
_0206F72C:
	ldrsb r0, [r4, #0xa]
	cmp r0, #1
	bne _0206F74C
	mov r0, r4
	mov r1, r8
	mov r2, r6
	bl sub_0206FAE8
	strb r7, [r4, #0x13]
_0206F74C:
	ldr r4, [r4, #0x500]
	cmp r4, #0
	bne _0206F72C
_0206F758:
	ldr r2, _0206F76C ; =0x04000208
	mov r0, #0
	ldrh r1, [r2]
	strh r5, [r2]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0206F76C: .word 0x04000208
_0206F770: .word _022B9208
	arm_func_end sub_0206F6FC

	arm_func_start sub_0206F774
sub_0206F774: ; 0x0206F774
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _0206F7C4 ; =_022B9208
	mov r6, r0
	ldr r5, [r1, #0x1cc]
	cmp r5, #0
	beq _0206F7BC
	mov r4, #0
_0206F790:
	ldrsb r0, [r5, #0x13]
	cmp r0, #1
	bne _0206F7B0
	mov r0, r5
	mov r1, r4
	mov r2, r6
	strb r4, [r5, #0x13]
	bl sub_0206FAE8
_0206F7B0:
	ldr r5, [r5, #0x500]
	cmp r5, #0
	bne _0206F790
_0206F7BC:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0206F7C4: .word _022B9208
	arm_func_end sub_0206F774

	arm_func_start sub_0206F7C8
sub_0206F7C8: ; 0x0206F7C8
	stmdb sp!, {r3, lr}
	ldr r1, _0206F804 ; =_022B9208
	ldrsb r1, [r1, #4]
	cmp r1, #0
	mvneq r0, #0x59
	ldmeqia sp!, {r3, pc}
	bl sub_0206FD2C
	cmp r0, #0
	mvneq r0, #0xb0
	ldmeqia sp!, {r3, pc}
	ldrsb r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldrne r0, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206F804: .word _022B9208
	arm_func_end sub_0206F7C8

	arm_func_start sub_0206F808
sub_0206F808: ; 0x0206F808
	stmdb sp!, {r4, lr}
	ldr r0, _0206F83C ; =_022B9208
	ldr r4, [r0, #0x1cc]
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
_0206F81C:
	ldr r0, [r4]
	cmp r0, #0
	ble _0206F82C
	bl sub_0206F840
_0206F82C:
	ldr r4, [r4, #0x500]
	cmp r4, #0
	bne _0206F81C
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206F83C: .word _022B9208
	arm_func_end sub_0206F808

	arm_func_start sub_0206F840
sub_0206F840: ; 0x0206F840
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _0206F96C ; =_022B9208
	mov r5, r0
	ldrsb r1, [r1, #4]
	cmp r1, #0
	mvneq r0, #0x59
	ldmeqia sp!, {r4, r5, r6, pc}
	bl sub_0206FD2C
	movs r4, r0
	bne _0206F880
	mov r1, r5
	mvn r0, #0x3f
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x3f
	ldmia sp!, {r4, r5, r6, pc}
_0206F880:
	mov r1, #0
	strb r1, [r4, #0x2b]
	ldr r0, _0206F970 ; =0x04000208
	strb r1, [r4, #9]
	ldrh r3, [r0]
	strh r1, [r0]
	ldrsb r2, [r4, #6]
	ldr r1, _0206F970 ; =0x04000208
	cmp r2, #0
	moveq r0, #1
	streqb r0, [r4, #6]
	ldrh r0, [r1]
	cmp r2, #0
	strh r3, [r1]
	bne _0206F964
	mov r1, #0
	strb r1, [r4, #0x14]
	ldrsb r0, [r4, #0xa]
	cmp r0, #1
	bne _0206F904
	mov r0, r5
	bl sub_0206F9EC
	mov r0, r5
	bl sub_0206F974
	cmp r0, #0
	ble _0206F904
	mov r6, #4
_0206F8EC:
	mov r0, r6
	bl sub_02079B14
	mov r0, r5
	bl sub_0206F974
	cmp r0, #0
	bgt _0206F8EC
_0206F904:
	ldrsb r0, [r4, #0x12]
	cmp r0, #1
	bne _0206F918
	mov r0, r4
	bl sub_0207009C
_0206F918:
	mov r1, #1
	strb r1, [r4, #5]
	strb r1, [r4, #0x10]
	mov r0, #0
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0x1a]
	cmp r0, #2
	mov r0, r5
	streqb r1, [r4, #7]
	bl sub_0206F7C8
	cmp r0, #0
	blt _0206F964
	mov r4, #4
_0206F94C:
	mov r0, r4
	bl sub_02079B14
	mov r0, r5
	bl sub_0206F7C8
	cmp r0, #0
	bge _0206F94C
_0206F964:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0206F96C: .word _022B9208
_0206F970: .word 0x04000208
	arm_func_end sub_0206F840

	arm_func_start sub_0206F974
sub_0206F974: ; 0x0206F974
	stmdb sp!, {r3, lr}
	ldr r1, _0206F9A0 ; =_022B9208
	ldrsb r1, [r1, #4]
	cmp r1, #0
	mvneq r0, #0x59
	ldmeqia sp!, {r3, pc}
	bl sub_0206FD2C
	cmp r0, #0
	mvneq r0, #0x3f
	ldrnesb r0, [r0, #0xa]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206F9A0: .word _022B9208
	arm_func_end sub_0206F974

	arm_func_start sub_0206F9A4
sub_0206F9A4: ; 0x0206F9A4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0206F9E8 ; =_022B9208
	mov r5, r0
	ldr r4, [r1, #0x1cc]
	cmp r4, #0
	beq _0206F9E0
_0206F9BC:
	ldrsb r0, [r4, #0xa]
	cmp r0, #1
	bne _0206F9D4
	ldr r0, [r4]
	mov r1, r5
	bl sub_0206F9EC
_0206F9D4:
	ldr r4, [r4, #0x500]
	cmp r4, #0
	bne _0206F9BC
_0206F9E0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0206F9E8: .word _022B9208
	arm_func_end sub_0206F9A4

	arm_func_start sub_0206F9EC
sub_0206F9EC: ; 0x0206F9EC
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _0206FAE0 ; =_022B9208
	mov r5, r0
	ldrsb r2, [r2, #4]
	mov r6, r1
	cmp r2, #0
	mvneq r0, #0x59
	ldmeqia sp!, {r4, r5, r6, pc}
	bl sub_0206FD2C
	movs r4, r0
	bne _0206FA30
	mov r1, r5
	mvn r0, #0x3f
	mov r2, #0
	bl sub_0206C854
	mvn r0, #0x3f
	ldmia sp!, {r4, r5, r6, pc}
_0206FA30:
	mov r5, #0
	strb r5, [r4, #0x2a]
	cmp r6, #0
	beq _0206FA60
	mov r0, #0x3e8
	mul r0, r6, r0
	ldr r1, _0206FAE4 ; =DRIVER_WORK
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r5, r0, lsr #0x10
	moveq r5, #1
_0206FA60:
	cmp r5, #0
	mov r1, #0
	bne _0206FAA4
	strb r1, [r4, #0x14]
	strb r1, [r4, #0xa]
	mov r0, r4
	strb r1, [r4, #0xd]
	bl sub_0207009C
	mov r2, #0
	str r2, [r4, #0x2c]
	strh r2, [r4, #0x38]
	ldr r0, [r4]
	ldr r3, [r4, #0x1fc]
	ldr r4, [r4, #0x1f8]
	mov r1, #9
	blx r4
	b _0206FAD8
_0206FAA4:
	mov r0, #1
	strb r0, [r4, #0x14]
	str r1, [r4, #0x34]
	streq r1, [r4, #0x2c]
	beq _0206FAD4
	ldr r0, [r4, #0x2c]
	rsbs r0, r0, #0
	moveq r5, r1
	beq _0206FAD4
	mov r1, r5
	bl _s32_div_f
	str r0, [r4, #0x30]
_0206FAD4:
	strh r5, [r4, #0x38]
_0206FAD8:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0206FAE0: .word _022B9208
_0206FAE4: .word DRIVER_WORK
	arm_func_end sub_0206F9EC

	arm_func_start sub_0206FAE8
sub_0206FAE8: ; 0x0206FAE8
	stmdb sp!, {r3, r4, r5, lr}
	mov r3, #0x3e8
	mov r4, r0
	mul r0, r2, r3
	ldr r2, _0206FBC4 ; =DRIVER_WORK
	mov r5, r1
	ldrsh r1, [r2, #0x28]
	bl _s32_div_f
	ldrsb r1, [r4, #0x13]
	cmp r1, #1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r5, #1
	bne _0206FB9C
	cmp r0, #0
	bne _0206FB58
	ldrsb r0, [r4, #8]
	cmp r0, #1
	bne _0206FBBC
	mov r0, r4
	bl sub_0207009C
	ldr r0, [r4]
	ldr r3, [r4, #0x1fc]
	ldr r4, [r4, #0x1f8]
	mov r1, #9
	mov r2, #0
	blx r4
	b _0206FBBC
_0206FB58:
	mov r1, #1
	strb r1, [r4, #0x14]
	mov r1, #0
	mov r0, r0, lsl #0x10
	str r1, [r4, #0x34]
	movs r5, r0, lsr #0x10
	streq r1, [r4, #0x2c]
	beq _0206FB94
	ldr r0, [r4, #0x2c]
	rsbs r0, r0, #0
	moveq r5, r1
	beq _0206FB94
	mov r1, r5
	bl _s32_div_f
	str r0, [r4, #0x30]
_0206FB94:
	strh r5, [r4, #0x38]
	b _0206FBBC
_0206FB9C:
	mov r1, #1
	strb r1, [r4, #0xa]
	ldrsb r0, [r4, #8]
	cmp r0, #1
	bne _0206FBBC
	mov r0, r4
	strb r1, [r4, #0x15]
	bl sub_0206FE5C
_0206FBBC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0206FBC4: .word DRIVER_WORK
	arm_func_end sub_0206FAE8

	arm_func_start sub_0206FBC8
sub_0206FBC8: ; 0x0206FBC8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _0206FC80 ; =_022B9208
	ldr r4, [r0, #0x1cc]
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r6, #9
	mov r5, r7
_0206FBE8:
	ldrsb r0, [r4, #0xa]
	cmp r0, #0
	ldrnesb r0, [r4, #8]
	cmpne r0, #0
	ldrneh r0, [r4, #0x38]
	cmpne r0, #0
	beq _0206FC70
	sub r0, r0, #1
	strh r0, [r4, #0x38]
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	ldreq r0, [r4, #0x34]
	beq _0206FC28
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	add r0, r1, r0
_0206FC28:
	str r0, [r4, #0x2c]
	ldrh r8, [r4, #0x38]
	mov r0, r4
	bl sub_0206FC84
	cmp r8, #0
	ldreqsb r0, [r4, #0x14]
	cmpeq r0, #1
	bne _0206FC70
	strb r7, [r4, #0xa]
	mov r0, r4
	strb r7, [r4, #0x14]
	bl sub_0207009C
	ldr r0, [r4]
	ldr r3, [r4, #0x1fc]
	ldr ip, [r4, #0x1f8]
	mov r1, r6
	mov r2, r5
	blx ip
_0206FC70:
	ldr r4, [r4, #0x500]
	cmp r4, #0
	bne _0206FBE8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0206FC80: .word _022B9208
	arm_func_end sub_0206FBC8

	arm_func_start sub_0206FC84
sub_0206FC84: ; 0x0206FC84
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, [r0, #0x2c]
	ldrb r2, [r0, #0xbc]
	mov r1, r1, asr #0x10
	ldr r4, _0206FD20 ; =0x04000208
	mul r1, r2, r1
	ldrb r5, [r0, #0x22]
	ldr r3, _0206FD24 ; =0x82061029
	ldrh r2, [r4]
	mul ip, r5, r1
	smull r1, lr, r3, ip
	mov r1, #0
	strh r1, [r4]
	ldrb r4, [r0, #0x1f]
	add lr, ip, lr
	mov r3, ip, lsr #0x1f
	add lr, r3, lr, asr #13
	mul r5, lr, lr
	ldr lr, _0206FD28 ; =0x81020409
	mov r3, r5, lsr #0x1f
	smull ip, r6, lr, r5
	add r6, r5, r6
	cmp r4, #0
	add r6, r3, r6, asr #6
	ble _0206FD10
_0206FCE8:
	add r3, r0, r1, lsl #2
	ldr ip, [r3, #0x1d8]
	add r1, r1, #1
	str r6, [ip, #0x140]
	ldrh r3, [ip, #6]
	orr r3, r3, #0x20
	strh r3, [ip, #6]
	ldrb r3, [r0, #0x1f]
	cmp r1, r3
	blt _0206FCE8
_0206FD10:
	ldr r1, _0206FD20 ; =0x04000208
	ldrh r0, [r1]
	strh r2, [r1]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0206FD20: .word 0x04000208
_0206FD24: .word 0x82061029
_0206FD28: .word 0x81020409
	arm_func_end sub_0206FC84

	arm_func_start sub_0206FD2C
sub_0206FD2C: ; 0x0206FD2C
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r3, _0206FD80 ; =0x04000208
	mov r2, #0
	ldrh ip, [r3]
	ldr r1, _0206FD84 ; =_022B9208
	strh r2, [r3]
	ldr r3, [r1, #0x1cc]
	cmp r3, #0
	beq _0206FD6C
_0206FD58:
	ldr r1, [r3]
	cmp r1, r0
	ldrne r3, [r3, #0x500]
	cmpne r3, #0
	bne _0206FD58
_0206FD6C:
	ldr r2, _0206FD80 ; =0x04000208
	mov r0, r3
	ldrh r1, [r2]
	strh ip, [r2]
	bx lr
	.align 2, 0
_0206FD80: .word 0x04000208
_0206FD84: .word _022B9208
	arm_func_end sub_0206FD2C

	arm_func_start sub_0206FD88
sub_0206FD88: ; 0x0206FD88
	stmdb sp!, {r4, lr}
	ldr r1, _0206FDAC ; =_022B9208
	mov r4, r0
	ldr r0, [r1, #0x1c8]
	ldr r2, [r1, #0x1c4]
	sub r1, r4, #0x10
	blx r2
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206FDAC: .word _022B9208
	arm_func_end sub_0206FD88

	arm_func_start sub_0206FDB0
sub_0206FDB0: ; 0x0206FDB0
	stmdb sp!, {r3, lr}
	ldr r0, _0206FDD8 ; =_022B9208
	ldrsb r1, [r0, #0x2a]
	cmp r1, #1
	ldrnesb r0, [r0, #0xf5]
	cmpne r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _0206FDDC ; =_022B9234
	bl sub_02079940
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206FDD8: .word _022B9208
_0206FDDC: .word _022B9234
	arm_func_end sub_0206FDB0

	arm_func_start sub_0206FDE0
sub_0206FDE0: ; 0x0206FDE0
	stmdb sp!, {r3, lr}
	ldr r2, _0206FE4C ; =DRIVER_WORK
	ldr r1, _0206FE50 ; =_022B9208
	ldrb ip, [r2, #0x738]
	mov r3, #0
	ldr r0, _0206FE54 ; =_022B9234
	bic ip, ip, #6
	strb ip, [r2, #0x738]
	ldrb ip, [r2, #0x739]
	strb r3, [r1, #0x29]
	mov r3, #1
	orr ip, ip, #6
	strb ip, [r2, #0x739]
	strb r3, [r1, #0x2a]
	bl sub_02079940
	ldr r0, _0206FE54 ; =_022B9234
	bl sub_02079800
	ldr r1, _0206FE50 ; =_022B9208
	mov r2, #0
	ldr r0, _0206FE58 ; =_022B9300
	strb r2, [r1, #0xf5]
	mov r2, #1
	strb r2, [r1, #0xf6]
	bl sub_02079940
	ldr r0, _0206FE58 ; =_022B9300
	bl sub_02079800
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206FE4C: .word DRIVER_WORK
_0206FE50: .word _022B9208
_0206FE54: .word _022B9234
_0206FE58: .word _022B9300
	arm_func_end sub_0206FDE0

	arm_func_start sub_0206FE5C
sub_0206FE5C: ; 0x0206FE5C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	ldrsb r0, [sl, #0x12]
	cmp r0, #1
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrsb r0, [sl, #0x15]
	add r5, sl, #0x1b8
	cmp r0, #1
	bne _0206FEB0
	ldr r1, [r5, #0xc]
	ldr r2, [r5]
	mov r0, #0
	bl ArrayFill32Fast
	ldr r0, [r5, #0xc]
	ldr r1, [r5]
	bl sub_0207A2DC
	mov r0, #0
	strb r0, [sl, #0x15]
_0206FEB0:
	mov r0, #0
	strb r0, [r5, #0x2c]
	ldr r1, [sl, #0x3c]
	ldr r0, _02070080 ; =0x00FFB0FF
	bl _u32_div_f
	mov r4, r0
	ldr r1, [r5, #8]
	ldr r0, _02070084 ; =_022B9208
	mul r1, r4, r1
	mov r1, r1, lsr #6
	str r0, [sp]
	ldr r3, _02070088 ; =sub_0206FDB0
	mov r2, r1
	mov r0, #2
	bl sub_0207C984
	ldr r0, [sl, #0x2c]
	ldrb r1, [sl, #0xbc]
	mov r0, r0, asr #0x10
	ldrb r2, [sl, #0x22]
	mul r0, r1, r0
	mul r6, r2, r0
	ldr r2, _0207008C ; =0x82061029
	ldr r0, _02070090 ; =0x04000208
	smull r1, r7, r2, r6
	ldr r3, [r5, #4]
	add r7, r6, r7
	mov r1, r6, lsr #0x1f
	add r7, r1, r7, asr #13
	ldrh r1, [r0]
	mul r6, r7, r7
	ldr r2, _02070094 ; =0x81020409
	str r1, [sp, #4]
	smull r1, sb, r2, r6
	add sb, r6, sb
	mov r1, r6, lsr #0x1f
	mov r6, #0
	strh r6, [r0]
	ldrb r0, [sl, #0x1f]
	mov r8, r3, lsr #2
	add sb, r1, sb, asr #6
	cmp r0, #0
	ble _0207000C
	mvn fp, #0xc0000000
_0206FF5C:
	add r0, r5, r6, lsl #2
	ldr r7, [r0, #0x20]
	mov r0, #0x1000
	strh r0, [r7, #4]
	mov r0, #1
	strb r0, [r7, #0xc]
	strb r0, [r7, #0x1f]
	ldrb r0, [sl, #0x1e]
	cmp r0, #1
	moveq r0, #0
	movne r0, r6
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0x10]
	str r0, [r7, #0x30]
	mov r0, #0
	str r0, [r7, #0x34]
	str r8, [r7, #0x38]
	mov r0, #1
	strb r0, [r7, #0x21]
	str r4, [r7, #0x13c]
	str sb, [r7, #0x140]
	ldrb r0, [sl, #0x1e]
	cmp r0, #1
	ldrne r0, _02070098 ; =DRIVER_WORK
	ldrneb r0, [r0, #0x39]
	cmpne r0, #1
	moveq r0, #0x40
	streq r0, [r7, #0x144]
	beq _0206FFE0
	tst r6, #1
	moveq r0, #0
	movne r0, #0x7f
	str r0, [r7, #0x144]
_0206FFE0:
	add r0, r7, #0x3c
	mov r1, fp
	bl SoundEnvelopeForceVolume
	add r0, r7, #0x5c
	bl SoundLfoBankReset
	mov r0, #1
	strh r0, [r7, #6]
	ldrb r0, [sl, #0x1f]
	add r6, r6, #1
	cmp r6, r0
	blt _0206FF5C
_0207000C:
	ldr r1, _02070098 ; =DRIVER_WORK
	ldr r3, _02070090 ; =0x04000208
	ldrb r4, [r1, #0x739]
	mov r2, #1
	mov r0, #0
	bic r4, r4, #4
	strb r4, [r1, #0x739]
	ldrb r4, [r1, #0x738]
	orr r4, r4, #4
	strb r4, [r1, #0x738]
	ldrh r1, [r3]
	ldr r1, [sp, #4]
	strh r1, [r3]
	strb r2, [sl, #0x12]
	ldrb r1, [sl, #0x1e]
	cmp r1, #0
	ble _02070074
	mov r2, r0
_02070054:
	add r1, sl, r0, lsl #2
	add r1, r1, #0x200
	strh r2, [r1, #0x10]
	strh r2, [r1, #0x12]
	ldrb r1, [sl, #0x1e]
	add r0, r0, #1
	cmp r0, r1
	blt _02070054
_02070074:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02070080: .word 0x00FFB0FF
_02070084: .word _022B9208
_02070088: .word sub_0206FDB0
_0207008C: .word 0x82061029
_02070090: .word 0x04000208
_02070094: .word 0x81020409
_02070098: .word DRIVER_WORK
	arm_func_end sub_0206FE5C

	arm_func_start sub_0207009C
sub_0207009C: ; 0x0207009C
	ldr r3, _0207011C ; =0x04000208
	mov ip, #0
	ldrh r1, [r3]
	strh ip, [r3]
	ldrsb r2, [r0, #0x12]
	cmp r2, #0
	bne _020700C8
	ldrh r0, [r3]
	mov r0, ip
	strh r1, [r3]
	bx lr
_020700C8:
	strb ip, [r0, #0x12]
	ldrb r2, [r0, #0x1f]
	cmp r2, #0
	ble _020700F8
	mov r3, #2
_020700DC:
	add r2, r0, ip, lsl #2
	ldr r2, [r2, #0x1d8]
	add ip, ip, #1
	strh r3, [r2, #6]
	ldrb r2, [r0, #0x1f]
	cmp ip, r2
	blt _020700DC
_020700F8:
	ldr r2, _02070120 ; =DRIVER_WORK
	ldr r3, _0207011C ; =0x04000208
	ldrb ip, [r2, #0x739]
	mov r0, #0
	orr ip, ip, #4
	strb ip, [r2, #0x739]
	ldrh r2, [r3]
	strh r1, [r3]
	bx lr
	.align 2, 0
_0207011C: .word 0x04000208
_02070120: .word DRIVER_WORK
	arm_func_end sub_0207009C

	arm_func_start sub_02070124
sub_02070124: ; 0x02070124
	stmdb sp!, {r3, lr}
	ldr r0, _02070144 ; =_022B7A30
	mov r1, #0
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	bl sub_020701F8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02070144: .word _022B7A30
	arm_func_end sub_02070124

	arm_func_start sub_02070148
sub_02070148: ; 0x02070148
	stmdb sp!, {r3, lr}
	bl sub_0207028C
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02070148

	arm_func_start sub_02070158
sub_02070158: ; 0x02070158
	stmdb sp!, {r3, lr}
	ldr r0, _02070184 ; =_022B7A30
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	beq _0207017C
	mov r0, #0
	mov r1, r0
	mov r2, r0
	bl sub_020702F8
_0207017C:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02070184: .word _022B7A30
	arm_func_end sub_02070158

	arm_func_start sub_02070188
sub_02070188: ; 0x02070188
	stmdb sp!, {r3, lr}
	ldr r0, _020701A8 ; =_022B9484
	ldrsb r0, [r0, #0x24]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _020701AC ; =_022B9484
	bl sub_020708F4
	ldmia sp!, {r3, pc}
	.align 2, 0
_020701A8: .word _022B9484
_020701AC: .word _022B9484
	arm_func_end sub_02070188

	arm_func_start sub_020701B0
sub_020701B0: ; 0x020701B0
	stmdb sp!, {r3, lr}
	ldr r0, _020701F0 ; =_022B9484
	ldrsb r0, [r0, #0x24]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _020701F4 ; =_022B9484
	mov r1, #0
	mov r2, #1
	bl FlushChannels
	ldr r0, _020701F4 ; =_022B9484
	mov r1, #1
	mov r2, #3
	bl FlushChannels
	ldr r0, _020701F4 ; =_022B9484
	bl sub_020706E8
	ldmia sp!, {r3, pc}
	.align 2, 0
_020701F0: .word _022B9484
_020701F4: .word _022B9484
	arm_func_end sub_020701B0

	arm_func_start sub_020701F8
sub_020701F8: ; 0x020701F8
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r3, _02070278 ; =_022B9484
	mov ip, #0
	str ip, [r3]
	str ip, [r3, #8]
	strb ip, [r3, #0x24]
	strb ip, [r3, #0x25]
	ldr r2, _0207027C ; =0x78667473
	mov r0, #0x400
	mov r1, #0x10
	strb ip, [r3, #0x26]
	bl sub_0206CACC
	ldr r2, _02070278 ; =_022B9484
	mov r1, #0x400
	str r0, [r2, #0x34]
	ldr r0, _02070280 ; =_022B8330
	str r1, [sp]
	ldrb r3, [r0, #0xd10]
	ldr r0, _02070284 ; =_022B94BC
	ldr r1, _02070288 ; =sub_020709A0
	add r3, r3, #1
	str r3, [sp, #4]
	ldr r3, [r2, #0x34]
	mov r2, #0
	add r3, r3, #0x400
	bl StartThread
	ldr r0, _02070284 ; =_022B94BC
	bl sub_02079940
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02070278: .word _022B9484
_0207027C: .word 0x78667473
_02070280: .word _022B8330
_02070284: .word _022B94BC
_02070288: .word sub_020709A0
	arm_func_end sub_020701F8

	arm_func_start sub_0207028C
sub_0207028C: ; 0x0207028C
	stmdb sp!, {r4, lr}
	mov r0, #0
	mov r1, r0
	mov r2, r0
	bl sub_020702F8
	ldr r0, _020702EC ; =_022B9484
	mov r1, #1
	ldr r2, _020702F0 ; =0x04000208
	strb r1, [r0, #0x26]
	ldrh r4, [r2]
	mov r1, #0
	ldr r0, _020702F4 ; =_022B94BC
	strh r1, [r2]
	bl sub_02079940
	ldr r2, _020702F0 ; =0x04000208
	ldr r0, _020702F4 ; =_022B94BC
	ldrh r1, [r2]
	strh r4, [r2]
	bl sub_02079800
	ldr r0, _020702EC ; =_022B9484
	ldr r0, [r0, #0x34]
	bl sub_0206CC14
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_020702EC: .word _022B9484
_020702F0: .word 0x04000208
_020702F4: .word _022B94BC
	arm_func_end sub_0207028C

	arm_func_start sub_020702F8
sub_020702F8: ; 0x020702F8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _02070648 ; =0x0000FFFF
	mov r8, r1
	cmp r8, r3
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0
	ldreq r1, _0207064C ; =_022B9484
	ldreqh r1, [r1, #0x1c]
	cmpeq r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0
	beq _02070370
	cmp r0, #1
	blo _02070350
	mov r1, #0
	mov r2, r1
	mvn r0, #0x17
	bl sub_0206C854
	mvn r0, #0x17
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02070350:
	tst r8, #0xff00
	bne _02070370
	mov r1, #0
	mov r2, r1
	mvn r0, #0x17
	bl sub_0206C854
	mvn r0, #0x17
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02070370:
	cmp r2, #0
	moveq r7, #0
	moveq r6, r7
	moveq r5, r7
	beq _02070390
	ldrb r5, [r2]
	ldrb r6, [r2, #1]
	ldrb r7, [r2, #2]
_02070390:
	mov r1, #0xc
	mul r1, r0, r1
	ldr r2, _02070650 ; =_022B7A3E
	ldr r0, _02070654 ; =_022B9484
	strh r8, [r2, r1]
	add r1, r2, r1
	strh r5, [r1, #2]
	strh r6, [r1, #8]
	strh r7, [r1, #0xa]
	bl sub_020708F4
	ldr r0, _0207064C ; =_022B9484
	mov r1, #0
	strb r1, [r0, #0x24]
	ldr r0, [r0]
	cmp r0, #0
	beq _020703E0
	bl sub_0206CC14
	ldr r0, _0207064C ; =_022B9484
	mov r1, #0
	str r1, [r0]
_020703E0:
	ldr r0, _0207064C ; =_022B9484
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02070400
	bl sub_0206CC14
	ldr r0, _0207064C ; =_022B9484
	mov r1, #0
	str r1, [r0, #8]
_02070400:
	cmp r8, #0
	bgt _02070410
	beq _0207051C
	b _02070514
_02070410:
	sub r0, r8, #0x300
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02070514
_02070420: ; jump table
	b _02070438 ; case 0
	b _02070458 ; case 1
	b _02070480 ; case 2
	b _020704A8 ; case 3
	b _020704C4 ; case 4
	b _020704EC ; case 5
_02070438:
	ldr r0, _0207064C ; =_022B9484
	ldr r1, _02070658 ; =_02070A44
	strb r5, [r0, #0x1e]
	cmp r6, #0
	moveq r8, #0
	str r1, [r0, #0x30]
	mov r4, #0
	b _0207051C
_02070458:
	ldr r0, _0207064C ; =_022B9484
	mov r1, #0x7f
	strb r1, [r0, #0x1e]
	ldr r1, _0207065C ; =sub_02070A9C
	strb r5, [r0, #0x21]
	cmp r6, #0
	moveq r8, #0
	str r1, [r0, #0x30]
	mov r4, #1
	b _0207051C
_02070480:
	ldr r0, _0207064C ; =_022B9484
	mov r1, #0x7f
	strb r1, [r0, #0x1e]
	ldr r1, _02070660 ; =sub_02070B74
	strb r5, [r0, #0x21]
	cmp r6, #0
	moveq r8, #0
	str r1, [r0, #0x30]
	mov r4, #1
	b _0207051C
_020704A8:
	ldr r0, _0207064C ; =_022B9484
	mov r2, #0x7f
	ldr r1, _02070664 ; =sub_02070C30
	strb r2, [r0, #0x1e]
	str r1, [r0, #0x30]
	mov r4, #0
	b _0207051C
_020704C4:
	ldr r0, _0207064C ; =_022B9484
	mov r1, #0x7f
	strb r1, [r0, #0x1e]
	ldr r1, _02070668 ; =sub_02070C58
	strb r5, [r0, #0x21]
	cmp r6, #0
	moveq r8, #0
	str r1, [r0, #0x30]
	mov r4, #1
	b _0207051C
_020704EC:
	ldr r0, _0207064C ; =_022B9484
	mov r1, #0x7f
	strb r1, [r0, #0x1e]
	ldr r1, _0207066C ; =sub_02070D44
	strb r5, [r0, #0x21]
	cmp r6, #0
	moveq r8, #0
	str r1, [r0, #0x30]
	mov r4, #1
	b _0207051C
_02070514:
	mvn r0, #0x5f
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0207051C:
	cmp r8, #0
	beq _02070640
	mov r0, #0xc0
	mul r5, r7, r0
	mov r0, r6, lsl #8
	add r1, r0, r0, lsr #31
	ldr r3, _0207064C ; =_022B9484
	mov r6, r1, asr #1
	str r0, [r3, #0x10]
	add r1, r6, r6, lsr #31
	ldr r2, _02070670 ; =0x81020409
	str r6, [r3, #0x14]
	mov r1, r1, asr #1
	str r1, [r3, #0x18]
	smull r1, r6, r2, r5
	strh r8, [r3, #0x1c]
	add r6, r5, r6
	mov r1, r5, lsr #0x1f
	add r6, r1, r6, asr #6
	strb r7, [r3, #0x1f]
	add r1, r6, #0x40
	strh r1, [r3, #0x22]
	ldr r2, [r3]
	cmp r2, #0
	bne _0207059C
	mov r1, #0x20
	bl sub_0206C9A8
	movs r2, r0
	ldr r0, _0207064C ; =_022B9484
	str r2, [r0]
	mvneq r0, #0x7f
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_0207059C:
	ldr r0, _0207064C ; =_022B9484
	cmp r4, #1
	ldr r1, [r0, #0x14]
	add r1, r2, r1
	str r1, [r0, #4]
	bne _02070604
	ldr r0, [r0, #0x10]
	mov r1, #0x20
	bl sub_0206C9A8
	ldr r1, _0207064C ; =_022B9484
	cmp r0, #0
	str r0, [r1, #8]
	bne _020705F8
	ldr r0, [r1]
	bl sub_0206CC14
	mov r1, #0
	ldr r3, _0207064C ; =_022B9484
	mov r2, r1
	sub r0, r1, #0x80
	str r1, [r3]
	bl sub_0206C854
	mvn r0, #0x7f
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020705F8:
	ldr r2, [r1, #0x14]
	add r0, r0, r2
	str r0, [r1, #0xc]
_02070604:
	ldr r3, _0207064C ; =_022B9484
	mov r1, #0
	ldr r0, _02070654 ; =_022B9484
	mov r2, #1
	strb r1, [r3, #0x20]
	bl FlushChannels
	ldr r0, _02070654 ; =_022B9484
	mov r1, #1
	mov r2, #3
	bl FlushChannels
	ldr r0, _02070654 ; =_022B9484
	bl sub_020706E8
	ldr r0, _0207064C ; =_022B9484
	mov r1, #1
	strb r1, [r0, #0x24]
_02070640:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02070648: .word 0x0000FFFF
_0207064C: .word _022B9484
_02070650: .word _022B7A3E
_02070654: .word _022B9484
_02070658: .word sub_02070A44
_0207065C: .word sub_02070A9C
_02070660: .word sub_02070B74
_02070664: .word sub_02070C30
_02070668: .word sub_02070C58
_0207066C: .word sub_02070D44
_02070670: .word 0x81020409
	arm_func_end sub_020702F8

	arm_func_start FlushChannels
FlushChannels: ; 0x02070674
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020706E0 ; =_022B7A6C
	mov r3, #0x15c
	mla r5, r2, r3, r4
	ldr r3, _020706E4 ; =0x04000208
	mov r7, r0
	ldrh r4, [r3]
	mov r2, #0
	mov r0, r5
	mov r6, r1
	strh r2, [r3]
	bl sub_020748A0
	add r0, r5, #0x3c
	mvn r1, #0xc0000000
	bl SoundEnvelopeForceVolume
	add r0, r5, #0x5c
	bl SoundLfoBankReset
	mov r0, #0
	strh r0, [r5, #6]
	mov r0, #0x10
	strb r0, [r5, #0x14e]
	add r0, r7, r6, lsl #2
	ldr r1, _020706E4 ; =0x04000208
	str r5, [r0, #0x28]
	ldrh r0, [r1]
	strh r4, [r1]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020706E0: .word _022B7A6C
_020706E4: .word 0x04000208
	arm_func_end FlushChannels

	arm_func_start sub_020706E8
sub_020706E8: ; 0x020706E8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r6, [r4, #0x18]
	mov r7, #0
	strb r7, [r4, #0x20]
	ldrh r3, [r4, #0x1c]
	add r5, r6, #0x20
	mov r6, r6, lsr #1
	sub r3, r3, #0x300
	mov r5, r5, lsr #1
	mov r8, r6, lsl #9
	mov r6, r5, lsl #9
	cmp r3, #7
	mov r5, r8, lsr #5
	mov r6, r6, lsr #5
	addls pc, pc, r3, lsl #2
	b _0207077C
_02070730: ; jump table
	b _02070750 ; case 0
	b _02070760 ; case 1
	b _02070760 ; case 2
	b _02070770 ; case 3
	b _02070770 ; case 4
	b _02070770 ; case 5
	b _02070770 ; case 6
	b _02070770 ; case 7
_02070750:
	mov r0, r7
	mov r1, r7
	mov r2, r7
	b _0207077C
_02070760:
	mov r0, #1
	mov r2, r0
	mov r1, #2
	b _0207077C
_02070770:
	mov r0, #1
	mov r2, r0
	mov r1, #2
_0207077C:
	mov r3, r2
	bl sub_0207CB54
	mov r1, #1
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [r4, #0x14]
	ldr r2, [r4]
	mov r1, r0
	mov r3, r3, lsr #2
	bl sub_0207C944
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r3, [r4, #0x14]
	ldr r2, [r4, #4]
	mov r3, r3, lsr #2
	bl sub_0207C944
	ldr r3, _020708E4 ; =sub_0207098C
	mov r1, r6
	mov r2, r5
	mov r0, #4
	str r4, [sp]
	bl sub_0207C984
	ldr r1, _020708E8 ; =0x04000208
	mov sb, #0
	ldrh r0, [r1]
	str r0, [sp, #0xc]
	strh sb, [r1]
	mov r5, #1
	mov r7, sb
	mvn r6, #0xc0000000
	mov r8, #0x1000
	mov fp, r5
_02070810:
	add r0, r4, sb, lsl #2
	ldr sl, [r0, #0x28]
	cmp sb, #0
	strh r8, [sl, #4]
	strb fp, [sl, #0xc]
	strb fp, [sl, #0x1f]
	ldreq r0, [r4]
	mov r1, r6
	ldrne r0, [r4, #4]
	tst sb, #1
	str r0, [sl, #0x30]
	str r7, [sl, #0x34]
	ldr r0, [r4, #0x14]
	mov r0, r0, lsr #2
	str r0, [sl, #0x38]
	mov r0, #1
	strb r0, [sl, #0x21]
	mov r0, #0x200
	str r0, [sl, #0x13c]
	ldrb r0, [r4, #0x1e]
	str r0, [sl, #0x140]
	moveq r0, r7
	movne r0, #0x7f
	str r0, [sl, #0x144]
	add r0, sl, #0x3c
	bl SoundEnvelopeForceVolume
	add r0, sl, #0x5c
	bl SoundLfoBankReset
	add sb, sb, #1
	strh r5, [sl, #6]
	cmp sb, #2
	blt _02070810
	ldr r1, _020708EC ; =DRIVER_WORK
	ldr r0, _020708F0 ; =_022B9484
	ldrb r3, [r1, #0x739]
	strb r5, [r0, #0x25]
	ldr r2, _020708E8 ; =0x04000208
	bic r0, r3, #0x10
	strb r0, [r1, #0x739]
	ldrb r0, [r1, #0x73b]
	bic r0, r0, #3
	strb r0, [r1, #0x73b]
	ldrb r0, [r1, #0x738]
	orr r0, r0, #0x10
	strb r0, [r1, #0x738]
	ldrb r0, [r1, #0x73a]
	orr r0, r0, #3
	strb r0, [r1, #0x73a]
	ldrh r0, [r2]
	ldr r0, [sp, #0xc]
	strh r0, [r2]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020708E4: .word sub_0207098C
_020708E8: .word 0x04000208
_020708EC: .word DRIVER_WORK
_020708F0: .word _022B9484
	arm_func_end sub_020706E8

	arm_func_start sub_020708F4
sub_020708F4: ; 0x020708F4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _02070980 ; =_022B9484
	mov r6, r0
	ldrsb r0, [r1, #0x25]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r0, _02070984 ; =0x04000208
	strb r5, [r1, #0x25]
	ldrh r4, [r0]
	strh r5, [r0]
_02070920:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02070934
	bl sub_020748A0
_02070934:
	add r5, r5, #1
	cmp r5, #2
	blt _02070920
	ldr ip, _02070988 ; =DRIVER_WORK
	mov r0, #0
	ldrb r2, [ip, #0x739]
	ldr lr, _02070984 ; =0x04000208
	mov r1, r0
	orr r2, r2, #0x10
	strb r2, [ip, #0x739]
	ldrb r5, [ip, #0x73b]
	mov r2, r0
	mov r3, r0
	orr r5, r5, #3
	strb r5, [ip, #0x73b]
	ldrh ip, [lr]
	strh r4, [lr]
	bl sub_0207CB54
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02070980: .word _022B9484
_02070984: .word 0x04000208
_02070988: .word DRIVER_WORK
	arm_func_end sub_020708F4

	arm_func_start sub_0207098C
sub_0207098C: ; 0x0207098C
	ldr ip, _02070998 ; =sub_02079940
	ldr r0, _0207099C ; =_022B94BC
	bx ip
	.align 2, 0
_02070998: .word sub_02079940
_0207099C: .word _022B94BC
	arm_func_end sub_0207098C

	arm_func_start sub_020709A0
sub_020709A0: ; 0x020709A0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r5, _02070A3C ; =_022B9484
	ldr r4, _02070A40 ; =_022B9484
	mov fp, #1
	mov r6, #0
_020709B4:
	mov r0, r6
	bl sub_02079888
	ldrsb r0, [r4, #0x26]
	cmp r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrsb r0, [r4, #0x25]
	cmp r0, #1
	bne _020709B4
	ldrb r7, [r4, #0x20]
	ldr sl, [r4, #0x18]
	ldr sb, [r4]
	cmp r7, #1
	ldr r8, [r4, #4]
	addeq sb, sb, sl
	addeq r8, r8, sl
	ldr ip, [r4, #0x30]
	mov r0, r5
	mov r1, sb
	mov r2, r8
	mov r3, sl
	blx ip
	mov r0, sb
	mov r1, sl
	bl sub_0207A2DC
	mov r0, r8
	mov r1, sl
	bl sub_0207A2DC
	bl sub_0207A300
	cmp r7, #0
	moveq r0, fp
	movne r0, #0
	strb r0, [r4, #0x20]
	b _020709B4
_02070A38:
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02070A3C: .word _022B9484
_02070A40: .word _022B9484
	arm_func_end sub_020709A0

	arm_func_start sub_02070A44
sub_02070A44: ; 0x02070A44
	stmdb sp!, {r3, lr}
	ldrb r0, [r0, #0x1f]
	mov ip, r3, asr #1
	cmp ip, #0
	add lr, r0, #0x80
	ldmleia sp!, {r3, pc}
_02070A5C:
	ldrsh r0, [r1]
	sub ip, ip, #1
	cmp ip, #0
	mul r3, r0, lr
	mov r0, r3, asr #7
	add r0, r3, r0, lsr #24
	mov r0, r0, asr #8
	strh r0, [r1], #2
	ldrsh r0, [r2]
	mul r3, r0, lr
	mov r0, r3, asr #7
	add r0, r3, r0, lsr #24
	mov r0, r0, asr #8
	strh r0, [r2], #2
	bgt _02070A5C
	ldmia sp!, {r3, pc}
	arm_func_end sub_02070A44

	arm_func_start sub_02070A9C
sub_02070A9C: ; 0x02070A9C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldrb r5, [r0, #0x20]
	ldr lr, [r0, #8]
	ldr r4, [r0, #0xc]
	cmp r5, #1
	biceq r5, r3, #1
	ldrh r6, [r0, #0x22]
	ldrb r7, [r0, #0x21]
	addeq lr, lr, r5
	addeq r4, r4, r5
	mov r5, r3, asr #1
	cmp r5, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r3, #0x8000
	rsb r3, r3, #0
	mov ip, r3, lsr #0x11
_02070ADC:
	ldrsh r8, [lr]
	ldrsh r0, [r1]
	sub r5, r5, #1
	mul sl, r8, r6
	mul sb, sl, r7
	mov r8, sl, asr #7
	add r8, sl, r8, lsr #24
	mov r8, r8, asr #8
	add r8, r8, r0, asr #8
	add r0, r0, sb, asr #7
	cmp r0, r3, lsr #17
	strh r8, [lr]
	movgt r0, ip
	bgt _02070B1C
	cmp r0, r3
	movlt r0, r3
_02070B1C:
	strh r0, [r1], #2
	ldrsh r8, [r4]
	ldrsh r0, [r2]
	add lr, lr, #2
	mul sl, r8, r6
	mul sb, sl, r7
	mov r8, sl, asr #7
	add r8, sl, r8, lsr #24
	mov r8, r8, asr #8
	add r8, r8, r0, asr #8
	add r0, r0, sb, asr #7
	cmp r0, r3, lsr #17
	strh r8, [r4]
	movgt r0, ip
	bgt _02070B60
	cmp r0, r3
	movlt r0, r3
_02070B60:
	cmp r5, #0
	strh r0, [r2], #2
	add r4, r4, #2
	bgt _02070ADC
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_02070A9C

	arm_func_start sub_02070B74
sub_02070B74: ; 0x02070B74
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldrb r4, [r0, #0x20]
	ldr lr, [r0, #8]
	ldrh r5, [r0, #0x22]
	cmp r4, #1
	biceq r4, r3, #1
	addeq lr, lr, r4
	mov r4, r3, asr #1
	ldrb r6, [r0, #0x21]
	cmp r4, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, #0x8000
	rsb r0, r0, #0
	mov r3, r0, lsr #0x11
_02070BAC:
	ldrsh r8, [lr]
	ldrsh ip, [r1]
	ldrsh r7, [r2]
	mul sb, r8, r5
	mul sl, sb, r6
	mov r8, sb, asr #7
	add sb, sb, r8, lsr #24
	mov r8, sl, asr #6
	add sl, sl, r8, lsr #25
	add r8, ip, sl, asr #7
	cmp r8, r0, lsr #17
	add ip, ip, r7
	mov sb, sb, asr #8
	add sb, sb, ip, asr #9
	strh sb, [lr]
	sub r4, r4, #1
	movgt r8, r3
	bgt _02070BFC
	cmp r8, r0
	movlt r8, r0
_02070BFC:
	add r7, r7, sl, asr #7
	cmp r7, r0, lsr #17
	strh r8, [r1]
	movgt r7, r3
	bgt _02070C18
	cmp r7, r0
	movlt r7, r0
_02070C18:
	cmp r4, #0
	strh r7, [r2], #2
	add r1, r1, #2
	add lr, lr, #2
	bgt _02070BAC
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_02070B74

	arm_func_start sub_02070C30
sub_02070C30: ; 0x02070C30
	mov r2, r3, asr #1
	cmp r2, #0
	bxle lr
_02070C3C:
	ldrsh r0, [r1]
	sub r2, r2, #1
	cmp r2, #0
	rsb r0, r0, #0
	strh r0, [r1], #2
	bgt _02070C3C
	bx lr
	arm_func_end sub_02070C30

	arm_func_start sub_02070C58
sub_02070C58: ; 0x02070C58
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldrb r5, [r0, #0x20]
	ldr lr, [r0, #8]
	ldr r4, [r0, #0xc]
	cmp r5, #1
	biceq r5, r3, #1
	ldrh r6, [r0, #0x22]
	ldrb r7, [r0, #0x21]
	addeq lr, lr, r5
	addeq r4, r4, r5
	mov r5, r3, asr #1
	cmp r5, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r3, #0x8000
	rsb r3, r3, #0
	mov ip, r3, lsr #0x11
_02070C98:
	ldrsh r8, [lr]
	ldrsh r0, [r1]
	sub r5, r5, #1
	mul sl, r8, r6
	mul sb, sl, r7
	mov r8, sl, asr #7
	add r8, sl, r8, lsr #24
	mov r8, r8, asr #8
	add r8, r8, r0, asr #8
	add r0, r0, sb, asr #7
	cmp r0, r3, lsr #17
	strh r8, [lr]
	movgt r0, ip
	bgt _02070CD8
	cmp r0, r3
	movlt r0, r3
_02070CD8:
	strh r0, [r1], #2
	ldrsh r8, [r4]
	ldrsh r0, [r2]
	add lr, lr, #2
	mul sl, r8, r6
	mul sb, sl, r7
	mov r8, sl, asr #7
	add r8, sl, r8, lsr #24
	mov r8, r8, asr #8
	add r8, r8, r0, asr #8
	add r0, r0, sb, asr #7
	cmp r0, r3, lsr #17
	strh r8, [r4]
	movgt r0, ip
	bgt _02070D1C
	cmp r0, r3
	movlt r0, r3
_02070D1C:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	rsb r0, r0, #0
	cmp r5, #0
	strh r0, [r2], #2
	add r4, r4, #2
	bgt _02070C98
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_02070C58

	arm_func_start sub_02070D44
sub_02070D44: ; 0x02070D44
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldrb r4, [r0, #0x20]
	ldr lr, [r0, #8]
	ldrh r5, [r0, #0x22]
	cmp r4, #1
	biceq r4, r3, #1
	addeq lr, lr, r4
	mov r4, r3, asr #1
	ldrb r6, [r0, #0x21]
	cmp r4, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, #0x8000
	rsb r0, r0, #0
	mov r3, r0, lsr #0x11
_02070D7C:
	ldrsh r8, [lr]
	ldrsh ip, [r1]
	ldrsh r7, [r2]
	mul sb, r8, r5
	mul sl, sb, r6
	mov r8, sb, asr #7
	add sb, sb, r8, lsr #24
	add r8, ip, sl, asr #7
	cmp r8, r0, lsr #17
	add ip, ip, r7
	mov sb, sb, asr #8
	add sb, sb, ip, asr #9
	strh sb, [lr]
	sub r4, r4, #1
	movgt r8, r3
	bgt _02070DC4
	cmp r8, r0
	movlt r8, r0
_02070DC4:
	add r7, r7, sl, asr #7
	cmp r7, r0, lsr #17
	strh r8, [r1]
	movgt r7, r3
	bgt _02070DE0
	cmp r7, r0
	movlt r7, r0
_02070DE0:
	mov r7, r7, lsl #0x10
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #0x10
	mov r7, r7, asr #0x10
	rsb r7, r7, #0
	cmp r4, #0
	strh r7, [r2], #2
	add lr, lr, #2
	add r1, r1, #2
	bgt _02070D7C
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_02070D44

	arm_func_start sub_02070E0C
sub_02070E0C: ; 0x02070E0C
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r3, _02070E90 ; =_022B8330
	ldrb r0, [r3, #0xd10]
	cmp r0, #0
	beq _02070E84
	mov ip, #0
	strb ip, [r3, #0xd12]
	mov r0, #1
	strb r0, [r3, #0xd11]
	ldr r2, _02070E94 ; =0x72637473
	mov r0, #0x800
	mov r1, #0x10
	strb ip, [r3, #0xd13]
	bl sub_0206CACC
	ldr r2, _02070E90 ; =_022B8330
	mov r1, #0x800
	str r0, [r2, #0xdd4]
	str r1, [sp]
	ldrb r3, [r2, #0xd10]
	ldr r0, _02070E98 ; =_022B9044
	ldr r1, _02070E9C ; =sub_02071014
	str r3, [sp, #4]
	ldr r3, [r2, #0xdd4]
	mov r2, #0
	add r3, r3, #0x800
	bl StartThread
	ldr r0, _02070E98 ; =_022B9044
	bl sub_02079940
	bl sub_02070EDC
_02070E84:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02070E90: .word _022B8330
_02070E94: .word 0x72637473
_02070E98: .word _022B9044
_02070E9C: .word sub_02071014
	arm_func_end sub_02070E0C

	arm_func_start sub_02070EA0
sub_02070EA0: ; 0x02070EA0
	stmdb sp!, {r3, lr}
	bl sub_02070F4C
	ldr r1, _02070ED4 ; =_022B8330
	mov r2, #0
	ldr r0, _02070ED8 ; =_022B9044
	strb r2, [r1, #0xd11]
	bl sub_02079940
	ldr r0, _02070ED8 ; =_022B9044
	bl sub_02079800
	ldr r0, _02070ED4 ; =_022B8330
	ldr r0, [r0, #0xdd4]
	bl sub_0206CC14
	ldmia sp!, {r3, pc}
	.align 2, 0
_02070ED4: .word _022B8330
_02070ED8: .word _022B9044
	arm_func_end sub_02070EA0

	arm_func_start sub_02070EDC
sub_02070EDC: ; 0x02070EDC
	stmdb sp!, {r3, lr}
	ldr r0, _02070F3C ; =_022B8330
	add r0, r0, #0xd00
	ldrsb r0, [r0, #0xd8]
	cmp r0, #0
	bne _02070F34
	ldr r1, _02070F40 ; =0x00001474
	ldr ip, _02070F44 ; =DRIVER_WORK
	ldr r3, _02070F48 ; =sub_02070FD4
	mov r2, r1
	mov r0, #0
	str ip, [sp]
	bl sub_0207C984
	mov r0, #0
	mov r1, r0
	mov r3, r0
	mov r2, #1
	bl sub_0207C8B8
	mov r0, #1
	bl sub_0207CF14
	mov r0, #1
	bl sub_0207CD44
_02070F34:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02070F3C: .word _022B8330
_02070F40: .word 0x00001474
_02070F44: .word DRIVER_WORK
_02070F48: .word sub_02070FD4
	arm_func_end sub_02070EDC

	arm_func_start sub_02070F4C
sub_02070F4C: ; 0x02070F4C
	stmdb sp!, {r3, lr}
	mov r1, #0
	ldr r0, _02070FC4 ; =0x0000FFFF
	mov r3, r1
	mov r2, #1
	bl sub_0207C8E0
	ldr r0, _02070FC8 ; =_022B8330
	add r0, r0, #0xd00
	ldrsb r0, [r0, #0xd8]
	cmp r0, #0
	bne _02070F90
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	str r0, [sp]
	bl sub_0207C984
_02070F90:
	mov r0, #1
	bl sub_0207CF14
	mov r0, #1
	bl sub_0207CD44
	ldr r2, _02070FCC ; =_022B7A30
	mov r0, #0
	strh r0, [r2, #0x30]
	strh r0, [r2, #0x34]
	ldr r1, _02070FD0 ; =DRIVER_WORK
	strh r0, [r2, #0x32]
	strb r0, [r1, #0x739]
	strb r0, [r1, #0x738]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02070FC4: .word 0x0000FFFF
_02070FC8: .word _022B8330
_02070FCC: .word _022B7A30
_02070FD0: .word DRIVER_WORK
	arm_func_end sub_02070F4C

	arm_func_start sub_02070FD4
sub_02070FD4: ; 0x02070FD4
	stmdb sp!, {r3, lr}
	ldr r1, _0207100C ; =_022B8330
	add r0, r1, #0xd00
	ldrsb r2, [r0, #0x11]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldrsb r0, [r0, #0x13]
	cmp r0, #1
	ldmneia sp!, {r3, pc}
	ldr r0, _02071010 ; =_022B9044
	mov r2, #0
	strb r2, [r1, #0xd13]
	bl sub_02079940
	ldmia sp!, {r3, pc}
	.align 2, 0
_0207100C: .word _022B8330
_02071010: .word _022B9044
	arm_func_end sub_02070FD4

	arm_func_start sub_02071014
sub_02071014: ; 0x02071014
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r8, _0207114C ; =_022B8330
	ldr r7, _02071150 ; =_022B9130
	ldr r6, _02071154 ; =DRIVER_WORK
	add r4, r8, #0xd00
	add r5, r8, #0xe00
	mov fp, #1
_02071030:
	mov r0, #0
	strb fp, [r8, #0xd13]
	bl sub_02079888
	ldrsb r0, [r5, #0xd0]
	cmp r0, #1
	bne _020710D0
	bl GetTimer0Control
	ldr r2, [r8, #0xec8]
	ldr r1, [r8, #0xecc]
	sub sl, r0, r2
	cmp r1, r2
	sub r1, r1, r2
	addlo r1, r1, #0x10000
	str r0, [r8, #0xec8]
	mov r0, r1
	bl _ffltu
	mov sb, r0
	mov r0, sl
	bl _ffltu
	mov r1, r0
	mov r0, sb
	bl _fdiv
	mov r1, r0
	ldr r0, _02071158 ; =0x42C80000
	bl _fmul
	mov sb, r0
	ldrsh r0, [r7, #0xc4]
	mov r1, sb
	cmp r0, #0
	movlt r0, #0
	strlt r0, [r8, #0xec0]
	str sb, [r8, #0xebc]
	ldr r0, [r8, #0xec0]
	bl _fls
	strlo sb, [r8, #0xec0]
	movlo r0, #0x64
	strloh r0, [r7, #0xc4]
	ldrsh r0, [r7, #0xc4]
	sub r0, r0, #1
	strh r0, [r7, #0xc4]
_020710D0:
	ldrsb r0, [r4, #0x11]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	bl sub_0207CD44
	ldr r0, [r6, #0x2c]
	add r0, r0, #1
	str r0, [r6, #0x2c]
	ldr r0, [r6, #0x664]
	bl UpdateSequencerTracks
	ldr r0, [r6, #0x668]
	bl UpdateSequencerTracks
	bl sub_0206FBC8
	ldr r0, _0207115C ; =_022B9584
	ldr r0, [r0]
	cmp r0, #0
	beq _02071118
	bl sub_02072BB8
_02071118:
	bl UpdateChannels
	bl sub_02074194
	bl sub_02074A58
	bl sub_0207457C
	mov r0, #0
	bl sub_0207CF14
	ldrsb r0, [r5, #0xd0]
	cmp r0, #1
	bne _02071030
	bl GetTimer0Control
	str r0, [r8, #0xecc]
	b _02071030
_02071148:
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0207114C: .word _022B8330
_02071150: .word _022B9130
_02071154: .word DRIVER_WORK
_02071158: .word 0x42C80000
_0207115C: .word _022B9584
	arm_func_end sub_02071014

	arm_func_start sub_02071160
sub_02071160: ; 0x02071160
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, [r0, #0x24]
	ldrb r0, [r1, #1]
	add r7, r1, #0x10
	str r0, [sp]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov fp, #0
	mvn r6, #0
	mov r5, fp
_02071188:
	ldr r8, [r7, #0xb8]
	add sl, r7, #0xb8
	cmp r8, #0
	beq _02071200
	ldr r4, _02071220 ; =DRIVER_WORK
_0207119C:
	ldmib r8, {r0, sb}
	sub r1, r0, #1
	cmp r1, #0
	bgt _020711E0
	ldrb r0, [r7, #4]
	tst r0, #3
	movne r1, fp
	bne _020711E0
	mov r0, r7
	mov r1, r8
	bl sub_02074150
	ldr r0, [r4, #0x650]
	mov r1, r6
	str r0, [r8, #8]
	str r8, [r4, #0x650]
	str r6, [r8, #4]
	strb r5, [r8, #1]
_020711E0:
	str r1, [r8, #4]
	cmp r1, #0
	strge r1, [r8, #4]
	strge r8, [sl]
	addge sl, r8, #8
	mov r8, sb
	cmp sb, #0
	bne _0207119C
_02071200:
	mov r0, #0
	str r0, [sl]
	ldr r0, [sp]
	add r7, r7, #0xc8
	subs r0, r0, #1
	str r0, [sp]
	bne _02071188
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02071220: .word DRIVER_WORK
	arm_func_end sub_02071160

	arm_func_start ParseDseEvent
ParseDseEvent: ; 0x02071224
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r1
	ldr r1, [r6, #0xc]
	mov r7, r0
	cmp r1, #0
	ldr r5, [r6, #0x1c]
	ldr r4, [r6, #0x54]
	bne _020713C4
_02071248:
	ldrb r3, [r5]
	add r0, r5, #1
	mov r5, r0
	cmp r3, #0x80
	blo _020712A0
	cmp r3, #0x90
	blo _02071288
	ldr r2, _020713DC ; =SMD_EVENTS_FUN_TABLE
	mov r1, r7
	add r2, r2, r3, lsl #2
	ldr r5, [r2, #-0x240]
	mov r2, r6
	mov r3, r4
	blx r5
	mov r5, r0
	b _020713AC
_02071288:
	ldr r0, _020713E0 ; =_020B0B7C
	add r0, r0, r3
	ldrb r0, [r0, #-0x80]
	str r0, [r6, #0x10]
	str r0, [r6, #0xc]
	b _020713AC
_020712A0:
	strb r3, [sp, #3]
	ldrb r1, [r0]
	ldrb r5, [r6, #4]
	mov r3, #0xc
	mov r2, r1, lsl #0x14
	mov r2, r2, asr #0x18
	and r2, r2, #3
	sub r2, r2, #2
	mov r2, r2, lsl #0x18
	add r2, r5, r2, asr #24
	mov r2, r2, lsl #0x18
	mov r5, r2, asr #0x18
	and r2, r1, #0xf
	smlabb r2, r5, r3, r2
	strb r2, [sp, #2]
	mov r1, r1, asr #6
	strb r5, [r6, #4]
	ands r1, r1, #0xff
	add r5, r0, #1
	ldreq r3, [r6, #0x14]
	beq _02071318
	cmp r1, #0
	mov r3, #0
	beq _02071314
_02071300:
	ldrb r0, [r5], #1
	sub r1, r1, #1
	ands r1, r1, #0xff
	add r3, r0, r3, lsl #8
	bne _02071300
_02071314:
	str r3, [r6, #0x14]
_02071318:
	ldrb r2, [r6, #5]
	mov r1, #0
	ldr r0, _020713E4 ; =0x02040811
	mul r2, r3, r2
	umull r0, r3, r2, r0
	sub r0, r2, r3
	add r3, r3, r0, lsr #1
	mov r3, r3, lsr #6
	str r3, [sp, #4]
	strb r1, [sp]
	ldrsb r0, [r6, #8]
	cmp r0, #0
	bne _02071398
	ldrb r0, [r4, #4]
	add r1, sp, #0
	tst r0, #2
	beq _0207136C
	ldrb r2, [r6, #7]
	mov r0, r4
	bl sub_02073E10
	b _02071398
_0207136C:
	mov r0, r4
	bl sub_02073EA0
	mov r2, #0
	add r1, sp, #0
	mov r0, r4
	str r2, [r4, #0x1c]
	bl sub_02073CD8
	movs r1, r0
	beq _02071398
	mov r0, r4
	bl sub_02073EDC
_02071398:
	ldrb r0, [sp, #2]
	strb r0, [r6, #7]
	ldrb r0, [r4, #4]
	bic r0, r0, #2
	strb r0, [r4, #4]
_020713AC:
	ldrsb r0, [r6, #2]
	cmp r0, #0
	beq _020713C4
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _02071248
_020713C4:
	ldr r0, [r6, #0xc]
	sub r0, r0, #1
	str r0, [r6, #0xc]
	str r5, [r6, #0x1c]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020713DC: .word SMD_EVENTS_FUN_TABLE
_020713E0: .word _020B0B7C
_020713E4: .word 0x02040811
	arm_func_end ParseDseEvent

	arm_func_start UpdateSequencerTracks
UpdateSequencerTracks: ; 0x020713E8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs sl, r0
	cmpne sl, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020713F8:
	ldrsb r0, [sl, #5]
	cmp r0, #1
	bne _0207176C
	ldrsh r0, [sl, #0x1a]
	cmp r0, #0
	beq _0207141C
	subgt r0, r0, #1
	strgth r0, [sl, #0x1a]
	b _0207176C
_0207141C:
	ldr r0, [sl, #0x34]
	add r0, r0, #1
	str r0, [sl, #0x34]
	ldrb r0, [sl, #0xc]
	cmp r0, #0
	beq _0207143C
	mov r0, sl
	bl sub_02071784
_0207143C:
	ldr r1, [sl, #0x3c]
	ldr r0, [sl, #0x40]
	add r1, r1, r0
	str r1, [sl, #0x3c]
	ldr r0, [sl, #0x44]
	cmp r1, r0
	ble _020716B0
	mov r6, #0
	ldr r7, _0207177C ; =0x04000208
	ldr fp, _02071780 ; =0x82061029
	mov r5, r6
	mov r4, r6
_0207146C:
	mov r0, sl
	bl sub_02071160
	ldr r2, [sl, #0x24]
	ldrb r0, [r2, #1]
	add r1, r2, #0x10
	cmp r0, #0
	beq _0207162C
_02071488:
	ldrh r3, [r1, #0x28]
	sub r0, r0, #1
	cmp r3, #0
	beq _0207150C
	sub r3, r3, #1
	strh r3, [r1, #0x28]
	ldrh r3, [r1, #0x28]
	cmp r3, #0
	ldreq r3, [r1, #0x24]
	beq _020714BC
	ldr r8, [r1, #0x1c]
	ldr r3, [r1, #0x20]
	add r3, r8, r3
_020714BC:
	str r3, [r1, #0x1c]
	ldrsh r3, [r1, #0x54]
	ldr r8, [r1, #0x1c]
	ldrsh sb, [r2, #4]
	add r3, r3, r8, asr #16
	add r3, sb, r3
	strh r3, [r1, #0x16]
	ldrh r3, [r7]
	strh r6, [r7]
	ldr sb, [r1, #0xb4]
	cmp sb, #0
	beq _02071504
_020714EC:
	ldrh r8, [sb, #6]
	orr r8, r8, #0x10
	strh r8, [sb, #6]
	ldr sb, [sb, #0x154]
	cmp sb, #0
	bne _020714EC
_02071504:
	ldrh r8, [r7]
	strh r3, [r7]
_0207150C:
	ldrh r3, [r1, #0x38]
	cmp r3, #0
	beq _020715A0
	sub r3, r3, #1
	strh r3, [r1, #0x38]
	ldrh r3, [r1, #0x38]
	cmp r3, #0
	ldreq r3, [r1, #0x34]
	beq _0207153C
	ldr r8, [r1, #0x2c]
	ldr r3, [r1, #0x30]
	add r3, r8, r3
_0207153C:
	str r3, [r1, #0x2c]
	ldr r8, [r1, #0x2c]
	ldrb r3, [r1, #0x50]
	mov r8, r8, asr #0x10
	ldrsb sb, [r2, #8]
	mul r3, r8, r3
	mul r8, sb, r3
	smull r3, sb, fp, r8
	add sb, r8, sb
	mov r3, r8, lsr #0x1f
	add sb, r3, sb, asr #13
	strh sb, [r1, #0x18]
	ldrh r3, [r7]
	strh r5, [r7]
	ldr sb, [r1, #0xb4]
	cmp sb, #0
	beq _02071598
_02071580:
	ldrh r8, [sb, #6]
	orr r8, r8, #0x20
	strh r8, [sb, #6]
	ldr sb, [sb, #0x154]
	cmp sb, #0
	bne _02071580
_02071598:
	ldrh r8, [r7]
	strh r3, [r7]
_020715A0:
	ldrh r3, [r1, #0x48]
	cmp r3, #0
	beq _02071620
	sub r3, r3, #1
	strh r3, [r1, #0x48]
	ldrh r3, [r1, #0x48]
	cmp r3, #0
	ldreq r3, [r1, #0x44]
	beq _020715D0
	ldr r8, [r1, #0x3c]
	ldr r3, [r1, #0x40]
	add r3, r8, r3
_020715D0:
	str r3, [r1, #0x3c]
	ldr r3, [r1, #0xc4]
	ldr r8, [r1, #0x3c]
	ldrsb r3, [r3, #7]
	sub r3, r3, #0x40
	add r3, r3, r8, asr #16
	strh r3, [r1, #0x1a]
	ldrh r3, [r7]
	strh r4, [r7]
	ldr sb, [r1, #0xb4]
	cmp sb, #0
	beq _02071618
_02071600:
	ldrh r8, [sb, #6]
	orr r8, r8, #0x40
	strh r8, [sb, #6]
	ldr sb, [sb, #0x154]
	cmp sb, #0
	bne _02071600
_02071618:
	ldrh r8, [r7]
	strh r3, [r7]
_02071620:
	cmp r0, #0
	add r1, r1, #0xc8
	bne _02071488
_0207162C:
	mov r0, #0
	strb r0, [sl, #0xd]
	ldrb r0, [sl, #0xf]
	mov sb, #0
	add r8, sl, #0xa8
	cmp r0, #0
	ble _02071688
_02071648:
	ldrsb r0, [r8, #2]
	cmp r0, #1
	bne _02071674
	mov r0, sl
	mov r1, r8
	bl ParseDseEvent
	ldrsb r0, [r8, #2]
	cmp r0, #1
	ldreqb r0, [sl, #0xd]
	addeq r0, r0, #1
	streqb r0, [sl, #0xd]
_02071674:
	ldrb r0, [sl, #0xf]
	add sb, sb, #1
	add r8, r8, #0x5c
	cmp sb, r0
	blt _02071648
_02071688:
	ldr r0, [sl, #0x38]
	add r0, r0, #1
	str r0, [sl, #0x38]
	ldr r1, [sl, #0x3c]
	ldr r0, [sl, #0x44]
	sub r1, r1, r0
	str r1, [sl, #0x3c]
	ldr r0, [sl, #0x44]
	cmp r1, r0
	bgt _0207146C
_020716B0:
	ldrb r0, [sl, #0xd]
	cmp r0, #0
	bne _020716E8
	mov r0, #0
	str r0, [sl, #4]
	ldr r0, [sl, #0x24]
	bl sub_020733BC
	ldr r0, [sl, #0x28]
	ldr r3, [sl, #0xa0]
	ldr r4, [sl, #0x9c]
	mov r1, #1
	mov r2, #0
	blx r4
	b _0207176C
_020716E8:
	ldrsb r1, [sl, #7]
	cmp r1, #0
	beq _0207176C
	ldr r0, [sl, #0x68]
	cmp r0, #0
	bne _0207176C
	cmp r1, #1
	bne _02071744
	mov r0, #0
	str r0, [sl, #4]
	ldr r0, [sl, #0x24]
	bl sub_02073480
	ldr r0, [sl, #0x28]
	ldr r3, [sl, #0xa0]
	ldr r4, [sl, #0x9c]
	mov r1, #2
	mov r2, #0
	blx r4
	ldrsb r0, [sl, #0xa]
	cmp r0, #1
	moveq r0, #0
	streqb r0, [sl, #0xd]
	b _0207176C
_02071744:
	mov r1, #1
	strb r1, [sl, #6]
	ldr r0, [sl, #0x24]
	bl sub_020734AC
	ldr r0, [sl, #0x28]
	ldr r3, [sl, #0xa0]
	ldr r4, [sl, #0x9c]
	mov r1, #3
	mov r2, #0
	blx r4
_0207176C:
	ldr sl, [sl, #0xa4]
	cmp sl, #0
	bne _020713F8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0207177C: .word 0x04000208
_02071780: .word 0x82061029
	arm_func_end UpdateSequencerTracks

	arm_func_start sub_02071784
sub_02071784: ; 0x02071784
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #0x54]
	cmp r0, #0
	beq _020717F8
	sub r0, r0, #1
	strh r0, [r4, #0x54]
	ldrh r0, [r4, #0x54]
	cmp r0, #0
	ldreq r0, [r4, #0x50]
	beq _020717BC
	ldr r1, [r4, #0x48]
	ldr r0, [r4, #0x4c]
	add r0, r1, r0
_020717BC:
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x48]
	ldrb r0, [r4, #0x17]
	mov r1, r1, asr #0x10
	mul r0, r1, r0
	movs r1, r0, lsr #8
	ldr r0, _02071918 ; =0x03938700
	moveq r1, #1
	bl _u32_div_f
	str r0, [r4, #0x44]
	ldrh r0, [r4, #0x54]
	cmp r0, #0
	ldreqb r0, [r4, #0xc]
	biceq r0, r0, #1
	streqb r0, [r4, #0xc]
_020717F8:
	ldrh r0, [r4, #0x64]
	cmp r0, #0
	beq _02071858
	sub r0, r0, #1
	strh r0, [r4, #0x64]
	ldrh r0, [r4, #0x64]
	cmp r0, #0
	ldreq r0, [r4, #0x60]
	beq _02071828
	ldr r1, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	add r0, r1, r0
_02071828:
	str r0, [r4, #0x58]
	ldr r1, [r4, #0x58]
	ldr r0, [r4, #0x24]
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl sub_02073654
	ldrh r0, [r4, #0x64]
	cmp r0, #0
	ldreqb r0, [r4, #0xc]
	biceq r0, r0, #2
	streqb r0, [r4, #0xc]
_02071858:
	ldrh r0, [r4, #0x74]
	cmp r0, #0
	beq _020718B8
	sub r0, r0, #1
	strh r0, [r4, #0x74]
	ldrh r0, [r4, #0x74]
	cmp r0, #0
	ldreq r0, [r4, #0x70]
	beq _02071888
	ldr r1, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	add r0, r1, r0
_02071888:
	str r0, [r4, #0x68]
	ldr r1, [r4, #0x68]
	ldr r0, [r4, #0x24]
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	bl sub_020736E8
	ldrh r0, [r4, #0x74]
	cmp r0, #0
	ldreqb r0, [r4, #0xc]
	biceq r0, r0, #4
	streqb r0, [r4, #0xc]
_020718B8:
	ldrh r0, [r4, #0x84]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	sub r0, r0, #1
	strh r0, [r4, #0x84]
	ldrh r0, [r4, #0x84]
	cmp r0, #0
	ldreq r0, [r4, #0x80]
	beq _020718E8
	ldr r1, [r4, #0x78]
	ldr r0, [r4, #0x7c]
	add r0, r1, r0
_020718E8:
	str r0, [r4, #0x78]
	ldr r1, [r4, #0x78]
	ldr r0, [r4, #0x24]
	mov r1, r1, asr #0x10
	and r1, r1, #0xff
	bl sub_020737B8
	ldrh r0, [r4, #0x84]
	cmp r0, #0
	ldreqb r0, [r4, #0xc]
	biceq r0, r0, #0x10
	streqb r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02071918: .word 0x03938700
	arm_func_end sub_02071784

	arm_func_start sub_0207191C
sub_0207191C: ; 0x0207191C
	mov r1, #0
	strb r1, [r2, #2]
	bx lr
	arm_func_end sub_0207191C

	arm_func_start sub_02071928
sub_02071928: ; 0x02071928
	ldr r1, [r2, #0x10]
	str r1, [r2, #0xc]
	bx lr
	arm_func_end sub_02071928

	arm_func_start sub_02071934
sub_02071934: ; 0x02071934
	ldrsb r1, [r0], #1
	ldr r3, [r2, #0x10]
	add r1, r3, r1
	str r1, [r2, #0x10]
	str r1, [r2, #0xc]
	bx lr
	arm_func_end sub_02071934

	arm_func_start sub_0207194C
sub_0207194C: ; 0x0207194C
	ldrb r1, [r0], #1
	str r1, [r2, #0x10]
	str r1, [r2, #0xc]
	bx lr
	arm_func_end sub_0207194C

	arm_func_start sub_0207195C
sub_0207195C: ; 0x0207195C
	ldrb r3, [r0]
	ldrb r1, [r0, #1]
	add r0, r0, #2
	add r1, r3, r1, lsl #8
	str r1, [r2, #0x10]
	str r1, [r2, #0xc]
	bx lr
	arm_func_end sub_0207195C

	arm_func_start sub_02071978
sub_02071978: ; 0x02071978
	ldrb r3, [r0]
	ldrb r1, [r0, #1]
	ldrb ip, [r0, #2]
	add r0, r0, #3
	add r1, r3, r1, lsl #8
	add r1, r1, ip, lsl #16
	str r1, [r2, #0x10]
	str r1, [r2, #0xc]
	bx lr
	arm_func_end sub_02071978

	arm_func_start sub_0207199C
sub_0207199C: ; 0x0207199C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r3
	mov r4, r2
	bl sub_02074A2C
	cmp r0, #0
	ldrgtb r0, [r5], #-1
	addle r5, r5, #1
	strgt r0, [r4, #0xc]
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0207199C

	arm_func_start sub_020719C8
sub_020719C8: ; 0x020719C8
	stmdb sp!, {r4, lr}
	ldr ip, [r2, #0x20]
	mov r4, r0
	cmp ip, #0
	bne _020719F4
	mov r1, #0
	mov r0, r3
	strb r1, [r2, #2]
	sub r4, r4, #1
	bl sub_02073A90
	b _02071A0C
_020719F4:
	ldrh r3, [r2, #0xa]
	mov r0, #1
	add r3, r3, #1
	strh r3, [r2, #0xa]
	strb r0, [r1, #3]
	ldr r4, [r2, #0x20]
_02071A0C:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020719C8

	arm_func_start sub_02071A14
sub_02071A14: ; 0x02071A14
	str r0, [r2, #0x20]
	bx lr
	arm_func_end sub_02071A14

	arm_func_start sub_02071A1C
sub_02071A1C: ; 0x02071A1C
	stmdb sp!, {r4, lr}
	ldrb r4, [r2, #6]
	mov r1, #0xc
	ldrb lr, [r0], #1
	smulbb r1, r4, r1
	add r3, r2, #0x24
	str r0, [r3, r1]
	add ip, r3, r1
	mov r1, #0
	str r1, [ip, #4]
	strb lr, [ip, #8]
	ldrb r3, [r2, #4]
	add r1, r4, #1
	strb r3, [ip, #9]
	strb r1, [r2, #6]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02071A1C

	arm_func_start sub_02071A5C
sub_02071A5C: ; 0x02071A5C
	ldrb ip, [r2, #6]
	add r3, r2, #0x24
	mov r1, #0xc
	sub ip, ip, #1
	mla r3, ip, r1, r3
	ldrb r1, [r3, #8]
	subs r1, r1, #1
	streqb ip, [r2, #6]
	bxeq lr
	str r0, [r3, #4]
	strb r1, [r3, #8]
	ldrb r0, [r3, #9]
	strb r0, [r2, #4]
	ldr r0, [r3]
	bx lr
	arm_func_end sub_02071A5C

	arm_func_start sub_02071A98
sub_02071A98: ; 0x02071A98
	ldrb ip, [r2, #6]
	add r3, r2, #0x24
	mov r1, #0xc
	sub ip, ip, #1
	mla r3, ip, r1, r3
	ldrb r1, [r3, #8]
	subs r1, r1, #1
	ldreq r0, [r3, #4]
	streqb ip, [r2, #6]
	bx lr
	arm_func_end sub_02071A98

	arm_func_start sub_02071AC0
sub_02071AC0: ; 0x02071AC0
	ldrb r1, [r0], #1
	strb r1, [r2, #4]
	bx lr
	arm_func_end sub_02071AC0

	arm_func_start sub_02071ACC
sub_02071ACC: ; 0x02071ACC
	ldrb r3, [r2, #4]
	ldrsb r1, [r0], #1
	add r1, r3, r1
	strb r1, [r2, #4]
	bx lr
	arm_func_end sub_02071ACC

	arm_func_start sub_02071AE0
sub_02071AE0: ; 0x02071AE0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, [r5, #0x48]
	ldrb r4, [r6]
	mov r0, r0, asr #0x10
	mul r1, r0, r4
	movs r1, r1, lsr #8
	ldr r0, _02071B1C ; =0x03938700
	moveq r1, #1
	bl _u32_div_f
	str r0, [r5, #0x44]
	strb r4, [r5, #0x17]
	add r0, r6, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02071B1C: .word 0x03938700
	arm_func_end sub_02071AE0

	arm_func_start sub_02071B20
sub_02071B20: ; 0x02071B20
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, [r5, #0x48]
	ldrb r4, [r6]
	mov r0, r0, asr #0x10
	mul r1, r0, r4
	movs r1, r1, lsr #8
	ldr r0, _02071B5C ; =0x03938700
	moveq r1, #1
	bl _u32_div_f
	str r0, [r5, #0x44]
	strb r4, [r5, #0x17]
	add r0, r6, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02071B5C: .word 0x03938700
	arm_func_end sub_02071B20

	arm_func_start sub_02071B60
sub_02071B60: ; 0x02071B60
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	mov r0, r3
	add r1, r1, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_02073B90
	add r0, r4, #2
	ldmia sp!, {r4, pc}
	arm_func_end sub_02071B60

	arm_func_start sub_02071B8C
sub_02071B8C: ; 0x02071B8C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r3, #0xe]
	ldrb r2, [r4]
	mov r0, r3
	and r1, r1, #0xff
	add r1, r1, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_02073B90
	add r0, r4, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02071B8C

	arm_func_start sub_02071BBC
sub_02071BBC: ; 0x02071BBC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r2, [r3, #0xe]
	ldrb r1, [r4]
	mov r0, r3
	bic r2, r2, #0xff
	add r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_02073B90
	add r0, r4, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02071BBC

	arm_func_start sub_02071BEC
sub_02071BEC: ; 0x02071BEC
	add r0, r0, #1
	bx lr
	arm_func_end sub_02071BEC

	arm_func_start sub_02071BF4
sub_02071BF4: ; 0x02071BF4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r3
	ldrb r1, [r6]
	mov r0, r4
	bl sub_02073BC8
	movs r2, r0
	bpl _02071C34
	ldrh r1, [r4, #0xe]
	ldr r0, [r5, #0x28]
	ldr r3, [r5, #0xa0]
	ldr ip, [r5, #0x9c]
	rsb r2, r2, r1, lsl #16
	mvn r1, #0xcb
	blx ip
_02071C34:
	add r0, r6, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02071BF4

	arm_func_start sub_02071C3C
sub_02071C3C: ; 0x02071C3C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r2, [r5]
	ldrb r0, [r5, #1]
	mov r4, r1
	add r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	movs r1, r0, lsr #0x10
	moveq r6, #0
	beq _02071C84
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _02071CC4 ; =DRIVER_WORK
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r6, r0, lsr #0x10
	moveq r6, #1
_02071C84:
	ldrb r0, [r5, #2]
	cmp r6, #0
	mov r1, r0, lsl #0x10
	str r1, [r4, #0x70]
	streq r1, [r4, #0x68]
	beq _02071CB8
	ldr r0, [r4, #0x68]
	subs r0, r1, r0
	moveq r6, #0
	beq _02071CB8
	mov r1, r6
	bl _s32_div_f
	str r0, [r4, #0x6c]
_02071CB8:
	strh r6, [r4, #0x74]
	add r0, r5, #3
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02071CC4: .word DRIVER_WORK
	arm_func_end sub_02071C3C

	arm_func_start sub_02071CC8
sub_02071CC8: ; 0x02071CC8
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r3, #0x64
	bl SoundEnvelopeParametersReset
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02071CC8

	arm_func_start sub_02071CE0
sub_02071CE0: ; 0x02071CE0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	add r0, r3, #0x64
	strb r1, [r3, #0x6c]
	bl SoundEnvelopeParametersCheckValidity
	add r0, r4, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02071CE0

	arm_func_start sub_02071D00
sub_02071D00: ; 0x02071D00
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	add r0, r3, #0x64
	strb r1, [r3, #0x6d]
	bl SoundEnvelopeParametersCheckValidity
	add r0, r4, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02071D00

	arm_func_start sub_02071D20
sub_02071D20: ; 0x02071D20
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	add r0, r3, #0x64
	strb r1, [r3, #0x70]
	bl SoundEnvelopeParametersCheckValidity
	add r0, r4, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02071D20

	arm_func_start sub_02071D40
sub_02071D40: ; 0x02071D40
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0xff
	strneb r0, [r3, #0x6e]
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	strneb r0, [r3, #0x6f]
	add r0, r3, #0x64
	bl SoundEnvelopeParametersCheckValidity
	add r0, r4, #2
	ldmia sp!, {r4, pc}
	arm_func_end sub_02071D40

	arm_func_start sub_02071D70
sub_02071D70: ; 0x02071D70
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	add r0, r3, #0x64
	strb r1, [r3, #0x71]
	bl SoundEnvelopeParametersCheckValidity
	add r0, r4, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02071D70

	arm_func_start sub_02071D90
sub_02071D90: ; 0x02071D90
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	add r0, r3, #0x64
	strb r1, [r3, #0x72]
	bl SoundEnvelopeParametersCheckValidity
	add r0, r4, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02071D90

	arm_func_start sub_02071DB0
sub_02071DB0: ; 0x02071DB0
	ldrb r1, [r0], #1
	strb r1, [r2, #5]
	bx lr
	arm_func_end sub_02071DB0

	arm_func_start sub_02071DBC
sub_02071DBC: ; 0x02071DBC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrsb r1, [r4]
	mov r0, r3
	bl sub_02073C5C
	add r0, r4, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02071DBC

	arm_func_start sub_02071DD8
sub_02071DD8: ; 0x02071DD8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	ldr r0, [r2, #0x54]
	cmp r1, #0x40
	ldrb r1, [r0, #4]
	orrhs r1, r1, #1
	strhsb r1, [r0, #4]
	bhs _02071E08
	bic r1, r1, #1
	strb r1, [r0, #4]
	bl sub_020747DC
_02071E08:
	add r0, r4, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02071DD8

	arm_func_start sub_02071E10
sub_02071E10: ; 0x02071E10
	ldrb r1, [r3, #4]
	orr r1, r1, #2
	strb r1, [r3, #4]
	bx lr
	arm_func_end sub_02071E10

	arm_func_start sub_02071E20
sub_02071E20: ; 0x02071E20
	ldrb r1, [r0], #1
	strb r1, [r3, #0x58]
	bx lr
	arm_func_end sub_02071E20

	arm_func_start sub_02071E2C
sub_02071E2C: ; 0x02071E2C
	add r0, r0, #2
	bx lr
	arm_func_end sub_02071E2C

	arm_func_start sub_02071E34
sub_02071E34: ; 0x02071E34
	stmdb sp!, {r4, lr}
	ldrsb r1, [r0]
	ldr ip, _02071EB0 ; =0x04000208
	mov r2, #0
	mov r1, r1, lsl #0x18
	mov r4, r1, asr #0x10
	strh r4, [r3, #0x54]
	ldr lr, [r3, #0xc4]
	ldr r1, [r3, #0x1c]
	ldrsh lr, [lr, #4]
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	add r1, r4, r1, asr #16
	add r1, lr, r1
	strh r1, [r3, #0x16]
	ldrh r4, [ip]
	strh r2, [ip]
	ldr r2, [r3, #0xb4]
	cmp r2, #0
	beq _02071E9C
_02071E84:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x10
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02071E84
_02071E9C:
	ldr r2, _02071EB0 ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh r4, [r2]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02071EB0: .word 0x04000208
	arm_func_end sub_02071E34

	arm_func_start sub_02071EB4
sub_02071EB4: ; 0x02071EB4
	stmdb sp!, {r4, lr}
	ldrsb r4, [r0]
	ldrsh r1, [r3, #0x54]
	ldr ip, _02071F38 ; =0x04000208
	mov r2, #0
	add r1, r1, r4, lsl #8
	mov r1, r1, lsl #0x10
	mov r4, r1, asr #0x10
	strh r4, [r3, #0x54]
	ldr lr, [r3, #0xc4]
	ldr r1, [r3, #0x1c]
	ldrsh lr, [lr, #4]
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	add r1, r4, r1, asr #16
	add r1, lr, r1
	strh r1, [r3, #0x16]
	ldrh r4, [ip]
	strh r2, [ip]
	ldr r2, [r3, #0xb4]
	cmp r2, #0
	beq _02071F24
_02071F0C:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x10
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02071F0C
_02071F24:
	ldr r2, _02071F38 ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh r4, [r2]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02071F38: .word 0x04000208
	arm_func_end sub_02071EB4

	arm_func_start sub_02071F3C
sub_02071F3C: ; 0x02071F3C
	stmdb sp!, {r4, lr}
	ldrsb r4, [r0]
	ldrsh r1, [r3, #0x54]
	ldr ip, _02071FC0 ; =0x04000208
	mov r2, #0
	add r1, r1, r4, lsl #2
	mov r1, r1, lsl #0x10
	mov r4, r1, asr #0x10
	strh r4, [r3, #0x54]
	ldr lr, [r3, #0xc4]
	ldr r1, [r3, #0x1c]
	ldrsh lr, [lr, #4]
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	add r1, r4, r1, asr #16
	add r1, lr, r1
	strh r1, [r3, #0x16]
	ldrh r4, [ip]
	strh r2, [ip]
	ldr r2, [r3, #0xb4]
	cmp r2, #0
	beq _02071FAC
_02071F94:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x10
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02071F94
_02071FAC:
	ldr r2, _02071FC0 ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh r4, [r2]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02071FC0: .word 0x04000208
	arm_func_end sub_02071F3C

	arm_func_start sub_02071FC4
sub_02071FC4: ; 0x02071FC4
	stmdb sp!, {r3, lr}
	ldrb ip, [r0]
	ldrb r1, [r0, #1]
	ldrsh lr, [r3, #0x54]
	ldr r2, _02072050 ; =0x04000208
	add r1, ip, r1, lsl #8
	add r1, lr, r1
	mov r1, r1, lsl #0x10
	mov lr, r1, asr #0x10
	strh lr, [r3, #0x54]
	ldr ip, [r3, #0xc4]
	ldr r1, [r3, #0x1c]
	ldrsh ip, [ip, #4]
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	add r1, lr, r1, asr #16
	add r1, ip, r1
	strh r1, [r3, #0x16]
	ldrh ip, [r2]
	mov r1, #0
	strh r1, [r2]
	ldr r2, [r3, #0xb4]
	cmp r2, #0
	beq _0207203C
_02072024:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x10
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02072024
_0207203C:
	ldr r2, _02072050 ; =0x04000208
	add r0, r0, #2
	ldrh r1, [r2]
	strh ip, [r2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02072050: .word 0x04000208
	arm_func_end sub_02071FC4

	arm_func_start sub_02072054
sub_02072054: ; 0x02072054
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r3
	ldrb r1, [r6, #4]
	ldrb r4, [r7]
	ldrb r0, [r7, #1]
	tst r1, #2
	ldrb r2, [r7, #2]
	add r0, r4, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	ldr r4, [r6, #0xc4]
	moveq r1, #0
	streq r1, [r6, #0x1c]
	ldr r1, [r6, #0x1c]
	mov r0, r2, lsl #0x18
	mov r1, r1, asr #0x10
	add r0, r1, r0, lsr #16
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r0, lsl #0x10
	str r1, [r6, #0x24]
	cmp r5, #0
	streq r1, [r6, #0x1c]
	beq _020720D4
	ldr r0, [r6, #0x1c]
	subs r0, r1, r0
	moveq r5, #0
	beq _020720D4
	mov r1, r5
	bl _s32_div_f
	str r0, [r6, #0x20]
_020720D4:
	strh r5, [r6, #0x28]
	ldr r0, [r6, #0x1c]
	ldrsh r1, [r6, #0x54]
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	ldrsh r2, [r4, #4]
	add r0, r1, r0, lsr #16
	ldr r1, _02072140 ; =0x04000208
	add r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r3, [r1]
	mov r0, #0
	strh r0, [r1]
	ldr r1, [r6, #0xb4]
	cmp r1, #0
	beq _0207212C
_02072114:
	ldrh r0, [r1, #6]
	orr r0, r0, #0x10
	strh r0, [r1, #6]
	ldr r1, [r1, #0x154]
	cmp r1, #0
	bne _02072114
_0207212C:
	ldr r2, _02072140 ; =0x04000208
	add r0, r7, #3
	ldrh r1, [r2]
	strh r3, [r2]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02072140: .word 0x04000208
	arm_func_end sub_02072054

	arm_func_start sub_02072144
sub_02072144: ; 0x02072144
	ldrb r1, [r0]
	ldrb ip, [r0, #1]
	add r0, r0, #2
	mov r2, r1
	cmp r1, ip
	movhi r2, ip
	movhi ip, r1
	strb r2, [r3, #0xc]
	strb ip, [r3, #0xd]
	bx lr
	arm_func_end sub_02072144

	arm_func_start sub_0207216C
sub_0207216C: ; 0x0207216C
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r0, r0, #2
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0xa]
	bx lr
	arm_func_end sub_0207216C

	arm_func_start sub_02072184
sub_02072184: ; 0x02072184
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	mov r0, r3
	add r1, r1, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl sub_02073C90
	add r0, r4, #2
	ldmia sp!, {r4, pc}
	arm_func_end sub_02072184

	arm_func_start sub_020721B0
sub_020721B0: ; 0x020721B0
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r0, r0, #2
	add r1, r1, r2, lsl #8
	strh r1, [r3, #0x56]
	bx lr
	arm_func_end sub_020721B0

	arm_func_start sub_020721C8
sub_020721C8: ; 0x020721C8
	ldrb r1, [r0], #1
	strb r1, [r3, #0x59]
	bx lr
	arm_func_end sub_020721C8

	arm_func_start sub_020721D4
sub_020721D4: ; 0x020721D4
	stmdb sp!, {r3, r4, r5, lr}
	ldrb r5, [r0]
	ldrb r4, [r0, #1]
	ldrb lr, [r0, #2]
	ldrb ip, [r0, #3]
	ldrb r2, [r0, #4]
	mov r1, #1
	add r4, r5, r4, lsl #8
	strb r1, [r3, #0x75]
	strb r1, [r3, #0x76]
	mov r1, r4, lsl #0x10
	strb r2, [r3, #0x77]
	mov r1, r1, asr #0x10
	str r1, [r3, #0x78]
	add r1, lr, ip, lsl #8
	strh r1, [r3, #0x7c]
	mov r1, #0
	strh r1, [r3, #0x7e]
	strh r1, [r3, #0x80]
	strb r1, [r3, #0x82]
	add r0, r0, #5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020721D4

	arm_func_start sub_0207222C
sub_0207222C: ; 0x0207222C
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0x7e]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	add r0, r0, #4
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0x80]
	bx lr
	arm_func_end sub_0207222C

	arm_func_start sub_02072254
sub_02072254: ; 0x02072254
	ldrb r1, [r0]
	add r0, r0, #1
	cmp r1, #2
	moveq r1, #1
	strb r1, [r3, #0x75]
	cmp r1, #0
	moveq r1, #0
	movne r1, #1
	strb r1, [r3, #0x76]
	bx lr
	arm_func_end sub_02072254

	arm_func_start sub_0207227C
sub_0207227C: ; 0x0207227C
	stmdb sp!, {r3, r4, r5, lr}
	ldrsb r4, [r0]
	mov r5, #0
	ldr r2, _02072308 ; =0x82061029
	mov r1, r4, lsl #0x10
	str r1, [r3, #0x34]
	str r1, [r3, #0x2c]
	strh r5, [r3, #0x38]
	ldr ip, [r3, #0xc4]
	ldrb r1, [r3, #0x50]
	ldrsb lr, [ip, #8]
	ldr ip, _0207230C ; =0x04000208
	smulbb r1, r4, r1
	mul r4, lr, r1
	smull r1, lr, r2, r4
	add lr, r4, lr
	mov r1, r4, lsr #0x1f
	add lr, r1, lr, asr #13
	strh lr, [r3, #0x18]
	ldrh r4, [ip]
	strh r5, [ip]
	ldr r2, [r3, #0xb4]
	cmp r2, #0
	beq _020722F4
_020722DC:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x20
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _020722DC
_020722F4:
	ldr r2, _0207230C ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh r4, [r2]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02072308: .word 0x82061029
_0207230C: .word 0x04000208
	arm_func_end sub_0207227C

	arm_func_start sub_02072310
sub_02072310: ; 0x02072310
	stmdb sp!, {r3, r4, r5, lr}
	ldrsb r2, [r0]
	ldr r1, [r3, #0x2c]
	add r4, r2, r1, asr #16
	cmp r4, #0x7f
	movgt r4, #0x7f
	bgt _02072334
	cmp r4, #0
	movlt r4, #0
_02072334:
	mov r1, r4, lsl #0x10
	str r1, [r3, #0x34]
	str r1, [r3, #0x2c]
	mov r5, #0
	strh r5, [r3, #0x38]
	ldrb r1, [r3, #0x50]
	ldr ip, [r3, #0xc4]
	ldr r2, _020723B8 ; =0x82061029
	mul r1, r4, r1
	ldrsb lr, [ip, #8]
	ldr ip, _020723BC ; =0x04000208
	mul r4, lr, r1
	smull r1, lr, r2, r4
	add lr, r4, lr
	mov r1, r4, lsr #0x1f
	add lr, r1, lr, asr #13
	strh lr, [r3, #0x18]
	ldrh r4, [ip]
	strh r5, [ip]
	ldr r2, [r3, #0xb4]
	cmp r2, #0
	beq _020723A4
_0207238C:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x20
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _0207238C
_020723A4:
	ldr r2, _020723BC ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh r4, [r2]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020723B8: .word 0x82061029
_020723BC: .word 0x04000208
	arm_func_end sub_02072310

	arm_func_start sub_020723C0
sub_020723C0: ; 0x020723C0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrsb r1, [r5, #2]
	ldrb r2, [r5]
	ldrb r0, [r5, #1]
	mov r4, r3
	mov r1, r1, lsl #0x10
	add r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	str r1, [r4, #0x34]
	movs r6, r0, lsr #0x10
	streq r1, [r4, #0x2c]
	beq _02072410
	ldr r0, [r4, #0x2c]
	subs r0, r1, r0
	moveq r6, #0
	beq _02072410
	mov r1, r6
	bl _s32_div_f
	str r0, [r4, #0x30]
_02072410:
	strh r6, [r4, #0x38]
	add r0, r5, #3
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020723C0

	arm_func_start sub_0207241C
sub_0207241C: ; 0x0207241C
	stmdb sp!, {r3, r4, r5, lr}
	ldrb r4, [r0]
	ldr r2, _020724A0 ; =0x82061029
	ldr lr, _020724A4 ; =0x04000208
	strb r4, [r3, #0x50]
	ldr r1, [r3, #0x2c]
	ldr ip, [r3, #0xc4]
	mov r1, r1, asr #0x10
	mul r4, r1, r4
	ldrsb r1, [ip, #8]
	mov ip, #0
	mul r4, r1, r4
	smull r1, r5, r2, r4
	add r5, r4, r5
	mov r1, r4, lsr #0x1f
	add r5, r1, r5, asr #13
	strh r5, [r3, #0x18]
	ldrh r4, [lr]
	strh ip, [lr]
	ldr r2, [r3, #0xb4]
	cmp r2, #0
	beq _0207248C
_02072474:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x20
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02072474
_0207248C:
	ldr r2, _020724A4 ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh r4, [r2]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020724A0: .word 0x82061029
_020724A4: .word 0x04000208
	arm_func_end sub_0207241C

	arm_func_start sub_020724A8
sub_020724A8: ; 0x020724A8
	stmdb sp!, {r3, r4, r5, lr}
	ldrb r5, [r0]
	ldrb r1, [r0, #1]
	ldrb r4, [r0, #2]
	ldrb lr, [r0, #3]
	ldrb ip, [r0, #4]
	mov r2, #1
	add r1, r5, r1, lsl #8
	mov r1, r1, lsl #0x10
	strb r2, [r3, #0x85]
	mov r2, #2
	strb r2, [r3, #0x86]
	strb ip, [r3, #0x87]
	mov r1, r1, asr #0x10
	str r1, [r3, #0x88]
	add r1, r4, lr, lsl #8
	strh r1, [r3, #0x8c]
	mov r1, #0
	strh r1, [r3, #0x8e]
	strh r1, [r3, #0x90]
	strb r1, [r3, #0x92]
	add r0, r0, #5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020724A8

	arm_func_start sub_02072504
sub_02072504: ; 0x02072504
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0x8e]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	add r0, r0, #4
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0x90]
	bx lr
	arm_func_end sub_02072504

	arm_func_start sub_0207252C
sub_0207252C: ; 0x0207252C
	ldrb r1, [r0]
	add r0, r0, #1
	cmp r1, #2
	moveq r1, #1
	strb r1, [r3, #0x85]
	cmp r1, #0
	moveq r1, #0
	movne r1, #2
	strb r1, [r3, #0x86]
	bx lr
	arm_func_end sub_0207252C

	arm_func_start sub_02072554
sub_02072554: ; 0x02072554
	stmdb sp!, {r3, lr}
	ldrb lr, [r0]
	mov ip, #0
	cmp lr, #0x7f
	movgt lr, #0x7f
	mov r1, lr, lsl #0x10
	str r1, [r3, #0x44]
	str r1, [r3, #0x3c]
	strh ip, [r3, #0x48]
	ldr r2, [r3, #0xc4]
	ldr r1, _020725D0 ; =0x04000208
	ldrsb r2, [r2, #7]
	sub r2, r2, #0x40
	add r2, lr, r2
	strh r2, [r3, #0x1a]
	ldrh lr, [r1]
	strh ip, [r1]
	ldr r2, [r3, #0xb4]
	cmp r2, #0
	beq _020725BC
_020725A4:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x40
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _020725A4
_020725BC:
	ldr r2, _020725D0 ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh lr, [r2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020725D0: .word 0x04000208
	arm_func_end sub_02072554

	arm_func_start sub_020725D4
sub_020725D4: ; 0x020725D4
	stmdb sp!, {r3, lr}
	ldrsb r2, [r0]
	ldr r1, [r3, #0x3c]
	add lr, r2, r1, asr #16
	cmp lr, #0x7f
	movgt lr, #0x7f
	bgt _020725F8
	cmp lr, #0
	movlt lr, #0
_020725F8:
	mov r1, lr, lsl #0x10
	str r1, [r3, #0x44]
	str r1, [r3, #0x3c]
	mov ip, #0
	strh ip, [r3, #0x48]
	ldr r2, [r3, #0xc4]
	ldr r1, _02072664 ; =0x04000208
	ldrsb r2, [r2, #7]
	sub r2, r2, #0x40
	add r2, lr, r2
	strh r2, [r3, #0x1a]
	ldrh lr, [r1]
	strh ip, [r1]
	ldr r2, [r3, #0xb4]
	cmp r2, #0
	beq _02072650
_02072638:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x40
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02072638
_02072650:
	ldr r2, _02072664 ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh lr, [r2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02072664: .word 0x04000208
	arm_func_end sub_020725D4

	arm_func_start sub_02072668
sub_02072668: ; 0x02072668
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrsb r1, [r5, #2]
	ldrb r2, [r5]
	ldrb r0, [r5, #1]
	mov r4, r3
	mov r1, r1, lsl #0x10
	add r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	str r1, [r4, #0x44]
	movs r6, r0, lsr #0x10
	streq r1, [r4, #0x3c]
	beq _020726B8
	ldr r0, [r4, #0x3c]
	subs r0, r1, r0
	moveq r6, #0
	beq _020726B8
	mov r1, r6
	bl _s32_div_f
	str r0, [r4, #0x40]
_020726B8:
	strh r6, [r4, #0x48]
	add r0, r5, #3
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02072668

	arm_func_start sub_020726C4
sub_020726C4: ; 0x020726C4
	stmdb sp!, {r3, r4, r5, lr}
	ldrb r5, [r0]
	ldrb r1, [r0, #1]
	ldrb r4, [r0, #2]
	ldrb lr, [r0, #3]
	ldrb ip, [r0, #4]
	mov r2, #1
	add r1, r5, r1, lsl #8
	mov r1, r1, lsl #0x10
	strb r2, [r3, #0x95]
	mov r2, #3
	strb r2, [r3, #0x96]
	strb ip, [r3, #0x97]
	mov r1, r1, asr #0x10
	str r1, [r3, #0x98]
	add r1, r4, lr, lsl #8
	strh r1, [r3, #0x9c]
	mov r1, #0
	strh r1, [r3, #0x9e]
	strh r1, [r3, #0xa0]
	strb r1, [r3, #0xa2]
	add r0, r0, #5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020726C4

	arm_func_start sub_02072720
sub_02072720: ; 0x02072720
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0x9e]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	add r0, r0, #4
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0xa0]
	bx lr
	arm_func_end sub_02072720

	arm_func_start sub_02072748
sub_02072748: ; 0x02072748
	ldrb r1, [r0]
	add r0, r0, #1
	cmp r1, #2
	moveq r1, #1
	strb r1, [r3, #0x95]
	cmp r1, #0
	moveq r1, #0
	movne r1, #3
	strb r1, [r3, #0x96]
	bx lr
	arm_func_end sub_02072748

	arm_func_start sub_02072770
sub_02072770: ; 0x02072770
	stmdb sp!, {r4, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb ip, [r3, #0x61]
	add r3, r3, #0x74
	add r1, r2, r1, lsl #8
	mov r1, r1, lsl #0x10
	ldrb r4, [r0, #2]
	ldrb lr, [r0, #3]
	ldrb r2, [r0, #4]
	add r3, r3, ip, lsl #4
	mov r1, r1, asr #0x10
	strb r2, [r3, #3]
	str r1, [r3, #4]
	add r1, r4, lr, lsl #8
	strh r1, [r3, #8]
	mov r1, #0
	strh r1, [r3, #0xa]
	strh r1, [r3, #0xc]
	strb r1, [r3, #0xe]
	add r0, r0, #5
	ldmia sp!, {r4, pc}
	arm_func_end sub_02072770

	arm_func_start sub_020727C8
sub_020727C8: ; 0x020727C8
	ldrb ip, [r3, #0x61]
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r3, r3, #0x74
	add r3, r3, ip, lsl #4
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0xa]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	add r0, r0, #4
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0xc]
	bx lr
	arm_func_end sub_020727C8

	arm_func_start sub_020727FC
sub_020727FC: ; 0x020727FC
	ldrb r1, [r3, #0x61]
	ldrb ip, [r0]
	add r2, r3, #0x74
	add r1, r2, r1, lsl #4
	ldrb r2, [r0, #1]
	cmp ip, #0xa
	addls pc, pc, ip, lsl #2
	b _02072930
_0207281C: ; jump table
	b _02072930 ; case 0
	b _02072848 ; case 1
	b _02072850 ; case 2
	b _02072858 ; case 3
	b _02072860 ; case 4
	b _02072868 ; case 5
	b _020728E0 ; case 6
	b _020728EC ; case 7
	b _020728FC ; case 8
	b _02072910 ; case 9
	b _02072924 ; case 10
_02072848:
	strb r2, [r3, #0x61]
	b _02072930
_02072850:
	strb r2, [r1, #1]
	b _02072930
_02072858:
	strb r2, [r1, #2]
	b _02072930
_02072860:
	strb r2, [r1, #3]
	b _02072930
_02072868:
	ldrb r3, [r1, #2]
	cmp r3, #4
	addls pc, pc, r3, lsl #2
	b _020728CC
_02072878: ; jump table
	b _020728CC ; case 0
	b _0207288C ; case 1
	b _0207289C ; case 2
	b _020728AC ; case 3
	b _020728BC ; case 4
_0207288C:
	mov r3, #0xa
	mul r3, r2, r3
	mov r2, r3
	b _020728D8
_0207289C:
	mvn r3, #0x13
	mul r3, r2, r3
	mov r2, r3
	b _020728D8
_020728AC:
	mov r3, #0x14
	mul r3, r2, r3
	mov r2, r3
	b _020728D8
_020728BC:
	mov r3, #0xa
	mul r3, r2, r3
	mov r2, r3
	b _020728D8
_020728CC:
	mov r3, #0x14
	mul r3, r2, r3
	mov r2, r3
_020728D8:
	str r2, [r1, #4]
	b _02072930
_020728E0:
	add r2, r2, r2, lsl #2
	strh r2, [r1, #8]
	b _02072930
_020728EC:
	mov r3, #0x14
	mul r3, r2, r3
	strh r3, [r1, #0xa]
	b _02072930
_020728FC:
	ldrh r3, [r1, #0xa]
	and r3, r3, #0xff00
	orr r2, r3, r2
	strh r2, [r1, #0xa]
	b _02072930
_02072910:
	ldrh r3, [r1, #0xa]
	and r3, r3, #0xff
	orr r2, r3, r2, lsl #8
	strh r2, [r1, #0xa]
	b _02072930
_02072924:
	mov r3, #0x14
	mul r3, r2, r3
	strh r3, [r1, #0xc]
_02072930:
	add r0, r0, #2
	bx lr
	arm_func_end sub_020727FC

	arm_func_start sub_02072938
sub_02072938: ; 0x02072938
	stmdb sp!, {r3, lr}
	ldrb ip, [r0, #1]
	ldrb r2, [r0]
	ldrb lr, [r0, #2]
	add r1, r3, #0x74
	cmp ip, #2
	strb r2, [r3, #0x61]
	add r1, r1, r2, lsl #4
	moveq ip, #1
	strb ip, [r1, #1]
	strb lr, [r1, #2]
	add r0, r0, #3
	ldmia sp!, {r3, pc}
	arm_func_end sub_02072938

	arm_func_start sub_0207296C
sub_0207296C: ; 0x0207296C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r2, [r4]
	mov ip, r1
	mov r1, #8
	strb r2, [ip, #0x16]
	ldr r0, [ip, #0x28]
	ldr r3, [ip, #0xa0]
	ldr ip, [ip, #0x9c]
	blx ip
	add r0, r4, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_0207296C

	arm_func_start sub_0207299C
sub_0207299C: ; 0x0207299C
	add r0, r0, #2
	bx lr
	arm_func_end sub_0207299C

	arm_func_start sub_020729A4
sub_020729A4: ; 0x020729A4
	ldr r0, _020729B4 ; =_022B9584
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_020729B4: .word _022B9584
	arm_func_end sub_020729A4

	arm_func_start sub_020729B8
sub_020729B8: ; 0x020729B8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr sb, _02072BB4 ; =_022B9584
	ldr r8, [sb]
	ldrb r6, [r8, #0x86]
	cmp r6, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r5, [r8, #0x85]
	mov r1, #0
	cmp r6, #0
	str r1, [sp]
	beq _02072B98
	mov fp, #3
	mov r1, #2
	mov r2, r1
	mov r3, fp
	mov ip, r1
	mov lr, fp
	mov r4, fp
_02072A04:
	ldrb sl, [r8, #0x88]
	add r7, r8, r5
	add r5, r5, #1
	sub r6, r6, #1
	and r5, r5, #0xff
	cmp r5, #0x80
	moveq r5, #0
	ldrb r7, [r7, #4]
	and r6, r6, #0xff
	cmp sl, #0
	bne _02072B28
	tst r7, #0x80
	bne _02072A4C
	add sl, sl, #1
	strb sl, [r8, #0x88]
	ldr r8, [sb]
	strb r7, [r8, #0x8c]
	b _02072B30
_02072A4C:
	and sl, r7, #0xf0
	strb sl, [r8, #0x8a]
	and r8, r7, #0xf
	ldr r7, [sb]
	strb r8, [r7, #0x8b]
	ldr r7, [sb]
	ldrb r8, [r7, #0x8a]
	cmp r8, #0xc0
	bgt _02072AA8
	bge _02072AF8
	cmp r8, #0x90
	bgt _02072A8C
	bge _02072AE0
	cmp r8, #0x80
	beq _02072AD8
	b _02072B1C
_02072A8C:
	cmp r8, #0xa0
	bgt _02072A9C
	beq _02072AE8
	b _02072B1C
_02072A9C:
	cmp r8, #0xb0
	beq _02072AF0
	b _02072B1C
_02072AA8:
	cmp r8, #0xe0
	bgt _02072AC0
	bge _02072B08
	cmp r8, #0xd0
	beq _02072B00
	b _02072B1C
_02072AC0:
	cmp r8, #0xf0
	bgt _02072AD0
	beq _02072B10
	b _02072B1C
_02072AD0:
	cmp r8, #0xff
	b _02072B1C
_02072AD8:
	strb r4, [r7, #0x87]
	b _02072B30
_02072AE0:
	strb lr, [r7, #0x87]
	b _02072B30
_02072AE8:
	strb ip, [r7, #0x87]
	b _02072B30
_02072AF0:
	strb r3, [r7, #0x87]
	b _02072B30
_02072AF8:
	strb r2, [r7, #0x87]
	b _02072B30
_02072B00:
	strb r1, [r7, #0x87]
	b _02072B30
_02072B08:
	strb fp, [r7, #0x87]
	b _02072B30
_02072B10:
	mov r8, #3
	strb r8, [r7, #0x87]
	b _02072B30
_02072B1C:
	mov r8, #0
	strb r8, [r7, #0x87]
	b _02072B30
_02072B28:
	add r8, r8, sl
	strb r7, [r8, #0x8b]
_02072B30:
	ldr r7, [sb]
	ldrb r8, [r7, #0x88]
	add r8, r8, #1
	strb r8, [r7, #0x88]
	ldr r8, [sb]
	ldrb sl, [r8, #0x88]
	ldrb r7, [r8, #0x87]
	cmp sl, r7
	bne _02072B90
	mov r2, #0
	ldr r1, _02072BB4 ; =_022B9584
	strb r2, [r8, #0x88]
	ldr r3, [r1]
	mov r1, #1
	str r1, [sp]
	ldrb r2, [r3, #0x8a]
	ldrb r1, [r3, #0x8b]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #0x8c]
	ldrb r1, [r3, #0x8d]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	b _02072B98
_02072B90:
	cmp r6, #0
	bne _02072A04
_02072B98:
	ldr r1, _02072BB4 ; =_022B9584
	ldr r0, [sp]
	ldr r2, [r1]
	strb r6, [r2, #0x86]
	ldr r1, [r1]
	strb r5, [r1, #0x85]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02072BB4: .word _022B9584
	arm_func_end sub_020729B8

	arm_func_start sub_02072BB8
sub_02072BB8: ; 0x02072BB8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r0, _02072D94 ; =_022B9584
	ldr r0, [r0]
	ldr r4, [r0]
	cmp r4, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #8
	bl sub_020729B8
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add sb, r4, #0x10
	mov r6, #0
	ldr r4, _02072D98 ; =_020B0D50
	add r7, sp, #0
	mov r5, #1
	mov r8, r6
	mov fp, #0xc8
_02072C08:
	ldrb r1, [sp, #9]
	ldrb r0, [sp, #8]
	mla sl, r1, fp, sb
	cmp r0, #0xc0
	bgt _02072C4C
	bge _02072D4C
	cmp r0, #0x90
	bgt _02072C38
	bge _02072CC0
	cmp r0, #0x80
	beq _02072C8C
	b _02072D7C
_02072C38:
	cmp r0, #0xa0
	ble _02072D7C
	cmp r0, #0xb0
	beq _02072D2C
	b _02072D7C
_02072C4C:
	cmp r0, #0xf0
	bgt _02072C6C
	bge _02072D7C
	cmp r0, #0xd0
	ble _02072D7C
	cmp r0, #0xe0
	beq _02072D5C
	b _02072D7C
_02072C6C:
	cmp r0, #0xf7
	ble _02072D7C
	cmp r0, #0xff
	bgt _02072D7C
	cmp r0, #0xfe
	blt _02072D7C
	cmpne r0, #0xff
	b _02072D7C
_02072C8C:
	ldrb r1, [sp, #0xa]
	ldrb r0, [sp, #0xb]
	str r8, [sp, #4]
	strb r1, [sp, #2]
	strb r0, [sp, #3]
	strb r8, [sp]
	ldrb r0, [sl, #4]
	tst r0, #1
	bne _02072D7C
	mov r0, sl
	mov r1, r7
	bl sub_02073D68
	b _02072D7C
_02072CC0:
	ldrb r0, [sp, #0xb]
	ldrb r1, [sp, #0xa]
	str r6, [sp, #4]
	strb r0, [sp, #3]
	strb r1, [sp, #2]
	tst r0, #0xff
	beq _02072D0C
	mov r0, sl
	mov r1, r7
	strb r5, [sp]
	bl sub_02073EA0
	mov r0, sl
	mov r1, r7
	bl sub_02073CD8
	movs r1, r0
	beq _02072D7C
	mov r0, sl
	bl sub_02073EDC
	b _02072D7C
_02072D0C:
	strb r6, [sp]
	ldrb r0, [sl, #4]
	tst r0, #1
	bne _02072D7C
	mov r0, sl
	mov r1, r7
	bl sub_02073D68
	b _02072D7C
_02072D2C:
	ldrb r0, [sp, #0xa]
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #0
	beq _02072D7C
	ldrb r1, [sp, #0xb]
	mov r0, sl
	blx r2
	b _02072D7C
_02072D4C:
	ldrb r1, [sp, #0xa]
	mov r0, sl
	bl sub_02073BC8
	b _02072D7C
_02072D5C:
	ldrb r2, [sp, #0xa]
	ldrb r1, [sp, #0xb]
	mov r0, sl
	add r1, r2, r1, lsl #7
	sub r1, r1, #0x2000
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl sub_02073C90
_02072D7C:
	add r0, sp, #8
	bl sub_020729B8
	cmp r0, #0
	bne _02072C08
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02072D94: .word _022B9584
_02072D98: .word _020B0D50
	arm_func_end sub_02072BB8

	arm_func_start sub_02072D9C
sub_02072D9C: ; 0x02072D9C
	ldrh r2, [r0, #0xe]
	ldr ip, _02072DB8 ; =sub_02073B90
	and r2, r2, #0xff
	add r1, r2, r1, lsl #8
	strh r1, [r0, #0xe]
	ldrh r1, [r0, #0xe]
	bx ip
	.align 2, 0
_02072DB8: .word sub_02073B90
	arm_func_end sub_02072D9C

	arm_func_start sub_02072DBC
sub_02072DBC: ; 0x02072DBC
	ldrh r2, [r0, #0xe]
	ldr ip, _02072DD8 ; =sub_02073B90
	bic r2, r2, #0xff
	add r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bx ip
	.align 2, 0
_02072DD8: .word sub_02073B90
	arm_func_end sub_02072DBC

	arm_func_start sub_02072DDC
sub_02072DDC: ; 0x02072DDC
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	ldr ip, _02072DF0 ; =sub_02073C5C
	strb r1, [r0, #0x51]
	bx ip
	.align 2, 0
_02072DF0: .word sub_02073C5C
	arm_func_end sub_02072DDC

	arm_func_start sub_02072DF4
sub_02072DF4: ; 0x02072DF4
	mov r2, #0xa
	mul r2, r1, r2
	strh r2, [r0, #0x56]
	bx lr
	arm_func_end sub_02072DF4

	arm_func_start sub_02072E04
sub_02072E04: ; 0x02072E04
	stmdb sp!, {r4, lr}
	mov r2, r1, lsl #0x10
	str r2, [r0, #0x34]
	str r2, [r0, #0x2c]
	mov r4, #0
	strh r4, [r0, #0x38]
	ldrb r3, [r0, #0x50]
	ldr lr, [r0, #0xc4]
	ldr r2, _02072E88 ; =0x82061029
	mul ip, r1, r3
	ldrsb r1, [lr, #8]
	ldr r3, _02072E8C ; =0x04000208
	mul ip, r1, ip
	smull r1, lr, r2, ip
	add lr, ip, lr
	mov r1, ip, lsr #0x1f
	add lr, r1, lr, asr #13
	strh lr, [r0, #0x18]
	ldrh r2, [r3]
	strh r4, [r3]
	ldr r1, [r0, #0xb4]
	cmp r1, #0
	beq _02072E78
_02072E60:
	ldrh r0, [r1, #6]
	orr r0, r0, #0x20
	strh r0, [r1, #6]
	ldr r1, [r1, #0x154]
	cmp r1, #0
	bne _02072E60
_02072E78:
	ldr r1, _02072E8C ; =0x04000208
	ldrh r0, [r1]
	strh r2, [r1]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02072E88: .word 0x82061029
_02072E8C: .word 0x04000208
	arm_func_end sub_02072E04

	arm_func_start sub_02072E90
sub_02072E90: ; 0x02072E90
	mov r1, r1, lsl #0x10
	str r1, [r0, #0x44]
	str r1, [r0, #0x3c]
	mov r2, #0
	ldr r1, _02072EE4 ; =0x04000208
	strh r2, [r0, #0x48]
	ldrh r3, [r1]
	strh r2, [r1]
	ldr r1, [r0, #0xb4]
	cmp r1, #0
	beq _02072ED4
_02072EBC:
	ldrh r0, [r1, #6]
	orr r0, r0, #0x40
	strh r0, [r1, #6]
	ldr r1, [r1, #0x154]
	cmp r1, #0
	bne _02072EBC
_02072ED4:
	ldr r1, _02072EE4 ; =0x04000208
	ldrh r0, [r1]
	strh r3, [r1]
	bx lr
	.align 2, 0
_02072EE4: .word 0x04000208
	arm_func_end sub_02072E90

	arm_func_start sub_02072EE8
sub_02072EE8: ; 0x02072EE8
	ldr r2, _02072F30 ; =0x04000208
	strb r1, [r0, #0x50]
	ldrh r3, [r2]
	mov r1, #0
	strh r1, [r2]
	ldr r1, [r0, #0xb4]
	cmp r1, #0
	beq _02072F20
_02072F08:
	ldrh r0, [r1, #6]
	orr r0, r0, #0x20
	strh r0, [r1, #6]
	ldr r1, [r1, #0x154]
	cmp r1, #0
	bne _02072F08
_02072F20:
	ldr r1, _02072F30 ; =0x04000208
	ldrh r0, [r1]
	strh r3, [r1]
	bx lr
	.align 2, 0
_02072F30: .word 0x04000208
	arm_func_end sub_02072EE8

	arm_func_start sub_02072F34
sub_02072F34: ; 0x02072F34
	strb r1, [r0, #0x58]
	bx lr
	arm_func_end sub_02072F34

	arm_func_start sub_02072F3C
sub_02072F3C: ; 0x02072F3C
	stmdb sp!, {r3, lr}
	cmp r1, #0x40
	ldrb r1, [r0, #4]
	orrhs r1, r1, #1
	strhsb r1, [r0, #4]
	ldmhsia sp!, {r3, pc}
	bic r1, r1, #1
	strb r1, [r0, #4]
	bl sub_020747DC
	ldmia sp!, {r3, pc}
	arm_func_end sub_02072F3C

	arm_func_start sub_02072F64
sub_02072F64: ; 0x02072F64
	bx lr
	arm_func_end sub_02072F64

	arm_func_start sub_02072F68
sub_02072F68: ; 0x02072F68
	bx lr
	arm_func_end sub_02072F68

	arm_func_start sub_02072F6C
sub_02072F6C: ; 0x02072F6C
	bx lr
	arm_func_end sub_02072F6C

	arm_func_start sub_02072F70
sub_02072F70: ; 0x02072F70
	bx lr
	arm_func_end sub_02072F70

	arm_func_start sub_02072F74
sub_02072F74: ; 0x02072F74
	strb r1, [r0, #0x5c]
	mov r1, #1
	strb r1, [r0, #0x60]
	bx lr
	arm_func_end sub_02072F74

	arm_func_start sub_02072F84
sub_02072F84: ; 0x02072F84
	strb r1, [r0, #0x5a]
	mov r1, #0
	strb r1, [r0, #0x60]
	bx lr
	arm_func_end sub_02072F84

	arm_func_start sub_02072F94
sub_02072F94: ; 0x02072F94
	strb r1, [r0, #0x5b]
	mov r1, #0
	strb r1, [r0, #0x60]
	bx lr
	arm_func_end sub_02072F94

	arm_func_start sub_02072FA4
sub_02072FA4: ; 0x02072FA4
	bx lr
	arm_func_end sub_02072FA4

	arm_func_start sub_02072FA8
sub_02072FA8: ; 0x02072FA8
	bx lr
	arm_func_end sub_02072FA8

	arm_func_start sub_02072FAC
sub_02072FAC: ; 0x02072FAC
	stmdb sp!, {r3, lr}
	ldr r0, _02072FD4 ; =_022B9584
	ldr r0, [r0]
	ldr r0, [r0]
	bl sub_02073480
	ldr r0, _02072FD4 ; =_022B9584
	ldr r0, [r0]
	ldr r0, [r0]
	bl sub_020733BC
	ldmia sp!, {r3, pc}
	.align 2, 0
_02072FD4: .word _022B9584
	arm_func_end sub_02072FAC

	arm_func_start sub_02072FD8
sub_02072FD8: ; 0x02072FD8
	ldr r0, _02072FF4 ; =_022B9584
	mov r1, #0
	ldr r0, [r0]
	ldr ip, _02072FF8 ; =sub_0207384C
	mov r2, r1
	ldr r0, [r0]
	bx ip
	.align 2, 0
_02072FF4: .word _022B9584
_02072FF8: .word sub_0207384C
	arm_func_end sub_02072FD8

	arm_func_start sub_02072FFC
sub_02072FFC: ; 0x02072FFC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl sub_02073A90
	ldr r1, _02073074 ; =0x04000208
	mov r0, #0
	ldrh r5, [r1]
	strh r0, [r1]
	ldr lr, [r4, #0xb8]
	cmp lr, #0
	ldreqh r0, [r1]
	streqh r5, [r1]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov ip, lr
	mvn r1, #0
	mov r3, r0
_02073038:
	str r1, [lr, #4]
	strb r3, [ip, #1]
	ldr r0, [ip, #8]
	cmp r0, #0
	movne ip, r0
	bne _02073038
	ldr r0, _02073078 ; =DRIVER_WORK
	ldr r1, _02073074 ; =0x04000208
	ldr r2, [r0, #0x650]
	str r2, [ip, #8]
	str lr, [r0, #0x650]
	str r3, [r4, #0xb8]
	ldrh r0, [r1]
	strh r5, [r1]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02073074: .word 0x04000208
_02073078: .word DRIVER_WORK
	arm_func_end sub_02072FFC

	arm_func_start sub_0207307C
sub_0207307C: ; 0x0207307C
	mov r1, #0
	strb r1, [r0, #7]
	bx lr
	arm_func_end sub_0207307C

	arm_func_start sub_02073088
sub_02073088: ; 0x02073088
	mov r1, #1
	strb r1, [r0, #7]
	bx lr
	arm_func_end sub_02073088

	arm_func_start sub_02073094
sub_02073094: ; 0x02073094
	ldr ip, _020730A4 ; =SoundEnvelopeParametersCheckValidity
	strb r1, [r0, #0x72]
	add r0, r0, #0x64
	bx ip
	.align 2, 0
_020730A4: .word SoundEnvelopeParametersCheckValidity
	arm_func_end sub_02073094

	arm_func_start sub_020730A8
sub_020730A8: ; 0x020730A8
	ldr ip, _020730B8 ; =SoundEnvelopeParametersCheckValidity
	strb r1, [r0, #0x6d]
	add r0, r0, #0x64
	bx ip
	.align 2, 0
_020730B8: .word SoundEnvelopeParametersCheckValidity
	arm_func_end sub_020730A8

	arm_func_start sub_020730BC
sub_020730BC: ; 0x020730BC
	ldr ip, _020730CC ; =SoundEnvelopeParametersCheckValidity
	strb r1, [r0, #0x6e]
	add r0, r0, #0x64
	bx ip
	.align 2, 0
_020730CC: .word SoundEnvelopeParametersCheckValidity
	arm_func_end sub_020730BC

	arm_func_start sub_020730D0
sub_020730D0: ; 0x020730D0
	ldr ip, _020730E0 ; =SoundEnvelopeParametersCheckValidity
	strb r1, [r0, #0x71]
	add r0, r0, #0x64
	bx ip
	.align 2, 0
_020730E0: .word SoundEnvelopeParametersCheckValidity
	arm_func_end sub_020730D0

	arm_func_start sub_020730E4
sub_020730E4: ; 0x020730E4
	ldrb r2, [r0, #0x61]
	add r1, r1, r1, lsl #2
	add r0, r0, r2, lsl #4
	strh r1, [r0, #0x7c]
	bx lr
	arm_func_end sub_020730E4

	arm_func_start sub_020730F8
sub_020730F8: ; 0x020730F8
	and r3, r1, #2
	add r2, r0, #0x74
	strb r3, [r0, #0x61]
	add r2, r2, r3, lsl #4
	mov r0, r1, asr #2
	strb r0, [r2, #1]
	add r0, r3, #1
	strb r0, [r2, #2]
	bx lr
	arm_func_end sub_020730F8

	arm_func_start sub_0207311C
sub_0207311C: ; 0x0207311C
	ldrb r2, [r0, #0x61]
	add r0, r0, r2, lsl #4
	strb r1, [r0, #0x77]
	bx lr
	arm_func_end sub_0207311C

	arm_func_start sub_0207312C
sub_0207312C: ; 0x0207312C
	ldrb r2, [r0, #0x61]
	add r0, r0, #0x74
	add r0, r0, r2, lsl #4
	ldrb r2, [r0, #2]
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _020731AC
_02073148: ; jump table
	b _020731AC ; case 0
	b _0207315C ; case 1
	b _02073170 ; case 2
	b _02073184 ; case 3
	b _02073198 ; case 4
_0207315C:
	mov r2, #0xa
	mul r2, r1, r2
	mov r1, r2, lsl #0x10
	mov r1, r1, asr #0x10
	b _020731BC
_02073170:
	mvn r2, #0x13
	mul r2, r1, r2
	mov r1, r2, lsl #0x10
	mov r1, r1, asr #0x10
	b _020731BC
_02073184:
	mov r2, #0x14
	mul r2, r1, r2
	mov r1, r2, lsl #0x10
	mov r1, r1, asr #0x10
	b _020731BC
_02073198:
	mov r2, #0xa
	mul r2, r1, r2
	mov r1, r2, lsl #0x10
	mov r1, r1, asr #0x10
	b _020731BC
_020731AC:
	mov r2, #0x14
	mul r2, r1, r2
	mov r1, r2, lsl #0x10
	mov r1, r1, asr #0x10
_020731BC:
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_0207312C

	arm_func_start sub_020731C4
sub_020731C4: ; 0x020731C4
	mov r2, #0x14
	mul r2, r1, r2
	ldrb r1, [r0, #0x61]
	add r0, r0, r1, lsl #4
	strh r2, [r0, #0x7e]
	bx lr
	arm_func_end sub_020731C4

	arm_func_start sub_020731DC
sub_020731DC: ; 0x020731DC
	mov r2, #0x14
	mul r2, r1, r2
	ldrb r1, [r0, #0x61]
	add r0, r0, r1, lsl #4
	strh r2, [r0, #0x80]
	bx lr
	arm_func_end sub_020731DC

	arm_func_start sub_020731F4
sub_020731F4: ; 0x020731F4
	strb r1, [r0, #0x59]
	bx lr
	arm_func_end sub_020731F4

	arm_func_start sub_020731FC
sub_020731FC: ; 0x020731FC
	bx lr
	arm_func_end sub_020731FC

	arm_func_start sub_02073200
sub_02073200: ; 0x02073200
	bx lr
	arm_func_end sub_02073200

	arm_func_start sub_02073204
sub_02073204: ; 0x02073204
	bx lr
	arm_func_end sub_02073204

	arm_func_start sub_02073208
sub_02073208: ; 0x02073208
	stmdb sp!, {r4, lr}
	ldr r1, _02073274 ; =DRIVER_WORK
	mov r2, #1
	ldrsb r3, [r1, #0x41]
	mov r4, #0
	mov r1, #0x7f
	strb r3, [r0, #2]
	strb r2, [r0, #3]
	strh r4, [r0, #4]
	strb r1, [r0, #6]
	mov r1, #0x40
	strb r1, [r0, #7]
	ldrb ip, [r0, #2]
	ldrsb r1, [r0, #6]
	ldr r2, _02073278 ; =0x81020409
	ldr r3, _0207327C ; =_022B7A30
	smulbb ip, ip, r1
	smull r1, lr, r2, ip
	add lr, ip, lr
	mov r1, ip, lsr #0x1f
	add lr, r1, lr, asr #6
	strb lr, [r0, #8]
	strb r4, [r0, #9]
	strb r4, [r0, #0xa]
	ldrh r1, [r3, #0x2e]
	strb r1, [r0, #0xb]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02073274: .word DRIVER_WORK
_02073278: .word 0x81020409
_0207327C: .word _022B7A30
	arm_func_end sub_02073208

	arm_func_start sub_02073280
sub_02073280: ; 0x02073280
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0xc8
	mul r0, r5, r0
	mov r2, r1
	add r0, r0, #0x10
	mov r1, #0x10
	bl sub_0206C9BC
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, #0
	strb r1, [r4]
	strb r5, [r4, #1]
	str r1, [r4, #0xc]
	bl sub_02073208
	cmp r5, #0
	add r1, r4, #0x10
	mov r2, #0
	ble _02073300
	mov r0, r2
_020732D4:
	str r0, [r1]
	strb r2, [r1, #5]
	str r0, [r1, #0xb4]
	str r0, [r1, #0xb8]
	str r0, [r1, #0xbc]
	str r0, [r1, #0xc0]
	add r2, r2, #1
	str r4, [r1, #0xc4]
	cmp r2, r5
	add r1, r1, #0xc8
	blt _020732D4
_02073300:
	ldr r1, _02073348 ; =0x04000208
	mov r0, #0
	ldrh r3, [r1]
	ldr r2, _0207334C ; =_022B7988
	strh r0, [r1]
	ldr r0, [r2]
	cmp r0, #0
	beq _02073330
_02073320:
	add r2, r0, #0xc
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02073320
_02073330:
	ldr r1, _02073348 ; =0x04000208
	str r4, [r2]
	ldrh r0, [r1]
	mov r0, r4
	strh r3, [r1]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02073348: .word 0x04000208
_0207334C: .word _022B7988
	arm_func_end sub_02073280

	arm_func_start sub_02073350
sub_02073350: ; 0x02073350
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_02073480
	ldr r2, _020733B4 ; =0x04000208
	mov r0, r5
	ldrh r4, [r2]
	mov r1, #0
	strh r1, [r2]
	bl sub_020733BC
	ldr r1, _020733B8 ; =_022B7988
	b _02073380
_0207337C:
	add r1, r0, #0xc
_02073380:
	ldr r0, [r1]
	cmp r0, #0
	cmpne r0, r5
	bne _0207337C
	cmp r0, r5
	ldreq r0, [r5, #0xc]
	ldr r2, _020733B4 ; =0x04000208
	streq r0, [r1]
	ldrh r1, [r2]
	mov r0, r5
	strh r4, [r2]
	bl sub_0206CC14
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020733B4: .word 0x04000208
_020733B8: .word _022B7988
	arm_func_end sub_02073350

	arm_func_start sub_020733BC
sub_020733BC: ; 0x020733BC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldrb r3, [r0, #1]
	add r1, r0, #0x10
	mov r2, #0
	cmp r3, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r7, _02073450 ; =0x04000208
	ldr ip, _02073454 ; =DRIVER_WORK
	mvn r5, #0
	mov r4, r2
	mov r6, r2
_020733E8:
	ldrh r3, [r7]
	strh r6, [r7]
	ldr sb, [r1, #0xb8]
	cmp sb, #0
	ldreqh lr, [r7]
	streqh r3, [r7]
	beq _02073438
	mov r8, sb
_02073408:
	str r5, [sb, #4]
	strb r4, [r8, #1]
	ldr lr, [r8, #8]
	cmp lr, #0
	movne r8, lr
	bne _02073408
	ldr lr, [ip, #0x650]
	str lr, [r8, #8]
	str sb, [ip, #0x650]
	str r4, [r1, #0xb8]
	ldrh lr, [r7]
	strh r3, [r7]
_02073438:
	ldrb r3, [r0, #1]
	add r2, r2, #1
	add r1, r1, #0xc8
	cmp r2, r3
	blt _020733E8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02073450: .word 0x04000208
_02073454: .word DRIVER_WORK
	arm_func_end sub_020733BC

	arm_func_start sub_02073458
sub_02073458: ; 0x02073458
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_02073208
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_0207384C
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02073458

	arm_func_start sub_02073480
sub_02073480: ; 0x02073480
	stmdb sp!, {r3, r4, r5, lr}
	ldrb r5, [r0, #1]
	add r4, r0, #0x10
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_02073494:
	mov r0, r4
	bl sub_02073A90
	subs r5, r5, #1
	add r4, r4, #0xc8
	bne _02073494
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02073480

	arm_func_start sub_020734AC
sub_020734AC: ; 0x020734AC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _02073500 ; =0x04000208
	mov r2, #0
	ldrh r6, [r3]
	mov r7, r1
	add r4, r0, #0x10
	strh r2, [r3]
	strb r7, [r0, #9]
	ldrb r5, [r0, #1]
	cmp r5, #0
	beq _020734F0
_020734D8:
	mov r0, r4
	mov r1, r7
	bl sub_02073B14
	subs r5, r5, #1
	add r4, r4, #0xc8
	bne _020734D8
_020734F0:
	ldr r1, _02073500 ; =0x04000208
	ldrh r0, [r1]
	strh r6, [r1]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02073500: .word 0x04000208
	arm_func_end sub_020734AC

	arm_func_start sub_02073504
sub_02073504: ; 0x02073504
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _02073568 ; =0x04000208
	ldrb r6, [r0, #1]
	ldrh r4, [r2]
	mov r1, #0
	cmp r6, #0
	strh r1, [r2]
	add r5, r0, #0x10
	beq _02073558
_02073528:
	ldr r7, [r5, #0xb8]
	cmp r7, #0
	beq _0207354C
_02073534:
	mov r0, r5
	mov r1, r7
	bl sub_02073EDC
	ldr r7, [r7, #8]
	cmp r7, #0
	bne _02073534
_0207354C:
	subs r6, r6, #1
	add r5, r5, #0xc8
	bne _02073528
_02073558:
	ldr r1, _02073568 ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02073568: .word 0x04000208
	arm_func_end sub_02073504

	arm_func_start sub_0207356C
sub_0207356C: ; 0x0207356C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _02073644 ; =_022B7370
	ldr r4, _02073648 ; =0x81020409
	ldrsb r5, [r3, r1]
	add r3, r0, #0x10
	mov ip, #0
	strb r5, [r0, #2]
	strb r1, [r0, #3]
	ldrb r5, [r0, #2]
	ldrsb r1, [r0, #6]
	smulbb r5, r5, r1
	smull r1, r6, r4, r5
	add r6, r5, r6
	mov r1, r5, lsr #0x1f
	add r6, r1, r6, asr #6
	strb r6, [r0, #8]
	ldrb r1, [r0, #1]
	cmp r1, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, _0207364C ; =0x04000208
	mov r5, ip
_020735C0:
	ldr r4, [r3, #0x2c]
	ldrb r1, [r3, #0x50]
	mov r4, r4, asr #0x10
	ldrsb lr, [r0, #8]
	mul r1, r4, r1
	mul r7, lr, r1
	ldr r4, _02073650 ; =0x82061029
	mov r1, r7, lsr #0x1f
	smull lr, r8, r4, r7
	add r8, r7, r8
	add r8, r1, r8, asr #13
	strh r8, [r3, #0x18]
	cmp r2, #1
	bne _0207362C
	ldrh r7, [r6]
	strh r5, [r6]
	ldr r4, [r3, #0xb4]
	cmp r4, #0
	beq _02073624
_0207360C:
	ldrh r1, [r4, #6]
	orr r1, r1, #0x20
	strh r1, [r4, #6]
	ldr r4, [r4, #0x154]
	cmp r4, #0
	bne _0207360C
_02073624:
	ldrh r1, [r6]
	strh r7, [r6]
_0207362C:
	ldrb r1, [r0, #1]
	add ip, ip, #1
	add r3, r3, #0xc8
	cmp ip, r1
	blt _020735C0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02073644: .word _022B7370
_02073648: .word 0x81020409
_0207364C: .word 0x04000208
_02073650: .word 0x82061029
	arm_func_end sub_0207356C

	arm_func_start sub_02073654
sub_02073654: ; 0x02073654
	stmdb sp!, {r3, r4, r5, lr}
	strh r1, [r0, #4]
	ldrb r3, [r0, #1]
	add r1, r0, #0x10
	mov r2, #0
	cmp r3, #0
	ldmleia sp!, {r3, r4, r5, pc}
	ldr lr, _020736E4 ; =0x04000208
	mov ip, r2
_02073678:
	ldr r3, [r1, #0x1c]
	ldrsh r4, [r1, #0x54]
	mov r3, r3, asr #0x10
	mov r3, r3, lsl #0x10
	ldrsh r5, [r0, #4]
	add r3, r4, r3, asr #16
	add r3, r5, r3
	strh r3, [r1, #0x16]
	ldrh r5, [lr]
	strh ip, [lr]
	ldr r4, [r1, #0xb4]
	cmp r4, #0
	beq _020736C4
_020736AC:
	ldrh r3, [r4, #6]
	orr r3, r3, #0x10
	strh r3, [r4, #6]
	ldr r4, [r4, #0x154]
	cmp r4, #0
	bne _020736AC
_020736C4:
	ldrh r3, [lr]
	add r2, r2, #1
	add r1, r1, #0xc8
	strh r5, [lr]
	ldrb r3, [r0, #1]
	cmp r2, r3
	blt _02073678
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020736E4: .word 0x04000208
	arm_func_end sub_02073654

	arm_func_start sub_020736E8
sub_020736E8: ; 0x020736E8
	stmdb sp!, {r4, r5, r6, lr}
	strb r1, [r0, #6]
	ldrb r4, [r0, #2]
	ldrsb r2, [r0, #6]
	ldr r3, _020737AC ; =0x81020409
	add r1, r0, #0x10
	smulbb r4, r4, r2
	smull r2, r5, r3, r4
	add r5, r4, r5
	mov r2, r4, lsr #0x1f
	add r5, r2, r5, asr #6
	strb r5, [r0, #8]
	ldrb r3, [r0, #1]
	mov r2, #0
	cmp r3, #0
	ldmleia sp!, {r4, r5, r6, pc}
	ldr r4, _020737B0 ; =0x04000208
	ldr ip, _020737B4 ; =0x82061029
	mov lr, r2
_02073734:
	ldr r5, [r1, #0x2c]
	ldrb r3, [r1, #0x50]
	mov r5, r5, asr #0x10
	ldrsb r6, [r0, #8]
	mul r3, r5, r3
	mul r5, r6, r3
	smull r3, r6, ip, r5
	add r6, r5, r6
	mov r3, r5, lsr #0x1f
	add r6, r3, r6, asr #13
	strh r6, [r1, #0x18]
	ldrh r6, [r4]
	strh lr, [r4]
	ldr r5, [r1, #0xb4]
	cmp r5, #0
	beq _0207378C
_02073774:
	ldrh r3, [r5, #6]
	orr r3, r3, #0x20
	strh r3, [r5, #6]
	ldr r5, [r5, #0x154]
	cmp r5, #0
	bne _02073774
_0207378C:
	ldrh r3, [r4]
	add r2, r2, #1
	add r1, r1, #0xc8
	strh r6, [r4]
	ldrb r3, [r0, #1]
	cmp r2, r3
	blt _02073734
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_020737AC: .word 0x81020409
_020737B0: .word 0x04000208
_020737B4: .word 0x82061029
	arm_func_end sub_020736E8

	arm_func_start sub_020737B8
sub_020737B8: ; 0x020737B8
	stmdb sp!, {r3, r4, r5, lr}
	strb r1, [r0, #7]
	ldrb r3, [r0, #1]
	add r1, r0, #0x10
	mov r2, #0
	cmp r3, #0
	ldmleia sp!, {r3, r4, r5, pc}
	ldr lr, _02073848 ; =0x04000208
	mov ip, r2
_020737DC:
	ldr r3, [r1, #0xc4]
	ldr r4, [r1, #0x3c]
	ldrsb r3, [r3, #7]
	mov r4, r4, asr #0x10
	and r4, r4, #0xff
	sub r3, r3, #0x40
	add r3, r4, r3
	strh r3, [r1, #0x1a]
	ldrh r5, [lr]
	strh ip, [lr]
	ldr r4, [r1, #0xb4]
	cmp r4, #0
	beq _02073828
_02073810:
	ldrh r3, [r4, #6]
	orr r3, r3, #0x40
	strh r3, [r4, #6]
	ldr r4, [r4, #0x154]
	cmp r4, #0
	bne _02073810
_02073828:
	ldrh r3, [lr]
	add r2, r2, #1
	add r1, r1, #0xc8
	strh r5, [lr]
	ldrb r3, [r0, #1]
	cmp r2, r3
	blt _020737DC
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02073848: .word 0x04000208
	arm_func_end sub_020737B8

	arm_func_start sub_0207384C
sub_0207384C: ; 0x0207384C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r3, _020738D8 ; =DRIVER_WORK
	mov sl, r0
	ldrsb r6, [r3, #0x3d]
	mov r7, #0
	mov sb, r1
	strb r7, [r3, #0x3d]
	ldrb r0, [sl, #1]
	mov r8, r2
	add r5, sl, #0x10
	cmp r0, #0
	ble _020738CC
	mov r0, sb, lsl #0x10
	mov r4, r0, lsr #0x10
_02073884:
	mov r0, r5
	bl sub_02073A90
	mov r0, r5
	mov r1, r8
	bl sub_020738DC
	cmp sb, #0
	blt _020738B8
	mov r0, r5
	mov r1, r4
	bl sub_02073B90
	mov r0, r5
	mov r1, r4
	bl sub_02073BC8
_020738B8:
	ldrb r0, [sl, #1]
	add r7, r7, #1
	add r5, r5, #0xc8
	cmp r7, r0
	blt _02073884
_020738CC:
	ldr r0, _020738D8 ; =DRIVER_WORK
	strb r6, [r0, #0x3d]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_020738D8: .word DRIVER_WORK
	arm_func_end sub_0207384C

	arm_func_start sub_020738DC
sub_020738DC: ; 0x020738DC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	str r1, [r4]
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #6]
	mov r1, #1
	strb r1, [r4, #7]
	ldr r1, _02073A80 ; =_022B7A30
	strb r0, [r4, #8]
	ldrh r3, [r1, #0x2e]
	ldr r1, _02073A84 ; =DRIVER_WORK
	mov r2, #0x7f
	strb r3, [r4, #9]
	strh r0, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	add r1, r1, #0x600
	ldrsb ip, [r1, #0x74]
	ldrsb r3, [r1, #0x94]
	add r3, r3, ip, lsl #8
	strh r3, [r4, #0xe]
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x14]
	str r0, [r4, #0x1c]
	strh r0, [r4, #0x28]
	ldrsb r3, [r1, #0x7b]
	mov r3, r3, lsl #0x10
	str r3, [r4, #0x2c]
	strh r0, [r4, #0x38]
	ldrsb r3, [r1, #0x7e]
	mov r3, r3, lsl #0x10
	str r3, [r4, #0x3c]
	strh r0, [r4, #0x48]
	strh r0, [r4, #0x54]
	ldrsb r3, [r1, #0x7f]
	strb r3, [r4, #0x50]
	ldrsb r1, [r1, #0x75]
	strb r1, [r4, #0x51]
	strh r0, [r4, #0x52]
	strh r0, [r4, #0x56]
	strb r2, [r4, #0x58]
	strb r0, [r4, #0x59]
	strb r0, [r4, #0x5a]
	strb r0, [r4, #0x5b]
	strb r0, [r4, #0x5c]
	strb r0, [r4, #0x5d]
	strb r0, [r4, #0x5e]
	strb r0, [r4, #0x5f]
	strb r0, [r4, #0x60]
	mov r2, r0
_020739A8:
	add r1, r4, r0, lsl #4
	strb r2, [r1, #0x75]
	add r0, r0, #1
	strb r2, [r1, #0x76]
	cmp r0, #4
	blt _020739A8
	add r0, r4, #0x64
	bl SoundEnvelopeParametersReset
	mov r0, #0
	ldr r1, _02073A88 ; =0x04000208
	str r0, [r4, #0xb4]
	ldrh r5, [r1]
	strh r0, [r1]
	ldr lr, [r4, #0xb8]
	cmp lr, #0
	ldreqh r0, [r1]
	streqh r5, [r1]
	beq _02073A34
	mov ip, lr
	mvn r1, #0
	mov r3, r0
_020739FC:
	str r1, [lr, #4]
	strb r3, [ip, #1]
	ldr r0, [ip, #8]
	cmp r0, #0
	movne ip, r0
	bne _020739FC
	ldr r0, _02073A84 ; =DRIVER_WORK
	ldr r1, _02073A88 ; =0x04000208
	ldr r2, [r0, #0x650]
	str r2, [ip, #8]
	str lr, [r0, #0x650]
	str r3, [r4, #0xb8]
	ldrh r0, [r1]
	strh r5, [r1]
_02073A34:
	mov r1, #0
	str r1, [r4, #0xbc]
	ldr r0, _02073A84 ; =DRIVER_WORK
	str r1, [r4, #0xc0]
	strh r1, [r4, #0x16]
	add r0, r0, #0x600
	ldrsb r3, [r0, #0x7b]
	ldrsb r0, [r0, #0x7f]
	ldr r1, _02073A8C ; =0x82061029
	mov r2, #0x40
	smulbb r0, r3, r0
	rsb r3, r0, r0, lsl #7
	smull r0, ip, r1, r3
	add ip, r3, ip
	mov r0, r3, lsr #0x1f
	add ip, r0, ip, asr #13
	strh ip, [r4, #0x18]
	strh r2, [r4, #0x1a]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02073A80: .word _022B7A30
_02073A84: .word DRIVER_WORK
_02073A88: .word 0x04000208
_02073A8C: .word 0x82061029
	arm_func_end sub_020738DC

	arm_func_start sub_02073A90
sub_02073A90: ; 0x02073A90
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, [r0, #0xb4]
	mov r1, #0
	str r1, [r0, #0xb4]
	cmp r6, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _02073B10 ; =_022B7A30
	mov r5, r1
	mov r4, r1
_02073AB4:
	ldr r7, [r6, #0x154]
	add r0, r6, #0x3c
	strh r5, [r6, #4]
	str r5, [r6, #0x158]
	str r5, [r6, #0x154]
	bl SoundEnvelopeStop
	ldr r0, [r6, #0x14c]
	cmp r7, #0
	and r0, r0, #0xff
	str r0, [r6, #0x14c]
	str r4, [r6]
	strh r4, [r6, #0x18]
	ldrh r2, [r6, #0xa]
	ldrh r1, [r8, #0x32]
	mov r6, r7
	mvn r0, r2
	and r0, r1, r0
	strh r0, [r8, #0x32]
	ldrh r0, [r8, #0x36]
	orr r0, r0, r2
	strh r0, [r8, #0x36]
	bne _02073AB4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02073B10: .word _022B7A30
	arm_func_end sub_02073A90

	arm_func_start sub_02073B14
sub_02073B14: ; 0x02073B14
	cmp r1, #1
	bne _02073B5C
	ldrb r1, [r0, #4]
	orr r1, r1, #0x40
	strb r1, [r0, #4]
	ldr r2, [r0, #0xb4]
	cmp r2, #0
	bxeq lr
	mov r1, #0
_02073B38:
	str r1, [r2, #0x13c]
	str r1, [r2, #0x140]
	ldrh r0, [r2, #6]
	orr r0, r0, #0x30
	strh r0, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02073B38
	bx lr
_02073B5C:
	ldr r2, [r0, #0xb4]
	cmp r2, #0
	beq _02073B80
_02073B68:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x30
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02073B68
_02073B80:
	ldrb r1, [r0, #4]
	bic r1, r1, #0x40
	strb r1, [r0, #4]
	bx lr
	arm_func_end sub_02073B14

	arm_func_start sub_02073B90
sub_02073B90: ; 0x02073B90
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	strh r1, [r4, #0xe]
	bl sub_0206D6A0
	str r0, [r4, #0xbc]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0xc0]
	ldmeqia sp!, {r4, pc}
	ldrh r1, [r4, #0x10]
	mov r0, r4
	bl sub_02073BC8
	ldmia sp!, {r4, pc}
	arm_func_end sub_02073B90

	arm_func_start sub_02073BC8
sub_02073BC8: ; 0x02073BC8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldr r0, [r5, #0xbc]
	mov r4, r1
	cmp r0, #0
	bne _02073BF0
	mov r0, #0
	str r0, [r5, #0xc0]
	strh r0, [r5, #0x10]
	b _02073C4C
_02073BF0:
	mov r0, r4, lsl #0x10
	mov r1, r0, asr #0x10
	strh r1, [r5, #0x10]
	ldr r0, [r5, #0xbc]
	bl sub_0206D590
	movs lr, r0
	beq _02073C48
	mov r6, #0
	strb r6, [r5, #0x59]
	add r7, lr, #0x10
	add r8, r5, #0x74
	mov ip, r6
_02073C20:
	ldrb r0, [r7, #1]
	add r6, r6, #1
	cmp r0, #0
	ldmneia r7, {r0, r1, r2, r3}
	stmneia r8, {r0, r1, r2, r3}
	streqb ip, [r8, #1]
	cmp r6, #4
	add r7, r7, #0x10
	add r8, r8, #0x10
	blt _02073C20
_02073C48:
	str lr, [r5, #0xc0]
_02073C4C:
	add r0, r5, #0x64
	bl SoundEnvelopeParametersReset
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02073BC8

	arm_func_start sub_02073C5C
sub_02073C5C: ; 0x02073C5C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	strb r5, [r0, #0x51]
	ldr r4, [r0, #0xb4]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_02073C74:
	mov r1, r5
	add r0, r4, #0x5c
	bl SoundLfoBankSetConstEnvelopes
	ldr r4, [r4, #0x154]
	cmp r4, #0
	bne _02073C74
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02073C5C

	arm_func_start sub_02073C90
sub_02073C90: ; 0x02073C90
	strh r1, [r0, #0x52]
	ldr r2, [r0, #0xb4]
	cmp r2, #0
	bxeq lr
	mov r3, r1, lsl #8
_02073CA4:
	ldrb r0, [r2, #0xf]
	mul r1, r0, r3
	mov r0, r1, asr #0xc
	add r0, r1, r0, lsr #19
	mov r0, r0, asr #0xd
	strh r0, [r2, #0x10]
	ldrh r0, [r2, #6]
	orr r0, r0, #0x10
	strh r0, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02073CA4
	bx lr
	arm_func_end sub_02073C90

	arm_func_start sub_02073CD8
sub_02073CD8: ; 0x02073CD8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r2, [r5, #0xd]
	mov r4, r1
	cmp r2, #0
	beq _02073D18
	ldrb r0, [r5, #0xc]
	sub r0, r2, r0
	add r6, r0, #1
	bl SoundUtilGetRandomNumber
	mul r1, r6, r0
	mov r0, r1, asr #0xe
	ldrb r2, [r5, #0xc]
	add r0, r1, r0, lsr #17
	add r0, r2, r0, asr #15
	strb r0, [r4, #2]
_02073D18:
	ldr r1, _02073D64 ; =DRIVER_WORK
	ldr r0, [r1, #0x650]
	cmp r0, #0
	moveq r0, #0
	ldrne r2, [r0, #8]
	strne r2, [r1, #0x650]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r3, [r4]
	ldr r2, [r4, #4]
	mov r1, #1
	str r3, [r0]
	str r2, [r0, #4]
	strb r1, [r0, #1]
	ldr r1, [r5, #0xb8]
	str r1, [r0, #8]
	str r0, [r5, #0xb8]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02073D64: .word DRIVER_WORK
	arm_func_end sub_02073CD8

	arm_func_start sub_02073D68
sub_02073D68: ; 0x02073D68
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r4, [r7, #0xb8]
	mov r6, r1
	cmp r4, #0
	add r5, r7, #0xb8
	beq _02073DE4
	ldrb r1, [r6, #2]
_02073D88:
	ldrb r0, [r4, #2]
	cmp r0, r1
	bne _02073DD4
	ldr r8, [r7, #0xb4]
	cmp r8, #0
	beq _02073DC8
_02073DA0:
	ldrb r1, [r8, #0xd]
	ldrb r0, [r6, #2]
	cmp r1, r0
	bne _02073DBC
	mov r0, r7
	mov r1, r8
	bl sub_0207485C
_02073DBC:
	ldr r8, [r8, #0x154]
	cmp r8, #0
	bne _02073DA0
_02073DC8:
	ldr r0, [r4, #8]
	str r0, [r5]
	b _02073DE4
_02073DD4:
	add r5, r4, #8
	ldr r4, [r4, #8]
	cmp r4, #0
	bne _02073D88
_02073DE4:
	ldr r0, _02073E0C ; =DRIVER_WORK
	mvn r2, #0
	ldr r3, [r0, #0x650]
	mov r1, #0
	str r3, [r4, #8]
	str r4, [r0, #0x650]
	str r2, [r4, #4]
	mov r0, r4
	strb r1, [r4, #1]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02073E0C: .word DRIVER_WORK
	arm_func_end sub_02073D68

	arm_func_start sub_02073E10
sub_02073E10: ; 0x02073E10
	stmdb sp!, {r4, lr}
	ldr r4, [r0, #0xb8]
	cmp r4, #0
	beq _02073E54
_02073E20:
	ldrb r3, [r4, #2]
	cmp r3, r2
	bne _02073E48
	ldr lr, [r1]
	ldr ip, [r1, #4]
	mov r3, #1
	str lr, [r4]
	str ip, [r4, #4]
	strb r3, [r4, #1]
	b _02073E54
_02073E48:
	ldr r4, [r4, #8]
	cmp r4, #0
	bne _02073E20
_02073E54:
	ldr ip, [r0, #0xb4]
	cmp ip, #0
	ldmeqia sp!, {r4, pc}
_02073E60:
	ldrb r0, [ip, #0xd]
	cmp r0, r2
	bne _02073E90
	ldrb r0, [r1, #2]
	strb r0, [ip, #0xd]
	ldrb r3, [r1, #2]
	ldrsh r0, [ip, #0x14]
	add r0, r0, r3, lsl #8
	strh r0, [ip, #0x12]
	ldrh r0, [ip, #6]
	orr r0, r0, #0x10
	strh r0, [ip, #6]
_02073E90:
	ldr ip, [ip, #0x154]
	cmp ip, #0
	bne _02073E60
	ldmia sp!, {r4, pc}
	arm_func_end sub_02073E10

	arm_func_start sub_02073EA0
sub_02073EA0: ; 0x02073EA0
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0xb8]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldrb r3, [r1, #2]
_02073EB4:
	ldrb r1, [r2, #2]
	cmp r1, r3
	bne _02073ECC
	mov r1, r2
	bl sub_02073D68
	ldmia sp!, {r3, pc}
_02073ECC:
	ldr r2, [r2, #8]
	cmp r2, #0
	bne _02073EB4
	ldmia sp!, {r3, pc}
	arm_func_end sub_02073EA0

	arm_func_start sub_02073EDC
sub_02073EDC: ; 0x02073EDC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	ldrsh r4, [sl, #0xa]
	mov sb, r1
	cmp r4, #0
	moveq r0, #0
	streq r0, [sp]
	beq _02073F28
	bl SoundUtilGetRandomNumber
	mov r1, r4, lsl #1
	mul r2, r1, r0
	mov r0, r2, asr #0xe
	ldrsh r1, [sl, #0xa]
	add r0, r2, r0, lsr #17
	rsb r0, r1, r0, asr #15
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
_02073F28:
	ldr r6, [sl, #0xc0]
	cmp r6, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r7, [sl, #0xbc]
	mov r5, #0
_02073F40:
	ldrb r2, [sb, #2]
	ldrsb r3, [sb, #3]
	mov r0, r6
	mov r1, r5
	bl sub_0206D5C8
	movs r5, r0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r3, [r5, #0x1a]
	ldrb r0, [r7, #0xc]
	ldr r2, [r7, #0x18]
	cmp r3, r0
	movge r3, #0
	add r1, r2, r3, lsl #3
	ldr r2, [r2, r3, lsl #3]
	ldr r1, [r1, #4]
	mov r0, r7
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldrsh r1, [r5, #0x12]
	bl ReadWaviEntry
	movs fp, r0
	beq _02073F40
	ldrb r3, [sl, #5]
	ldrb r2, [r5, #0x1a]
	mov r0, sl
	add r1, sp, #4
	add r8, r2, r3, lsl #8
	ldrb r3, [sp, #7]
	mov r2, r8
	bl sub_02074618
	movs r4, r0
	beq _02073F40
	mov r0, #0
	strh r0, [r4, #4]
	ldr r0, [sl]
	add fp, fp, #0x10
	str r0, [r4]
	strh r8, [r4, #0x18]
	ldrsh r0, [r5, #0x12]
	add ip, r4, #0x1c
	strb r0, [r4, #0xe]
	ldmia fp!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia fp, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldr r1, [r4, #0x30]
	ldr r0, [r7, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0x30]
	ldrb r0, [sb, #2]
	strb r0, [r4, #0xd]
	ldrsb r1, [r5, #0x17]
	ldrsh r0, [r5, #0x14]
	add r1, r0, r1, lsl #8
	ldr r0, [sp]
	add r0, r0, r1
	strh r0, [r4, #0x14]
	ldrb r1, [sb, #2]
	ldrsh r0, [r4, #0x14]
	add r0, r0, r1, lsl #8
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #0x19]
	strb r0, [r4, #0x17]
	ldr r0, _02074144 ; =DRIVER_WORK
	ldrb r0, [r0, #0x39]
	cmp r0, #7
	bne _02074084
	ldrb r1, [sl, #0x58]
	ldrb r0, [sb, #3]
	ldrb r2, [r6, #4]
	ldrb r3, [r5, #0x18]
	smulbb r0, r1, r0
	mul r0, r2, r0
	mul r2, r3, r0
	ldr r0, _02074148 ; =0x4186143D
	smull r1, r3, r0, r2
	mov r0, r2, lsr #0x1f
	add r3, r0, r3, asr #19
	strb r3, [r4, #0x16]
	b _020740B0
_02074084:
	ldrb r1, [sb, #3]
	ldrb r0, [r6, #4]
	ldrb r2, [r5, #0x18]
	smulbb r0, r1, r0
	mul r3, r2, r0
	ldr r0, _0207414C ; =0x82061029
	smull r1, r2, r0, r3
	add r2, r3, r2
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #13
	strb r2, [r4, #0x16]
_020740B0:
	ldrb r2, [sl, #0x59]
	ldrsh r3, [sl, #0x52]
	add r0, r4, #0x5c
	cmp r2, #0
	ldreqb r2, [r5, #2]
	mov r3, r3, lsl #8
	add r1, sl, #0x74
	mul r8, r2, r3
	mov r3, r8, asr #0xc
	add r3, r8, r3, lsr #19
	mov r3, r3, asr #0xd
	strh r3, [r4, #0x10]
	strb r2, [r4, #0xf]
	ldrh r2, [r4, #6]
	orr r2, r2, #0xff0
	strh r2, [r4, #6]
	ldrsb r2, [sl, #0x51]
	bl SoundLfoBankSet
	add r0, r5, #0x20
	add r8, r4, #0x3c
	ldmia r0, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	mov r0, #1
	strb r0, [r4, #0x3c]
	ldrb r0, [sl, #0x64]
	cmp r0, #0
	beq _02074128
	mov r0, r8
	add r1, sl, #0x64
	bl SoundEnvelopeSetParameters
_02074128:
	mov r1, r4
	mov r0, sl
	ldrb r2, [sp, #7]
	bl sub_02074780
	b _02073F40
_0207413C:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02074144: .word DRIVER_WORK
_02074148: .word 0x4186143D
_0207414C: .word 0x82061029
	arm_func_end sub_02073EDC

	arm_func_start sub_02074150
sub_02074150: ; 0x02074150
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0xb4]
	mov r5, r1
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_02074168:
	ldrb r1, [r4, #0xd]
	ldrb r0, [r5, #2]
	cmp r1, r0
	bne _02074184
	mov r0, r6
	mov r1, r4
	bl sub_0207485C
_02074184:
	ldr r4, [r4, #0x154]
	cmp r4, #0
	bne _02074168
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02074150

	arm_func_start sub_02074194
sub_02074194: ; 0x02074194
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr fp, _0207431C ; =_022B7A30
	ldr r7, _02074320 ; =_022B7A6C
	ldrh r0, [fp, #0x2e]
	mov sb, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r6, _02074324 ; =_020B1310
	ldr r5, _02074328 ; =_020B1394
	ldr r4, _0207432C ; =0x00FFB0FF
_020741BC:
	ldr r8, [r7, #0x158]
	cmp r8, #0
	beq _02074304
	ldrh sl, [r7, #6]
	cmp sl, #0
	beq _02074300
	tst sl, #0x10
	beq _02074264
	ldrh r2, [r8, #0x16]
	ldrsh r1, [r7, #0x12]
	ldrsh r3, [r7, #0x10]
	ldrsh r0, [r7, #0x5e]
	add r1, r2, r1
	add r1, r3, r1
	add r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r1, asr #8
	and r0, r0, #0x7f
	ldrb r0, [r6, r0]
	and r2, r1, #0xff
	mov r1, r0, lsl #0x1c
	add r1, r2, r1, lsr #20
	mov r1, r1, lsl #1
	mov r0, r0, asr #4
	ldrh r1, [r5, r1]
	rsbs r0, r0, #4
	movpl r1, r1, lsr r0
	rsbmi r0, r0, #0
	movmi r1, r1, lsl r0
	ldrb r0, [r7, #0x1f]
	cmp r0, #3
	mov r0, r4
	blo _0207425C
	mov r2, r1, asr #3
	add r1, r1, r2, lsr #28
	mov r1, r1, asr #4
	bl _s32_div_f
	str r0, [r7, #0x13c]
	b _02074264
_0207425C:
	bl _s32_div_f
	str r0, [r7, #0x13c]
_02074264:
	tst sl, #0x20
	beq _020742C4
	ldrb r1, [r7, #0x16]
	ldrsh r0, [r7, #0x60]
	add r1, r1, r0, asr #6
	cmp r1, #0x7f
	movgt r1, #0x7f
	bgt _0207428C
	cmp r1, #0
	movlt r1, #0
_0207428C:
	ldrh r0, [r8, #0x18]
	ldrb r2, [r7, #0x14c]
	mul r1, r0, r1
	mul r3, r2, r1
	ldr r0, _02074330 ; =0x828CBFBF
	smull r1, r2, r0, r3
	add r2, r3, r2
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #12
	mul r1, r2, r2
	mov r0, r1, asr #8
	add r0, r1, r0, lsr #23
	mov r0, r0, asr #9
	str r0, [r7, #0x140]
_020742C4:
	tst sl, #0x40
	beq _02074300
	ldrsb r1, [r7, #0x17]
	ldrsh r2, [r8, #0x1a]
	ldrsh r0, [r7, #0x62]
	sub r1, r1, #0x40
	add r1, r2, r1
	adds r1, r1, r0, asr #6
	ldr r0, _02074334 ; =_022B8330
	movmi r1, #0
	cmp r1, #0x7f
	ldr r0, [r0, #0xed4]
	movgt r1, #0x7f
	ldrb r0, [r0, r1]
	str r0, [r7, #0x144]
_02074300:
	strh sl, [r7, #6]
_02074304:
	ldrh r0, [fp, #0x2e]
	add sb, sb, #1
	add r7, r7, #0x15c
	cmp sb, r0
	blt _020741BC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0207431C: .word _022B7A30
_02074320: .word _022B7A6C
_02074324: .word _020B1310
_02074328: .word _020B1394
_0207432C: .word 0x00FFB0FF
_02074330: .word 0x828CBFBF
_02074334: .word _022B8330
	arm_func_end sub_02074194

	arm_func_start sub_02074338
sub_02074338: ; 0x02074338
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr sl, _020743D0 ; =_022B7A30
	mov r8, #0
	ldrh r0, [sl, #0x2e]
	cmp r0, #0
	ble _020743C0
	ldr sb, _020743D4 ; =_022B7A6C
	mov r7, r8
	mov r6, #1
	mov r5, #0x40
	mov r4, r8
_02074364:
	strh r7, [sb, #4]
	strh r7, [sb, #6]
	mov r0, r6, lsl r8
	strh r8, [sb, #8]
	strh r0, [sb, #0xa]
	str r7, [sb]
	str r7, [sb, #0x14c]
	strb r7, [sb, #0xd]
	strb r7, [sb, #0xe]
	strh r7, [sb, #0x12]
	strb r7, [sb, #0x16]
	add r0, sb, #0x3c
	strb r5, [sb, #0x17]
	bl SoundEnvelopeReset
	add r0, sb, #0x5c
	bl SoundLfoBankReset
	str r4, [sb, #0x154]
	str r4, [sb, #0x158]
	ldrh r0, [sl, #0x2e]
	add r8, r8, #1
	add sb, sb, #0x15c
	cmp r8, r0
	blt _02074364
_020743C0:
	ldr r0, _020743D8 ; =DRIVER_WORK
	mov r1, #0
	str r1, [r0, #0x654]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_020743D0: .word _022B7A30
_020743D4: .word _022B7A6C
_020743D8: .word DRIVER_WORK
	arm_func_end sub_02074338

	arm_func_start sub_020743DC
sub_020743DC: ; 0x020743DC
	stmdb sp!, {r3, lr}
	cmp r0, #0
	ble _02074414
	ldr r1, _0207447C ; =_022B7A30
	mov r2, #0x10
	strh r2, [r1, #0x2c]
	cmp r0, #0x10
	movgt r0, r2, lsl #0x10
	ldr r2, _0207447C ; =_022B7A30
	movgt r0, r0, asr #0x10
	strh r0, [r2, #0x2e]
	ldr r1, _02074480 ; =_022B8330
	mov r0, #0
	strb r0, [r1, #0xd0c]
_02074414:
	ldr r2, _0207447C ; =_022B7A30
	mov r0, #0
	strh r0, [r2, #0x32]
	strh r0, [r2, #0x34]
	ldr r1, _02074484 ; =DRIVER_WORK
	strh r0, [r2, #0x36]
	strb r0, [r1, #0x738]
	strb r0, [r1, #0x739]
	ldr ip, _02074480 ; =_022B8330
	strh r0, [r2, #0x30]
	str r0, [ip, #0xcfc]
	str r0, [ip, #0xd00]
	sub r2, r0, #1
	str r2, [ip, #0xd04]
	ldrsh lr, [r1, #0x28]
	mov r1, r0
	mov r2, r0
	mov r3, r0
	str lr, [ip, #0xd08]
	bl sub_0207C8B8
	ldr r0, _02074488 ; =0x0000FFFF
	mov r3, #0
	mov r1, r0
	mov r2, r0
	bl sub_0207C8E0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0207447C: .word _022B7A30
_02074480: .word _022B8330
_02074484: .word DRIVER_WORK
_02074488: .word 0x0000FFFF
	arm_func_end sub_020743DC

	arm_func_start UpdateChannels
UpdateChannels: ; 0x0207448C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr sb, _02074570 ; =_022B7A30
	mov r7, #0
	ldrh r0, [sb, #0x2e]
	mov r6, r7
	ldr r5, _02074574 ; =_022B7A6C
	cmp r0, #0
	ble _0207452C
	mov r4, #2
_020744B0:
	add r0, r5, #0x3c
	bl SoundEnvelopeTick
	ldrsb r1, [r5, #0x5a]
	mov r8, r0
	cmp r1, #1
	bne _02074514
	add r0, r5, #0x5c
	bl SoundLfoBankTick
	ldrh r1, [r5, #6]
	orr r0, r1, r0
	strh r0, [r5, #6]
	ldrb r0, [r5, #0x58]
	cmp r0, #8
	bne _020744F8
	strb r4, [r5, #0x58]
	ldrh r0, [r5, #6]
	orr r0, r0, #2
	strh r0, [r5, #6]
_020744F8:
	ldrb r0, [r5, #0x14c]
	cmp r0, r8
	ldrneh r0, [r5, #6]
	orrne r0, r0, #0x20
	strneh r0, [r5, #6]
	cmp r8, #0
	addgt r7, r7, #1
_02074514:
	strb r8, [r5, #0x14c]
	ldrh r0, [sb, #0x2e]
	add r6, r6, #1
	add r5, r5, #0x15c
	cmp r6, r0
	blt _020744B0
_0207452C:
	ldr r0, _02074578 ; =_022B8330
	ldr r1, [r0, #0xd04]
	cmp r1, #0
	movlt r1, #0
	strlt r1, [r0, #0xd00]
	ldr r0, _02074578 ; =_022B8330
	str r7, [r0, #0xcfc]
	ldr r1, [r0, #0xd00]
	cmp r1, r7
	strlt r7, [r0, #0xd00]
	movlt r1, #0x64
	strlt r1, [r0, #0xd04]
	ldr r0, _02074578 ; =_022B8330
	ldr r1, [r0, #0xd04]
	sub r1, r1, #1
	str r1, [r0, #0xd04]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02074570: .word _022B7A30
_02074574: .word _022B7A6C
_02074578: .word _022B8330
	arm_func_end UpdateChannels

	arm_func_start sub_0207457C
sub_0207457C: ; 0x0207457C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _02074610 ; =_022B7A6C
	bl sub_0207D470
	ldr r4, _02074614 ; =_022B7A30
	mov r0, r0, lsl #0x10
	ldrh r2, [r4, #0x30]
	ldrh r1, [r4, #0x2e]
	mov r7, #0
	orr r0, r2, r0, lsr #16
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	cmp r1, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, pc}
	mov r5, r7
_020745B4:
	ldrsb r0, [r6, #0x5a]
	cmp r0, #1
	bne _020745DC
	tst r8, #1
	bne _020745F0
	add r0, r6, #0x3c
	bl SoundEnvelopeStop2
	add r0, r6, #0x100
	strh r5, [r0, #0x4c]
	b _020745F0
_020745DC:
	and r0, r8, #1
	cmp r0, #1
	bne _020745F0
	mov r0, r6
	bl sub_020749F4
_020745F0:
	ldrh r1, [r4, #0x2e]
	mov r0, r8, lsl #0xf
	add r7, r7, #1
	cmp r7, r1
	mov r8, r0, lsr #0x10
	add r6, r6, #0x15c
	blt _020745B4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02074610: .word _022B7A6C
_02074614: .word _022B7A30
	arm_func_end sub_0207457C

	arm_func_start sub_02074618
sub_02074618: ; 0x02074618
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _02074774 ; =_022B7A30
	mov r3, r3, lsl #0x10
	ldrh r5, [r4, #0x2e]
	add r3, r3, #0xff
	add r8, r3, #0x100
	ldrb r4, [r1, #5]
	sub r5, r5, #1
	ldrb r3, [r0, #7]
	cmp r4, r5
	movgt r4, r5
	ldrb r7, [r1, #4]
	mov r6, #0
	cmp r3, #0
	beq _02074660
	cmp r3, #1
	beq _0207466C
	b _0207476C
_02074660:
	ldr r6, [r0, #0xb4]
	cmp r6, #0
	bne _0207476C
_0207466C:
	ldrb r3, [r1]
	cmp r3, #0
	beq _02074708
	ldr r5, _02074778 ; =_022B7A6C
	mov r3, #0x15c
	mla r3, r7, r3, r5
	mov ip, r7
	mov lr, r4
	mov r5, r8
	cmp r7, r4
	mov r6, #0
	bgt _020746E4
	ldr r0, [r0]
_020746A0:
	ldr sb, [r3]
	cmp sb, r0
	ldreqh sb, [r3, #0x18]
	cmpeq sb, r2
	bne _020746D4
	ldr sb, [r3, #0x14c]
	add r6, r6, #1
	cmp r5, sb
	movhi r5, sb
	ldrb sb, [r1, #2]
	movhi lr, ip
	cmp r6, sb
	bge _020746E4
_020746D4:
	add ip, ip, #1
	cmp ip, r4
	add r3, r3, #0x15c
	ble _020746A0
_020746E4:
	ldrb r0, [r1, #2]
	cmp r6, r0
	blt _02074708
	ldr r1, _02074778 ; =_022B7A6C
	mov r0, #0x15c
	mla r6, lr, r0, r1
	mov r0, r6
	bl sub_020748A0
	b _0207476C
_02074708:
	cmp r7, r4
	add r2, r4, #1
	bgt _0207474C
	ldr r1, _0207477C ; =DRIVER_WORK
	mov r0, #0x15c
	mla r1, r7, r0, r1
_02074720:
	ldr r0, [r1, #0x888]
	cmp r8, r0
	bls _0207473C
	mov r2, r7
	cmp r0, #0
	beq _0207474C
	mov r8, r0
_0207473C:
	add r7, r7, #1
	cmp r7, r4
	add r1, r1, #0x15c
	ble _02074720
_0207474C:
	cmp r2, r4
	movgt r6, #0
	bgt _0207476C
	ldr r1, _02074778 ; =_022B7A6C
	mov r0, #0x15c
	mla r6, r2, r0, r1
	mov r0, r6
	bl sub_020748A0
_0207476C:
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02074774: .word _022B7A30
_02074778: .word _022B7A6C
_0207477C: .word DRIVER_WORK
	arm_func_end sub_02074618

	arm_func_start sub_02074780
sub_02074780: ; 0x02074780
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrh r3, [r4, #6]
	mov r1, r2, lsl #0x10
	add r1, r1, #0xff
	orr r2, r3, #1
	bic r2, r2, #2
	strh r2, [r4, #6]
	ldr r2, [r4, #0x14c]
	add r1, r1, #0x100
	orr r1, r2, r1
	mov r5, r0
	str r1, [r4, #0x14c]
	add r0, r4, #0x3c
	bl UpdateTrackVolumeEnvelopes
	ldr r0, [r4, #0x158]
	cmp r0, r5
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xb4]
	str r0, [r4, #0x154]
	str r4, [r5, #0xb4]
	str r5, [r4, #0x158]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02074780

	arm_func_start sub_020747DC
sub_020747DC: ; 0x020747DC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r7, r0
	ldrb r0, [r7, #4]
	tst r0, #3
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r4, [r7, #0xb8]
	add r6, r7, #0xb8
	cmp r4, #0
	beq _0207484C
	ldr r8, _02074858 ; =DRIVER_WORK
	mvn sl, #0
	mov sb, #0
_0207480C:
	ldmib r4, {r0, r5}
	cmp r0, #0
	strgt r4, [r6]
	addgt r6, r4, #8
	bgt _02074840
	mov r0, r7
	mov r1, r4
	bl sub_02073D68
	ldr r0, [r8, #0x650]
	str r0, [r4, #8]
	str r4, [r8, #0x650]
	str sl, [r4, #4]
	strb sb, [r4, #1]
_02074840:
	mov r4, r5
	cmp r5, #0
	bne _0207480C
_0207484C:
	mov r0, #0
	str r0, [r6]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02074858: .word DRIVER_WORK
	arm_func_end sub_020747DC

	arm_func_start sub_0207485C
sub_0207485C: ; 0x0207485C
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldrh r1, [r4, #4]
	orr r1, r1, #2
	strh r1, [r4, #4]
	ldrb r0, [r0, #4]
	tst r0, #1
	ldmneia sp!, {r4, pc}
	ldr r1, [r4, #0x14c]
	add r0, r4, #0x3c
	and r1, r1, #0xff
	str r1, [r4, #0x14c]
	bl SoundEnvelopeRelease
	ldrh r0, [r4, #6]
	bic r0, r0, #1
	strh r0, [r4, #6]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0207485C

	arm_func_start sub_020748A0
sub_020748A0: ; 0x020748A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x158]
	cmp r1, #0
	beq _02074948
	ldr r2, [r1, #0xb4]
	cmp r2, r4
	ldreq r0, [r4, #0x154]
	streq r0, [r1, #0xb4]
	beq _020748F0
	cmp r2, #0
	beq _020748F0
_020748D0:
	ldr r0, [r2, #0x154]
	cmp r0, r4
	ldreq r0, [r4, #0x154]
	streq r0, [r2, #0x154]
	beq _020748F0
	mov r2, r0
	cmp r0, #0
	bne _020748D0
_020748F0:
	mov r0, #0
	strh r0, [r4, #4]
	str r0, [r4, #0x158]
	str r0, [r4, #0x154]
	add r0, r4, #0x3c
	bl SoundEnvelopeStop
	ldr r1, [r4, #0x14c]
	mov r0, #0
	and r1, r1, #0xff
	str r1, [r4, #0x14c]
	str r0, [r4]
	strh r0, [r4, #0x18]
	ldr r1, _020749A0 ; =_022B7A30
	ldrh r0, [r4, #0xa]
	ldrh r3, [r1, #0x32]
	mvn r2, r0
	and r2, r3, r2
	strh r2, [r1, #0x32]
	ldrh r2, [r1, #0x36]
	orr r2, r2, r0
	strh r2, [r1, #0x36]
	ldmia sp!, {r4, pc}
_02074948:
	mov r0, #0
	strh r0, [r4, #4]
	str r0, [r4, #0x158]
	str r0, [r4, #0x154]
	add r0, r4, #0x3c
	bl SoundEnvelopeStop
	ldr r1, [r4, #0x14c]
	mov r0, #0
	and r1, r1, #0xff
	str r1, [r4, #0x14c]
	str r0, [r4]
	strh r0, [r4, #0x18]
	ldr r1, _020749A0 ; =_022B7A30
	ldrh r0, [r4, #0xa]
	ldrh r3, [r1, #0x32]
	mvn r2, r0
	and r2, r3, r2
	strh r2, [r1, #0x32]
	ldrh r2, [r1, #0x36]
	orr r2, r2, r0
	strh r2, [r1, #0x36]
	ldmia sp!, {r4, pc}
	.align 2, 0
_020749A0: .word _022B7A30
	arm_func_end sub_020748A0

	arm_func_start sub_020749A4
sub_020749A4: ; 0x020749A4
	mov r1, #0xff0
	strh r1, [r0, #6]
	ldr r2, [r0, #0x14c]
	ldr r1, _020749F0 ; =_022B7A30
	orr r2, r2, #0xff
	orr r2, r2, #0x100
	str r2, [r0, #0x14c]
	ldrh r3, [r0, #0xa]
	ldrh r0, [r1, #0x34]
	mvn r2, r3
	and r0, r0, r2
	strh r0, [r1, #0x34]
	ldrh r0, [r1, #0x36]
	and r0, r0, r2
	strh r0, [r1, #0x36]
	ldrh r0, [r1, #0x32]
	orr r0, r0, r3
	strh r0, [r1, #0x32]
	bx lr
	.align 2, 0
_020749F0: .word _022B7A30
	arm_func_end sub_020749A4

	arm_func_start sub_020749F4
sub_020749F4: ; 0x020749F4
	ldr r2, [r0, #0x14c]
	ldr r1, _02074A28 ; =_022B7A30
	bic r2, r2, #0xff00
	str r2, [r0, #0x14c]
	ldrh r3, [r0, #0xa]
	ldrh r2, [r1, #0x32]
	mvn r0, r3
	and r0, r2, r0
	strh r0, [r1, #0x32]
	ldrh r0, [r1, #0x34]
	orr r0, r0, r3
	strh r0, [r1, #0x34]
	bx lr
	.align 2, 0
_02074A28: .word _022B7A30
	arm_func_end sub_020749F4

	arm_func_start sub_02074A2C
sub_02074A2C: ; 0x02074A2C
	ldr r2, [r0, #0xb4]
	mov r0, #0
	cmp r2, #0
	bxeq lr
_02074A3C:
	ldrb r1, [r2, #0x14c]
	ldr r2, [r2, #0x154]
	cmp r1, #0
	addne r0, r0, #1
	cmp r2, #0
	bne _02074A3C
	bx lr
	arm_func_end sub_02074A2C

	arm_func_start sub_02074A58
sub_02074A58: ; 0x02074A58
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r4, _02074C64 ; =_022B7A30
	ldr r7, _02074C68 ; =_022B7A6C
	ldrh r0, [r4, #0x2e]
	mov r8, #0
	cmp r0, #0
	ble _02074BC8
	mov fp, #2
	mov sl, #1
	mov r6, r8
	mov r5, r8
_02074A88:
	ldrh sb, [r7, #6]
	cmp sb, #0
	beq _02074BB4
	tst sb, #1
	beq _02074B5C
	ldrsb r0, [r7, #0x21]
	ldrb r1, [r7, #0x1f]
	cmp r0, #0
	movne r3, sl
	moveq r3, fp
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _02074B50
_02074ABC: ; jump table
	b _02074AD0 ; case 0
	b _02074AD0 ; case 1
	b _02074AD0 ; case 2
	b _02074B0C ; case 3
	b _02074B34 ; case 4
_02074AD0:
	ldr r0, [r7, #0x34]
	str r0, [sp]
	ldr r0, [r7, #0x38]
	str r0, [sp, #4]
	ldr r0, [r7, #0x140]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r7, #0x13c]
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x144]
	str r0, [sp, #0x14]
	ldrh r0, [r7, #8]
	ldr r2, [r7, #0x30]
	bl sub_0207CA6C
	b _02074B50
_02074B0C:
	ldr r0, [r7, #0x13c]
	mov r3, #0
	str r0, [sp]
	ldr r0, [r7, #0x144]
	str r0, [sp, #4]
	ldrh r0, [r7, #8]
	ldrb r1, [r7, #0x25]
	ldr r2, [r7, #0x140]
	bl sub_0207CAB8
	b _02074B50
_02074B34:
	ldr r0, [r7, #0x144]
	mov r2, #0
	str r0, [sp]
	ldrh r0, [r7, #8]
	ldr r1, [r7, #0x140]
	ldr r3, [r7, #0x13c]
	bl sub_0207CAE0
_02074B50:
	mov r0, r7
	bl sub_020749A4
	b _02074BB0
_02074B5C:
	tst sb, #2
	beq _02074B70
	mov r0, r7
	bl sub_020749F4
	mov sb, #0
_02074B70:
	tst sb, #0x10
	beq _02074B84
	ldrh r0, [r7, #0xa]
	ldr r1, [r7, #0x13c]
	bl sub_0207CA04
_02074B84:
	tst sb, #0x20
	beq _02074B9C
	ldrh r0, [r7, #0xa]
	ldr r1, [r7, #0x140]
	mov r2, #0
	bl sub_0207CA24
_02074B9C:
	tst sb, #0x40
	beq _02074BB0
	ldrh r0, [r7, #0xa]
	ldr r1, [r7, #0x144]
	bl sub_0207CA4C
_02074BB0:
	strh r5, [r7, #6]
_02074BB4:
	ldrh r0, [r4, #0x2e]
	add r8, r8, #1
	add r7, r7, #0x15c
	cmp r8, r0
	blt _02074A88
_02074BC8:
	ldr r1, _02074C64 ; =_022B7A30
	ldr r2, _02074C6C ; =DRIVER_WORK
	ldrh r0, [r1, #0x32]
	strh r0, [r1, #0x30]
	ldrb r1, [r2, #0x73a]
	ldrb r2, [r2, #0x738]
	orr r3, r0, r1
	orrs r3, r2, r3
	beq _02074C0C
	mov r3, #0
	bl sub_0207C8B8
	ldr r1, _02074C6C ; =DRIVER_WORK
	mov r2, #0
	strb r2, [r1, #0x738]
	ldr r0, _02074C64 ; =_022B7A30
	strb r2, [r1, #0x73a]
	strh r2, [r0, #0x32]
_02074C0C:
	ldr r1, _02074C64 ; =_022B7A30
	ldr r0, _02074C6C ; =DRIVER_WORK
	ldrh r4, [r1, #0x34]
	ldrh r3, [r1, #0x36]
	ldrb r1, [r0, #0x73b]
	ldrb r2, [r0, #0x739]
	orr r0, r4, r3
	orr r3, r1, r0
	orrs r3, r2, r3
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r3, #0
	bl sub_0207C8E0
	ldr r1, _02074C6C ; =DRIVER_WORK
	mov r2, #0
	strb r2, [r1, #0x739]
	ldr r0, _02074C64 ; =_022B7A30
	strb r2, [r1, #0x73b]
	strh r2, [r0, #0x36]
	strh r2, [r0, #0x34]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02074C64: .word _022B7A30
_02074C68: .word _022B7A6C
_02074C6C: .word DRIVER_WORK
	arm_func_end sub_02074A58
