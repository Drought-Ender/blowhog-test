.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.global lbl_80489978
lbl_80489978:
	.asciz "246-DamagumoShadow"
	.skip 1
	.asciz "rhand1jnt"
	.skip 2
	.asciz "rhand2jnt"
	.skip 2
	.asciz "rhand3jnt"
	.skip 2
	.asciz "lhand1jnt"
	.skip 2
	.asciz "lhand2jnt"
	.skip 2
	.asciz "lhand3jnt"
	.skip 2
	.asciz "rfoot1jnt"
	.skip 2
	.asciz "rfoot2jnt"
	.skip 2
	.asciz "rfoot3jnt"
	.skip 2
	.asciz "lfoot1jnt"
	.skip 2
	.asciz "lfoot2jnt"
	.skip 2
	.asciz "lfoot3jnt"
	.skip 2

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__Q24Game17TubeShadowSetNode
__vt__Q24Game17TubeShadowSetNode:
	.4byte 0
	.4byte 0
	.4byte __dt__Q24Game17TubeShadowSetNodeFv
	.4byte getChildCount__5CNodeFv
.global __vt__Q24Game19TubeShadowTransNode
__vt__Q24Game19TubeShadowTransNode:
	.4byte 0
	.4byte 0
	.4byte __dt__Q24Game19TubeShadowTransNodeFv
	.4byte getChildCount__5CNodeFv
.global __vt__Q24Game16SphereShadowNode
__vt__Q24Game16SphereShadowNode:
	.4byte 0
	.4byte 0
	.4byte __dt__Q24Game16SphereShadowNodeFv
	.4byte getChildCount__5CNodeFv

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_8051BFD8
lbl_8051BFD8:
	.4byte 0x6B6F7369
	.4byte 0x00000000
.global lbl_8051BFE0
lbl_8051BFE0:
	.float 0.5
.global lbl_8051BFE4
lbl_8051BFE4:
	.4byte 0x40400000
.global lbl_8051BFE8
lbl_8051BFE8:
	.4byte 0x00000000
.global lbl_8051BFEC
lbl_8051BFEC:
	.float 1.0
.global lbl_8051BFF0
lbl_8051BFF0:
	.4byte 0xC1F00000
.global lbl_8051BFF4
lbl_8051BFF4:
	.4byte 0x40200000
.global lbl_8051BFF8
lbl_8051BFF8:
	.4byte 0x41200000
.global lbl_8051BFFC
lbl_8051BFFC:
	.4byte 0x418C0000
.global lbl_8051C000
lbl_8051C000:
	.4byte 0x41F00000
.global lbl_8051C004
lbl_8051C004:
	.4byte 0xC2480000
.global lbl_8051C008
lbl_8051C008:
	.4byte 0x42840000
.global lbl_8051C00C
lbl_8051C00C:
	.4byte 0xC28E0000
.global lbl_8051C010
lbl_8051C010:
	.4byte 0xC1200000
.global lbl_8051C014
lbl_8051C014:
	.4byte 0xC0A00000
.global lbl_8051C018
lbl_8051C018:
	.4byte 0xC1000000
.global lbl_8051C01C
lbl_8051C01C:
	.4byte 0x40A00000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q34Game8Damagumo17DamagumoShadowMgrFPQ34Game8Damagumo3Obj
__ct__Q34Game8Damagumo17DamagumoShadowMgrFPQ34Game8Damagumo3Obj:
/* 802AAD94 002A7CD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AAD98 002A7CD8  7C 08 02 A6 */	mflr r0
/* 802AAD9C 002A7CDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AADA0 002A7CE0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802AADA4 002A7CE4  7C 9B 23 78 */	mr r27, r4
/* 802AADA8 002A7CE8  7C 7C 1B 78 */	mr r28, r3
/* 802AADAC 002A7CEC  93 63 00 04 */	stw r27, 4(r3)
/* 802AADB0 002A7CF0  38 60 00 20 */	li r3, 0x20
/* 802AADB4 002A7CF4  4B D7 90 F1 */	bl __nw__FUl
/* 802AADB8 002A7CF8  7C 60 1B 79 */	or. r0, r3, r3
/* 802AADBC 002A7CFC  41 82 00 10 */	beq .L_802AADCC
/* 802AADC0 002A7D00  7F 64 DB 78 */	mr r4, r27
/* 802AADC4 002A7D04  4B F9 64 B9 */	bl __ct__Q24Game19JointShadowRootNodeFPQ24Game8Creature
/* 802AADC8 002A7D08  7C 60 1B 78 */	mr r0, r3
.L_802AADCC:
/* 802AADCC 002A7D0C  90 1C 00 48 */	stw r0, 0x48(r28)
/* 802AADD0 002A7D10  38 60 00 24 */	li r3, 0x24
/* 802AADD4 002A7D14  4B D7 90 D1 */	bl __nw__FUl
/* 802AADD8 002A7D18  7C 7B 1B 79 */	or. r27, r3, r3
/* 802AADDC 002A7D1C  41 82 00 18 */	beq .L_802AADF4
/* 802AADE0 002A7D20  38 80 00 02 */	li r4, 2
/* 802AADE4 002A7D24  4B F9 64 F9 */	bl __ct__Q24Game15JointShadowNodeFi
/* 802AADE8 002A7D28  3C 60 80 4D */	lis r3, __vt__Q24Game16SphereShadowNode@ha
/* 802AADEC 002A7D2C  38 03 DE D8 */	addi r0, r3, __vt__Q24Game16SphereShadowNode@l
/* 802AADF0 002A7D30  90 1B 00 00 */	stw r0, 0(r27)
.L_802AADF4:
/* 802AADF4 002A7D34  93 7C 00 4C */	stw r27, 0x4c(r28)
/* 802AADF8 002A7D38  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802AADFC 002A7D3C  80 9C 00 4C */	lwz r4, 0x4c(r28)
/* 802AAE00 002A7D40  48 16 66 09 */	bl add__5CNodeFP5CNode
/* 802AAE04 002A7D44  7F 9F E3 78 */	mr r31, r28
/* 802AAE08 002A7D48  7F 9E E3 78 */	mr r30, r28
/* 802AAE0C 002A7D4C  3B A0 00 00 */	li r29, 0
.L_802AAE10:
/* 802AAE10 002A7D50  38 60 00 28 */	li r3, 0x28
/* 802AAE14 002A7D54  4B D7 90 91 */	bl __nw__FUl
/* 802AAE18 002A7D58  7C 7B 1B 79 */	or. r27, r3, r3
/* 802AAE1C 002A7D5C  41 82 00 20 */	beq .L_802AAE3C
/* 802AAE20 002A7D60  38 80 00 02 */	li r4, 2
/* 802AAE24 002A7D64  4B F9 64 B9 */	bl __ct__Q24Game15JointShadowNodeFi
/* 802AAE28 002A7D68  3C 60 80 4D */	lis r3, __vt__Q24Game19TubeShadowTransNode@ha
/* 802AAE2C 002A7D6C  38 00 00 00 */	li r0, 0
/* 802AAE30 002A7D70  38 63 DE C8 */	addi r3, r3, __vt__Q24Game19TubeShadowTransNode@l
/* 802AAE34 002A7D74  90 7B 00 00 */	stw r3, 0(r27)
/* 802AAE38 002A7D78  90 1B 00 24 */	stw r0, 0x24(r27)
.L_802AAE3C:
/* 802AAE3C 002A7D7C  93 7F 00 50 */	stw r27, 0x50(r31)
/* 802AAE40 002A7D80  38 60 00 28 */	li r3, 0x28
/* 802AAE44 002A7D84  4B D7 90 61 */	bl __nw__FUl
/* 802AAE48 002A7D88  7C 7B 1B 79 */	or. r27, r3, r3
/* 802AAE4C 002A7D8C  41 82 00 20 */	beq .L_802AAE6C
/* 802AAE50 002A7D90  38 80 00 02 */	li r4, 2
/* 802AAE54 002A7D94  4B F9 64 89 */	bl __ct__Q24Game15JointShadowNodeFi
/* 802AAE58 002A7D98  3C 60 80 4D */	lis r3, __vt__Q24Game17TubeShadowSetNode@ha
/* 802AAE5C 002A7D9C  38 00 00 00 */	li r0, 0
/* 802AAE60 002A7DA0  38 63 DE B8 */	addi r3, r3, __vt__Q24Game17TubeShadowSetNode@l
/* 802AAE64 002A7DA4  90 7B 00 00 */	stw r3, 0(r27)
/* 802AAE68 002A7DA8  90 1B 00 24 */	stw r0, 0x24(r27)
.L_802AAE6C:
/* 802AAE6C 002A7DAC  93 7F 00 60 */	stw r27, 0x60(r31)
/* 802AAE70 002A7DB0  38 60 00 28 */	li r3, 0x28
/* 802AAE74 002A7DB4  4B D7 90 31 */	bl __nw__FUl
/* 802AAE78 002A7DB8  7C 7B 1B 79 */	or. r27, r3, r3
/* 802AAE7C 002A7DBC  41 82 00 20 */	beq .L_802AAE9C
/* 802AAE80 002A7DC0  38 80 00 02 */	li r4, 2
/* 802AAE84 002A7DC4  4B F9 64 59 */	bl __ct__Q24Game15JointShadowNodeFi
/* 802AAE88 002A7DC8  3C 60 80 4D */	lis r3, __vt__Q24Game17TubeShadowSetNode@ha
/* 802AAE8C 002A7DCC  38 00 00 00 */	li r0, 0
/* 802AAE90 002A7DD0  38 63 DE B8 */	addi r3, r3, __vt__Q24Game17TubeShadowSetNode@l
/* 802AAE94 002A7DD4  90 7B 00 00 */	stw r3, 0(r27)
/* 802AAE98 002A7DD8  90 1B 00 24 */	stw r0, 0x24(r27)
.L_802AAE9C:
/* 802AAE9C 002A7DDC  93 7F 00 70 */	stw r27, 0x70(r31)
/* 802AAEA0 002A7DE0  38 60 00 24 */	li r3, 0x24
/* 802AAEA4 002A7DE4  4B D7 90 01 */	bl __nw__FUl
/* 802AAEA8 002A7DE8  7C 7B 1B 79 */	or. r27, r3, r3
/* 802AAEAC 002A7DEC  41 82 00 18 */	beq .L_802AAEC4
/* 802AAEB0 002A7DF0  38 80 00 02 */	li r4, 2
/* 802AAEB4 002A7DF4  4B F9 64 29 */	bl __ct__Q24Game15JointShadowNodeFi
/* 802AAEB8 002A7DF8  3C 60 80 4D */	lis r3, __vt__Q24Game16SphereShadowNode@ha
/* 802AAEBC 002A7DFC  38 03 DE D8 */	addi r0, r3, __vt__Q24Game16SphereShadowNode@l
/* 802AAEC0 002A7E00  90 1B 00 00 */	stw r0, 0(r27)
.L_802AAEC4:
/* 802AAEC4 002A7E04  93 7F 00 80 */	stw r27, 0x80(r31)
/* 802AAEC8 002A7E08  38 60 00 24 */	li r3, 0x24
/* 802AAECC 002A7E0C  4B D7 8F D9 */	bl __nw__FUl
/* 802AAED0 002A7E10  7C 7B 1B 79 */	or. r27, r3, r3
/* 802AAED4 002A7E14  41 82 00 18 */	beq .L_802AAEEC
/* 802AAED8 002A7E18  38 80 00 02 */	li r4, 2
/* 802AAEDC 002A7E1C  4B F9 64 01 */	bl __ct__Q24Game15JointShadowNodeFi
/* 802AAEE0 002A7E20  3C 60 80 4D */	lis r3, __vt__Q24Game16SphereShadowNode@ha
/* 802AAEE4 002A7E24  38 03 DE D8 */	addi r0, r3, __vt__Q24Game16SphereShadowNode@l
/* 802AAEE8 002A7E28  90 1B 00 00 */	stw r0, 0(r27)
.L_802AAEEC:
/* 802AAEEC 002A7E2C  93 7F 00 90 */	stw r27, 0x90(r31)
/* 802AAEF0 002A7E30  38 60 00 24 */	li r3, 0x24
/* 802AAEF4 002A7E34  4B D7 8F B1 */	bl __nw__FUl
/* 802AAEF8 002A7E38  7C 7B 1B 79 */	or. r27, r3, r3
/* 802AAEFC 002A7E3C  41 82 00 18 */	beq .L_802AAF14
/* 802AAF00 002A7E40  38 80 00 02 */	li r4, 2
/* 802AAF04 002A7E44  4B F9 63 D9 */	bl __ct__Q24Game15JointShadowNodeFi
/* 802AAF08 002A7E48  3C 60 80 4D */	lis r3, __vt__Q24Game16SphereShadowNode@ha
/* 802AAF0C 002A7E4C  38 03 DE D8 */	addi r0, r3, __vt__Q24Game16SphereShadowNode@l
/* 802AAF10 002A7E50  90 1B 00 00 */	stw r0, 0(r27)
.L_802AAF14:
/* 802AAF14 002A7E54  93 7F 00 A0 */	stw r27, 0xa0(r31)
/* 802AAF18 002A7E58  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802AAF1C 002A7E5C  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 802AAF20 002A7E60  48 16 64 E9 */	bl add__5CNodeFP5CNode
/* 802AAF24 002A7E64  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802AAF28 002A7E68  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 802AAF2C 002A7E6C  48 16 64 DD */	bl add__5CNodeFP5CNode
/* 802AAF30 002A7E70  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802AAF34 002A7E74  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 802AAF38 002A7E78  48 16 64 D1 */	bl add__5CNodeFP5CNode
/* 802AAF3C 002A7E7C  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802AAF40 002A7E80  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 802AAF44 002A7E84  48 16 64 C5 */	bl add__5CNodeFP5CNode
/* 802AAF48 002A7E88  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802AAF4C 002A7E8C  80 9F 00 90 */	lwz r4, 0x90(r31)
/* 802AAF50 002A7E90  48 16 64 B9 */	bl add__5CNodeFP5CNode
/* 802AAF54 002A7E94  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802AAF58 002A7E98  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 802AAF5C 002A7E9C  48 16 64 AD */	bl add__5CNodeFP5CNode
/* 802AAF60 002A7EA0  38 00 00 00 */	li r0, 0
/* 802AAF64 002A7EA4  3B BD 00 01 */	addi r29, r29, 1
/* 802AAF68 002A7EA8  90 1E 00 08 */	stw r0, 8(r30)
/* 802AAF6C 002A7EAC  2C 1D 00 04 */	cmpwi r29, 4
/* 802AAF70 002A7EB0  3B FF 00 04 */	addi r31, r31, 4
/* 802AAF74 002A7EB4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802AAF78 002A7EB8  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802AAF7C 002A7EBC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 802AAF80 002A7EC0  3B DE 00 10 */	addi r30, r30, 0x10
/* 802AAF84 002A7EC4  41 80 FE 8C */	blt .L_802AAE10
/* 802AAF88 002A7EC8  7F 83 E3 78 */	mr r3, r28
/* 802AAF8C 002A7ECC  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802AAF90 002A7ED0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AAF94 002A7ED4  7C 08 03 A6 */	mtlr r0
/* 802AAF98 002A7ED8  38 21 00 20 */	addi r1, r1, 0x20
/* 802AAF9C 002A7EDC  4E 80 00 20 */	blr 

.global init__Q34Game8Damagumo17DamagumoShadowMgrFv
init__Q34Game8Damagumo17DamagumoShadowMgrFv:
/* 802AAFA0 002A7EE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AAFA4 002A7EE4  7C 08 02 A6 */	mflr r0
/* 802AAFA8 002A7EE8  3C 80 80 49 */	lis r4, lbl_80489978@ha
/* 802AAFAC 002A7EEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AAFB0 002A7EF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AAFB4 002A7EF4  3B E4 99 78 */	addi r31, r4, lbl_80489978@l
/* 802AAFB8 002A7EF8  38 82 DC 78 */	addi r4, r2, lbl_8051BFD8@sda21
/* 802AAFBC 002A7EFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AAFC0 002A7F00  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802AAFC4 002A7F04  7C 7D 1B 78 */	mr r29, r3
/* 802AAFC8 002A7F08  80 63 00 04 */	lwz r3, 4(r3)
/* 802AAFCC 002A7F0C  83 C3 01 74 */	lwz r30, 0x174(r3)
/* 802AAFD0 002A7F10  7F C3 F3 78 */	mr r3, r30
/* 802AAFD4 002A7F14  48 19 40 11 */	bl getJoint__Q28SysShape5ModelFPc
/* 802AAFD8 002A7F18  48 17 E8 C9 */	bl getWorldMatrix__Q28SysShape5JointFv
/* 802AAFDC 002A7F1C  90 7D 00 00 */	stw r3, 0(r29)
/* 802AAFE0 002A7F20  7F C3 F3 78 */	mr r3, r30
/* 802AAFE4 002A7F24  38 9F 00 14 */	addi r4, r31, 0x14
/* 802AAFE8 002A7F28  48 19 3F FD */	bl getJoint__Q28SysShape5ModelFPc
/* 802AAFEC 002A7F2C  80 BD 00 50 */	lwz r5, 0x50(r29)
/* 802AAFF0 002A7F30  38 9F 00 20 */	addi r4, r31, 0x20
/* 802AAFF4 002A7F34  90 65 00 24 */	stw r3, 0x24(r5)
/* 802AAFF8 002A7F38  7F C3 F3 78 */	mr r3, r30
/* 802AAFFC 002A7F3C  48 19 3F E9 */	bl getJoint__Q28SysShape5ModelFPc
/* 802AB000 002A7F40  80 BD 00 60 */	lwz r5, 0x60(r29)
/* 802AB004 002A7F44  38 9F 00 2C */	addi r4, r31, 0x2c
/* 802AB008 002A7F48  90 65 00 24 */	stw r3, 0x24(r5)
/* 802AB00C 002A7F4C  7F C3 F3 78 */	mr r3, r30
/* 802AB010 002A7F50  48 19 3F D5 */	bl getJoint__Q28SysShape5ModelFPc
/* 802AB014 002A7F54  80 BD 00 70 */	lwz r5, 0x70(r29)
/* 802AB018 002A7F58  38 9F 00 38 */	addi r4, r31, 0x38
/* 802AB01C 002A7F5C  90 65 00 24 */	stw r3, 0x24(r5)
/* 802AB020 002A7F60  7F C3 F3 78 */	mr r3, r30
/* 802AB024 002A7F64  48 19 3F C1 */	bl getJoint__Q28SysShape5ModelFPc
/* 802AB028 002A7F68  80 BD 00 54 */	lwz r5, 0x54(r29)
/* 802AB02C 002A7F6C  38 9F 00 44 */	addi r4, r31, 0x44
/* 802AB030 002A7F70  90 65 00 24 */	stw r3, 0x24(r5)
/* 802AB034 002A7F74  7F C3 F3 78 */	mr r3, r30
/* 802AB038 002A7F78  48 19 3F AD */	bl getJoint__Q28SysShape5ModelFPc
/* 802AB03C 002A7F7C  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 802AB040 002A7F80  38 9F 00 50 */	addi r4, r31, 0x50
/* 802AB044 002A7F84  90 65 00 24 */	stw r3, 0x24(r5)
/* 802AB048 002A7F88  7F C3 F3 78 */	mr r3, r30
/* 802AB04C 002A7F8C  48 19 3F 99 */	bl getJoint__Q28SysShape5ModelFPc
/* 802AB050 002A7F90  80 BD 00 74 */	lwz r5, 0x74(r29)
/* 802AB054 002A7F94  38 9F 00 5C */	addi r4, r31, 0x5c
/* 802AB058 002A7F98  90 65 00 24 */	stw r3, 0x24(r5)
/* 802AB05C 002A7F9C  7F C3 F3 78 */	mr r3, r30
/* 802AB060 002A7FA0  48 19 3F 85 */	bl getJoint__Q28SysShape5ModelFPc
/* 802AB064 002A7FA4  80 BD 00 58 */	lwz r5, 0x58(r29)
/* 802AB068 002A7FA8  38 9F 00 68 */	addi r4, r31, 0x68
/* 802AB06C 002A7FAC  90 65 00 24 */	stw r3, 0x24(r5)
/* 802AB070 002A7FB0  7F C3 F3 78 */	mr r3, r30
/* 802AB074 002A7FB4  48 19 3F 71 */	bl getJoint__Q28SysShape5ModelFPc
/* 802AB078 002A7FB8  80 BD 00 68 */	lwz r5, 0x68(r29)
/* 802AB07C 002A7FBC  38 9F 00 74 */	addi r4, r31, 0x74
/* 802AB080 002A7FC0  90 65 00 24 */	stw r3, 0x24(r5)
/* 802AB084 002A7FC4  7F C3 F3 78 */	mr r3, r30
/* 802AB088 002A7FC8  48 19 3F 5D */	bl getJoint__Q28SysShape5ModelFPc
/* 802AB08C 002A7FCC  80 BD 00 78 */	lwz r5, 0x78(r29)
/* 802AB090 002A7FD0  38 9F 00 80 */	addi r4, r31, 0x80
/* 802AB094 002A7FD4  90 65 00 24 */	stw r3, 0x24(r5)
/* 802AB098 002A7FD8  7F C3 F3 78 */	mr r3, r30
/* 802AB09C 002A7FDC  48 19 3F 49 */	bl getJoint__Q28SysShape5ModelFPc
/* 802AB0A0 002A7FE0  80 BD 00 5C */	lwz r5, 0x5c(r29)
/* 802AB0A4 002A7FE4  38 9F 00 8C */	addi r4, r31, 0x8c
/* 802AB0A8 002A7FE8  90 65 00 24 */	stw r3, 0x24(r5)
/* 802AB0AC 002A7FEC  7F C3 F3 78 */	mr r3, r30
/* 802AB0B0 002A7FF0  48 19 3F 35 */	bl getJoint__Q28SysShape5ModelFPc
/* 802AB0B4 002A7FF4  80 BD 00 6C */	lwz r5, 0x6c(r29)
/* 802AB0B8 002A7FF8  38 9F 00 98 */	addi r4, r31, 0x98
/* 802AB0BC 002A7FFC  90 65 00 24 */	stw r3, 0x24(r5)
/* 802AB0C0 002A8000  7F C3 F3 78 */	mr r3, r30
/* 802AB0C4 002A8004  48 19 3F 21 */	bl getJoint__Q28SysShape5ModelFPc
/* 802AB0C8 002A8008  80 9D 00 7C */	lwz r4, 0x7c(r29)
/* 802AB0CC 002A800C  90 64 00 24 */	stw r3, 0x24(r4)
/* 802AB0D0 002A8010  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AB0D4 002A8014  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AB0D8 002A8018  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AB0DC 002A801C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802AB0E0 002A8020  7C 08 03 A6 */	mtlr r0
/* 802AB0E4 002A8024  38 21 00 20 */	addi r1, r1, 0x20
/* 802AB0E8 002A8028  4E 80 00 20 */	blr 

.global "setJointPosPtr__Q34Game8Damagumo17DamagumoShadowMgrFiiP10Vector3<f>"
"setJointPosPtr__Q34Game8Damagumo17DamagumoShadowMgrFiiP10Vector3<f>":
/* 802AB0EC 002A802C  54 84 20 36 */	slwi r4, r4, 4
/* 802AB0F0 002A8030  54 A0 10 3A */	slwi r0, r5, 2
/* 802AB0F4 002A8034  7C 63 22 14 */	add r3, r3, r4
/* 802AB0F8 002A8038  7C 63 02 14 */	add r3, r3, r0
/* 802AB0FC 002A803C  90 C3 00 08 */	stw r6, 8(r3)
/* 802AB100 002A8040  4E 80 00 20 */	blr 

.global update__Q34Game8Damagumo17DamagumoShadowMgrFv
update__Q34Game8Damagumo17DamagumoShadowMgrFv:
/* 802AB104 002A8044  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 802AB108 002A8048  7C 08 02 A6 */	mflr r0
/* 802AB10C 002A804C  90 01 01 34 */	stw r0, 0x134(r1)
/* 802AB110 002A8050  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 802AB114 002A8054  F3 E1 01 28 */	psq_st f31, 296(r1), 0, qr0
/* 802AB118 002A8058  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 802AB11C 002A805C  F3 C1 01 18 */	psq_st f30, 280(r1), 0, qr0
/* 802AB120 002A8060  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 802AB124 002A8064  F3 A1 01 08 */	psq_st f29, 264(r1), 0, qr0
/* 802AB128 002A8068  DB 81 00 F0 */	stfd f28, 0xf0(r1)
/* 802AB12C 002A806C  F3 81 00 F8 */	psq_st f28, 248(r1), 0, qr0
/* 802AB130 002A8070  DB 61 00 E0 */	stfd f27, 0xe0(r1)
/* 802AB134 002A8074  F3 61 00 E8 */	psq_st f27, 232(r1), 0, qr0
/* 802AB138 002A8078  DB 41 00 D0 */	stfd f26, 0xd0(r1)
/* 802AB13C 002A807C  F3 41 00 D8 */	psq_st f26, 216(r1), 0, qr0
/* 802AB140 002A8080  DB 21 00 C0 */	stfd f25, 0xc0(r1)
/* 802AB144 002A8084  F3 21 00 C8 */	psq_st f25, 200(r1), 0, qr0
/* 802AB148 002A8088  DB 01 00 B0 */	stfd f24, 0xb0(r1)
/* 802AB14C 002A808C  F3 01 00 B8 */	psq_st f24, 184(r1), 0, qr0
/* 802AB150 002A8090  DA E1 00 A0 */	stfd f23, 0xa0(r1)
/* 802AB154 002A8094  F2 E1 00 A8 */	psq_st f23, 168(r1), 0, qr0
/* 802AB158 002A8098  DA C1 00 90 */	stfd f22, 0x90(r1)
/* 802AB15C 002A809C  F2 C1 00 98 */	psq_st f22, 152(r1), 0, qr0
/* 802AB160 002A80A0  BF 41 00 78 */	stmw r26, 0x78(r1)
/* 802AB164 002A80A4  7C 7A 1B 78 */	mr r26, r3
/* 802AB168 002A80A8  38 61 00 08 */	addi r3, r1, 8
/* 802AB16C 002A80AC  80 9A 00 04 */	lwz r4, 4(r26)
/* 802AB170 002A80B0  4B FF B6 51 */	bl getTraceCentrePosition__Q34Game8Damagumo3ObjFv
/* 802AB174 002A80B4  C0 62 DC 80 */	lfs f3, lbl_8051BFE0@sda21(r2)
/* 802AB178 002A80B8  C0 42 DC 84 */	lfs f2, lbl_8051BFE4@sda21(r2)
/* 802AB17C 002A80BC  ED 03 00 F2 */	fmuls f8, f3, f3
/* 802AB180 002A80C0  C0 C1 00 08 */	lfs f6, 8(r1)
/* 802AB184 002A80C4  EC E2 00 B2 */	fmuls f7, f2, f2
/* 802AB188 002A80C8  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 802AB18C 002A80CC  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 802AB190 002A80D0  C0 22 DC 88 */	lfs f1, lbl_8051BFE8@sda21(r2)
/* 802AB194 002A80D4  EC 08 38 2A */	fadds f0, f8, f7
/* 802AB198 002A80D8  D0 C1 00 50 */	stfs f6, 0x50(r1)
/* 802AB19C 002A80DC  D0 A1 00 54 */	stfs f5, 0x54(r1)
/* 802AB1A0 002A80E0  EC 08 00 2A */	fadds f0, f8, f0
/* 802AB1A4 002A80E4  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 802AB1A8 002A80E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802AB1AC 002A80EC  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 802AB1B0 002A80F0  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 802AB1B4 002A80F4  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 802AB1B8 002A80F8  40 81 00 20 */	ble .L_802AB1D8
/* 802AB1BC 002A80FC  EC 03 38 FA */	fmadds f0, f3, f3, f7
/* 802AB1C0 002A8100  EC 68 00 2A */	fadds f3, f8, f0
/* 802AB1C4 002A8104  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 802AB1C8 002A8108  40 81 00 14 */	ble .L_802AB1DC
/* 802AB1CC 002A810C  FC 00 18 34 */	frsqrte f0, f3
/* 802AB1D0 002A8110  EC 60 00 F2 */	fmuls f3, f0, f3
/* 802AB1D4 002A8114  48 00 00 08 */	b .L_802AB1DC
.L_802AB1D8:
/* 802AB1D8 002A8118  FC 60 08 90 */	fmr f3, f1
.L_802AB1DC:
/* 802AB1DC 002A811C  C0 02 DC 88 */	lfs f0, lbl_8051BFE8@sda21(r2)
/* 802AB1E0 002A8120  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802AB1E4 002A8124  40 81 00 30 */	ble .L_802AB214
/* 802AB1E8 002A8128  C0 02 DC 8C */	lfs f0, lbl_8051BFEC@sda21(r2)
/* 802AB1EC 002A812C  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 802AB1F0 002A8130  EC 60 18 24 */	fdivs f3, f0, f3
/* 802AB1F4 002A8134  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 802AB1F8 002A8138  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 802AB1FC 002A813C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 802AB200 002A8140  EC 21 00 F2 */	fmuls f1, f1, f3
/* 802AB204 002A8144  EC 00 00 F2 */	fmuls f0, f0, f3
/* 802AB208 002A8148  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 802AB20C 002A814C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 802AB210 002A8150  D0 01 00 64 */	stfs f0, 0x64(r1)
.L_802AB214:
/* 802AB214 002A8154  80 7A 00 00 */	lwz r3, 0(r26)
/* 802AB218 002A8158  38 81 00 50 */	addi r4, r1, 0x50
/* 802AB21C 002A815C  C0 02 DC 90 */	lfs f0, lbl_8051BFF0@sda21(r2)
/* 802AB220 002A8160  38 A1 00 14 */	addi r5, r1, 0x14
/* 802AB224 002A8164  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 802AB228 002A8168  C0 A3 00 2C */	lfs f5, 0x2c(r3)
/* 802AB22C 002A816C  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 802AB230 002A8170  EC 62 00 2A */	fadds f3, f2, f0
/* 802AB234 002A8174  C0 22 DC A0 */	lfs f1, lbl_8051C000@sda21(r2)
/* 802AB238 002A8178  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 802AB23C 002A817C  C0 42 DC 88 */	lfs f2, lbl_8051BFE8@sda21(r2)
/* 802AB240 002A8180  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 802AB244 002A8184  C0 02 DC A4 */	lfs f0, lbl_8051C004@sda21(r2)
/* 802AB248 002A8188  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 802AB24C 002A818C  C0 A2 DC 94 */	lfs f5, lbl_8051BFF4@sda21(r2)
/* 802AB250 002A8190  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 802AB254 002A8194  C0 82 DC 98 */	lfs f4, lbl_8051BFF8@sda21(r2)
/* 802AB258 002A8198  80 7A 00 04 */	lwz r3, 4(r26)
/* 802AB25C 002A819C  C0 62 DC 9C */	lfs f3, lbl_8051BFFC@sda21(r2)
/* 802AB260 002A81A0  C0 C3 02 D8 */	lfs f6, 0x2d8(r3)
/* 802AB264 002A81A4  EC 21 01 B2 */	fmuls f1, f1, f6
/* 802AB268 002A81A8  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 802AB26C 002A81AC  EF 05 01 B2 */	fmuls f24, f5, f6
/* 802AB270 002A81B0  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 802AB274 002A81B4  EE E4 01 B2 */	fmuls f23, f4, f6
/* 802AB278 002A81B8  EE C3 01 B2 */	fmuls f22, f3, f6
/* 802AB27C 002A81BC  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 802AB280 002A81C0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 802AB284 002A81C4  80 7A 00 4C */	lwz r3, 0x4c(r26)
/* 802AB288 002A81C8  48 04 74 55 */	bl "makeShadowSRT__Q24Game16SphereShadowNodeFRQ24Game15JointShadowParmR10Vector3<f>"
/* 802AB28C 002A81CC  C3 22 DC A8 */	lfs f25, lbl_8051C008@sda21(r2)
/* 802AB290 002A81D0  7F 5F D3 78 */	mr r31, r26
/* 802AB294 002A81D4  C3 42 DC AC */	lfs f26, lbl_8051C00C@sda21(r2)
/* 802AB298 002A81D8  7F 5E D3 78 */	mr r30, r26
/* 802AB29C 002A81DC  C3 62 DC B0 */	lfs f27, lbl_8051C010@sda21(r2)
/* 802AB2A0 002A81E0  3B A1 00 2C */	addi r29, r1, 0x2c
/* 802AB2A4 002A81E4  C3 82 DC 88 */	lfs f28, lbl_8051BFE8@sda21(r2)
/* 802AB2A8 002A81E8  3B 81 00 38 */	addi r28, r1, 0x38
/* 802AB2AC 002A81EC  C3 A2 DC B4 */	lfs f29, lbl_8051C014@sda21(r2)
/* 802AB2B0 002A81F0  3B 61 00 44 */	addi r27, r1, 0x44
/* 802AB2B4 002A81F4  C3 C2 DC B8 */	lfs f30, lbl_8051C018@sda21(r2)
/* 802AB2B8 002A81F8  3B 40 00 00 */	li r26, 0
/* 802AB2BC 002A81FC  C3 E2 DC BC */	lfs f31, lbl_8051C01C@sda21(r2)
.L_802AB2C0:
/* 802AB2C0 002A8200  D3 21 00 68 */	stfs f25, 0x68(r1)
/* 802AB2C4 002A8204  7F A6 EB 78 */	mr r6, r29
/* 802AB2C8 002A8208  38 81 00 50 */	addi r4, r1, 0x50
/* 802AB2CC 002A820C  38 A1 00 20 */	addi r5, r1, 0x20
/* 802AB2D0 002A8210  D3 41 00 6C */	stfs f26, 0x6c(r1)
/* 802AB2D4 002A8214  D3 01 00 70 */	stfs f24, 0x70(r1)
/* 802AB2D8 002A8218  D3 61 00 74 */	stfs f27, 0x74(r1)
/* 802AB2DC 002A821C  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802AB2E0 002A8220  48 04 6D 61 */	bl "makeShadowSRT__Q24Game19TubeShadowTransNodeFRQ24Game15JointShadowParmR10Vector3<f>R10Vector3<f>"
/* 802AB2E4 002A8224  D3 81 00 68 */	stfs f28, 0x68(r1)
/* 802AB2E8 002A8228  7F A5 EB 78 */	mr r5, r29
/* 802AB2EC 002A822C  7F 86 E3 78 */	mr r6, r28
/* 802AB2F0 002A8230  38 81 00 50 */	addi r4, r1, 0x50
/* 802AB2F4 002A8234  D3 81 00 6C */	stfs f28, 0x6c(r1)
/* 802AB2F8 002A8238  D3 01 00 70 */	stfs f24, 0x70(r1)
/* 802AB2FC 002A823C  D3 61 00 74 */	stfs f27, 0x74(r1)
/* 802AB300 002A8240  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 802AB304 002A8244  48 04 6F B5 */	bl "makeShadowSRT__Q24Game17TubeShadowSetNodeFRQ24Game15JointShadowParmR10Vector3<f>R10Vector3<f>"
/* 802AB308 002A8248  D3 A1 00 68 */	stfs f29, 0x68(r1)
/* 802AB30C 002A824C  7F 85 E3 78 */	mr r5, r28
/* 802AB310 002A8250  7F 66 DB 78 */	mr r6, r27
/* 802AB314 002A8254  38 81 00 50 */	addi r4, r1, 0x50
/* 802AB318 002A8258  D3 A1 00 6C */	stfs f29, 0x6c(r1)
/* 802AB31C 002A825C  D3 01 00 70 */	stfs f24, 0x70(r1)
/* 802AB320 002A8260  D3 61 00 74 */	stfs f27, 0x74(r1)
/* 802AB324 002A8264  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802AB328 002A8268  48 04 6F 91 */	bl "makeShadowSRT__Q24Game17TubeShadowSetNodeFRQ24Game15JointShadowParmR10Vector3<f>R10Vector3<f>"
/* 802AB32C 002A826C  D3 81 00 68 */	stfs f28, 0x68(r1)
/* 802AB330 002A8270  7F A5 EB 78 */	mr r5, r29
/* 802AB334 002A8274  38 81 00 50 */	addi r4, r1, 0x50
/* 802AB338 002A8278  D3 81 00 6C */	stfs f28, 0x6c(r1)
/* 802AB33C 002A827C  D2 E1 00 70 */	stfs f23, 0x70(r1)
/* 802AB340 002A8280  D3 A1 00 74 */	stfs f29, 0x74(r1)
/* 802AB344 002A8284  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 802AB348 002A8288  48 04 73 95 */	bl "makeShadowSRT__Q24Game16SphereShadowNodeFRQ24Game15JointShadowParmR10Vector3<f>"
/* 802AB34C 002A828C  D3 C1 00 74 */	stfs f30, 0x74(r1)
/* 802AB350 002A8290  7F 85 E3 78 */	mr r5, r28
/* 802AB354 002A8294  38 81 00 50 */	addi r4, r1, 0x50
/* 802AB358 002A8298  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 802AB35C 002A829C  48 04 73 81 */	bl "makeShadowSRT__Q24Game16SphereShadowNodeFRQ24Game15JointShadowParmR10Vector3<f>"
/* 802AB360 002A82A0  D2 C1 00 70 */	stfs f22, 0x70(r1)
/* 802AB364 002A82A4  7F 65 DB 78 */	mr r5, r27
/* 802AB368 002A82A8  38 81 00 50 */	addi r4, r1, 0x50
/* 802AB36C 002A82AC  D3 E1 00 74 */	stfs f31, 0x74(r1)
/* 802AB370 002A82B0  80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 802AB374 002A82B4  48 04 73 69 */	bl "makeShadowSRT__Q24Game16SphereShadowNodeFRQ24Game15JointShadowParmR10Vector3<f>"
/* 802AB378 002A82B8  80 7E 00 08 */	lwz r3, 8(r30)
/* 802AB37C 002A82BC  28 03 00 00 */	cmplwi r3, 0
/* 802AB380 002A82C0  41 82 00 24 */	beq .L_802AB3A4
/* 802AB384 002A82C4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802AB388 002A82C8  D0 03 00 00 */	stfs f0, 0(r3)
/* 802AB38C 002A82CC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802AB390 002A82D0  80 7E 00 08 */	lwz r3, 8(r30)
/* 802AB394 002A82D4  D0 03 00 04 */	stfs f0, 4(r3)
/* 802AB398 002A82D8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 802AB39C 002A82DC  80 7E 00 08 */	lwz r3, 8(r30)
/* 802AB3A0 002A82E0  D0 03 00 08 */	stfs f0, 8(r3)
.L_802AB3A4:
/* 802AB3A4 002A82E4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802AB3A8 002A82E8  28 03 00 00 */	cmplwi r3, 0
/* 802AB3AC 002A82EC  41 82 00 24 */	beq .L_802AB3D0
/* 802AB3B0 002A82F0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 802AB3B4 002A82F4  D0 03 00 00 */	stfs f0, 0(r3)
/* 802AB3B8 002A82F8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 802AB3BC 002A82FC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802AB3C0 002A8300  D0 03 00 04 */	stfs f0, 4(r3)
/* 802AB3C4 002A8304  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 802AB3C8 002A8308  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802AB3CC 002A830C  D0 03 00 08 */	stfs f0, 8(r3)
.L_802AB3D0:
/* 802AB3D0 002A8310  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802AB3D4 002A8314  28 03 00 00 */	cmplwi r3, 0
/* 802AB3D8 002A8318  41 82 00 24 */	beq .L_802AB3FC
/* 802AB3DC 002A831C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 802AB3E0 002A8320  D0 03 00 00 */	stfs f0, 0(r3)
/* 802AB3E4 002A8324  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 802AB3E8 002A8328  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802AB3EC 002A832C  D0 03 00 04 */	stfs f0, 4(r3)
/* 802AB3F0 002A8330  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 802AB3F4 002A8334  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802AB3F8 002A8338  D0 03 00 08 */	stfs f0, 8(r3)
.L_802AB3FC:
/* 802AB3FC 002A833C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 802AB400 002A8340  28 03 00 00 */	cmplwi r3, 0
/* 802AB404 002A8344  41 82 00 24 */	beq .L_802AB428
/* 802AB408 002A8348  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 802AB40C 002A834C  D0 03 00 00 */	stfs f0, 0(r3)
/* 802AB410 002A8350  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 802AB414 002A8354  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 802AB418 002A8358  D0 03 00 04 */	stfs f0, 4(r3)
/* 802AB41C 002A835C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 802AB420 002A8360  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 802AB424 002A8364  D0 03 00 08 */	stfs f0, 8(r3)
.L_802AB428:
/* 802AB428 002A8368  3B 5A 00 01 */	addi r26, r26, 1
/* 802AB42C 002A836C  3B DE 00 10 */	addi r30, r30, 0x10
/* 802AB430 002A8370  2C 1A 00 04 */	cmpwi r26, 4
/* 802AB434 002A8374  3B FF 00 04 */	addi r31, r31, 4
/* 802AB438 002A8378  41 80 FE 88 */	blt .L_802AB2C0
/* 802AB43C 002A837C  E3 E1 01 28 */	psq_l f31, 296(r1), 0, qr0
/* 802AB440 002A8380  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 802AB444 002A8384  E3 C1 01 18 */	psq_l f30, 280(r1), 0, qr0
/* 802AB448 002A8388  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 802AB44C 002A838C  E3 A1 01 08 */	psq_l f29, 264(r1), 0, qr0
/* 802AB450 002A8390  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 802AB454 002A8394  E3 81 00 F8 */	psq_l f28, 248(r1), 0, qr0
/* 802AB458 002A8398  CB 81 00 F0 */	lfd f28, 0xf0(r1)
/* 802AB45C 002A839C  E3 61 00 E8 */	psq_l f27, 232(r1), 0, qr0
/* 802AB460 002A83A0  CB 61 00 E0 */	lfd f27, 0xe0(r1)
/* 802AB464 002A83A4  E3 41 00 D8 */	psq_l f26, 216(r1), 0, qr0
/* 802AB468 002A83A8  CB 41 00 D0 */	lfd f26, 0xd0(r1)
/* 802AB46C 002A83AC  E3 21 00 C8 */	psq_l f25, 200(r1), 0, qr0
/* 802AB470 002A83B0  CB 21 00 C0 */	lfd f25, 0xc0(r1)
/* 802AB474 002A83B4  E3 01 00 B8 */	psq_l f24, 184(r1), 0, qr0
/* 802AB478 002A83B8  CB 01 00 B0 */	lfd f24, 0xb0(r1)
/* 802AB47C 002A83BC  E2 E1 00 A8 */	psq_l f23, 168(r1), 0, qr0
/* 802AB480 002A83C0  CA E1 00 A0 */	lfd f23, 0xa0(r1)
/* 802AB484 002A83C4  E2 C1 00 98 */	psq_l f22, 152(r1), 0, qr0
/* 802AB488 002A83C8  CA C1 00 90 */	lfd f22, 0x90(r1)
/* 802AB48C 002A83CC  BB 41 00 78 */	lmw r26, 0x78(r1)
/* 802AB490 002A83D0  80 01 01 34 */	lwz r0, 0x134(r1)
/* 802AB494 002A83D4  7C 08 03 A6 */	mtlr r0
/* 802AB498 002A83D8  38 21 01 30 */	addi r1, r1, 0x130
/* 802AB49C 002A83DC  4E 80 00 20 */	blr 

.global __dt__Q24Game17TubeShadowSetNodeFv
__dt__Q24Game17TubeShadowSetNodeFv:
/* 802AB4A0 002A83E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB4A4 002A83E4  7C 08 02 A6 */	mflr r0
/* 802AB4A8 002A83E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB4AC 002A83EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB4B0 002A83F0  7C 9F 23 78 */	mr r31, r4
/* 802AB4B4 002A83F4  93 C1 00 08 */	stw r30, 8(r1)
/* 802AB4B8 002A83F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802AB4BC 002A83FC  41 82 00 38 */	beq .L_802AB4F4
/* 802AB4C0 002A8400  3C 80 80 4D */	lis r4, __vt__Q24Game17TubeShadowSetNode@ha
/* 802AB4C4 002A8404  38 04 DE B8 */	addi r0, r4, __vt__Q24Game17TubeShadowSetNode@l
/* 802AB4C8 002A8408  90 1E 00 00 */	stw r0, 0(r30)
/* 802AB4CC 002A840C  41 82 00 18 */	beq .L_802AB4E4
/* 802AB4D0 002A8410  3C A0 80 4C */	lis r5, __vt__Q24Game15JointShadowNode@ha
/* 802AB4D4 002A8414  38 80 00 00 */	li r4, 0
/* 802AB4D8 002A8418  38 05 1A 34 */	addi r0, r5, __vt__Q24Game15JointShadowNode@l
/* 802AB4DC 002A841C  90 1E 00 00 */	stw r0, 0(r30)
/* 802AB4E0 002A8420  48 16 60 A9 */	bl __dt__5CNodeFv
.L_802AB4E4:
/* 802AB4E4 002A8424  7F E0 07 35 */	extsh. r0, r31
/* 802AB4E8 002A8428  40 81 00 0C */	ble .L_802AB4F4
/* 802AB4EC 002A842C  7F C3 F3 78 */	mr r3, r30
/* 802AB4F0 002A8430  4B D7 8B C5 */	bl __dl__FPv
.L_802AB4F4:
/* 802AB4F4 002A8434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB4F8 002A8438  7F C3 F3 78 */	mr r3, r30
/* 802AB4FC 002A843C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB500 002A8440  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AB504 002A8444  7C 08 03 A6 */	mtlr r0
/* 802AB508 002A8448  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB50C 002A844C  4E 80 00 20 */	blr 

.global __dt__Q24Game19TubeShadowTransNodeFv
__dt__Q24Game19TubeShadowTransNodeFv:
/* 802AB510 002A8450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB514 002A8454  7C 08 02 A6 */	mflr r0
/* 802AB518 002A8458  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB51C 002A845C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB520 002A8460  7C 9F 23 78 */	mr r31, r4
/* 802AB524 002A8464  93 C1 00 08 */	stw r30, 8(r1)
/* 802AB528 002A8468  7C 7E 1B 79 */	or. r30, r3, r3
/* 802AB52C 002A846C  41 82 00 38 */	beq .L_802AB564
/* 802AB530 002A8470  3C 80 80 4D */	lis r4, __vt__Q24Game19TubeShadowTransNode@ha
/* 802AB534 002A8474  38 04 DE C8 */	addi r0, r4, __vt__Q24Game19TubeShadowTransNode@l
/* 802AB538 002A8478  90 1E 00 00 */	stw r0, 0(r30)
/* 802AB53C 002A847C  41 82 00 18 */	beq .L_802AB554
/* 802AB540 002A8480  3C A0 80 4C */	lis r5, __vt__Q24Game15JointShadowNode@ha
/* 802AB544 002A8484  38 80 00 00 */	li r4, 0
/* 802AB548 002A8488  38 05 1A 34 */	addi r0, r5, __vt__Q24Game15JointShadowNode@l
/* 802AB54C 002A848C  90 1E 00 00 */	stw r0, 0(r30)
/* 802AB550 002A8490  48 16 60 39 */	bl __dt__5CNodeFv
.L_802AB554:
/* 802AB554 002A8494  7F E0 07 35 */	extsh. r0, r31
/* 802AB558 002A8498  40 81 00 0C */	ble .L_802AB564
/* 802AB55C 002A849C  7F C3 F3 78 */	mr r3, r30
/* 802AB560 002A84A0  4B D7 8B 55 */	bl __dl__FPv
.L_802AB564:
/* 802AB564 002A84A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB568 002A84A8  7F C3 F3 78 */	mr r3, r30
/* 802AB56C 002A84AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB570 002A84B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AB574 002A84B4  7C 08 03 A6 */	mtlr r0
/* 802AB578 002A84B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB57C 002A84BC  4E 80 00 20 */	blr 

.global __dt__Q24Game16SphereShadowNodeFv
__dt__Q24Game16SphereShadowNodeFv:
/* 802AB580 002A84C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB584 002A84C4  7C 08 02 A6 */	mflr r0
/* 802AB588 002A84C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB58C 002A84CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB590 002A84D0  7C 9F 23 78 */	mr r31, r4
/* 802AB594 002A84D4  93 C1 00 08 */	stw r30, 8(r1)
/* 802AB598 002A84D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802AB59C 002A84DC  41 82 00 38 */	beq .L_802AB5D4
/* 802AB5A0 002A84E0  3C 80 80 4D */	lis r4, __vt__Q24Game16SphereShadowNode@ha
/* 802AB5A4 002A84E4  38 04 DE D8 */	addi r0, r4, __vt__Q24Game16SphereShadowNode@l
/* 802AB5A8 002A84E8  90 1E 00 00 */	stw r0, 0(r30)
/* 802AB5AC 002A84EC  41 82 00 18 */	beq .L_802AB5C4
/* 802AB5B0 002A84F0  3C A0 80 4C */	lis r5, __vt__Q24Game15JointShadowNode@ha
/* 802AB5B4 002A84F4  38 80 00 00 */	li r4, 0
/* 802AB5B8 002A84F8  38 05 1A 34 */	addi r0, r5, __vt__Q24Game15JointShadowNode@l
/* 802AB5BC 002A84FC  90 1E 00 00 */	stw r0, 0(r30)
/* 802AB5C0 002A8500  48 16 5F C9 */	bl __dt__5CNodeFv
.L_802AB5C4:
/* 802AB5C4 002A8504  7F E0 07 35 */	extsh. r0, r31
/* 802AB5C8 002A8508  40 81 00 0C */	ble .L_802AB5D4
/* 802AB5CC 002A850C  7F C3 F3 78 */	mr r3, r30
/* 802AB5D0 002A8510  4B D7 8A E5 */	bl __dl__FPv
.L_802AB5D4:
/* 802AB5D4 002A8514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB5D8 002A8518  7F C3 F3 78 */	mr r3, r30
/* 802AB5DC 002A851C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB5E0 002A8520  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AB5E4 002A8524  7C 08 03 A6 */	mtlr r0
/* 802AB5E8 002A8528  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB5EC 002A852C  4E 80 00 20 */	blr 