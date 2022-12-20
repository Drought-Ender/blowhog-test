.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global InterruptPrioTable
InterruptPrioTable:
	.4byte 0x00000100
	.4byte 0x00000040
	.4byte 0xF8000000
	.4byte 0x00000200
	.4byte 0x00000080
	.4byte 0x00003000
	.4byte 0x00000020
	.4byte 0x03FF8C00
	.4byte 0x04000000
	.4byte 0x00004000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global InterruptHandlerTable
InterruptHandlerTable:
	.skip 0x4
.global __OSLastInterruptSrr0
__OSLastInterruptSrr0:
	.skip 0x4
.global __OSLastInterrupt
__OSLastInterrupt:
	.skip 0x8
.global __OSLastInterruptTime
__OSLastInterruptTime:
	.skip 0x4
.global lbl_80515614
lbl_80515614:
	.skip 0x4

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global OSDisableInterrupts
OSDisableInterrupts:
__RAS_OSDisableInterrupts_begin:
/* 800EEC38 000EBB78  7C 60 00 A6 */	mfmsr r3
/* 800EEC3C 000EBB7C  54 64 04 5E */	rlwinm r4, r3, 0, 0x11, 0xf
/* 800EEC40 000EBB80  7C 80 01 24 */	mtmsr r4
.global __RAS_OSDisableInterrupts_end
__RAS_OSDisableInterrupts_end:
/* 800EEC44 000EBB84  54 63 8F FE */	rlwinm r3, r3, 0x11, 0x1f, 0x1f
/* 800EEC48 000EBB88  4E 80 00 20 */	blr 

.global OSEnableInterrupts
OSEnableInterrupts:
/* 800EEC4C 000EBB8C  7C 60 00 A6 */	mfmsr r3
/* 800EEC50 000EBB90  60 64 80 00 */	ori r4, r3, 0x8000
/* 800EEC54 000EBB94  7C 80 01 24 */	mtmsr r4
/* 800EEC58 000EBB98  54 63 8F FE */	rlwinm r3, r3, 0x11, 0x1f, 0x1f
/* 800EEC5C 000EBB9C  4E 80 00 20 */	blr 

.global OSRestoreInterrupts
OSRestoreInterrupts:
/* 800EEC60 000EBBA0  2C 03 00 00 */	cmpwi r3, 0
/* 800EEC64 000EBBA4  7C 80 00 A6 */	mfmsr r4
/* 800EEC68 000EBBA8  41 82 00 0C */	beq .L_800EEC74
/* 800EEC6C 000EBBAC  60 85 80 00 */	ori r5, r4, 0x8000
/* 800EEC70 000EBBB0  48 00 00 08 */	b .L_800EEC78
.L_800EEC74:
/* 800EEC74 000EBBB4  54 85 04 5E */	rlwinm r5, r4, 0, 0x11, 0xf
.L_800EEC78:
/* 800EEC78 000EBBB8  7C A0 01 24 */	mtmsr r5
/* 800EEC7C 000EBBBC  54 83 8F FE */	rlwinm r3, r4, 0x11, 0x1f, 0x1f
/* 800EEC80 000EBBC0  4E 80 00 20 */	blr 

.global __OSSetInterruptHandler
__OSSetInterruptHandler:
/* 800EEC84 000EBBC4  7C 60 07 34 */	extsh r0, r3
/* 800EEC88 000EBBC8  80 6D 8F 80 */	lwz r3, InterruptHandlerTable@sda21(r13)
/* 800EEC8C 000EBBCC  54 00 10 3A */	slwi r0, r0, 2
/* 800EEC90 000EBBD0  7C A3 02 14 */	add r5, r3, r0
/* 800EEC94 000EBBD4  80 65 00 00 */	lwz r3, 0(r5)
/* 800EEC98 000EBBD8  90 85 00 00 */	stw r4, 0(r5)
/* 800EEC9C 000EBBDC  4E 80 00 20 */	blr 

.global __OSGetInterruptHandler
__OSGetInterruptHandler:
/* 800EECA0 000EBBE0  7C 60 07 34 */	extsh r0, r3
/* 800EECA4 000EBBE4  80 6D 8F 80 */	lwz r3, InterruptHandlerTable@sda21(r13)
/* 800EECA8 000EBBE8  54 00 10 3A */	slwi r0, r0, 2
/* 800EECAC 000EBBEC  7C 63 00 2E */	lwzx r3, r3, r0
/* 800EECB0 000EBBF0  4E 80 00 20 */	blr 

.global __OSInterruptInit
__OSInterruptInit:
/* 800EECB4 000EBBF4  7C 08 02 A6 */	mflr r0
/* 800EECB8 000EBBF8  90 01 00 04 */	stw r0, 4(r1)
/* 800EECBC 000EBBFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EECC0 000EBC00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EECC4 000EBC04  3F E0 80 00 */	lis r31, 0x80003040@ha
/* 800EECC8 000EBC08  38 1F 30 40 */	addi r0, r31, 0x80003040@l
/* 800EECCC 000EBC0C  90 0D 8F 80 */	stw r0, InterruptHandlerTable@sda21(r13)
/* 800EECD0 000EBC10  38 80 00 00 */	li r4, 0
/* 800EECD4 000EBC14  38 A0 00 80 */	li r5, 0x80
/* 800EECD8 000EBC18  80 6D 8F 80 */	lwz r3, InterruptHandlerTable@sda21(r13)
/* 800EECDC 000EBC1C  4B F1 63 D9 */	bl memset
/* 800EECE0 000EBC20  38 00 00 00 */	li r0, 0
/* 800EECE4 000EBC24  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 800EECE8 000EBC28  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 800EECEC 000EBC2C  38 83 30 00 */	addi r4, r3, 0xCC003000@l
/* 800EECF0 000EBC30  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 800EECF4 000EBC34  38 00 00 F0 */	li r0, 0xf0
/* 800EECF8 000EBC38  38 60 FF E0 */	li r3, -32
/* 800EECFC 000EBC3C  90 04 00 04 */	stw r0, 4(r4)
/* 800EED00 000EBC40  48 00 03 01 */	bl __OSMaskInterrupts
/* 800EED04 000EBC44  3C 60 80 0F */	lis r3, ExternalInterruptHandler@ha
/* 800EED08 000EBC48  38 83 F4 54 */	addi r4, r3, ExternalInterruptHandler@l
/* 800EED0C 000EBC4C  38 60 00 04 */	li r3, 4
/* 800EED10 000EBC50  4B FF CB ED */	bl __OSSetExceptionHandler
/* 800EED14 000EBC54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EED18 000EBC58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EED1C 000EBC5C  38 21 00 10 */	addi r1, r1, 0x10
/* 800EED20 000EBC60  7C 08 03 A6 */	mtlr r0
/* 800EED24 000EBC64  4E 80 00 20 */	blr 

.global SetInterruptMask
SetInterruptMask:
/* 800EED28 000EBC68  7C 60 00 34 */	cntlzw r0, r3
/* 800EED2C 000EBC6C  2C 00 00 0C */	cmpwi r0, 0xc
/* 800EED30 000EBC70  40 80 00 24 */	bge .L_800EED54
/* 800EED34 000EBC74  2C 00 00 08 */	cmpwi r0, 8
/* 800EED38 000EBC78  41 82 00 FC */	beq .L_800EEE34
/* 800EED3C 000EBC7C  40 80 01 28 */	bge .L_800EEE64
/* 800EED40 000EBC80  2C 00 00 05 */	cmpwi r0, 5
/* 800EED44 000EBC84  40 80 00 9C */	bge .L_800EEDE0
/* 800EED48 000EBC88  2C 00 00 00 */	cmpwi r0, 0
/* 800EED4C 000EBC8C  40 80 00 28 */	bge .L_800EED74
/* 800EED50 000EBC90  48 00 02 AC */	b .L_800EEFFC
.L_800EED54:
/* 800EED54 000EBC94  2C 00 00 11 */	cmpwi r0, 0x11
/* 800EED58 000EBC98  40 80 00 10 */	bge .L_800EED68
/* 800EED5C 000EBC9C  2C 00 00 0F */	cmpwi r0, 0xf
/* 800EED60 000EBCA0  40 80 01 A8 */	bge .L_800EEF08
/* 800EED64 000EBCA4  48 00 01 50 */	b .L_800EEEB4
.L_800EED68:
/* 800EED68 000EBCA8  2C 00 00 1B */	cmpwi r0, 0x1b
/* 800EED6C 000EBCAC  40 80 02 90 */	bge .L_800EEFFC
/* 800EED70 000EBCB0  48 00 01 D8 */	b .L_800EEF48
.L_800EED74:
/* 800EED74 000EBCB4  54 80 00 00 */	rlwinm r0, r4, 0, 0, 0
/* 800EED78 000EBCB8  28 00 00 00 */	cmplwi r0, 0
/* 800EED7C 000EBCBC  38 A0 00 00 */	li r5, 0
/* 800EED80 000EBCC0  40 82 00 08 */	bne .L_800EED88
/* 800EED84 000EBCC4  60 A5 00 01 */	ori r5, r5, 1
.L_800EED88:
/* 800EED88 000EBCC8  54 80 00 42 */	rlwinm r0, r4, 0, 1, 1
/* 800EED8C 000EBCCC  28 00 00 00 */	cmplwi r0, 0
/* 800EED90 000EBCD0  40 82 00 08 */	bne .L_800EED98
/* 800EED94 000EBCD4  60 A5 00 02 */	ori r5, r5, 2
.L_800EED98:
/* 800EED98 000EBCD8  54 80 00 84 */	rlwinm r0, r4, 0, 2, 2
/* 800EED9C 000EBCDC  28 00 00 00 */	cmplwi r0, 0
/* 800EEDA0 000EBCE0  40 82 00 08 */	bne .L_800EEDA8
/* 800EEDA4 000EBCE4  60 A5 00 04 */	ori r5, r5, 4
.L_800EEDA8:
/* 800EEDA8 000EBCE8  54 80 00 C6 */	rlwinm r0, r4, 0, 3, 3
/* 800EEDAC 000EBCEC  28 00 00 00 */	cmplwi r0, 0
/* 800EEDB0 000EBCF0  40 82 00 08 */	bne .L_800EEDB8
/* 800EEDB4 000EBCF4  60 A5 00 08 */	ori r5, r5, 8
.L_800EEDB8:
/* 800EEDB8 000EBCF8  54 80 01 08 */	rlwinm r0, r4, 0, 4, 4
/* 800EEDBC 000EBCFC  28 00 00 00 */	cmplwi r0, 0
/* 800EEDC0 000EBD00  40 82 00 08 */	bne .L_800EEDC8
/* 800EEDC4 000EBD04  60 A5 00 10 */	ori r5, r5, 0x10
.L_800EEDC8:
/* 800EEDC8 000EBD08  3C 80 CC 00 */	lis r4, 0xCC004000@ha
/* 800EEDCC 000EBD0C  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 800EEDD0 000EBD10  38 84 40 00 */	addi r4, r4, 0xCC004000@l
/* 800EEDD4 000EBD14  B0 04 00 1C */	sth r0, 0x1c(r4)
/* 800EEDD8 000EBD18  54 63 01 7E */	clrlwi r3, r3, 5
/* 800EEDDC 000EBD1C  48 00 02 20 */	b .L_800EEFFC
.L_800EEDE0:
/* 800EEDE0 000EBD20  3C A0 CC 00 */	lis r5, 0xCC005000@ha
/* 800EEDE4 000EBD24  38 A5 50 00 */	addi r5, r5, 0xCC005000@l
/* 800EEDE8 000EBD28  38 A5 00 0A */	addi r5, r5, 0xa
/* 800EEDEC 000EBD2C  54 80 01 4A */	rlwinm r0, r4, 0, 5, 5
/* 800EEDF0 000EBD30  A0 C5 00 00 */	lhz r6, 0(r5)
/* 800EEDF4 000EBD34  28 00 00 00 */	cmplwi r0, 0
/* 800EEDF8 000EBD38  54 C6 07 6C */	rlwinm r6, r6, 0, 0x1d, 0x16
/* 800EEDFC 000EBD3C  40 82 00 08 */	bne .L_800EEE04
/* 800EEE00 000EBD40  60 C6 00 10 */	ori r6, r6, 0x10
.L_800EEE04:
/* 800EEE04 000EBD44  54 80 01 8C */	rlwinm r0, r4, 0, 6, 6
/* 800EEE08 000EBD48  28 00 00 00 */	cmplwi r0, 0
/* 800EEE0C 000EBD4C  40 82 00 08 */	bne .L_800EEE14
/* 800EEE10 000EBD50  60 C6 00 40 */	ori r6, r6, 0x40
.L_800EEE14:
/* 800EEE14 000EBD54  54 80 01 CE */	rlwinm r0, r4, 0, 7, 7
/* 800EEE18 000EBD58  28 00 00 00 */	cmplwi r0, 0
/* 800EEE1C 000EBD5C  40 82 00 08 */	bne .L_800EEE24
/* 800EEE20 000EBD60  60 C6 01 00 */	ori r6, r6, 0x100
.L_800EEE24:
/* 800EEE24 000EBD64  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 800EEE28 000EBD68  B0 05 00 00 */	sth r0, 0(r5)
/* 800EEE2C 000EBD6C  54 63 02 08 */	rlwinm r3, r3, 0, 8, 4
/* 800EEE30 000EBD70  48 00 01 CC */	b .L_800EEFFC
.L_800EEE34:
/* 800EEE34 000EBD74  54 80 02 10 */	rlwinm r0, r4, 0, 8, 8
/* 800EEE38 000EBD78  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 800EEE3C 000EBD7C  28 00 00 00 */	cmplwi r0, 0
/* 800EEE40 000EBD80  80 A4 6C 00 */	lwz r5, 0xCC006C00@l(r4)
/* 800EEE44 000EBD84  38 00 FF D3 */	li r0, -45
/* 800EEE48 000EBD88  7C A5 00 38 */	and r5, r5, r0
/* 800EEE4C 000EBD8C  40 82 00 08 */	bne .L_800EEE54
/* 800EEE50 000EBD90  60 A5 00 04 */	ori r5, r5, 4
.L_800EEE54:
/* 800EEE54 000EBD94  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 800EEE58 000EBD98  90 A4 6C 00 */	stw r5, 0xCC006C00@l(r4)
/* 800EEE5C 000EBD9C  54 63 02 4E */	rlwinm r3, r3, 0, 9, 7
/* 800EEE60 000EBDA0  48 00 01 9C */	b .L_800EEFFC
.L_800EEE64:
/* 800EEE64 000EBDA4  54 80 02 52 */	rlwinm r0, r4, 0, 9, 9
/* 800EEE68 000EBDA8  3C A0 CC 00 */	lis r5, 0xCC006800@ha
/* 800EEE6C 000EBDAC  28 00 00 00 */	cmplwi r0, 0
/* 800EEE70 000EBDB0  80 A5 68 00 */	lwz r5, 0xCC006800@l(r5)
/* 800EEE74 000EBDB4  38 00 D3 F0 */	li r0, -11280
/* 800EEE78 000EBDB8  7C A5 00 38 */	and r5, r5, r0
/* 800EEE7C 000EBDBC  40 82 00 08 */	bne .L_800EEE84
/* 800EEE80 000EBDC0  60 A5 00 01 */	ori r5, r5, 1
.L_800EEE84:
/* 800EEE84 000EBDC4  54 80 02 94 */	rlwinm r0, r4, 0, 0xa, 0xa
/* 800EEE88 000EBDC8  28 00 00 00 */	cmplwi r0, 0
/* 800EEE8C 000EBDCC  40 82 00 08 */	bne .L_800EEE94
/* 800EEE90 000EBDD0  60 A5 00 04 */	ori r5, r5, 4
.L_800EEE94:
/* 800EEE94 000EBDD4  54 80 02 D6 */	rlwinm r0, r4, 0, 0xb, 0xb
/* 800EEE98 000EBDD8  28 00 00 00 */	cmplwi r0, 0
/* 800EEE9C 000EBDDC  40 82 00 08 */	bne .L_800EEEA4
/* 800EEEA0 000EBDE0  60 A5 04 00 */	ori r5, r5, 0x400
.L_800EEEA4:
/* 800EEEA4 000EBDE4  3C 80 CC 00 */	lis r4, 0xCC006800@ha
/* 800EEEA8 000EBDE8  90 A4 68 00 */	stw r5, 0xCC006800@l(r4)
/* 800EEEAC 000EBDEC  54 63 03 10 */	rlwinm r3, r3, 0, 0xc, 8
/* 800EEEB0 000EBDF0  48 00 01 4C */	b .L_800EEFFC
.L_800EEEB4:
/* 800EEEB4 000EBDF4  3C A0 CC 00 */	lis r5, 0xCC006800@ha
/* 800EEEB8 000EBDF8  38 C5 68 00 */	addi r6, r5, 0xCC006800@l
/* 800EEEBC 000EBDFC  38 C6 00 14 */	addi r6, r6, 0x14
/* 800EEEC0 000EBE00  54 80 03 18 */	rlwinm r0, r4, 0, 0xc, 0xc
/* 800EEEC4 000EBE04  80 E6 00 00 */	lwz r7, 0(r6)
/* 800EEEC8 000EBE08  38 A0 F3 F0 */	li r5, -3088
/* 800EEECC 000EBE0C  28 00 00 00 */	cmplwi r0, 0
/* 800EEED0 000EBE10  7C E7 28 38 */	and r7, r7, r5
/* 800EEED4 000EBE14  40 82 00 08 */	bne .L_800EEEDC
/* 800EEED8 000EBE18  60 E7 00 01 */	ori r7, r7, 1
.L_800EEEDC:
/* 800EEEDC 000EBE1C  54 80 03 5A */	rlwinm r0, r4, 0, 0xd, 0xd
/* 800EEEE0 000EBE20  28 00 00 00 */	cmplwi r0, 0
/* 800EEEE4 000EBE24  40 82 00 08 */	bne .L_800EEEEC
/* 800EEEE8 000EBE28  60 E7 00 04 */	ori r7, r7, 4
.L_800EEEEC:
/* 800EEEEC 000EBE2C  54 80 03 9C */	rlwinm r0, r4, 0, 0xe, 0xe
/* 800EEEF0 000EBE30  28 00 00 00 */	cmplwi r0, 0
/* 800EEEF4 000EBE34  40 82 00 08 */	bne .L_800EEEFC
/* 800EEEF8 000EBE38  60 E7 04 00 */	ori r7, r7, 0x400
.L_800EEEFC:
/* 800EEEFC 000EBE3C  90 E6 00 00 */	stw r7, 0(r6)
/* 800EEF00 000EBE40  54 63 03 D6 */	rlwinm r3, r3, 0, 0xf, 0xb
/* 800EEF04 000EBE44  48 00 00 F8 */	b .L_800EEFFC
.L_800EEF08:
/* 800EEF08 000EBE48  3C A0 CC 00 */	lis r5, 0xCC006800@ha
/* 800EEF0C 000EBE4C  38 A5 68 00 */	addi r5, r5, 0xCC006800@l
/* 800EEF10 000EBE50  38 A5 00 28 */	addi r5, r5, 0x28
/* 800EEF14 000EBE54  54 80 03 DE */	rlwinm r0, r4, 0, 0xf, 0xf
/* 800EEF18 000EBE58  80 C5 00 00 */	lwz r6, 0(r5)
/* 800EEF1C 000EBE5C  28 00 00 00 */	cmplwi r0, 0
/* 800EEF20 000EBE60  54 C6 00 36 */	rlwinm r6, r6, 0, 0, 0x1b
/* 800EEF24 000EBE64  40 82 00 08 */	bne .L_800EEF2C
/* 800EEF28 000EBE68  60 C6 00 01 */	ori r6, r6, 1
.L_800EEF2C:
/* 800EEF2C 000EBE6C  54 80 04 20 */	rlwinm r0, r4, 0, 0x10, 0x10
/* 800EEF30 000EBE70  28 00 00 00 */	cmplwi r0, 0
/* 800EEF34 000EBE74  40 82 00 08 */	bne .L_800EEF3C
/* 800EEF38 000EBE78  60 C6 00 04 */	ori r6, r6, 4
.L_800EEF3C:
/* 800EEF3C 000EBE7C  90 C5 00 00 */	stw r6, 0(r5)
/* 800EEF40 000EBE80  54 63 04 5C */	rlwinm r3, r3, 0, 0x11, 0xe
/* 800EEF44 000EBE84  48 00 00 B8 */	b .L_800EEFFC
.L_800EEF48:
/* 800EEF48 000EBE88  54 80 04 62 */	rlwinm r0, r4, 0, 0x11, 0x11
/* 800EEF4C 000EBE8C  28 00 00 00 */	cmplwi r0, 0
/* 800EEF50 000EBE90  38 A0 00 F0 */	li r5, 0xf0
/* 800EEF54 000EBE94  40 82 00 08 */	bne .L_800EEF5C
/* 800EEF58 000EBE98  60 A5 08 00 */	ori r5, r5, 0x800
.L_800EEF5C:
/* 800EEF5C 000EBE9C  54 80 05 28 */	rlwinm r0, r4, 0, 0x14, 0x14
/* 800EEF60 000EBEA0  28 00 00 00 */	cmplwi r0, 0
/* 800EEF64 000EBEA4  40 82 00 08 */	bne .L_800EEF6C
/* 800EEF68 000EBEA8  60 A5 00 08 */	ori r5, r5, 8
.L_800EEF6C:
/* 800EEF6C 000EBEAC  54 80 05 6A */	rlwinm r0, r4, 0, 0x15, 0x15
/* 800EEF70 000EBEB0  28 00 00 00 */	cmplwi r0, 0
/* 800EEF74 000EBEB4  40 82 00 08 */	bne .L_800EEF7C
/* 800EEF78 000EBEB8  60 A5 00 04 */	ori r5, r5, 4
.L_800EEF7C:
/* 800EEF7C 000EBEBC  54 80 05 AC */	rlwinm r0, r4, 0, 0x16, 0x16
/* 800EEF80 000EBEC0  28 00 00 00 */	cmplwi r0, 0
/* 800EEF84 000EBEC4  40 82 00 08 */	bne .L_800EEF8C
/* 800EEF88 000EBEC8  60 A5 00 02 */	ori r5, r5, 2
.L_800EEF8C:
/* 800EEF8C 000EBECC  54 80 05 EE */	rlwinm r0, r4, 0, 0x17, 0x17
/* 800EEF90 000EBED0  28 00 00 00 */	cmplwi r0, 0
/* 800EEF94 000EBED4  40 82 00 08 */	bne .L_800EEF9C
/* 800EEF98 000EBED8  60 A5 00 01 */	ori r5, r5, 1
.L_800EEF9C:
/* 800EEF9C 000EBEDC  54 80 06 30 */	rlwinm r0, r4, 0, 0x18, 0x18
/* 800EEFA0 000EBEE0  28 00 00 00 */	cmplwi r0, 0
/* 800EEFA4 000EBEE4  40 82 00 08 */	bne .L_800EEFAC
/* 800EEFA8 000EBEE8  60 A5 01 00 */	ori r5, r5, 0x100
.L_800EEFAC:
/* 800EEFAC 000EBEEC  54 80 06 72 */	rlwinm r0, r4, 0, 0x19, 0x19
/* 800EEFB0 000EBEF0  28 00 00 00 */	cmplwi r0, 0
/* 800EEFB4 000EBEF4  40 82 00 08 */	bne .L_800EEFBC
/* 800EEFB8 000EBEF8  60 A5 10 00 */	ori r5, r5, 0x1000
.L_800EEFBC:
/* 800EEFBC 000EBEFC  54 80 04 A4 */	rlwinm r0, r4, 0, 0x12, 0x12
/* 800EEFC0 000EBF00  28 00 00 00 */	cmplwi r0, 0
/* 800EEFC4 000EBF04  40 82 00 08 */	bne .L_800EEFCC
/* 800EEFC8 000EBF08  60 A5 02 00 */	ori r5, r5, 0x200
.L_800EEFCC:
/* 800EEFCC 000EBF0C  54 80 04 E6 */	rlwinm r0, r4, 0, 0x13, 0x13
/* 800EEFD0 000EBF10  28 00 00 00 */	cmplwi r0, 0
/* 800EEFD4 000EBF14  40 82 00 08 */	bne .L_800EEFDC
/* 800EEFD8 000EBF18  60 A5 04 00 */	ori r5, r5, 0x400
.L_800EEFDC:
/* 800EEFDC 000EBF1C  54 80 06 B4 */	rlwinm r0, r4, 0, 0x1a, 0x1a
/* 800EEFE0 000EBF20  28 00 00 00 */	cmplwi r0, 0
/* 800EEFE4 000EBF24  40 82 00 08 */	bne .L_800EEFEC
/* 800EEFE8 000EBF28  60 A5 20 00 */	ori r5, r5, 0x2000
.L_800EEFEC:
/* 800EEFEC 000EBF2C  3C 80 CC 00 */	lis r4, 0xCC003000@ha
/* 800EEFF0 000EBF30  38 84 30 00 */	addi r4, r4, 0xCC003000@l
/* 800EEFF4 000EBF34  90 A4 00 04 */	stw r5, 4(r4)
/* 800EEFF8 000EBF38  54 63 06 E0 */	rlwinm r3, r3, 0, 0x1b, 0x10
.L_800EEFFC:
/* 800EEFFC 000EBF3C  4E 80 00 20 */	blr 

.global __OSMaskInterrupts
__OSMaskInterrupts:
/* 800EF000 000EBF40  7C 08 02 A6 */	mflr r0
/* 800EF004 000EBF44  90 01 00 04 */	stw r0, 4(r1)
/* 800EF008 000EBF48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EF00C 000EBF4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800EF010 000EBF50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800EF014 000EBF54  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800EF018 000EBF58  7C 7F 1B 78 */	mr r31, r3
/* 800EF01C 000EBF5C  4B FF FC 1D */	bl OSDisableInterrupts
/* 800EF020 000EBF60  3C 80 80 00 */	lis r4, 0x800000C4@ha
/* 800EF024 000EBF64  83 A4 00 C4 */	lwz r29, 0x800000C4@l(r4)
/* 800EF028 000EBF68  7C 7E 1B 78 */	mr r30, r3
/* 800EF02C 000EBF6C  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 800EF030 000EBF70  7F A0 2B 78 */	or r0, r29, r5
/* 800EF034 000EBF74  7F E3 00 78 */	andc r3, r31, r0
/* 800EF038 000EBF78  7F FF EB 78 */	or r31, r31, r29
/* 800EF03C 000EBF7C  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 800EF040 000EBF80  7F FF 2B 78 */	or r31, r31, r5
/* 800EF044 000EBF84  48 00 00 04 */	b .L_800EF048
.L_800EF048:
/* 800EF048 000EBF88  48 00 00 04 */	b .L_800EF04C
.L_800EF04C:
/* 800EF04C 000EBF8C  48 00 00 0C */	b .L_800EF058
.L_800EF050:
/* 800EF050 000EBF90  7F E4 FB 78 */	mr r4, r31
/* 800EF054 000EBF94  4B FF FC D5 */	bl SetInterruptMask
.L_800EF058:
/* 800EF058 000EBF98  28 03 00 00 */	cmplwi r3, 0
/* 800EF05C 000EBF9C  40 82 FF F4 */	bne .L_800EF050
/* 800EF060 000EBFA0  7F C3 F3 78 */	mr r3, r30
/* 800EF064 000EBFA4  4B FF FB FD */	bl OSRestoreInterrupts
/* 800EF068 000EBFA8  7F A3 EB 78 */	mr r3, r29
/* 800EF06C 000EBFAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EF070 000EBFB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800EF074 000EBFB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800EF078 000EBFB8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800EF07C 000EBFBC  38 21 00 20 */	addi r1, r1, 0x20
/* 800EF080 000EBFC0  7C 08 03 A6 */	mtlr r0
/* 800EF084 000EBFC4  4E 80 00 20 */	blr 

.global __OSUnmaskInterrupts
__OSUnmaskInterrupts:
/* 800EF088 000EBFC8  7C 08 02 A6 */	mflr r0
/* 800EF08C 000EBFCC  90 01 00 04 */	stw r0, 4(r1)
/* 800EF090 000EBFD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EF094 000EBFD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800EF098 000EBFD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800EF09C 000EBFDC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800EF0A0 000EBFE0  7C 7F 1B 78 */	mr r31, r3
/* 800EF0A4 000EBFE4  4B FF FB 95 */	bl OSDisableInterrupts
/* 800EF0A8 000EBFE8  3C 80 80 00 */	lis r4, 0x800000C4@ha
/* 800EF0AC 000EBFEC  83 A4 00 C4 */	lwz r29, 0x800000C4@l(r4)
/* 800EF0B0 000EBFF0  7C 7E 1B 78 */	mr r30, r3
/* 800EF0B4 000EBFF4  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 800EF0B8 000EBFF8  7F A0 2B 78 */	or r0, r29, r5
/* 800EF0BC 000EBFFC  7F E3 00 38 */	and r3, r31, r0
/* 800EF0C0 000EC000  7F BF F8 78 */	andc r31, r29, r31
/* 800EF0C4 000EC004  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 800EF0C8 000EC008  7F FF 2B 78 */	or r31, r31, r5
/* 800EF0CC 000EC00C  48 00 00 04 */	b .L_800EF0D0
.L_800EF0D0:
/* 800EF0D0 000EC010  48 00 00 04 */	b .L_800EF0D4
.L_800EF0D4:
/* 800EF0D4 000EC014  48 00 00 0C */	b .L_800EF0E0
.L_800EF0D8:
/* 800EF0D8 000EC018  7F E4 FB 78 */	mr r4, r31
/* 800EF0DC 000EC01C  4B FF FC 4D */	bl SetInterruptMask
.L_800EF0E0:
/* 800EF0E0 000EC020  28 03 00 00 */	cmplwi r3, 0
/* 800EF0E4 000EC024  40 82 FF F4 */	bne .L_800EF0D8
/* 800EF0E8 000EC028  7F C3 F3 78 */	mr r3, r30
/* 800EF0EC 000EC02C  4B FF FB 75 */	bl OSRestoreInterrupts
/* 800EF0F0 000EC030  7F A3 EB 78 */	mr r3, r29
/* 800EF0F4 000EC034  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EF0F8 000EC038  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800EF0FC 000EC03C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800EF100 000EC040  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800EF104 000EC044  38 21 00 20 */	addi r1, r1, 0x20
/* 800EF108 000EC048  7C 08 03 A6 */	mtlr r0
/* 800EF10C 000EC04C  4E 80 00 20 */	blr 

.global __OSDispatchInterrupt
__OSDispatchInterrupt:
/* 800EF110 000EC050  7C 08 02 A6 */	mflr r0
/* 800EF114 000EC054  90 01 00 04 */	stw r0, 4(r1)
/* 800EF118 000EC058  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800EF11C 000EC05C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800EF120 000EC060  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800EF124 000EC064  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 800EF128 000EC068  7C 9E 23 78 */	mr r30, r4
/* 800EF12C 000EC06C  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 800EF130 000EC070  83 E3 30 00 */	lwz r31, 0xCC003000@l(r3)
/* 800EF134 000EC074  57 FF 04 1C */	rlwinm r31, r31, 0, 0x10, 0xe
/* 800EF138 000EC078  28 1F 00 00 */	cmplwi r31, 0
/* 800EF13C 000EC07C  41 82 00 18 */	beq .L_800EF154
/* 800EF140 000EC080  38 63 30 00 */	addi r3, r3, 0x3000
/* 800EF144 000EC084  80 03 00 04 */	lwz r0, 4(r3)
/* 800EF148 000EC088  7F E0 00 38 */	and r0, r31, r0
/* 800EF14C 000EC08C  28 00 00 00 */	cmplwi r0, 0
/* 800EF150 000EC090  40 82 00 0C */	bne .L_800EF15C
.L_800EF154:
/* 800EF154 000EC094  7F C3 F3 78 */	mr r3, r30
/* 800EF158 000EC098  4B FF DF 35 */	bl OSLoadContext
.L_800EF15C:
/* 800EF15C 000EC09C  57 E0 06 30 */	rlwinm r0, r31, 0, 0x18, 0x18
/* 800EF160 000EC0A0  28 00 00 00 */	cmplwi r0, 0
/* 800EF164 000EC0A4  38 00 00 00 */	li r0, 0
/* 800EF168 000EC0A8  41 82 00 60 */	beq .L_800EF1C8
/* 800EF16C 000EC0AC  3C 60 CC 00 */	lis r3, 0xCC004000@ha
/* 800EF170 000EC0B0  38 63 40 00 */	addi r3, r3, 0xCC004000@l
/* 800EF174 000EC0B4  A0 83 00 1E */	lhz r4, 0x1e(r3)
/* 800EF178 000EC0B8  54 83 07 FE */	clrlwi r3, r4, 0x1f
/* 800EF17C 000EC0BC  28 03 00 00 */	cmplwi r3, 0
/* 800EF180 000EC0C0  41 82 00 08 */	beq .L_800EF188
/* 800EF184 000EC0C4  64 00 80 00 */	oris r0, r0, 0x8000
.L_800EF188:
/* 800EF188 000EC0C8  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 800EF18C 000EC0CC  28 03 00 00 */	cmplwi r3, 0
/* 800EF190 000EC0D0  41 82 00 08 */	beq .L_800EF198
/* 800EF194 000EC0D4  64 00 40 00 */	oris r0, r0, 0x4000
.L_800EF198:
/* 800EF198 000EC0D8  54 83 07 7A */	rlwinm r3, r4, 0, 0x1d, 0x1d
/* 800EF19C 000EC0DC  28 03 00 00 */	cmplwi r3, 0
/* 800EF1A0 000EC0E0  41 82 00 08 */	beq .L_800EF1A8
/* 800EF1A4 000EC0E4  64 00 20 00 */	oris r0, r0, 0x2000
.L_800EF1A8:
/* 800EF1A8 000EC0E8  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 800EF1AC 000EC0EC  28 03 00 00 */	cmplwi r3, 0
/* 800EF1B0 000EC0F0  41 82 00 08 */	beq .L_800EF1B8
/* 800EF1B4 000EC0F4  64 00 10 00 */	oris r0, r0, 0x1000
.L_800EF1B8:
/* 800EF1B8 000EC0F8  54 83 06 F6 */	rlwinm r3, r4, 0, 0x1b, 0x1b
/* 800EF1BC 000EC0FC  28 03 00 00 */	cmplwi r3, 0
/* 800EF1C0 000EC100  41 82 00 08 */	beq .L_800EF1C8
/* 800EF1C4 000EC104  64 00 08 00 */	oris r0, r0, 0x800
.L_800EF1C8:
/* 800EF1C8 000EC108  57 E3 06 72 */	rlwinm r3, r31, 0, 0x19, 0x19
/* 800EF1CC 000EC10C  28 03 00 00 */	cmplwi r3, 0
/* 800EF1D0 000EC110  41 82 00 40 */	beq .L_800EF210
/* 800EF1D4 000EC114  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 800EF1D8 000EC118  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 800EF1DC 000EC11C  A0 83 00 0A */	lhz r4, 0xa(r3)
/* 800EF1E0 000EC120  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 800EF1E4 000EC124  28 03 00 00 */	cmplwi r3, 0
/* 800EF1E8 000EC128  41 82 00 08 */	beq .L_800EF1F0
/* 800EF1EC 000EC12C  64 00 04 00 */	oris r0, r0, 0x400
.L_800EF1F0:
/* 800EF1F0 000EC130  54 83 06 B4 */	rlwinm r3, r4, 0, 0x1a, 0x1a
/* 800EF1F4 000EC134  28 03 00 00 */	cmplwi r3, 0
/* 800EF1F8 000EC138  41 82 00 08 */	beq .L_800EF200
/* 800EF1FC 000EC13C  64 00 02 00 */	oris r0, r0, 0x200
.L_800EF200:
/* 800EF200 000EC140  54 83 06 30 */	rlwinm r3, r4, 0, 0x18, 0x18
/* 800EF204 000EC144  28 03 00 00 */	cmplwi r3, 0
/* 800EF208 000EC148  41 82 00 08 */	beq .L_800EF210
/* 800EF20C 000EC14C  64 00 01 00 */	oris r0, r0, 0x100
.L_800EF210:
/* 800EF210 000EC150  57 E3 06 B4 */	rlwinm r3, r31, 0, 0x1a, 0x1a
/* 800EF214 000EC154  28 03 00 00 */	cmplwi r3, 0
/* 800EF218 000EC158  41 82 00 1C */	beq .L_800EF234
/* 800EF21C 000EC15C  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 800EF220 000EC160  80 63 6C 00 */	lwz r3, 0xCC006C00@l(r3)
/* 800EF224 000EC164  54 63 07 38 */	rlwinm r3, r3, 0, 0x1c, 0x1c
/* 800EF228 000EC168  28 03 00 00 */	cmplwi r3, 0
/* 800EF22C 000EC16C  41 82 00 08 */	beq .L_800EF234
/* 800EF230 000EC170  64 00 00 80 */	oris r0, r0, 0x80
.L_800EF234:
/* 800EF234 000EC174  57 E3 06 F6 */	rlwinm r3, r31, 0, 0x1b, 0x1b
/* 800EF238 000EC178  28 03 00 00 */	cmplwi r3, 0
/* 800EF23C 000EC17C  41 82 00 A4 */	beq .L_800EF2E0
/* 800EF240 000EC180  3C 60 CC 00 */	lis r3, 0xCC006800@ha
/* 800EF244 000EC184  80 83 68 00 */	lwz r4, 0xCC006800@l(r3)
/* 800EF248 000EC188  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 800EF24C 000EC18C  28 03 00 00 */	cmplwi r3, 0
/* 800EF250 000EC190  41 82 00 08 */	beq .L_800EF258
/* 800EF254 000EC194  64 00 00 40 */	oris r0, r0, 0x40
.L_800EF258:
/* 800EF258 000EC198  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 800EF25C 000EC19C  28 03 00 00 */	cmplwi r3, 0
/* 800EF260 000EC1A0  41 82 00 08 */	beq .L_800EF268
/* 800EF264 000EC1A4  64 00 00 20 */	oris r0, r0, 0x20
.L_800EF268:
/* 800EF268 000EC1A8  54 83 05 28 */	rlwinm r3, r4, 0, 0x14, 0x14
/* 800EF26C 000EC1AC  28 03 00 00 */	cmplwi r3, 0
/* 800EF270 000EC1B0  41 82 00 08 */	beq .L_800EF278
/* 800EF274 000EC1B4  64 00 00 10 */	oris r0, r0, 0x10
.L_800EF278:
/* 800EF278 000EC1B8  3C 60 CC 00 */	lis r3, 0xCC006800@ha
/* 800EF27C 000EC1BC  38 63 68 00 */	addi r3, r3, 0xCC006800@l
/* 800EF280 000EC1C0  80 83 00 14 */	lwz r4, 0x14(r3)
/* 800EF284 000EC1C4  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 800EF288 000EC1C8  28 03 00 00 */	cmplwi r3, 0
/* 800EF28C 000EC1CC  41 82 00 08 */	beq .L_800EF294
/* 800EF290 000EC1D0  64 00 00 08 */	oris r0, r0, 8
.L_800EF294:
/* 800EF294 000EC1D4  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 800EF298 000EC1D8  28 03 00 00 */	cmplwi r3, 0
/* 800EF29C 000EC1DC  41 82 00 08 */	beq .L_800EF2A4
/* 800EF2A0 000EC1E0  64 00 00 04 */	oris r0, r0, 4
.L_800EF2A4:
/* 800EF2A4 000EC1E4  54 83 05 28 */	rlwinm r3, r4, 0, 0x14, 0x14
/* 800EF2A8 000EC1E8  28 03 00 00 */	cmplwi r3, 0
/* 800EF2AC 000EC1EC  41 82 00 08 */	beq .L_800EF2B4
/* 800EF2B0 000EC1F0  64 00 00 02 */	oris r0, r0, 2
.L_800EF2B4:
/* 800EF2B4 000EC1F4  3C 60 CC 00 */	lis r3, 0xCC006800@ha
/* 800EF2B8 000EC1F8  38 63 68 00 */	addi r3, r3, 0xCC006800@l
/* 800EF2BC 000EC1FC  80 83 00 28 */	lwz r4, 0x28(r3)
/* 800EF2C0 000EC200  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 800EF2C4 000EC204  28 03 00 00 */	cmplwi r3, 0
/* 800EF2C8 000EC208  41 82 00 08 */	beq .L_800EF2D0
/* 800EF2CC 000EC20C  64 00 00 01 */	oris r0, r0, 1
.L_800EF2D0:
/* 800EF2D0 000EC210  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 800EF2D4 000EC214  28 03 00 00 */	cmplwi r3, 0
/* 800EF2D8 000EC218  41 82 00 08 */	beq .L_800EF2E0
/* 800EF2DC 000EC21C  60 00 80 00 */	ori r0, r0, 0x8000
.L_800EF2E0:
/* 800EF2E0 000EC220  57 E3 04 A4 */	rlwinm r3, r31, 0, 0x12, 0x12
/* 800EF2E4 000EC224  28 03 00 00 */	cmplwi r3, 0
/* 800EF2E8 000EC228  41 82 00 08 */	beq .L_800EF2F0
/* 800EF2EC 000EC22C  60 00 00 20 */	ori r0, r0, 0x20
.L_800EF2F0:
/* 800EF2F0 000EC230  57 E3 04 E6 */	rlwinm r3, r31, 0, 0x13, 0x13
/* 800EF2F4 000EC234  28 03 00 00 */	cmplwi r3, 0
/* 800EF2F8 000EC238  41 82 00 08 */	beq .L_800EF300
/* 800EF2FC 000EC23C  60 00 00 40 */	ori r0, r0, 0x40
.L_800EF300:
/* 800EF300 000EC240  57 E3 05 6A */	rlwinm r3, r31, 0, 0x15, 0x15
/* 800EF304 000EC244  28 03 00 00 */	cmplwi r3, 0
/* 800EF308 000EC248  41 82 00 08 */	beq .L_800EF310
/* 800EF30C 000EC24C  60 00 10 00 */	ori r0, r0, 0x1000
.L_800EF310:
/* 800EF310 000EC250  57 E3 05 AC */	rlwinm r3, r31, 0, 0x16, 0x16
/* 800EF314 000EC254  28 03 00 00 */	cmplwi r3, 0
/* 800EF318 000EC258  41 82 00 08 */	beq .L_800EF320
/* 800EF31C 000EC25C  60 00 20 00 */	ori r0, r0, 0x2000
.L_800EF320:
/* 800EF320 000EC260  57 E3 05 EE */	rlwinm r3, r31, 0, 0x17, 0x17
/* 800EF324 000EC264  28 03 00 00 */	cmplwi r3, 0
/* 800EF328 000EC268  41 82 00 08 */	beq .L_800EF330
/* 800EF32C 000EC26C  60 00 00 80 */	ori r0, r0, 0x80
.L_800EF330:
/* 800EF330 000EC270  57 E3 07 38 */	rlwinm r3, r31, 0, 0x1c, 0x1c
/* 800EF334 000EC274  28 03 00 00 */	cmplwi r3, 0
/* 800EF338 000EC278  41 82 00 08 */	beq .L_800EF340
/* 800EF33C 000EC27C  60 00 08 00 */	ori r0, r0, 0x800
.L_800EF340:
/* 800EF340 000EC280  57 E3 07 7A */	rlwinm r3, r31, 0, 0x1d, 0x1d
/* 800EF344 000EC284  28 03 00 00 */	cmplwi r3, 0
/* 800EF348 000EC288  41 82 00 08 */	beq .L_800EF350
/* 800EF34C 000EC28C  60 00 04 00 */	ori r0, r0, 0x400
.L_800EF350:
/* 800EF350 000EC290  57 E3 07 BC */	rlwinm r3, r31, 0, 0x1e, 0x1e
/* 800EF354 000EC294  28 03 00 00 */	cmplwi r3, 0
/* 800EF358 000EC298  41 82 00 08 */	beq .L_800EF360
/* 800EF35C 000EC29C  60 00 02 00 */	ori r0, r0, 0x200
.L_800EF360:
/* 800EF360 000EC2A0  57 E3 05 28 */	rlwinm r3, r31, 0, 0x14, 0x14
/* 800EF364 000EC2A4  28 03 00 00 */	cmplwi r3, 0
/* 800EF368 000EC2A8  41 82 00 08 */	beq .L_800EF370
/* 800EF36C 000EC2AC  60 00 40 00 */	ori r0, r0, 0x4000
.L_800EF370:
/* 800EF370 000EC2B0  57 E3 07 FE */	clrlwi r3, r31, 0x1f
/* 800EF374 000EC2B4  28 03 00 00 */	cmplwi r3, 0
/* 800EF378 000EC2B8  41 82 00 08 */	beq .L_800EF380
/* 800EF37C 000EC2BC  60 00 01 00 */	ori r0, r0, 0x100
.L_800EF380:
/* 800EF380 000EC2C0  3C 60 80 00 */	lis r3, 0x800000C4@ha
/* 800EF384 000EC2C4  80 83 00 C4 */	lwz r4, 0x800000C4@l(r3)
/* 800EF388 000EC2C8  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 800EF38C 000EC2CC  7C 83 1B 78 */	or r3, r4, r3
/* 800EF390 000EC2D0  7C 04 18 78 */	andc r4, r0, r3
/* 800EF394 000EC2D4  28 04 00 00 */	cmplwi r4, 0
/* 800EF398 000EC2D8  41 82 00 98 */	beq .L_800EF430
/* 800EF39C 000EC2DC  3C 60 80 4B */	lis r3, InterruptPrioTable@ha
/* 800EF3A0 000EC2E0  38 03 9D C0 */	addi r0, r3, InterruptPrioTable@l
/* 800EF3A4 000EC2E4  7C 03 03 78 */	mr r3, r0
/* 800EF3A8 000EC2E8  48 00 00 04 */	b .L_800EF3AC
.L_800EF3AC:
/* 800EF3AC 000EC2EC  48 00 00 04 */	b .L_800EF3B0
.L_800EF3B0:
/* 800EF3B0 000EC2F0  80 03 00 00 */	lwz r0, 0(r3)
/* 800EF3B4 000EC2F4  7C 80 00 38 */	and r0, r4, r0
/* 800EF3B8 000EC2F8  28 00 00 00 */	cmplwi r0, 0
/* 800EF3BC 000EC2FC  41 82 00 10 */	beq .L_800EF3CC
/* 800EF3C0 000EC300  7C 00 00 34 */	cntlzw r0, r0
/* 800EF3C4 000EC304  7C 1D 07 34 */	extsh r29, r0
/* 800EF3C8 000EC308  48 00 00 0C */	b .L_800EF3D4
.L_800EF3CC:
/* 800EF3CC 000EC30C  38 63 00 04 */	addi r3, r3, 4
/* 800EF3D0 000EC310  4B FF FF E0 */	b .L_800EF3B0
.L_800EF3D4:
/* 800EF3D4 000EC314  80 6D 8F 80 */	lwz r3, InterruptHandlerTable@sda21(r13)
/* 800EF3D8 000EC318  57 A0 10 3A */	slwi r0, r29, 2
/* 800EF3DC 000EC31C  7F E3 00 2E */	lwzx r31, r3, r0
/* 800EF3E0 000EC320  28 1F 00 00 */	cmplwi r31, 0
/* 800EF3E4 000EC324  41 82 00 4C */	beq .L_800EF430
/* 800EF3E8 000EC328  2C 1D 00 04 */	cmpwi r29, 4
/* 800EF3EC 000EC32C  40 81 00 1C */	ble .L_800EF408
/* 800EF3F0 000EC330  B3 AD 8F 88 */	sth r29, __OSLastInterrupt@sda21(r13)
/* 800EF3F4 000EC334  48 00 37 9D */	bl OSGetTime
/* 800EF3F8 000EC338  90 8D 8F 94 */	stw r4, lbl_80515614@sda21(r13)
/* 800EF3FC 000EC33C  90 6D 8F 90 */	stw r3, __OSLastInterruptTime@sda21(r13)
/* 800EF400 000EC340  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 800EF404 000EC344  90 0D 8F 84 */	stw r0, __OSLastInterruptSrr0@sda21(r13)
.L_800EF408:
/* 800EF408 000EC348  48 00 25 FD */	bl OSDisableScheduler
/* 800EF40C 000EC34C  7F A3 EB 78 */	mr r3, r29
/* 800EF410 000EC350  7F C4 F3 78 */	mr r4, r30
/* 800EF414 000EC354  7F EC FB 78 */	mr r12, r31
/* 800EF418 000EC358  7D 88 03 A6 */	mtlr r12
/* 800EF41C 000EC35C  4E 80 00 21 */	blrl 
/* 800EF420 000EC360  48 00 26 25 */	bl OSEnableScheduler
/* 800EF424 000EC364  48 00 2B 3D */	bl __OSReschedule
/* 800EF428 000EC368  7F C3 F3 78 */	mr r3, r30
/* 800EF42C 000EC36C  4B FF DC 61 */	bl OSLoadContext
.L_800EF430:
/* 800EF430 000EC370  7F C3 F3 78 */	mr r3, r30
/* 800EF434 000EC374  4B FF DC 59 */	bl OSLoadContext
/* 800EF438 000EC378  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800EF43C 000EC37C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 800EF440 000EC380  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 800EF444 000EC384  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 800EF448 000EC388  38 21 00 28 */	addi r1, r1, 0x28
/* 800EF44C 000EC38C  7C 08 03 A6 */	mtlr r0
/* 800EF450 000EC390  4E 80 00 20 */	blr 

.global ExternalInterruptHandler
ExternalInterruptHandler:
/* 800EF454 000EC394  90 04 00 00 */	stw r0, 0(r4)
/* 800EF458 000EC398  90 24 00 04 */	stw r1, 4(r4)
/* 800EF45C 000EC39C  90 44 00 08 */	stw r2, 8(r4)
/* 800EF460 000EC3A0  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 800EF464 000EC3A4  7C 11 E2 A6 */	mfspr r0, 0x391
/* 800EF468 000EC3A8  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 800EF46C 000EC3AC  7C 12 E2 A6 */	mfspr r0, 0x392
/* 800EF470 000EC3B0  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 800EF474 000EC3B4  7C 13 E2 A6 */	mfspr r0, 0x393
/* 800EF478 000EC3B8  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 800EF47C 000EC3BC  7C 14 E2 A6 */	mfspr r0, 0x394
/* 800EF480 000EC3C0  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 800EF484 000EC3C4  7C 15 E2 A6 */	mfspr r0, 0x395
/* 800EF488 000EC3C8  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 800EF48C 000EC3CC  7C 16 E2 A6 */	mfspr r0, 0x396
/* 800EF490 000EC3D0  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 800EF494 000EC3D4  7C 17 E2 A6 */	mfspr r0, 0x397
/* 800EF498 000EC3D8  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 800EF49C 000EC3DC  94 21 FF F8 */	stwu r1, -8(r1)
/* 800EF4A0 000EC3E0  4B FF FC 70 */	b __OSDispatchInterrupt
