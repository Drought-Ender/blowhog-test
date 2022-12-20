.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__13J3DVertexDataFv
__ct__13J3DVertexDataFv:
/* 8005EB80 0005BAC0  38 80 00 00 */	li r4, 0
/* 8005EB84 0005BAC4  38 00 00 04 */	li r0, 4
/* 8005EB88 0005BAC8  90 83 00 00 */	stw r4, 0(r3)
/* 8005EB8C 0005BACC  90 83 00 04 */	stw r4, 4(r3)
/* 8005EB90 0005BAD0  90 83 00 08 */	stw r4, 8(r3)
/* 8005EB94 0005BAD4  90 83 00 0C */	stw r4, 0xc(r3)
/* 8005EB98 0005BAD8  90 83 00 10 */	stw r4, 0x10(r3)
/* 8005EB9C 0005BADC  90 83 00 14 */	stw r4, 0x14(r3)
/* 8005EBA0 0005BAE0  90 83 00 18 */	stw r4, 0x18(r3)
/* 8005EBA4 0005BAE4  90 83 00 1C */	stw r4, 0x1c(r3)
/* 8005EBA8 0005BAE8  90 83 00 20 */	stw r4, 0x20(r3)
/* 8005EBAC 0005BAEC  90 83 00 24 */	stw r4, 0x24(r3)
/* 8005EBB0 0005BAF0  90 83 00 28 */	stw r4, 0x28(r3)
/* 8005EBB4 0005BAF4  90 83 00 2C */	stw r4, 0x2c(r3)
/* 8005EBB8 0005BAF8  90 83 00 30 */	stw r4, 0x30(r3)
/* 8005EBBC 0005BAFC  90 83 00 34 */	stw r4, 0x34(r3)
/* 8005EBC0 0005BB00  90 83 00 38 */	stw r4, 0x38(r3)
/* 8005EBC4 0005BB04  90 83 00 3C */	stw r4, 0x3c(r3)
/* 8005EBC8 0005BB08  90 83 00 40 */	stw r4, 0x40(r3)
/* 8005EBCC 0005BB0C  90 83 00 44 */	stw r4, 0x44(r3)
/* 8005EBD0 0005BB10  90 83 00 48 */	stw r4, 0x48(r3)
/* 8005EBD4 0005BB14  98 83 00 4C */	stb r4, 0x4c(r3)
/* 8005EBD8 0005BB18  90 03 00 50 */	stw r0, 0x50(r3)
/* 8005EBDC 0005BB1C  98 83 00 54 */	stb r4, 0x54(r3)
/* 8005EBE0 0005BB20  90 03 00 58 */	stw r0, 0x58(r3)
/* 8005EBE4 0005BB24  4E 80 00 20 */	blr 

.global setVertexData__15J3DVertexBufferFP13J3DVertexData
setVertexData__15J3DVertexBufferFP13J3DVertexData:
/* 8005EBE8 0005BB28  90 83 00 00 */	stw r4, 0(r3)
/* 8005EBEC 0005BB2C  38 A0 00 00 */	li r5, 0
/* 8005EBF0 0005BB30  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8005EBF4 0005BB34  90 03 00 04 */	stw r0, 4(r3)
/* 8005EBF8 0005BB38  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8005EBFC 0005BB3C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8005EC00 0005BB40  80 04 00 24 */	lwz r0, 0x24(r4)
/* 8005EC04 0005BB44  90 03 00 14 */	stw r0, 0x14(r3)
/* 8005EC08 0005BB48  90 A3 00 08 */	stw r5, 8(r3)
/* 8005EC0C 0005BB4C  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8005EC10 0005BB50  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8005EC14 0005BB54  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8005EC18 0005BB58  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8005EC1C 0005BB5C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8005EC20 0005BB60  90 03 00 24 */	stw r0, 0x24(r3)
/* 8005EC24 0005BB64  90 A3 00 20 */	stw r5, 0x20(r3)
/* 8005EC28 0005BB68  90 A3 00 28 */	stw r5, 0x28(r3)
/* 8005EC2C 0005BB6C  80 03 00 04 */	lwz r0, 4(r3)
/* 8005EC30 0005BB70  90 03 00 2C */	stw r0, 0x2c(r3)
/* 8005EC34 0005BB74  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8005EC38 0005BB78  90 03 00 30 */	stw r0, 0x30(r3)
/* 8005EC3C 0005BB7C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8005EC40 0005BB80  90 03 00 34 */	stw r0, 0x34(r3)
/* 8005EC44 0005BB84  4E 80 00 20 */	blr 

.global init__15J3DVertexBufferFv
init__15J3DVertexBufferFv:
/* 8005EC48 0005BB88  38 00 00 00 */	li r0, 0
/* 8005EC4C 0005BB8C  90 03 00 00 */	stw r0, 0(r3)
/* 8005EC50 0005BB90  90 03 00 08 */	stw r0, 8(r3)
/* 8005EC54 0005BB94  90 03 00 04 */	stw r0, 4(r3)
/* 8005EC58 0005BB98  90 03 00 10 */	stw r0, 0x10(r3)
/* 8005EC5C 0005BB9C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8005EC60 0005BBA0  90 03 00 18 */	stw r0, 0x18(r3)
/* 8005EC64 0005BBA4  90 03 00 14 */	stw r0, 0x14(r3)
/* 8005EC68 0005BBA8  90 03 00 20 */	stw r0, 0x20(r3)
/* 8005EC6C 0005BBAC  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8005EC70 0005BBB0  90 03 00 28 */	stw r0, 0x28(r3)
/* 8005EC74 0005BBB4  90 03 00 24 */	stw r0, 0x24(r3)
/* 8005EC78 0005BBB8  90 03 00 2C */	stw r0, 0x2c(r3)
/* 8005EC7C 0005BBBC  90 03 00 30 */	stw r0, 0x30(r3)
/* 8005EC80 0005BBC0  90 03 00 34 */	stw r0, 0x34(r3)
/* 8005EC84 0005BBC4  80 03 00 04 */	lwz r0, 4(r3)
/* 8005EC88 0005BBC8  90 03 00 2C */	stw r0, 0x2c(r3)
/* 8005EC8C 0005BBCC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8005EC90 0005BBD0  90 03 00 30 */	stw r0, 0x30(r3)
/* 8005EC94 0005BBD4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8005EC98 0005BBD8  90 03 00 34 */	stw r0, 0x34(r3)
/* 8005EC9C 0005BBDC  4E 80 00 20 */	blr 

.global __dt__15J3DVertexBufferFv
__dt__15J3DVertexBufferFv:
/* 8005ECA0 0005BBE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005ECA4 0005BBE4  7C 08 02 A6 */	mflr r0
/* 8005ECA8 0005BBE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005ECAC 0005BBEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005ECB0 0005BBF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8005ECB4 0005BBF4  41 82 00 10 */	beq .L_8005ECC4
/* 8005ECB8 0005BBF8  7C 80 07 35 */	extsh. r0, r4
/* 8005ECBC 0005BBFC  40 81 00 08 */	ble .L_8005ECC4
/* 8005ECC0 0005BC00  4B FC 53 F5 */	bl __dl__FPv
.L_8005ECC4:
/* 8005ECC4 0005BC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005ECC8 0005BC08  7F E3 FB 78 */	mr r3, r31
/* 8005ECCC 0005BC0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005ECD0 0005BC10  7C 08 03 A6 */	mtlr r0
/* 8005ECD4 0005BC14  38 21 00 10 */	addi r1, r1, 0x10
/* 8005ECD8 0005BC18  4E 80 00 20 */	blr 

.global setArray__15J3DVertexBufferCFv
setArray__15J3DVertexBufferCFv:
/* 8005ECDC 0005BC1C  3C 80 80 51 */	lis r4, j3dSys@ha
/* 8005ECE0 0005BC20  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 8005ECE4 0005BC24  38 A4 F2 30 */	addi r5, r4, j3dSys@l
/* 8005ECE8 0005BC28  80 83 00 30 */	lwz r4, 0x30(r3)
/* 8005ECEC 0005BC2C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8005ECF0 0005BC30  90 C5 01 0C */	stw r6, 0x10c(r5)
/* 8005ECF4 0005BC34  90 85 01 10 */	stw r4, 0x110(r5)
/* 8005ECF8 0005BC38  90 05 01 14 */	stw r0, 0x114(r5)
/* 8005ECFC 0005BC3C  4E 80 00 20 */	blr 

.global copyVtxColorArray__15J3DVertexBufferF19J3DDeformAttachFlag
copyVtxColorArray__15J3DVertexBufferF19J3DDeformAttachFlag:
/* 8005ED00 0005BC40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8005ED04 0005BC44  7C 08 02 A6 */	mflr r0
/* 8005ED08 0005BC48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8005ED0C 0005BC4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8005ED10 0005BC50  7C 7F 1B 78 */	mr r31, r3
/* 8005ED14 0005BC54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8005ED18 0005BC58  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8005ED1C 0005BC5C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8005ED20 0005BC60  28 00 00 00 */	cmplwi r0, 0
/* 8005ED24 0005BC64  41 82 00 10 */	beq .L_8005ED34
/* 8005ED28 0005BC68  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8005ED2C 0005BC6C  28 00 00 00 */	cmplwi r0, 0
/* 8005ED30 0005BC70  40 82 00 DC */	bne .L_8005EE0C
.L_8005ED34:
/* 8005ED34 0005BC74  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8005ED38 0005BC78  41 82 00 78 */	beq .L_8005EDB0
/* 8005ED3C 0005BC7C  3B A0 00 00 */	li r29, 0
/* 8005ED40 0005BC80  7F FE FB 78 */	mr r30, r31
.L_8005ED44:
/* 8005ED44 0005BC84  2C 1D 00 00 */	cmpwi r29, 0
/* 8005ED48 0005BC88  41 82 00 10 */	beq .L_8005ED58
/* 8005ED4C 0005BC8C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8005ED50 0005BC90  28 00 00 00 */	cmplwi r0, 0
/* 8005ED54 0005BC94  40 82 00 48 */	bne .L_8005ED9C
.L_8005ED58:
/* 8005ED58 0005BC98  80 7F 00 00 */	lwz r3, 0(r31)
/* 8005ED5C 0005BC9C  38 80 00 20 */	li r4, 0x20
/* 8005ED60 0005BCA0  80 03 00 08 */	lwz r0, 8(r3)
/* 8005ED64 0005BCA4  54 03 10 3A */	slwi r3, r0, 2
/* 8005ED68 0005BCA8  4B FC 52 91 */	bl __nwa__FUli
/* 8005ED6C 0005BCAC  90 7E 00 14 */	stw r3, 0x14(r30)
/* 8005ED70 0005BCB0  80 9F 00 00 */	lwz r4, 0(r31)
/* 8005ED74 0005BCB4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8005ED78 0005BCB8  80 04 00 08 */	lwz r0, 8(r4)
/* 8005ED7C 0005BCBC  80 84 00 24 */	lwz r4, 0x24(r4)
/* 8005ED80 0005BCC0  54 05 10 3A */	slwi r5, r0, 2
/* 8005ED84 0005BCC4  4B FA 64 19 */	bl memcpy
/* 8005ED88 0005BCC8  80 9F 00 00 */	lwz r4, 0(r31)
/* 8005ED8C 0005BCCC  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8005ED90 0005BCD0  80 04 00 08 */	lwz r0, 8(r4)
/* 8005ED94 0005BCD4  54 04 10 3A */	slwi r4, r0, 2
/* 8005ED98 0005BCD8  48 08 D9 B1 */	bl DCStoreRange
.L_8005ED9C:
/* 8005ED9C 0005BCDC  3B BD 00 01 */	addi r29, r29, 1
/* 8005EDA0 0005BCE0  3B DE 00 04 */	addi r30, r30, 4
/* 8005EDA4 0005BCE4  2C 1D 00 02 */	cmpwi r29, 2
/* 8005EDA8 0005BCE8  41 80 FF 9C */	blt .L_8005ED44
/* 8005EDAC 0005BCEC  48 00 00 60 */	b .L_8005EE0C
.L_8005EDB0:
/* 8005EDB0 0005BCF0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8005EDB4 0005BCF4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8005EDB8 0005BCF8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8005EDBC 0005BCFC  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8005EDC0 0005BD00  28 00 00 00 */	cmplwi r0, 0
/* 8005EDC4 0005BD04  40 82 00 1C */	bne .L_8005EDE0
/* 8005EDC8 0005BD08  80 7F 00 00 */	lwz r3, 0(r31)
/* 8005EDCC 0005BD0C  38 80 00 20 */	li r4, 0x20
/* 8005EDD0 0005BD10  80 03 00 08 */	lwz r0, 8(r3)
/* 8005EDD4 0005BD14  54 03 10 3A */	slwi r3, r0, 2
/* 8005EDD8 0005BD18  4B FC 52 21 */	bl __nwa__FUli
/* 8005EDDC 0005BD1C  90 7F 00 18 */	stw r3, 0x18(r31)
.L_8005EDE0:
/* 8005EDE0 0005BD20  80 9F 00 00 */	lwz r4, 0(r31)
/* 8005EDE4 0005BD24  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8005EDE8 0005BD28  80 04 00 08 */	lwz r0, 8(r4)
/* 8005EDEC 0005BD2C  80 84 00 24 */	lwz r4, 0x24(r4)
/* 8005EDF0 0005BD30  54 05 10 3A */	slwi r5, r0, 2
/* 8005EDF4 0005BD34  4B FA 63 A9 */	bl memcpy
/* 8005EDF8 0005BD38  80 9F 00 00 */	lwz r4, 0(r31)
/* 8005EDFC 0005BD3C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8005EE00 0005BD40  80 04 00 08 */	lwz r0, 8(r4)
/* 8005EE04 0005BD44  54 04 10 3A */	slwi r4, r0, 2
/* 8005EE08 0005BD48  48 08 D9 41 */	bl DCStoreRange
.L_8005EE0C:
/* 8005EE0C 0005BD4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005EE10 0005BD50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8005EE14 0005BD54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8005EE18 0005BD58  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8005EE1C 0005BD5C  7C 08 03 A6 */	mtlr r0
/* 8005EE20 0005BD60  38 21 00 20 */	addi r1, r1, 0x20
/* 8005EE24 0005BD64  4E 80 00 20 */	blr 

.global __ct__14J3DDrawMtxDataFv
__ct__14J3DDrawMtxDataFv:
/* 8005EE28 0005BD68  38 00 00 00 */	li r0, 0
/* 8005EE2C 0005BD6C  B0 03 00 00 */	sth r0, 0(r3)
/* 8005EE30 0005BD70  90 03 00 04 */	stw r0, 4(r3)
/* 8005EE34 0005BD74  90 03 00 08 */	stw r0, 8(r3)
/* 8005EE38 0005BD78  4E 80 00 20 */	blr 

.global __dt__14J3DDrawMtxDataFv
__dt__14J3DDrawMtxDataFv:
/* 8005EE3C 0005BD7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005EE40 0005BD80  7C 08 02 A6 */	mflr r0
/* 8005EE44 0005BD84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005EE48 0005BD88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005EE4C 0005BD8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8005EE50 0005BD90  41 82 00 10 */	beq .L_8005EE60
/* 8005EE54 0005BD94  7C 80 07 35 */	extsh. r0, r4
/* 8005EE58 0005BD98  40 81 00 08 */	ble .L_8005EE60
/* 8005EE5C 0005BD9C  4B FC 52 59 */	bl __dl__FPv
.L_8005EE60:
/* 8005EE60 0005BDA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005EE64 0005BDA4  7F E3 FB 78 */	mr r3, r31
/* 8005EE68 0005BDA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005EE6C 0005BDAC  7C 08 03 A6 */	mtlr r0
/* 8005EE70 0005BDB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8005EE74 0005BDB4  4E 80 00 20 */	blr 