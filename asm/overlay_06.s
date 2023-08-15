	.include "asm/macros.inc"
	.include "overlay_06.inc"

	.text

	arm_func_start ov06_0233CA80
ov06_0233CA80: ; 0x0233CA80
	ldr ip, _0233CA90 ; =MemZero
	ldr r0, _0233CA94 ; =_0233EEE0
	mov r1, #0xc
	bx ip
	.align 2, 0
_0233CA90: .word MemZero
_0233CA94: .word _0233EEE0
	arm_func_end ov06_0233CA80

	arm_func_start ov06_0233CA98
ov06_0233CA98: ; 0x0233CA98
	ldr r1, _0233CAA4 ; =_0233EEE0
	str r0, [r1]
	bx lr
	.align 2, 0
_0233CAA4: .word _0233EEE0
	arm_func_end ov06_0233CA98

	arm_func_start ov06_0233CAA8
ov06_0233CAA8: ; 0x0233CAA8
	ldr r0, _0233CAB4 ; =_0233EEE0
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0233CAB4: .word _0233EEE0
	arm_func_end ov06_0233CAA8

	arm_func_start ov06_0233CAB8
ov06_0233CAB8: ; 0x0233CAB8
	ldr r1, _0233CAC4 ; =_0233EEE0
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_0233CAC4: .word _0233EEE0
	arm_func_end ov06_0233CAB8

	arm_func_start ov06_0233CAC8
ov06_0233CAC8: ; 0x0233CAC8
	ldr r0, _0233CAD4 ; =_0233EEE0
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_0233CAD4: .word _0233EEE0
	arm_func_end ov06_0233CAC8

	arm_func_start ov06_0233CAD8
ov06_0233CAD8: ; 0x0233CAD8
	stmdb sp!, {r3, lr}
	mov r0, #4
	mov r1, #8
	bl MemAlloc
	ldr r2, _0233CB0C ; =_0233EEC0
	mov r1, #4
	str r0, [r2]
	bl MemZero
	ldr r0, _0233CB0C ; =_0233EEC0
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0233CB0C: .word _0233EEC0
	arm_func_end ov06_0233CAD8

	arm_func_start ov06_0233CB10
ov06_0233CB10: ; 0x0233CB10
	stmdb sp!, {r3, lr}
	ldr r0, _0233CB38 ; =_0233EEC0
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _0233CB38 ; =_0233EEC0
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0233CB38: .word _0233EEC0
	arm_func_end ov06_0233CB10

	arm_func_start ov06_0233CB3C
ov06_0233CB3C: ; 0x0233CB3C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _0233CD3C ; =_0233EEC0
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0233CD30
_0233CB5C: ; jump table
	b _0233CB74 ; case 0
	b _0233CBA8 ; case 1
	b _0233CC1C ; case 2
	b _0233CCA0 ; case 3
	b _0233CCB4 ; case 4
	b _0233CCD4 ; case 5
_0233CB74:
	mov r0, #6
	bl ov01_02337614
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233CD40 ; =0x0233ED1C
	ldr r3, _0233CD44 ; =0x000037A9
	mov r1, r0
	bl ov06_0233CD54
	ldr r0, _0233CD3C ; =_0233EEC0
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0]
	b _0233CD30
_0233CBA8:
	bl ov06_0233CD94
	mov r4, r0
	bl ov06_02046BA0
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, #6
	bl ov01_02337624
	cmp r4, #0x10
	ldreq r0, _0233CD3C ; =_0233EEC0
	moveq r1, #4
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0233CD30
	sub r0, r4, #0x11
	cmp r0, #1
	bhi _0233CD30
	mov r0, #7
	bl ov01_02337614
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233CD48 ; =0x0233ED34
	ldr r3, _0233CD4C ; =0x000037AC
	mov r1, r0
	bl ov06_0233CD54
	ldr r0, _0233CD3C ; =_0233EEC0
	mov r1, #2
	ldr r0, [r0]
	str r1, [r0]
	b _0233CD30
_0233CC1C:
	bl ov06_0233CD94
	mov r4, r0
	bl ov06_02046BA0
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, #7
	bl ov01_02337624
	cmp r4, #0x10
	bne _0233CC60
	ldr r1, _0233CD50 ; =0x000037AF
	mov r0, #0x1c
	bl ov06_0233CDC8
	ldr r0, _0233CD3C ; =_0233EEC0
	mov r1, #3
	ldr r0, [r0]
	str r1, [r0]
	b _0233CD30
_0233CC60:
	sub r0, r4, #0x11
	cmp r0, #1
	bhi _0233CD30
	mov r0, #6
	bl ov01_02337614
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233CD40 ; =0x0233ED1C
	ldr r3, _0233CD44 ; =0x000037A9
	mov r1, r0
	bl ov06_0233CD54
	ldr r0, _0233CD3C ; =_0233EEC0
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0]
	b _0233CD30
_0233CCA0:
	bl ov06_0233CDE4
	cmp r0, #0x12
	bne _0233CD30
	mov r0, #1
	b _0233CD34
_0233CCB4:
	bl sub_02046D20
	mov r0, #0x11
	bl sub_020668B4
	ldr r0, _0233CD3C ; =_0233EEC0
	mov r1, #5
	ldr r0, [r0]
	str r1, [r0]
	b _0233CD30
_0233CCD4:
	bl sub_02066A44
	mvn r1, #0
	cmp r0, r1
	bne _0233CD1C
	bl sub_02067664
	mov r0, #6
	bl ov01_02337614
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233CD40 ; =0x0233ED1C
	ldr r3, _0233CD44 ; =0x000037A9
	mov r1, r0
	bl ov06_0233CD54
	ldr r0, _0233CD3C ; =_0233EEC0
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0]
	b _0233CD30
_0233CD1C:
	cmp r0, #1
	bne _0233CD30
	bl sub_02067664
	mov r0, #2
	b _0233CD34
_0233CD30:
	mov r0, #0
_0233CD34:
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0233CD3C: .word _0233EEC0
_0233CD40: .word 0x0233ED1C
_0233CD44: .word 0x000037A9
_0233CD48: .word 0x0233ED34
_0233CD4C: .word 0x000037AC
_0233CD50: .word 0x000037AF
	arm_func_end ov06_0233CB3C

	arm_func_start ov06_0233CD54
ov06_0233CD54: ; 0x0233CD54
	stmdb sp!, {r3, lr}
	ldrsb ip, [sp, #8]
	str ip, [sp]
	bl sub_02046A9C
	ldmia sp!, {r3, pc}
	arm_func_end ov06_0233CD54

	arm_func_start ov06_0233CD68
ov06_0233CD68: ; 0x0233CD68
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
	arm_func_end ov06_0233CD68

	arm_func_start ov06_0233CD94
ov06_0233CD94: ; 0x0233CD94
	stmdb sp!, {r3, lr}
	bl sub_02046B04
	mvn r1, #1
	cmp r0, r1
	moveq r0, #0x12
	ldmeqia sp!, {r3, pc}
	add r1, r1, #1
	cmp r0, r1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov06_0233CD94

	arm_func_start ov06_02046BA0
ov06_02046BA0: ; 0x0233CDBC
	ldr ip, _0233CDC4 ; =sub_02046BA0
	bx ip
	.align 2, 0
_0233CDC4: .word sub_02046BA0
	arm_func_end ov06_02046BA0

	arm_func_start ov06_0233CDC8
ov06_0233CDC8: ; 0x0233CDC8
	ldr ip, _0233CDD4 ; =sub_02046BE8
	mov r2, #0
	bx ip
	.align 2, 0
_0233CDD4: .word sub_02046BE8
	arm_func_end ov06_0233CDC8

	arm_func_start ov06_0233CDD8
ov06_0233CDD8: ; 0x0233CDD8
	ldr ip, _0233CDE0 ; =sub_02046BE8
	bx ip
	.align 2, 0
_0233CDE0: .word sub_02046BE8
	arm_func_end ov06_0233CDD8

	arm_func_start ov06_0233CDE4
ov06_0233CDE4: ; 0x0233CDE4
	stmdb sp!, {r3, lr}
	bl sub_02046C78
	cmp r0, #0
	movne r0, #0x12
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov06_0233CDE4

	arm_func_start ov06_0233CDFC
ov06_0233CDFC: ; 0x0233CDFC
	stmdb sp!, {r3, lr}
	mov r0, #0x70
	mov r1, #8
	bl MemAlloc
	ldr r2, _0233CE30 ; =0x0233EEC4
	mov r1, #0x70
	str r0, [r2]
	bl MemZero
	ldr r0, _0233CE30 ; =0x0233EEC4
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0233CE30: .word 0x0233EEC4
	arm_func_end ov06_0233CDFC

	arm_func_start ov06_0233CE34
ov06_0233CE34: ; 0x0233CE34
	stmdb sp!, {r3, lr}
	ldr r0, _0233CE5C ; =0x0233EEC4
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _0233CE5C ; =0x0233EEC4
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0233CE5C: .word 0x0233EEC4
	arm_func_end ov06_0233CE34

	arm_func_start ov06_0233CE60
ov06_0233CE60: ; 0x0233CE60
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r1, _0233D4D0 ; =0x00000401
	ldr r4, [r0]
	ldr r2, [r4]
	cmp r2, r1
	bgt _0233CEF0
	bge _0233D2E4
	sub r0, r1, #0xd7
	cmp r2, r0
	bgt _0233CED0
	subs r0, r2, #0x320
	addpl pc, pc, r0, lsl #2
	b _0233CEC4
_0233CE98: ; jump table
	b _0233CF78 ; case 0
	b _0233CFA4 ; case 1
	b _0233D4C4 ; case 2
	b _0233D004 ; case 3
	b _0233D298 ; case 4
	b _0233D4C4 ; case 5
	b _0233D4C4 ; case 6
	b _0233D4C4 ; case 7
	b _0233D4C4 ; case 8
	b _0233D4C4 ; case 9
	b _0233D3E0 ; case 10
_0233CEC4:
	cmp r2, #0
	beq _0233CF44
	b _0233D4C4
_0233CED0:
	sub r0, r1, #0xf
	cmp r2, r0
	bgt _0233CEE4
	beq _0233D3F4
	b _0233D4C4
_0233CEE4:
	cmp r2, #0x400
	beq _0233D2C4
	b _0233D4C4
_0233CEF0:
	add r0, r1, #3
	cmp r2, r0
	bgt _0233CF24
	bge _0233D3CC
	add r0, r1, #1
	cmp r2, r0
	bgt _0233CF14
	beq _0233D318
	b _0233D4C4
_0233CF14:
	add r0, r1, #2
	cmp r2, r0
	beq _0233D380
	b _0233D4C4
_0233CF24:
	cmp r2, #0x700
	bgt _0233CF34
	beq _0233D43C
	b _0233D4C4
_0233CF34:
	add r0, r1, #0x300
	cmp r2, r0
	beq _0233D454
	b _0233D4C4
_0233CF44:
	add r0, r4, #0x44
	mov r1, #0x22
	bl MemZero
	bl ov06_0233CAA8
	cmp r0, #0
	beq _0233D4C4
	bl ov06_0233CAA8
	cmp r0, #1
	ldreq r0, _0233D4CC ; =0x0233EEC4
	moveq r1, #0x320
	ldreq r0, [r0]
	streq r1, [r0]
	b _0233D4C4
_0233CF78:
	mov r2, #0
	mov r3, r2
	add r1, r4, #0x44
	mov r0, #6
	bl ShowKeyboard
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r1, _0233D4D4 ; =0x00000321
	ldr r0, [r0]
	str r1, [r0]
	bl sub_02046D20
	b _0233D4C4
_0233CFA4:
	bl GetKeyboardStatus
	ldr r1, _0233D4CC ; =0x0233EEC4
	ldr r2, [r1]
	str r0, [r2, #0x40]
	ldr r1, [r1]
	ldr r0, [r1, #0x40]
	cmp r0, #3
	bne _0233CFF4
	bl GetKeyboardStringResult
	ldr r2, _0233D4CC ; =0x0233EEC4
	mov r1, r0
	ldr r0, [r2]
	mov r2, #0x22
	add r0, r0, #0x44
	bl MemcpySimple
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r1, _0233D4D8 ; =0x00000323
	ldr r0, [r0]
	str r1, [r0]
	b _0233D4C4
_0233CFF4:
	cmp r0, #2
	ldreq r0, _0233D4D8 ; =0x00000323
	streq r0, [r1]
	b _0233D4C4
_0233D004:
	bl sub_02037468
	cmp r0, #1
	bne _0233D4C4
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	cmp r0, #3
	bne _0233D290
	bl ov06_0233CAA8
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r4, [r0]
	add r0, r4, #0x44
	add r1, r4, #0x20
	bl sub_0204DD80
	cmp r0, #0
	moveq r4, #2
	beq _0233D110
	add r0, r4, #0x20
	bl sub_0205E238
	cmp r0, #0
	beq _0233D070
	mov r0, #2
	bl sub_0204C94C
	cmp r0, #0
	movne r4, #5
	moveq r4, #1
	b _0233D110
_0233D070:
	add r0, r4, #0x20
	bl sub_0205C854
	cmp r0, #0
	moveq r4, #3
	beq _0233D110
	ldrsh r0, [r4, #0x34]
	mov r1, #1
	bl CanSendItem
	cmp r0, #0
	moveq r4, #3
	beq _0233D110
	ldrb r0, [r4, #0x36]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0233D0D8
_0233D0AC: ; jump table
	b _0233D0D8 ; case 0
	b _0233D0C0 ; case 1
	b _0233D0C0 ; case 2
	b _0233D0C0 ; case 3
	b _0233D0C0 ; case 4
_0233D0C0:
	ldrsh r0, [r4, #0x38]
	mov r1, #1
	bl CanSendItem
	cmp r0, #0
	moveq r4, #3
	beq _0233D110
_0233D0D8:
	add r0, r4, #0x20
	bl sub_0205EC98
	cmp r0, #0
	movne r4, #4
	bne _0233D110
	add r0, r4, #0x20
	bl sub_0205FA38
	cmp r0, #0
	movne r4, #4
	bne _0233D110
	bl sub_0205ED84
	cmp r0, #8
	movge r4, #6
	movlt r4, #0
_0233D110:
	ldr r0, _0233D4DC ; =0x0233EDCC
	bl DebugPrint0__0200C1FC
	ldr r6, _0233D4E0 ; =0x0233EDD0
	ldr r5, _0233D4CC ; =0x0233EEC4
	mov r7, #0
_0233D124:
	ldr r1, [r5]
	mov r0, r6
	add r1, r1, r7
	ldrb r1, [r1, #0x44]
	bl DebugPrint0__0200C1FC
	add r7, r7, #1
	cmp r7, #0x22
	blt _0233D124
	ldr r0, _0233D4DC ; =0x0233EDCC
	bl DebugPrint0__0200C1FC
	ldr r0, _0233D4CC ; =0x0233EEC4
	cmp r4, #7
	ldr r1, [r0]
	str r4, [r1, #0x6c]
	addls pc, pc, r4, lsl #2
	b _0233D4C4
_0233D164: ; jump table
	b _0233D184 ; case 0
	b _0233D1CC ; case 1
	b _0233D20C ; case 2
	b _0233D20C ; case 3
	b _0233D240 ; case 4
	b _0233D260 ; case 5
	b _0233D280 ; case 6
	b _0233D4C4 ; case 7
_0233D184:
	mov r0, #0x1c
	add r1, r0, #0x3780
	bl ov06_0233CDC8
	ldr r0, _0233D4CC ; =0x0233EEC4
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x20
	bl sub_02069800
	ldr r0, _0233D4CC ; =0x0233EEC4
	mov r2, #0x324
	ldr r1, [r0]
	str r2, [r1]
	ldr r0, [r0]
	add r0, r0, #0x20
	bl sub_0205F0B8
	bl sub_0205F5A8
	bl sub_0205F710
	b _0233D4C4
_0233D1CC:
	mov r0, #2
	mov r1, #1
	bl sub_0204C978
	mov r0, #0x1c
	add r1, r0, #0x3780
	bl ov06_0233CDC8
	ldr r0, _0233D4CC ; =0x0233EEC4
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x20
	bl sub_02069800
	ldr r0, _0233D4CC ; =0x0233EEC4
	mov r1, #0x324
	ldr r0, [r0]
	str r1, [r0]
	b _0233D4C4
_0233D20C:
	mov r0, #5
	bl ov01_02337614
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233D4E4 ; =0x0233ED04
	ldr r3, _0233D4E8 ; =0x00003799
	mov r1, r0
	bl ov06_0233CD54
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r1, _0233D4EC ; =0x000003F2
	ldr r0, [r0]
	str r1, [r0]
	b _0233D4C4
_0233D240:
	ldr r1, _0233D4F0 ; =0x000037A7
	mov r0, #0x1c
	bl ov06_0233CDC8
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r1, _0233D4F4 ; =0x0000032A
	ldr r0, [r0]
	str r1, [r0]
	b _0233D4C4
_0233D260:
	ldr r1, _0233D4F8 ; =0x000037A8
	mov r0, #0x1c
	bl ov06_0233CDC8
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r1, _0233D4F4 ; =0x0000032A
	ldr r0, [r0]
	str r1, [r0]
	b _0233D4C4
_0233D280:
	ldr r0, [r0]
	mov r1, #0x700
	str r1, [r0]
	b _0233D4C4
_0233D290:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0233D298:
	bl ov06_0233CDE4
	mov r4, r0
	bl sub_020698B8
	cmp r4, #0x12
	bne _0233D4C4
	bl sub_02069904
	ldr r0, _0233D4CC ; =0x0233EEC4
	mov r1, #0x400
	ldr r0, [r0]
	str r1, [r0]
	b _0233D4C4
_0233D2C4:
	ldr r1, _0233D4FC ; =0x0000023B
	mov r0, #0
	bl ov06_0233CDC8
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r1, _0233D4D0 ; =0x00000401
	ldr r0, [r0]
	str r1, [r0]
	b _0233D4C4
_0233D2E4:
	bl ov06_0233CDE4
	cmp r0, #0x12
	bne _0233D4C4
	mov r0, #0xe0
	mov r1, #0x88
	mov r2, #1
	bl sub_02029F88
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r1, _0233D500 ; =0x00000402
	ldr r0, [r0]
	str r1, [r0]
	bl sub_02003B94
	b _0233D4C4
_0233D318:
	mov r0, #3
	bl NoteSaveBase
	mov r4, r0
	bl sub_02003BC8
	bl sub_02029FBC
	cmp r4, #0
	bne _0233D354
	mov r0, #0x1c
	mov r1, #0x23c
	bl ov06_0233CDC8
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r1, _0233D504 ; =0x00000403
	ldr r0, [r0]
	str r1, [r0]
	b _0233D4C4
_0233D354:
	cmp r4, #1
	moveq r0, #3
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _0233D508 ; =0x00000239
	mov r0, #0x1c
	bl ov06_0233CDC8
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r1, _0233D50C ; =0x00000404
	ldr r0, [r0]
	str r1, [r0]
	b _0233D4C4
_0233D380:
	bl ov06_0233CDE4
	cmp r0, #0x12
	bne _0233D4C4
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	cmp r0, #1
	mov r0, #0x1c
	bne _0233D3B0
	ldr r1, _0233D510 ; =0x0000379E
	bl ov06_0233CDC8
	b _0233D3B8
_0233D3B0:
	ldr r1, _0233D514 ; =0x0000379D
	bl ov06_0233CDC8
_0233D3B8:
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r1, _0233D4F4 ; =0x0000032A
	ldr r0, [r0]
	str r1, [r0]
	b _0233D4C4
_0233D3CC:
	bl ov06_0233CDE4
	cmp r0, #0x12
	bne _0233D4C4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0233D3E0:
	bl ov06_0233CDE4
	cmp r0, #0x12
	bne _0233D4C4
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0233D3F4:
	bl ov06_0233CD94
	mov r4, r0
	bl ov06_02046BA0
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, #5
	bl ov01_02337624
	cmp r4, #0x10
	ldreq r0, _0233D4CC ; =0x0233EEC4
	moveq r1, #0x320
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0233D4C4
	sub r0, r4, #0x11
	cmp r0, #1
	bhi _0233D4C4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0233D43C:
	bl ov06_0233CAD8
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r1, _0233D518 ; =0x00000701
	ldr r0, [r0]
	str r1, [r0]
	b _0233D4C4
_0233D454:
	bl ov06_0233CB3C
	cmp r0, #2
	bne _0233D4B0
	bl ov06_0233CB10
	ldr r0, _0233D4CC ; =0x0233EEC4
	ldr r0, [r0]
	add r0, r0, #0x20
	bl sub_0205F0B8
	bl sub_0205F5A8
	bl sub_0205F710
	mov r0, #0x1c
	add r1, r0, #0x3780
	bl ov06_0233CDC8
	ldr r0, _0233D4CC ; =0x0233EEC4
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x20
	bl sub_02069800
	ldr r0, _0233D4CC ; =0x0233EEC4
	mov r1, #0x324
	ldr r0, [r0]
	str r1, [r0]
	b _0233D4C4
_0233D4B0:
	cmp r0, #1
	bne _0233D4C4
	bl ov06_0233CB10
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0233D4C4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0233D4CC: .word 0x0233EEC4
_0233D4D0: .word 0x00000401
_0233D4D4: .word 0x00000321
_0233D4D8: .word 0x00000323
_0233D4DC: .word 0x0233EDCC
_0233D4E0: .word 0x0233EDD0
_0233D4E4: .word 0x0233ED04
_0233D4E8: .word 0x00003799
_0233D4EC: .word 0x000003F2
_0233D4F0: .word 0x000037A7
_0233D4F4: .word 0x0000032A
_0233D4F8: .word 0x000037A8
_0233D4FC: .word 0x0000023B
_0233D500: .word 0x00000402
_0233D504: .word 0x00000403
_0233D508: .word 0x00000239
_0233D50C: .word 0x00000404
_0233D510: .word 0x0000379E
_0233D514: .word 0x0000379D
_0233D518: .word 0x00000701
	arm_func_end ov06_0233CE60

	arm_func_start ov06_0233D51C
ov06_0233D51C: ; 0x0233D51C
	stmdb sp!, {r3, lr}
	ldr r0, _0233D59C ; =0x000004B4
	mov r1, #8
	bl MemAlloc
	ldr r2, _0233D5A0 ; =0x0233EEEC
	ldr r1, _0233D59C ; =0x000004B4
	str r0, [r2]
	bl MemZero
	mov r2, #0
	ldr r0, _0233D5A0 ; =0x0233EEEC
	mov lr, r2
_0233D548:
	ldr r1, [r0]
	add r1, r1, r2
	add r2, r2, #1
	strb lr, [r1, #0x10]
	cmp r2, #4
	blt _0233D548
	ldr r0, _0233D5A0 ; =0x0233EEEC
	mvn r3, #0
	ldr ip, [r0]
	mov r1, #0xc
	add r2, ip, #0x10
	str r2, [ip, #0x74]
	ldr r2, [r0]
	str lr, [r2, #0xc]
	ldr r2, [r0]
	strh r3, [r2, #0xb0]
	ldr r0, [r0]
	bl MemZero
	bl sub_02046D20
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0233D59C: .word 0x000004B4
_0233D5A0: .word 0x0233EEEC
	arm_func_end ov06_0233D51C

	arm_func_start ov06_0233D5A4
ov06_0233D5A4: ; 0x0233D5A4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r0, _0233DC74 ; =0x0233EEEC
	ldr r1, _0233DC78 ; =0x00003001
	ldr r3, [r0]
	ldr r2, [r3, #0xc]
	cmp r2, r1
	bgt _0233D630
	bge _0233D9D0
	sub r0, r1, #0x2000
	cmp r2, r0
	bgt _0233D608
	bge _0233D848
	cmp r2, #3
	bgt _0233D5FC
	cmp r2, #0
	addge pc, pc, r2, lsl #2
	b _0233DC68
_0233D5EC: ; jump table
	b _0233D690 ; case 0
	b _0233D718 ; case 1
	b _0233D7D4 ; case 2
	b _0233D7F0 ; case 3
_0233D5FC:
	cmp r2, #0x1000
	beq _0233D80C
	b _0233DC68
_0233D608:
	sub r0, r1, #0x1000
	cmp r2, r0
	bgt _0233D624
	bge _0233D918
	cmp r2, #0x2000
	beq _0233D8DC
	b _0233DC68
_0233D624:
	cmp r2, #0x3000
	beq _0233D9B8
	b _0233DC68
_0233D630:
	add r0, r1, #0x2000
	cmp r2, r0
	bgt _0233D668
	bge _0233DB00
	add r0, r1, #0x1000
	cmp r2, r0
	bgt _0233D65C
	bge _0233DA68
	cmp r2, #0x4000
	beq _0233DA54
	b _0233DC68
_0233D65C:
	cmp r2, #0x5000
	beq _0233DAEC
	b _0233DC68
_0233D668:
	add r0, r1, #0x3000
	cmp r2, r0
	bgt _0233D684
	bge _0233DB9C
	cmp r2, #0x6000
	beq _0233DB80
	b _0233DC68
_0233D684:
	cmp r2, r1, lsl #1
	beq _0233DBD4
	b _0233DC68
_0233D690:
	bl ov01_0232E94C
	cmp r0, #0
	bne _0233DC68
	bl ov01_0232F3F4
	bl ov06_0233CA80
	bl sub_0205ED84
	cmp r0, #0
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #3
	ldrne r0, _0233DC74 ; =0x0233EEEC
	movne r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x10]
	mov r0, #0
	bl ov01_02337614
	ldr r2, _0233DC7C ; =0x0233ED68
	ldr r1, _0233DC74 ; =0x0233EEEC
	ldr r2, [r2, r0, lsl #3]
	ldr r0, [r1]
	ldr r3, _0233DC80 ; =0x0233ED64
	str r2, [r0, #0x14]
	ldr r2, _0233DC84 ; =0x00003787
	str r3, [sp]
	str r2, [sp, #4]
	ldr r3, [r1]
	mov r0, #0
	ldr r2, _0233DC88 ; =0x00000233
	mov r1, r0
	add r3, r3, #0x14
	bl ov06_0233CD68
	ldr r0, _0233DC74 ; =0x0233EEEC
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0, #0xc]
_0233D718:
	bl ov06_0233CD94
	mov r4, r0
	bl ov06_02046BA0
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, #0
	bl ov01_02337624
	cmp r4, #1
	bne _0233D758
	mov r0, #0
	bl ov06_0233CA98
	ldr r0, _0233DC74 ; =0x0233EEEC
	mov r1, #0x1000
	ldr r0, [r0]
	str r1, [r0, #0xc]
	b _0233DC68
_0233D758:
	cmp r4, #2
	bne _0233D7BC
	bl sub_0204E210
	cmp r0, #1
	bne _0233D7A0
	bl GetAdventureLogDungeonFloor
	ldrb r0, [r0]
	bl DungeonRequestsDoneWrapper
	cmp r0, #8
	blt _0233D7A0
	ldr r1, _0233DC8C ; =0x0000378A
	mov r0, #0x1c
	bl ov06_0233CDC8
	ldr r0, _0233DC74 ; =0x0233EEEC
	mov r1, #2
	ldr r0, [r0]
	str r1, [r0, #0xc]
	b _0233DC68
_0233D7A0:
	mov r0, #1
	bl ov06_0233CA98
	ldr r0, _0233DC74 ; =0x0233EEEC
	mov r1, #0x2000
	ldr r0, [r0]
	str r1, [r0, #0xc]
	b _0233DC68
_0233D7BC:
	cmp r4, #0x12
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #3
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
	b _0233DC68
_0233D7D4:
	bl ov06_0233CDE4
	cmp r0, #0x12
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #0
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
	b _0233DC68
_0233D7F0:
	bl ov01_0232E94C
	cmp r0, #0
	bne _0233DC68
	mov r0, #0x12
	bl ov01_023310B8
	mov r0, #3
	b _0233DC6C
_0233D80C:
	bl ov01_0232E94C
	cmp r0, #0
	bne _0233DC68
	mov r0, #1
	bl ov01_02337614
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233DC90 ; =0x0233ED84
	ldr r3, _0233DC94 ; =0x0000378B
	mov r1, r0
	bl ov06_0233CD54
	ldr r0, _0233DC74 ; =0x0233EEEC
	ldr r1, _0233DC98 ; =0x00001001
	ldr r0, [r0]
	str r1, [r0, #0xc]
_0233D848:
	bl ov06_0233CD94
	mov r4, r0
	bl ov06_02046BA0
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, #1
	bl ov01_02337624
	cmp r4, #0xd
	bne _0233D894
	mov r0, #0
	bl ov06_0233CAB8
	ldr r1, _0233DC9C ; =0x0000378F
	mov r0, #0x1c
	bl ov06_0233CDC8
	ldr r0, _0233DC74 ; =0x0233EEEC
	mov r1, #0x6000
	ldr r0, [r0]
	str r1, [r0, #0xc]
	b _0233DC68
_0233D894:
	cmp r4, #0xf
	bne _0233D8C4
	mov r0, #1
	bl ov06_0233CAB8
	ldr r1, _0233DCA0 ; =0x00003790
	mov r0, #0x1c
	bl ov06_0233CDC8
	ldr r0, _0233DC74 ; =0x0233EEEC
	mov r1, #0x6000
	ldr r0, [r0]
	str r1, [r0, #0xc]
	b _0233DC68
_0233D8C4:
	cmp r4, #0x12
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #0
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
	b _0233DC68
_0233D8DC:
	bl ov01_0232E94C
	cmp r0, #0
	bne _0233DC68
	mov r0, #2
	bl ov01_02337614
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233DCA4 ; =0x0233EDA4
	ldr r3, _0233DCA8 ; =0x00003794
	mov r1, r0
	bl ov06_0233CD54
	ldr r0, _0233DC74 ; =0x0233EEEC
	ldr r1, _0233DCAC ; =0x00002001
	ldr r0, [r0]
	str r1, [r0, #0xc]
_0233D918:
	bl ov06_0233CD94
	mov r4, r0
	bl ov06_02046BA0
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, #2
	bl ov01_02337624
	cmp r4, #0xd
	bne _0233D958
	mov r0, #0
	bl ov06_0233CAB8
	ldr r0, _0233DC74 ; =0x0233EEEC
	mov r1, #0x3000
	ldr r0, [r0]
	str r1, [r0, #0xc]
	b _0233DC68
_0233D958:
	cmp r4, #0xe
	bne _0233D97C
	mov r0, #2
	arm_func_end ov06_0233D5A4

	arm_func_start ov06_0233D964
ov06_0233D964: ; 0x0233D964
	bl ov06_0233CAB8
	ldr r0, _0233DC74 ; =0x0233EEEC
	mov r1, #0x4000
	ldr r0, [r0]
	str r1, [r0, #0xc]
	b _0233DC68
_0233D97C:
	cmp r4, #0xf
	bne _0233D9A0
	mov r0, #1
	bl ov06_0233CAB8
	ldr r0, _0233DC74 ; =0x0233EEEC
	mov r1, #0x5000
	ldr r0, [r0]
	str r1, [r0, #0xc]
	b _0233DC68
_0233D9A0:
	cmp r4, #0x12
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #0
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
	b _0233DC68
_0233D9B8:
	ldrsh r0, [r3, #0xb0]
	bl sub_02069D40
	ldr r0, _0233DC74 ; =0x0233EEEC
	ldr r1, _0233DC78 ; =0x00003001
	ldr r0, [r0]
	str r1, [r0, #0xc]
_0233D9D0:
	bl sub_02003BFC
	bl sub_02069DC0
	cmp r0, #1
	bne _0233DA1C
	bl sub_02069D94
	bl ov06_0233CAA8
	cmp r0, #0
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #0x1000
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
	beq _0233DC68
	bl ov06_0233CAA8
	cmp r0, #1
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #0x2000
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
	b _0233DC68
_0233DA1C:
	cmp r0, #2
	bne _0233DA3C
	bl sub_02069D94
	ldr r0, _0233DC74 ; =0x0233EEEC
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0xc]
	b _0233DC68
_0233DA3C:
	cmp r0, #3
	bne _0233DC68
	bl sub_02069D94
	bl sub_0204A018
	mov r0, #3
	b _0233DC6C
_0233DA54:
	bl ov06_0233DCF8
	ldr r0, _0233DC74 ; =0x0233EEEC
	ldr r1, _0233DCB0 ; =0x00004001
	ldr r0, [r0]
	str r1, [r0, #0xc]
_0233DA68:
	bl sub_02003BFC
	bl ov06_0233DD7C
	cmp r0, #1
	bne _0233DAB4
	bl ov06_0233DD40
	bl ov06_0233CAA8
	cmp r0, #0
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #0x1000
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
	beq _0233DC68
	bl ov06_0233CAA8
	cmp r0, #1
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #0x2000
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
	b _0233DC68
_0233DAB4:
	cmp r0, #2
	bne _0233DAD4
	bl ov06_0233DD40
	ldr r0, _0233DC74 ; =0x0233EEEC
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0xc]
	b _0233DC68
_0233DAD4:
	cmp r0, #3
	bne _0233DC68
	bl ov06_0233DD40
	bl sub_0204A018
	mov r0, #3
	b _0233DC6C
_0233DAEC:
	bl ov06_0233CDFC
	ldr r0, _0233DC74 ; =0x0233EEEC
	ldr r1, _0233DCB4 ; =0x00005001
	ldr r0, [r0]
	str r1, [r0, #0xc]
_0233DB00:
	bl ov06_0233CE60
	cmp r0, #1
	bne _0233DB48
	bl ov06_0233CE34
	bl ov06_0233CAA8
	cmp r0, #0
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #0x1000
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
	beq _0233DC68
	bl ov06_0233CAA8
	cmp r0, #1
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #0x2000
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
	b _0233DC68
_0233DB48:
	cmp r0, #2
	bne _0233DB68
	bl ov06_0233CE34
	ldr r0, _0233DC74 ; =0x0233EEEC
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0xc]
	b _0233DC68
_0233DB68:
	cmp r0, #3
	bne _0233DC68
	bl ov06_0233CE34
	bl sub_0204A018
	mov r0, #3
	b _0233DC6C
_0233DB80:
	bl ov06_0233CDE4
	cmp r0, #0x12
	ldreq r0, _0233DC74 ; =0x0233EEEC
	ldreq r1, _0233DCB8 ; =0x00006001
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
	b _0233DC68
_0233DB9C:
	bl sub_02046D20
	bl ov06_0233CAC8
	cmp r0, #1
	bne _0233DBB8
	mov r0, #0x10
	bl sub_020668B4
	b _0233DBC0
_0233DBB8:
	mov r0, #0xf
	bl sub_020668B4
_0233DBC0:
	ldr r0, _0233DC74 ; =0x0233EEEC
	ldr r1, _0233DCBC ; =0x00006002
	ldr r0, [r0]
	str r1, [r0, #0xc]
	b _0233DC68
_0233DBD4:
	bl sub_02066A44
	mvn r1, #0
	cmp r0, r1
	bne _0233DBFC
	bl sub_02067664
	ldr r0, _0233DC74 ; =0x0233EEEC
	mov r1, #0x1000
	ldr r0, [r0]
	str r1, [r0, #0xc]
	b _0233DC68
_0233DBFC:
	cmp r0, #1
	bne _0233DC68
	bl sub_020674CC
	ldr r1, _0233DC74 ; =0x0233EEEC
	ldr r1, [r1]
	strh r0, [r1, #0xb0]
	bl sub_02067664
	bl ov06_0233CAC8
	cmp r0, #0
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #0x3000
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
	beq _0233DC68
	bl ov06_0233CAC8
	cmp r0, #2
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #0x4000
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
	beq _0233DC68
	bl ov06_0233CAC8
	cmp r0, #1
	ldreq r0, _0233DC74 ; =0x0233EEEC
	moveq r1, #0x1000
	ldreq r0, [r0]
	streq r1, [r0, #0xc]
_0233DC68:
	mov r0, #1
_0233DC6C:
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0233DC74: .word 0x0233EEEC
_0233DC78: .word 0x00003001
_0233DC7C: .word 0x0233ED68
_0233DC80: .word 0x0233ED64
_0233DC84: .word 0x00003787
_0233DC88: .word 0x00000233
_0233DC8C: .word 0x0000378A
_0233DC90: .word 0x0233ED84
_0233DC94: .word 0x0000378B
_0233DC98: .word 0x00001001
_0233DC9C: .word 0x0000378F
_0233DCA0: .word 0x00003790
_0233DCA4: .word 0x0233EDA4
_0233DCA8: .word 0x00003794
_0233DCAC: .word 0x00002001
_0233DCB0: .word 0x00004001
_0233DCB4: .word 0x00005001
_0233DCB8: .word 0x00006001
_0233DCBC: .word 0x00006002
	arm_func_end ov06_0233D964

	arm_func_start ov06_0233DCC0
ov06_0233DCC0: ; 0x0233DCC0
	stmdb sp!, {r3, lr}
	ldr r0, _0233DCF4 ; =0x0233EEEC
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02046D20
	ldr r0, _0233DCF4 ; =0x0233EEEC
	ldr r0, [r0]
	bl MemFree
	ldr r0, _0233DCF4 ; =0x0233EEEC
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0233DCF4: .word 0x0233EEEC
	arm_func_end ov06_0233DCC0

	arm_func_start ov06_0233DCF8
ov06_0233DCF8: ; 0x0233DCF8
	stmdb sp!, {r3, lr}
	mov r0, #0x228
	mov r1, #8
	bl MemAlloc
	ldr r2, _0233DD3C ; =0x0233EEC8
	mov r1, #0x228
	str r0, [r2]
	bl MemZero
	ldr r0, _0233DD3C ; =0x0233EEC8
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1]
	ldr r1, [r0]
	strb r2, [r1, #0x21c]
	ldr r0, [r0]
	strb r2, [r0, #0x224]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0233DD3C: .word 0x0233EEC8
	arm_func_end ov06_0233DCF8

	arm_func_start ov06_0233DD40
ov06_0233DD40: ; 0x0233DD40
	stmdb sp!, {r3, lr}
	ldr r0, _0233DD78 ; =0x0233EEC8
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #1
	bl ov00_022BCBAC
	ldr r0, _0233DD78 ; =0x0233EEC8
	ldr r0, [r0]
	bl MemFree
	ldr r0, _0233DD78 ; =0x0233EEC8
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0233DD78: .word 0x0233EEC8
	arm_func_end ov06_0233DD40

	arm_func_start ov06_0233DD7C
ov06_0233DD7C: ; 0x0233DD7C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, _0233E8E4 ; =0x00004003
	ldr r3, [r0]
	ldr r2, [r3]
	cmp r2, r1
	bgt _0233DE28
	bge _0233E7DC
	ldr r0, _0233E8E8 ; =0x00001005
	cmp r2, r0
	bgt _0233DDFC
	sub r0, r0, #4
	subs r0, r2, r0
	addpl pc, pc, r0, lsl #2
	b _0233DDD0
_0233DDBC: ; jump table
	b _0233DEEC ; case 0
	b _0233DF44 ; case 1
	b _0233DF98 ; case 2
	b _0233E16C ; case 3
	b _0233E1C0 ; case 4
_0233DDD0:
	cmp r2, #1
	bgt _0233DDF0
	cmp r2, #0
	blt _0233E8D4
	beq _0233DE80
	cmp r2, #1
	beq _0233DEB8
	b _0233E8D4
_0233DDF0:
	cmp r2, #0x1000
	beq _0233DED4
	b _0233E8D4
_0233DDFC:
	sub r0, r1, #2
	cmp r2, r0
	bgt _0233DE18
	bge _0233E768
	cmp r2, #0x4000
	beq _0233E700
	b _0233E8D4
_0233DE18:
	sub r0, r1, #1
	cmp r2, r0
	beq _0233E734
	b _0233E8D4
_0233DE28:
	cmp r2, #0x6000
	bgt _0233DE54
	bge _0233E86C
	add r0, r1, #1
	cmp r2, r0
	bgt _0233DE48
	beq _0233E844
	b _0233E8D4
_0233DE48:
	cmp r2, #0x5000
	beq _0233E1E4
	b _0233E8D4
_0233DE54:
	ldr r0, _0233E8EC ; =0x00006002
	cmp r2, r0
	bgt _0233DE74
	bge _0233E8A4
	sub r0, r0, #1
	cmp r2, r0
	beq _0233E890
	b _0233E8D4
_0233DE74:
	cmp r2, #0x8000
	beq _0233E858
	b _0233E8D4
_0233DE80:
	bl sub_0204A1CC
	bl ov00_022BCA80
	cmp r0, #3
	ldrne r0, _0233E8E0 ; =0x0233EEC8
	movne r1, #0x1000
	ldrne r0, [r0]
	strne r1, [r0]
	bne _0233E8D4
	bl ov01_02339888
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233DEB8:
	bl ov01_023398A4
	cmp r0, #0
	ldrne r0, _0233E8E0 ; =0x0233EEC8
	movne r1, #0x1000
	ldrne r0, [r0]
	strne r1, [r0]
	b _0233E8D4
_0233DED4:
	bl ov01_02338A24
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, _0233E8F0 ; =0x00001001
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233DEEC:
	bl ov01_02338EC4
	cmp r0, #1
	beq _0233DF2C
	cmp r0, #4
	beq _0233DF0C
	cmp r0, #8
	beq _0233DF2C
	b _0233E8D4
_0233DF0C:
	ldr r1, _0233E8F4 ; =0x000037A1
	mov r0, #0
	bl ov06_0233CDC8
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, _0233E8F8 ; =0x00001002
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233DF2C:
	bl ov01_02338B08
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #0x6000
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233DF44:
	bl ov06_0233CDE4
	mov r4, r0
	bl ov01_02338EC4
	cmp r0, #5
	bne _0233DF74
	bl sub_02046D20
	bl ov01_02338C34
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, _0233E8E8 ; =0x00001005
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233DF74:
	cmp r4, #0x12
	bne _0233E8D4
	mov r0, #0
	bl ov01_02338E48
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, _0233E8FC ; =0x00001003
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233DF98:
	bl ov01_02338EC4
	cmp r0, #4
	bne _0233E148
	bl ov01_02338E54
	mov r8, r0
	cmp r8, #0
	bgt _0233DFD4
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r3, #0
	ldr r2, [r0]
	mov r1, #0x5000
	str r3, [r2, #4]
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233DFD4:
	mov sl, #0
	mov sb, sl
	mov r6, sl
	mov r5, #0xff
	ldr fp, _0233E900 ; =0x50443357
	ldr r4, _0233E8E0 ; =0x0233EEC8
	b _0233E0F4
_0233DFF0:
	mov r0, sb
	add r1, sp, #8
	bl ov01_02338E68
	mov r7, r0
	ldr r0, [r7]
	cmp r0, fp
	beq _0233E018
	ldr r0, _0233E904 ; =0x0233EDD4
	bl DebugPrint0__0200C1FC
	b _0233E0F0
_0233E018:
	ldr r1, [r7, #4]
	ldr r0, _0233E908 ; =0x08261522
	cmp r1, r0
	beq _0233E034
	ldr r0, _0233E90C ; =0x0233EDFC
	bl DebugPrint0__0200C1FC
	b _0233E0F0
_0233E034:
	bl GetLanguageType
	ldr r1, [r7, #0xc]
	cmp r1, r0
	beq _0233E050
	ldr r0, _0233E910 ; =0x0233EE24
	bl DebugPrint0__0200C1FC
	b _0233E0F0
_0233E050:
	add r0, r7, #0x20
	ldr r1, [sp, #8]
	sub r1, r1, #0x20
	bl sub_02004F80
	mov r2, r0
	ldr r1, [r7, #8]
	cmp r1, r2
	beq _0233E07C
	ldr r0, _0233E914 ; =0x0233EE4C
	bl DebugPrint0__0200C1FC
	b _0233E0F0
_0233E07C:
	ldr r2, [sp, #8]
	add r1, r7, #0x20
	add r0, sp, #0x30
	bl sub_02050974
	ldr r1, [r4]
	add r0, sp, #0x30
	add r1, r1, #0x18
	add r7, r1, sl, lsl #5
	mov r1, r7
	mov r2, #0
	bl sub_0205FD88
	add r0, sp, #0x30
	bl sub_020509BC
	mov r0, r7
	bl sub_0205E238
	cmp r0, #0
	bne _0233E0EC
	mov r0, r7
	bl sub_0205D1F4
	cmp r0, #0
	bne _0233E0EC
	ldr r0, _0233E918 ; =0x0233EE84
	bl DebugPrint0__0200C1FC
	strb r6, [r7]
	strb r5, [r7, #4]
	strb r6, [r7, #5]
	strb r6, [r7, #0x16]
	b _0233E0F0
_0233E0EC:
	add sl, sl, #1
_0233E0F0:
	add sb, sb, #1
_0233E0F4:
	cmp sb, r8
	blt _0233DFF0
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, [r0]
	str sl, [r1, #0x14]
	ldr r2, [r0]
	ldr r1, [r2, #0x14]
	cmp r1, #0
	ble _0233E130
	mov r1, #2
	str r1, [r2, #4]
	ldr r0, [r0]
	mov r1, #0x5000
	str r1, [r0]
	b _0233E8D4
_0233E130:
	mov r1, #0
	str r1, [r2, #4]
	ldr r0, [r0]
	mov r1, #0x5000
	str r1, [r0]
	b _0233E8D4
_0233E148:
	cmp r0, #8
	cmpne r0, #6
	bne _0233E8D4
	bl ov01_02338B08
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #0x6000
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233E16C:
	bl ov01_02338EC4
	cmp r0, #6
	bne _0233E1A0
	bl ov01_02338B08
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, [r0]
	ldrb r0, [r1, #0x21c]
	cmp r0, #0
	movne r0, #0x4000
	strne r0, [r1]
	moveq r0, #0x6000
	streq r0, [r1]
	b _0233E8D4
_0233E1A0:
	cmp r0, #8
	bne _0233E8D4
	bl ov01_02338B08
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #0x6000
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233E1C0:
	bl ov01_02338EC4
	cmp r0, #0
	beq _0233E8D4
	bl ov01_02338B08
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #0x6000
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233E1E4:
	ldr r0, [r3, #4]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0233E69C
_0233E1F4: ; jump table
	b _0233E21C ; case 0
	b _0233E248 ; case 1
	b _0233E2D8 ; case 2
	b _0233E2F8 ; case 3
	b _0233E314 ; case 4
	b _0233E348 ; case 5
	b _0233E508 ; case 6
	b _0233E5A4 ; case 7
	b _0233E5E8 ; case 8
	b _0233E600 ; case 9
_0233E21C:
	ldr r1, _0233E91C ; =0x000037A2
	mov r0, #0x1c
	bl ov06_0233CDC8
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r3, _0233E920 ; =0x00002A30
	ldr r2, [r0]
	mov r1, #1
	str r3, [r2, #0x220]
	ldr r0, [r0]
	str r1, [r0, #4]
	b _0233E69C
_0233E248:
	add r1, sp, #4
	mov r0, #0
	bl GetHeldButtons
	bl sub_0204AE60
	cmp r0, #0
	moveq r0, #0
	beq _0233E27C
	add r0, sp, #0xc
	bl GetReleasedStylus
	add r0, sp, #0xc
	mov r1, #1
	mov r2, #0
	bl sub_02006C8C
_0233E27C:
	ldrh r1, [sp, #4]
	cmp r1, #0
	cmpeq r0, #0
	ldrne r0, _0233E8E0 ; =0x0233EEC8
	ldrne r1, _0233E920 ; =0x00002A30
	ldrne r0, [r0]
	strne r1, [r0, #0x220]
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, [r0]
	ldr r0, [r1, #0x220]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r1, #0x220]
	bl ov06_0233CDE4
	cmp r0, #0x12
	beq _0233E2D0
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r0, [r0]
	ldr r0, [r0, #0x220]
	cmp r0, #0
	bgt _0233E69C
_0233E2D0:
	mov r4, #1
	b _0233E6A0
_0233E2D8:
	sub r1, r1, #0x860
	mov r0, #0x1c
	bl ov06_0233CDC8
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #3
	ldr r0, [r0]
	str r1, [r0, #4]
	b _0233E69C
_0233E2F8:
	bl ov06_0233CDE4
	cmp r0, #0x12
	ldreq r0, _0233E8E0 ; =0x0233EEC8
	moveq r1, #4
	ldreq r0, [r0]
	streq r1, [r0, #4]
	b _0233E69C
_0233E314:
	bl sub_02046D20
	ldr r1, _0233E8E0 ; =0x0233EEC8
	mov r0, #0x14
	ldr r1, [r1]
	sub r3, r0, #0x15
	ldr r2, [r1, #0x14]
	add r1, r1, #0x18
	bl sub_02066990
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #5
	ldr r0, [r0]
	str r1, [r0, #4]
	b _0233E69C
_0233E348:
	bl sub_02066A44
	mvn r1, #0
	cmp r0, r1
	bne _0233E390
	bl sub_02067664
	mov r0, #4
	bl ov01_02337614
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233E924 ; =0x0233ED4C
	ldr r3, _0233E928 ; =0x000037A4
	mov r1, r0
	bl ov06_0233CD54
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #7
	ldr r0, [r0]
	str r1, [r0, #4]
	b _0233E69C
_0233E390:
	cmp r0, #1
	bne _0233E69C
	bl sub_020674CC
	ldr r1, _0233E8E0 ; =0x0233EEC8
	ldr r1, [r1]
	str r0, [r1, #0x218]
	bl sub_02067664
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, [r0]
	ldr r0, [r1, #0x218]
	add r1, r1, #0x18
	add r0, r1, r0, lsl #5
	bl sub_0205E238
	cmp r0, #0
	beq _0233E478
	mov r0, #2
	bl sub_0204C94C
	cmp r0, #0
	beq _0233E418
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, _0233E92C ; =0x000037A8
	ldr r2, [r0]
	mov r3, #0
	mov r0, #0x1c
	strb r3, [r2, #0x21c]
	bl ov06_0233CDC8
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r3, _0233E920 ; =0x00002A30
	ldr r2, [r0]
	mov r1, #6
	str r3, [r2, #0x220]
	ldr r0, [r0]
	str r1, [r0, #4]
	b _0233E69C
_0233E418:
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #1
	ldr r2, [r0]
	mov r0, #2
	strb r1, [r2, #0x21c]
	bl sub_0204C978
	ldr r1, _0233E930 ; =0x000037A5
	mov r0, #0x1c
	bl ov06_0233CDC8
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #0
	ldr r2, [r0]
	ldr r0, [r2, #0x218]
	add r2, r2, #0x18
	add r0, r2, r0, lsl #5
	bl sub_02069800
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r3, _0233E920 ; =0x00002A30
	ldr r2, [r0]
	mov r1, #6
	str r3, [r2, #0x220]
	ldr r0, [r0]
	str r1, [r0, #4]
	b _0233E69C
_0233E478:
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, [r0]
	ldr r0, [r1, #0x218]
	add r1, r1, #0x18
	add r0, r1, r0, lsl #5
	bl sub_0205F0B8
	cmp r0, #0
	ldrne r0, _0233E8E0 ; =0x0233EEC8
	movne r1, #8
	ldrne r0, [r0]
	strne r1, [r0, #4]
	bne _0233E69C
	bl sub_0205F5A8
	bl sub_0205F710
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, _0233E930 ; =0x000037A5
	ldr r2, [r0]
	mov r3, #1
	mov r0, #0x1c
	strb r3, [r2, #0x21c]
	bl ov06_0233CDC8
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #0
	ldr r2, [r0]
	ldr r0, [r2, #0x218]
	add r2, r2, #0x18
	add r0, r2, r0, lsl #5
	bl sub_02069800
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r3, _0233E920 ; =0x00002A30
	ldr r2, [r0]
	mov r1, #6
	str r3, [r2, #0x220]
	ldr r0, [r0]
	str r1, [r0, #4]
	b _0233E69C
_0233E508:
	add r1, sp, #4
	mov r0, #0
	bl GetHeldButtons
	bl sub_0204AE60
	cmp r0, #0
	moveq r0, #0
	beq _0233E53C
	add r0, sp, #0xc
	bl GetReleasedStylus
	add r0, sp, #0xc
	mov r1, #1
	mov r2, #0
	bl sub_02006C8C
_0233E53C:
	ldrh r1, [sp, #4]
	cmp r1, #0
	cmpeq r0, #0
	ldrne r0, _0233E8E0 ; =0x0233EEC8
	ldrne r1, _0233E920 ; =0x00002A30
	ldrne r0, [r0]
	strne r1, [r0, #0x220]
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, [r0]
	ldr r0, [r1, #0x220]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r1, #0x220]
	bl ov06_0233CDE4
	mov r4, r0
	bl sub_020698B8
	cmp r4, #0x12
	beq _0233E598
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r0, [r0]
	ldr r0, [r0, #0x220]
	cmp r0, #0
	bgt _0233E69C
_0233E598:
	bl sub_02069904
	mov r4, #1
	b _0233E6A0
_0233E5A4:
	bl ov06_0233CD94
	mov r4, r0
	bl ov06_02046BA0
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, #4
	bl ov01_02337624
	cmp r4, #0x10
	moveq r4, #1
	beq _0233E6A0
	sub r0, r4, #0x11
	cmp r0, #1
	ldrls r0, _0233E8E0 ; =0x0233EEC8
	movls r1, #4
	ldrls r0, [r0]
	strls r1, [r0, #4]
	b _0233E69C
_0233E5E8:
	bl ov06_0233CAD8
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #9
	ldr r0, [r0]
	str r1, [r0, #4]
	b _0233E69C
_0233E600:
	bl ov06_0233CB3C
	cmp r0, #2
	bne _0233E688
	bl ov06_0233CB10
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, [r0]
	ldr r0, [r1, #0x218]
	add r1, r1, #0x18
	add r0, r1, r0, lsl #5
	bl sub_0205F0B8
	bl sub_0205F5A8
	bl sub_0205F710
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, _0233E930 ; =0x000037A5
	ldr r2, [r0]
	mov r3, #1
	mov r0, #0x1c
	strb r3, [r2, #0x21c]
	bl ov06_0233CDC8
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #0
	ldr r2, [r0]
	ldr r0, [r2, #0x218]
	add r2, r2, #0x18
	add r0, r2, r0, lsl #5
	bl sub_02069800
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r3, _0233E920 ; =0x00002A30
	ldr r2, [r0]
	mov r1, #6
	str r3, [r2, #0x220]
	ldr r0, [r0]
	str r1, [r0, #4]
	b _0233E69C
_0233E688:
	cmp r0, #1
	bne _0233E69C
	bl ov06_0233CB10
	mov r4, #1
	b _0233E6A0
_0233E69C:
	mov r4, #0
_0233E6A0:
	bl ov01_02338EC4
	cmp r0, #5
	bne _0233E6D8
	bl sub_02067664
	bl ov06_0233CB10
	bl sub_02069904
	bl sub_02046BB4
	bl sub_02046D20
	bl ov01_02338C34
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, _0233E8E8 ; =0x00001005
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233E6D8:
	cmp r4, #1
	bne _0233E8D4
	mov r0, #1
	mov r1, #0
	bl ov01_02338BEC
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, _0233E934 ; =0x00001004
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233E700:
	bl ov00_022BD780
	ldr r1, _0233E938 ; =0x0000023B
	mov r0, #0
	bl ov06_0233CDC8
	ldr r1, _0233E8E0 ; =0x0233EEC8
	ldr r3, _0233E93C ; =0x00004002
	ldr r2, [r1]
	mov r0, #0
	str r3, [r2]
	ldr r1, [r1]
	strb r0, [r1, #0x224]
	bl ov00_022BD264
	b _0233E8D4
_0233E734:
	bl ov06_0233CDE4
	cmp r0, #0x12
	bne _0233E8D4
	mov r0, #0xe0
	mov r1, #0x88
	mov r2, #1
	bl sub_02029F88
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, _0233E940 ; =0x00004001
	ldr r0, [r0]
	str r1, [r0]
	bl sub_02003B94
	b _0233E8D4
_0233E768:
	mov r0, #3
	bl NoteSaveBase
	mov r4, r0
	bl sub_02003BC8
	bl sub_02029FBC
	cmp r4, #0
	bne _0233E7B0
	mov r0, #0x1c
	mov r1, #0x23c
	bl ov06_0233CDC8
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r3, _0233E8E4 ; =0x00004003
	ldr r2, [r0]
	mov r1, #1
	str r3, [r2]
	ldr r0, [r0]
	strb r1, [r0, #0x224]
	b _0233E8D4
_0233E7B0:
	cmp r4, #1
	moveq r0, #3
	beq _0233E8D8
	ldr r1, _0233E944 ; =0x00000239
	mov r0, #0x1c
	bl ov06_0233CDC8
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, _0233E948 ; =0x00004004
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233E7DC:
	bl ov06_0233CDE4
	cmp r0, #0x12
	bne _0233E8D4
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, [r0]
	ldr r0, [r1, #0x218]
	add r1, r1, #0x18
	add r0, r1, r0, lsl #5
	bl sub_0205E238
	cmp r0, #0
	mov r0, #0x1c
	beq _0233E828
	ldr r1, _0233E94C ; =0x0000379E
	bl ov06_0233CDC8
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #0x8000
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233E828:
	ldr r1, _0233E950 ; =0x000037A6
	bl ov06_0233CDC8
	ldr r0, _0233E8E0 ; =0x0233EEC8
	mov r1, #0x8000
	ldr r0, [r0]
	str r1, [r0]
	b _0233E8D4
_0233E844:
	bl ov06_0233CDE4
	cmp r0, #0x12
	bne _0233E8D4
	mov r0, #2
	b _0233E8D8
_0233E858:
	bl ov06_0233CDE4
	cmp r0, #0x12
	bne _0233E8D4
	mov r0, #2
	b _0233E8D8
_0233E86C:
	bl ov00_022BD274
	cmp r0, #0
	ldrne r0, _0233E8E0 ; =0x0233EEC8
	ldrne r1, _0233E954 ; =0x00006001
	ldrne r0, [r0]
	strne r1, [r0]
	bne _0233E8D4
	mov r0, #1
	b _0233E8D8
_0233E890:
	bl ov01_0233769C
	ldr r0, _0233E8E0 ; =0x0233EEC8
	ldr r1, _0233E8EC ; =0x00006002
	ldr r0, [r0]
	str r1, [r0]
_0233E8A4:
	bl ov01_02337718
	cmp r0, #1
	cmpne r0, #3
	bne _0233E8C0
	bl ov01_023376DC
	mov r0, #1
	b _0233E8D8
_0233E8C0:
	cmp r0, #2
	bne _0233E8D4
	bl ov01_023376DC
	mov r0, #3
	b _0233E8D8
_0233E8D4:
	mov r0, #0
_0233E8D8:
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0233E8E0: .word 0x0233EEC8
_0233E8E4: .word 0x00004003
_0233E8E8: .word 0x00001005
_0233E8EC: .word 0x00006002
_0233E8F0: .word 0x00001001
_0233E8F4: .word 0x000037A1
_0233E8F8: .word 0x00001002
_0233E8FC: .word 0x00001003
_0233E900: .word 0x50443357
_0233E904: .word 0x0233EDD4
_0233E908: .word 0x08261522
_0233E90C: .word 0x0233EDFC
_0233E910: .word 0x0233EE24
_0233E914: .word 0x0233EE4C
_0233E918: .word 0x0233EE84
_0233E91C: .word 0x000037A2
_0233E920: .word 0x00002A30
_0233E924: .word 0x0233ED4C
_0233E928: .word 0x000037A4
_0233E92C: .word 0x000037A8
_0233E930: .word 0x000037A5
_0233E934: .word 0x00001004
_0233E938: .word 0x0000023B
_0233E93C: .word 0x00004002
_0233E940: .word 0x00004001
_0233E944: .word 0x00000239
_0233E948: .word 0x00004004
_0233E94C: .word 0x0000379E
_0233E950: .word 0x000037A6
_0233E954: .word 0x00006001
	arm_func_end ov06_0233DD7C

	arm_func_start ov06_0233E958
ov06_0233E958: ; 0x0233E958
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0x270
	mov r1, #8
	bl MemAlloc
	ldr r2, _0233EA18 ; =0x0233EEF0
	mov r1, #0x270
	str r0, [r2]
	bl MemZero
	mov r2, #0
	ldr r0, _0233EA18 ; =0x0233EEF0
	mov r4, r2
_0233E984:
	ldr r1, [r0]
	add r1, r1, r2
	add r2, r2, #1
	strb r4, [r1, #4]
	cmp r2, #4
	blt _0233E984
	ldr r0, _0233EA18 ; =0x0233EEF0
	mvn r1, #0
	ldr r3, [r0]
	add r2, r3, #4
	str r2, [r3, #0x68]
	ldr r3, [r0]
	add r2, r3, #0x1c8
	add r2, r2, #0x1f
	bic r2, r2, #0x1f
	str r2, [r3, #0x1c4]
	ldr r2, [r0]
	str r4, [r2]
	ldr r0, [r0]
	strh r1, [r0, #0xa0]
	bl sub_0205B440
	ldr r4, _0233EA18 ; =0x0233EEF0
	mov r6, r0
	mov r7, #0
	mov r5, #0x20
_0233E9E8:
	ldr r0, [r4]
	mov r2, r5
	add r0, r0, #0xa4
	add r0, r0, r7, lsl #5
	add r1, r6, r7, lsl #5
	bl MemcpySimple
	add r7, r7, #1
	cmp r7, #9
	blt _0233E9E8
	bl sub_02046D20
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0233EA18: .word 0x0233EEF0
	arm_func_end ov06_0233E958
_0233EA1C:
	.byte 0xF0, 0x4F, 0x2D, 0xE9
	.byte 0x24, 0xD0, 0x4D, 0xE2, 0x90, 0x02, 0x9F, 0xE5, 0x00, 0x60, 0x90, 0xE5, 0x00, 0x00, 0x96, 0xE5
	.byte 0x07, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x9C, 0x00, 0x00, 0xEA, 0x06, 0x00, 0x00, 0xEA
	.byte 0x0B, 0x00, 0x00, 0xEA, 0x0F, 0x00, 0x00, 0xEA, 0x1C, 0x00, 0x00, 0xEA, 0x58, 0x00, 0x00, 0xEA
	.byte 0x6B, 0x00, 0x00, 0xEA, 0x8C, 0x00, 0x00, 0xEA, 0x90, 0x00, 0x00, 0xEA, 0x5C, 0x12, 0x9F, 0xE5
	.byte 0x1C, 0x00, 0xA0, 0xE3, 0xD7, 0xF8, 0xFF, 0xEB, 0x01, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x86, 0xE5
	.byte 0x8E, 0x00, 0x00, 0xEA, 0xDA, 0xF8, 0xFF, 0xEB, 0x12, 0x00, 0x50, 0xE3, 0x02, 0x00, 0xA0, 0x03
	.byte 0x00, 0x00, 0x86, 0x05, 0x89, 0x00, 0x00, 0xEA, 0xAF, 0xBF, 0xFF, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x86, 0x00, 0x00, 0x1A, 0x03, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x86, 0xE5, 0x9F, 0x20, 0xF4, 0xEB
	.byte 0x14, 0x02, 0x9F, 0xE5, 0x09, 0x20, 0xA0, 0xE3, 0x00, 0x00, 0x90, 0xE5, 0x0A, 0x30, 0x42, 0xE2
	.byte 0xA4, 0x10, 0x80, 0xE2, 0x15, 0x00, 0xA0, 0xE3, 0xB4, 0x9F, 0xF4, 0xEB, 0x7B, 0x00, 0x00, 0xEA
	.byte 0xDF, 0x9F, 0xF4, 0xEB, 0x00, 0x10, 0xE0, 0xE3, 0x01, 0x00, 0x50, 0xE1, 0x03, 0x00, 0x00, 0x1A
	.byte 0xE3, 0xA2, 0xF4, 0xEB, 0x07, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x86, 0xE5, 0x73, 0x00, 0x00, 0xEA
	.byte 0x01, 0x00, 0x50, 0xE3, 0x71, 0x00, 0x00, 0x1A, 0x82, 0x4F, 0x86, 0xE2, 0x09, 0x5D, 0x86, 0xE2
	.byte 0x75, 0xA2, 0xF4, 0xEB, 0xB0, 0x0A, 0xC6, 0xE1, 0xD9, 0xA2, 0xF4, 0xEB, 0x04, 0x00, 0xA0, 0xE1
	.byte 0x38, 0x10, 0xA0, 0xE3, 0xD1, 0x11, 0xF3, 0xEB, 0x05, 0x00, 0xA0, 0xE1, 0x18, 0x10, 0xA0, 0xE3
	.byte 0xCE, 0x11, 0xF3, 0xEB, 0xF0, 0x0A, 0xD6, 0xE1, 0x18, 0x90, 0x84, 0xE2, 0x38, 0x80, 0xA0, 0xE3
	.byte 0x80, 0x02, 0x86, 0xE0, 0xA4, 0xA0, 0x80, 0xE2, 0x0F, 0x00, 0xBA, 0xE8, 0x0F, 0x00, 0xA9, 0xE8
	.byte 0x0F, 0x00, 0x9A, 0xE8, 0x0F, 0x00, 0x89, 0xE8, 0x58, 0x82, 0x86, 0xE5, 0x18, 0x70, 0xA0, 0xE3
	.byte 0x5C, 0x42, 0x86, 0xE5, 0x60, 0x72, 0x86, 0xE5, 0x74, 0xE1, 0x9F, 0xE5, 0x64, 0x52, 0x86, 0xE5
	.byte 0x00, 0xC0, 0xA0, 0xE3, 0x68, 0xE2, 0x86, 0xE5, 0x6C, 0xC2, 0xC6, 0xE5, 0xC4, 0x01, 0x96, 0xE5
	.byte 0x09, 0xB0, 0xA0, 0xE3, 0x00, 0xB0, 0xC0, 0xE5, 0xC4, 0x01, 0x96, 0xE5, 0x01, 0xC0, 0xC0, 0xE5
	.byte 0x12, 0x00, 0xA0, 0xE3, 0x08, 0x02, 0xC6, 0xE5, 0x11, 0x00, 0xA0, 0xE3, 0x40, 0x02, 0xC6, 0xE5
	.byte 0x86, 0x86, 0xF3, 0xEB, 0x02, 0x00, 0xC5, 0xE5, 0xD2, 0x10, 0xD5, 0xE1, 0x04, 0x00, 0x84, 0xE2
	.byte 0x02, 0x10, 0xC4, 0xE5, 0xDD, 0x47, 0xF4, 0xEB, 0x04, 0x00, 0x84, 0xE2, 0x34, 0x10, 0xA0, 0xE3
	.byte 0xE5, 0xE3, 0xFF, 0xEB, 0x03, 0x00, 0xC4, 0xE5, 0x04, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x86, 0xE5
	.byte 0x3E, 0x00, 0x00, 0xEA, 0x00, 0x30, 0xA0, 0xE3, 0x96, 0x0F, 0x86, 0xE2, 0x01, 0x40, 0xA0, 0xE3
	.byte 0x04, 0x00, 0x8D, 0xE5, 0x00, 0x40, 0x8D, 0xE5, 0x10, 0x30, 0x8D, 0xE5, 0x14, 0x30, 0xCD, 0xE5
	.byte 0xC4, 0x21, 0x96, 0xE5, 0x20, 0x10, 0xA0, 0xE3, 0x00, 0x00, 0x8D, 0xE2, 0x18, 0x20, 0x8D, 0xE5
	.byte 0xBC, 0x11, 0xCD, 0xE1, 0x1E, 0x30, 0xCD, 0xE5, 0x20, 0x40, 0x8D, 0xE5, 0xEB, 0xE3, 0xFF, 0xEB
	.byte 0x04, 0x00, 0xA0, 0xE1, 0x47, 0xE4, 0xFF, 0xEB, 0x05, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x86, 0xE5
	.byte 0x2A, 0x00, 0x00, 0xEA, 0x80, 0xE4, 0xFF, 0xEB, 0x00, 0x40, 0xB0, 0xE1, 0x27, 0x00, 0x00, 0x0A
	.byte 0x0F, 0xE4, 0xFF, 0xEB, 0x0E, 0x00, 0x54, 0xE3, 0x04, 0xF1, 0x8F, 0x90, 0x23, 0x00, 0x00, 0xEA
	.byte 0x22, 0x00, 0x00, 0xEA, 0x0F, 0x00, 0x00, 0xEA, 0x20, 0x00, 0x00, 0xEA, 0x1F, 0x00, 0x00, 0xEA
	.byte 0x09, 0x00, 0x00, 0xEA, 0x0B, 0x00, 0x00, 0xEA, 0x0A, 0x00, 0x00, 0xEA, 0x0F, 0x00, 0x00, 0xEA
	.byte 0x0E, 0x00, 0x00, 0xEA, 0x0D, 0x00, 0x00, 0xEA, 0x0C, 0x00, 0x00, 0xEA, 0x0B, 0x00, 0x00, 0xEA
	.byte 0x0A, 0x00, 0x00, 0xEA, 0x09, 0x00, 0x00, 0xEA, 0x08, 0x00, 0x00, 0xEA, 0x04, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x86, 0xE5, 0x11, 0x00, 0x00, 0xEA, 0x58, 0x10, 0x9F, 0xE5, 0x1C, 0x00, 0xA0, 0xE3
	.byte 0x54, 0xF8, 0xFF, 0xEB, 0x06, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x86, 0xE5, 0x0B, 0x00, 0x00, 0xEA
	.byte 0x04, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x86, 0xE5, 0x08, 0x00, 0x00, 0xEA, 0x54, 0xF8, 0xFF, 0xEB
	.byte 0x12, 0x00, 0x50, 0xE3, 0x07, 0x00, 0xA0, 0x03, 0x00, 0x00, 0x86, 0x05, 0x03, 0x00, 0x00, 0xEA
	.byte 0x12, 0x00, 0xA0, 0xE3, 0x03, 0xC9, 0xFF, 0xEB, 0x03, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x00, 0xEA
	.byte 0x01, 0x00, 0xA0, 0xE3, 0x24, 0xD0, 0x8D, 0xE2, 0xF0, 0x8F, 0xBD, 0xE8, 0xF0, 0xEE, 0x33, 0x02
	.byte 0x19, 0x3F, 0x00, 0x00, 0x68, 0x7B, 0x33, 0x02, 0x1A, 0x3F, 0x00, 0x00

	arm_func_start ov06_0233ECCC
ov06_0233ECCC: ; 0x0233ECCC
	stmdb sp!, {r3, lr}
	ldr r0, _0233ED00 ; =0x0233EEF0
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02046D20
	ldr r0, _0233ED00 ; =0x0233EEF0
	ldr r0, [r0]
	bl MemFree
	ldr r0, _0233ED00 ; =0x0233EEF0
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0233ED00: .word 0x0233EEF0
	arm_func_end ov06_0233ECCC
	; 0x0233ED04

	.byte 0x9A, 0x37, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x9B, 0x37, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xAA, 0x37, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0xAB, 0x37, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xAD, 0x37, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xAE, 0x37, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x5A, 0x37, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x5B, 0x37, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x88, 0x37, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x89, 0x37, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x86, 0x37, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x8C, 0x37, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x8D, 0x37, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x8E, 0x37, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x95, 0x37, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x97, 0x37, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x96, 0x37, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x98, 0x37, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x0A, 0x00, 0x00, 0x00, 0x25, 0x63, 0x00, 0x00
	.byte 0x4D, 0x79, 0x73, 0x74, 0x65, 0x72, 0x69, 0x6F, 0x75, 0x73, 0x20, 0x57, 0x69, 0x46, 0x69, 0x3A
	.byte 0x20, 0x49, 0x6C, 0x6C, 0x65, 0x67, 0x61, 0x6C, 0x20, 0x49, 0x64, 0x65, 0x6E, 0x74, 0x69, 0x66
	.byte 0x69, 0x65, 0x72, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x4D, 0x79, 0x73, 0x74, 0x65, 0x72, 0x69, 0x6F
	.byte 0x75, 0x73, 0x20, 0x57, 0x69, 0x46, 0x69, 0x3A, 0x20, 0x44, 0x69, 0x66, 0x66, 0x65, 0x72, 0x65
	.byte 0x6E, 0x63, 0x65, 0x20, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E, 0x0A, 0x00, 0x00, 0x00, 0x00
	.byte 0x4D, 0x79, 0x73, 0x74, 0x65, 0x72, 0x69, 0x6F, 0x75, 0x73, 0x20, 0x57, 0x69, 0x46, 0x69, 0x3A
	.byte 0x20, 0x44, 0x69, 0x66, 0x66, 0x65, 0x72, 0x65, 0x6E, 0x63, 0x65, 0x20, 0x4C, 0x61, 0x6E, 0x67
	.byte 0x75, 0x61, 0x67, 0x65, 0x0A, 0x00, 0x00, 0x00, 0x4D, 0x79, 0x73, 0x74, 0x65, 0x72, 0x69, 0x6F
	.byte 0x75, 0x73, 0x20, 0x57, 0x69, 0x46, 0x69, 0x3A, 0x20, 0x44, 0x69, 0x66, 0x66, 0x65, 0x72, 0x65
	.byte 0x6E, 0x63, 0x65, 0x20, 0x43, 0x68, 0x65, 0x63, 0x6B, 0x20, 0x53, 0x75, 0x6D, 0x3A, 0x20, 0x30
	.byte 0x78, 0x25, 0x30, 0x38, 0x78, 0x20, 0x30, 0x78, 0x25, 0x30, 0x38, 0x78, 0x0A, 0x00, 0x00, 0x00
	.byte 0x4D, 0x79, 0x73, 0x74, 0x65, 0x72, 0x69, 0x6F, 0x75, 0x73, 0x20, 0x57, 0x69, 0x46, 0x69, 0x3A
	.byte 0x20, 0x49, 0x6C, 0x6C, 0x65, 0x67, 0x61, 0x6C, 0x20, 0x44, 0x61, 0x74, 0x61, 0x0A, 0x00, 0x00

	.data
_0233EEC0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
_0233EEE0:
	.space 0x20
