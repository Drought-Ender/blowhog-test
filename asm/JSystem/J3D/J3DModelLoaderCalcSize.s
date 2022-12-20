.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global countMaterialNum__14J3DModelLoaderFPCv
countMaterialNum__14J3DModelLoaderFPCv:
/* 80087900 00084840  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80087904 00084844  38 84 00 20 */	addi r4, r4, 0x20
/* 80087908 00084848  7C 09 03 A6 */	mtctr r0
/* 8008790C 0008484C  28 00 00 00 */	cmplwi r0, 0
/* 80087910 00084850  40 81 00 28 */	ble .L_80087938
.L_80087914:
/* 80087914 00084854  80 64 00 00 */	lwz r3, 0(r4)
/* 80087918 00084858  3C 03 B2 BF */	addis r0, r3, 0xb2bf
/* 8008791C 0008485C  28 00 54 33 */	cmplwi r0, 0x5433
/* 80087920 00084860  40 82 00 0C */	bne .L_8008792C
/* 80087924 00084864  A0 64 00 08 */	lhz r3, 8(r4)
/* 80087928 00084868  4E 80 00 20 */	blr 
.L_8008792C:
/* 8008792C 0008486C  80 04 00 04 */	lwz r0, 4(r4)
/* 80087930 00084870  7C 84 02 14 */	add r4, r4, r0
/* 80087934 00084874  42 00 FF E0 */	bdnz .L_80087914
.L_80087938:
/* 80087938 00084878  38 60 00 00 */	li r3, 0
/* 8008793C 0008487C  4E 80 00 20 */	blr 

.global calcLoadSize__14J3DModelLoaderFPCvUl
calcLoadSize__14J3DModelLoaderFPCvUl:
/* 80087940 00084880  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80087944 00084884  7C 08 02 A6 */	mflr r0
/* 80087948 00084888  3C C0 4D 41 */	lis r6, 0x4D415432@ha
/* 8008794C 0008488C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80087950 00084890  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80087954 00084894  7C 7A 1B 78 */	mr r26, r3
/* 80087958 00084898  83 24 00 0C */	lwz r25, 0xc(r4)
/* 8008795C 0008489C  7C BB 2B 78 */	mr r27, r5
/* 80087960 000848A0  3B A4 00 20 */	addi r29, r4, 0x20
/* 80087964 000848A4  3B E6 54 32 */	addi r31, r6, 0x4D415432@l
/* 80087968 000848A8  3B 80 00 00 */	li r28, 0
/* 8008796C 000848AC  3B C0 00 E4 */	li r30, 0xe4
/* 80087970 000848B0  48 00 01 60 */	b .L_80087AD0
.L_80087974:
/* 80087974 000848B4  80 9D 00 00 */	lwz r4, 0(r29)
/* 80087978 000848B8  7C 04 F8 00 */	cmpw r4, r31
/* 8008797C 000848BC  41 82 01 48 */	beq .L_80087AC4
/* 80087980 000848C0  40 80 00 54 */	bge .L_800879D4
/* 80087984 000848C4  3C 60 49 4E */	lis r3, 0x494E4631@ha
/* 80087988 000848C8  38 03 46 31 */	addi r0, r3, 0x494E4631@l
/* 8008798C 000848CC  7C 04 00 00 */	cmpw r4, r0
/* 80087990 000848D0  41 82 00 94 */	beq .L_80087A24
/* 80087994 000848D4  40 80 00 2C */	bge .L_800879C0
/* 80087998 000848D8  3C 60 45 56 */	lis r3, 0x45565031@ha
/* 8008799C 000848DC  38 03 50 31 */	addi r0, r3, 0x45565031@l
/* 800879A0 000848E0  7C 04 00 00 */	cmpw r4, r0
/* 800879A4 000848E4  41 82 00 FC */	beq .L_80087AA0
/* 800879A8 000848E8  40 80 01 1C */	bge .L_80087AC4
/* 800879AC 000848EC  3C 60 44 52 */	lis r3, 0x44525731@ha
/* 800879B0 000848F0  38 03 57 31 */	addi r0, r3, 0x44525731@l
/* 800879B4 000848F4  7C 04 00 00 */	cmpw r4, r0
/* 800879B8 000848F8  41 82 00 FC */	beq .L_80087AB4
/* 800879BC 000848FC  48 00 01 08 */	b .L_80087AC4
.L_800879C0:
/* 800879C0 00084900  3C 60 4A 4E */	lis r3, 0x4A4E5431@ha
/* 800879C4 00084904  38 03 54 31 */	addi r0, r3, 0x4A4E5431@l
/* 800879C8 00084908  7C 04 00 00 */	cmpw r4, r0
/* 800879CC 0008490C  41 82 00 70 */	beq .L_80087A3C
/* 800879D0 00084910  48 00 00 F4 */	b .L_80087AC4
.L_800879D4:
/* 800879D4 00084914  3C 60 54 45 */	lis r3, 0x54455831@ha
/* 800879D8 00084918  38 03 58 31 */	addi r0, r3, 0x54455831@l
/* 800879DC 0008491C  7C 04 00 00 */	cmpw r4, r0
/* 800879E0 00084920  41 82 00 AC */	beq .L_80087A8C
/* 800879E4 00084924  40 80 00 2C */	bge .L_80087A10
/* 800879E8 00084928  3C 60 53 48 */	lis r3, 0x53485031@ha
/* 800879EC 0008492C  38 03 50 31 */	addi r0, r3, 0x53485031@l
/* 800879F0 00084930  7C 04 00 00 */	cmpw r4, r0
/* 800879F4 00084934  41 82 00 80 */	beq .L_80087A74
/* 800879F8 00084938  40 80 00 CC */	bge .L_80087AC4
/* 800879FC 0008493C  3C 60 4D 41 */	lis r3, 0x4D415434@ha
/* 80087A00 00084940  38 03 54 34 */	addi r0, r3, 0x4D415434@l
/* 80087A04 00084944  7C 04 00 00 */	cmpw r4, r0
/* 80087A08 00084948  40 80 00 BC */	bge .L_80087AC4
/* 80087A0C 0008494C  48 00 00 44 */	b .L_80087A50
.L_80087A10:
/* 80087A10 00084950  3C 60 56 54 */	lis r3, 0x56545831@ha
/* 80087A14 00084954  38 03 58 31 */	addi r0, r3, 0x56545831@l
/* 80087A18 00084958  7C 04 00 00 */	cmpw r4, r0
/* 80087A1C 0008495C  41 82 00 A8 */	beq .L_80087AC4
/* 80087A20 00084960  48 00 00 A4 */	b .L_80087AC4
.L_80087A24:
/* 80087A24 00084964  7F 43 D3 78 */	mr r3, r26
/* 80087A28 00084968  7F A4 EB 78 */	mr r4, r29
/* 80087A2C 0008496C  7F 65 DB 78 */	mr r5, r27
/* 80087A30 00084970  48 00 03 9D */	bl calcSizeInformation__14J3DModelLoaderFPC17J3DModelInfoBlockUl
/* 80087A34 00084974  7F DE 1A 14 */	add r30, r30, r3
/* 80087A38 00084978  48 00 00 8C */	b .L_80087AC4
.L_80087A3C:
/* 80087A3C 0008497C  7F 43 D3 78 */	mr r3, r26
/* 80087A40 00084980  7F A4 EB 78 */	mr r4, r29
/* 80087A44 00084984  48 00 04 19 */	bl calcSizeJoint__14J3DModelLoaderFPC13J3DJointBlock
/* 80087A48 00084988  7F DE 1A 14 */	add r30, r30, r3
/* 80087A4C 0008498C  48 00 00 78 */	b .L_80087AC4
.L_80087A50:
/* 80087A50 00084990  7F 43 D3 78 */	mr r3, r26
/* 80087A54 00084994  7F A4 EB 78 */	mr r4, r29
/* 80087A58 00084998  81 9A 00 00 */	lwz r12, 0(r26)
/* 80087A5C 0008499C  7F 65 DB 78 */	mr r5, r27
/* 80087A60 000849A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80087A64 000849A4  7D 89 03 A6 */	mtctr r12
/* 80087A68 000849A8  4E 80 04 21 */	bctrl 
/* 80087A6C 000849AC  7F DE 1A 14 */	add r30, r30, r3
/* 80087A70 000849B0  48 00 00 54 */	b .L_80087AC4
.L_80087A74:
/* 80087A74 000849B4  7F 43 D3 78 */	mr r3, r26
/* 80087A78 000849B8  7F A4 EB 78 */	mr r4, r29
/* 80087A7C 000849BC  7F 65 DB 78 */	mr r5, r27
/* 80087A80 000849C0  48 00 05 11 */	bl calcSizeShape__14J3DModelLoaderFPC13J3DShapeBlockUl
/* 80087A84 000849C4  7F DE 1A 14 */	add r30, r30, r3
/* 80087A88 000849C8  48 00 00 3C */	b .L_80087AC4
.L_80087A8C:
/* 80087A8C 000849CC  7F 43 D3 78 */	mr r3, r26
/* 80087A90 000849D0  7F A4 EB 78 */	mr r4, r29
/* 80087A94 000849D4  48 00 05 B1 */	bl calcSizeTexture__14J3DModelLoaderFPC15J3DTextureBlock
/* 80087A98 000849D8  7F DE 1A 14 */	add r30, r30, r3
/* 80087A9C 000849DC  48 00 00 28 */	b .L_80087AC4
.L_80087AA0:
/* 80087AA0 000849E0  7F 43 D3 78 */	mr r3, r26
/* 80087AA4 000849E4  7F A4 EB 78 */	mr r4, r29
/* 80087AA8 000849E8  48 00 03 E1 */	bl calcSizeEnvelope__14J3DModelLoaderFPC16J3DEnvelopeBlock
/* 80087AAC 000849EC  7F DE 1A 14 */	add r30, r30, r3
/* 80087AB0 000849F0  48 00 00 14 */	b .L_80087AC4
.L_80087AB4:
/* 80087AB4 000849F4  7F 43 D3 78 */	mr r3, r26
/* 80087AB8 000849F8  7F A4 EB 78 */	mr r4, r29
/* 80087ABC 000849FC  48 00 03 DD */	bl calcSizeDraw__14J3DModelLoaderFPC12J3DDrawBlock
/* 80087AC0 00084A00  7F DE 1A 14 */	add r30, r30, r3
.L_80087AC4:
/* 80087AC4 00084A04  80 1D 00 04 */	lwz r0, 4(r29)
/* 80087AC8 00084A08  3B 9C 00 01 */	addi r28, r28, 1
/* 80087ACC 00084A0C  7F BD 02 14 */	add r29, r29, r0
.L_80087AD0:
/* 80087AD0 00084A10  7C 1C C8 40 */	cmplw r28, r25
/* 80087AD4 00084A14  41 80 FE A0 */	blt .L_80087974
/* 80087AD8 00084A18  7F C3 F3 78 */	mr r3, r30
/* 80087ADC 00084A1C  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80087AE0 00084A20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80087AE4 00084A24  7C 08 03 A6 */	mtlr r0
/* 80087AE8 00084A28  38 21 00 30 */	addi r1, r1, 0x30
/* 80087AEC 00084A2C  4E 80 00 20 */	blr 

.global calcLoadMaterialTableSize__14J3DModelLoaderFPCv
calcLoadMaterialTableSize__14J3DModelLoaderFPCv:
/* 80087AF0 00084A30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80087AF4 00084A34  7C 08 02 A6 */	mflr r0
/* 80087AF8 00084A38  3C A0 4D 41 */	lis r5, 0x4D415433@ha
/* 80087AFC 00084A3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80087B00 00084A40  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80087B04 00084A44  7C 79 1B 78 */	mr r25, r3
/* 80087B08 00084A48  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 80087B0C 00084A4C  3B 84 00 20 */	addi r28, r4, 0x20
/* 80087B10 00084A50  3B C5 54 33 */	addi r30, r5, 0x4D415433@l
/* 80087B14 00084A54  3B 60 00 00 */	li r27, 0
/* 80087B18 00084A58  3B 40 00 00 */	li r26, 0
/* 80087B1C 00084A5C  3B A0 00 20 */	li r29, 0x20
/* 80087B20 00084A60  48 00 00 70 */	b .L_80087B90
.L_80087B24:
/* 80087B24 00084A64  80 9C 00 00 */	lwz r4, 0(r28)
/* 80087B28 00084A68  7C 04 F0 00 */	cmpw r4, r30
/* 80087B2C 00084A6C  41 82 00 20 */	beq .L_80087B4C
/* 80087B30 00084A70  40 80 00 08 */	bge .L_80087B38
/* 80087B34 00084A74  48 00 00 50 */	b .L_80087B84
.L_80087B38:
/* 80087B38 00084A78  3C 60 54 45 */	lis r3, 0x54455831@ha
/* 80087B3C 00084A7C  38 03 58 31 */	addi r0, r3, 0x54455831@l
/* 80087B40 00084A80  7C 04 00 00 */	cmpw r4, r0
/* 80087B44 00084A84  41 82 00 2C */	beq .L_80087B70
/* 80087B48 00084A88  48 00 00 3C */	b .L_80087B84
.L_80087B4C:
/* 80087B4C 00084A8C  7F 23 CB 78 */	mr r3, r25
/* 80087B50 00084A90  7F 84 E3 78 */	mr r4, r28
/* 80087B54 00084A94  81 99 00 00 */	lwz r12, 0(r25)
/* 80087B58 00084A98  3C A0 51 10 */	lis r5, 0x5110
/* 80087B5C 00084A9C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80087B60 00084AA0  7D 89 03 A6 */	mtctr r12
/* 80087B64 00084AA4  4E 80 04 21 */	bctrl 
/* 80087B68 00084AA8  7F BD 1A 14 */	add r29, r29, r3
/* 80087B6C 00084AAC  48 00 00 18 */	b .L_80087B84
.L_80087B70:
/* 80087B70 00084AB0  7F 23 CB 78 */	mr r3, r25
/* 80087B74 00084AB4  7F 84 E3 78 */	mr r4, r28
/* 80087B78 00084AB8  48 00 05 89 */	bl calcSizeTextureTable__14J3DModelLoaderFPC15J3DTextureBlock
/* 80087B7C 00084ABC  7F BD 1A 14 */	add r29, r29, r3
/* 80087B80 00084AC0  3B 60 00 01 */	li r27, 1
.L_80087B84:
/* 80087B84 00084AC4  80 1C 00 04 */	lwz r0, 4(r28)
/* 80087B88 00084AC8  3B 5A 00 01 */	addi r26, r26, 1
/* 80087B8C 00084ACC  7F 9C 02 14 */	add r28, r28, r0
.L_80087B90:
/* 80087B90 00084AD0  7C 1A F8 40 */	cmplw r26, r31
/* 80087B94 00084AD4  41 80 FF 90 */	blt .L_80087B24
/* 80087B98 00084AD8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80087B9C 00084ADC  40 82 00 08 */	bne .L_80087BA4
/* 80087BA0 00084AE0  3B BD 00 0C */	addi r29, r29, 0xc
.L_80087BA4:
/* 80087BA4 00084AE4  7F A3 EB 78 */	mr r3, r29
/* 80087BA8 00084AE8  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80087BAC 00084AEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80087BB0 00084AF0  7C 08 03 A6 */	mtlr r0
/* 80087BB4 00084AF4  38 21 00 30 */	addi r1, r1, 0x30
/* 80087BB8 00084AF8  4E 80 00 20 */	blr 

.global calcLoadBinaryDisplayListSize__14J3DModelLoaderFPCvUl
calcLoadBinaryDisplayListSize__14J3DModelLoaderFPCvUl:
/* 80087BBC 00084AFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80087BC0 00084B00  7C 08 02 A6 */	mflr r0
/* 80087BC4 00084B04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80087BC8 00084B08  BE E1 00 0C */	stmw r23, 0xc(r1)
/* 80087BCC 00084B0C  7C B9 2B 78 */	mr r25, r5
/* 80087BD0 00084B10  3C A0 4D 41 */	lis r5, 0x4D415433@ha
/* 80087BD4 00084B14  82 E4 00 0C */	lwz r23, 0xc(r4)
/* 80087BD8 00084B18  7C 78 1B 78 */	mr r24, r3
/* 80087BDC 00084B1C  3B 64 00 20 */	addi r27, r4, 0x20
/* 80087BE0 00084B20  57 3E 01 8E */	rlwinm r30, r25, 0, 6, 7
/* 80087BE4 00084B24  57 3D 04 A6 */	rlwinm r29, r25, 0, 0x12, 0x13
/* 80087BE8 00084B28  3B E5 54 33 */	addi r31, r5, 0x4D415433@l
/* 80087BEC 00084B2C  3B 40 00 00 */	li r26, 0
/* 80087BF0 00084B30  3B 80 00 E4 */	li r28, 0xe4
/* 80087BF4 00084B34  48 00 01 B8 */	b .L_80087DAC
.L_80087BF8:
/* 80087BF8 00084B38  80 9B 00 00 */	lwz r4, 0(r27)
/* 80087BFC 00084B3C  7C 04 F8 00 */	cmpw r4, r31
/* 80087C00 00084B40  41 82 01 1C */	beq .L_80087D1C
/* 80087C04 00084B44  40 80 00 58 */	bge .L_80087C5C
/* 80087C08 00084B48  3C 60 49 4E */	lis r3, 0x494E4631@ha
/* 80087C0C 00084B4C  38 03 46 31 */	addi r0, r3, 0x494E4631@l
/* 80087C10 00084B50  7C 04 00 00 */	cmpw r4, r0
/* 80087C14 00084B54  41 82 00 98 */	beq .L_80087CAC
/* 80087C18 00084B58  40 80 00 2C */	bge .L_80087C44
/* 80087C1C 00084B5C  3C 60 45 56 */	lis r3, 0x45565031@ha
/* 80087C20 00084B60  38 03 50 31 */	addi r0, r3, 0x45565031@l
/* 80087C24 00084B64  7C 04 00 00 */	cmpw r4, r0
/* 80087C28 00084B68  41 82 01 54 */	beq .L_80087D7C
/* 80087C2C 00084B6C  40 80 01 74 */	bge .L_80087DA0
/* 80087C30 00084B70  3C 60 44 52 */	lis r3, 0x44525731@ha
/* 80087C34 00084B74  38 03 57 31 */	addi r0, r3, 0x44525731@l
/* 80087C38 00084B78  7C 04 00 00 */	cmpw r4, r0
/* 80087C3C 00084B7C  41 82 01 54 */	beq .L_80087D90
/* 80087C40 00084B80  48 00 01 60 */	b .L_80087DA0
.L_80087C44:
/* 80087C44 00084B84  3C 60 4A 4E */	lis r3, 0x4A4E5431@ha
/* 80087C48 00084B88  38 03 54 31 */	addi r0, r3, 0x4A4E5431@l
/* 80087C4C 00084B8C  7C 04 00 00 */	cmpw r4, r0
/* 80087C50 00084B90  41 82 00 74 */	beq .L_80087CC4
/* 80087C54 00084B94  41 80 01 4C */	blt .L_80087DA0
/* 80087C58 00084B98  48 00 01 48 */	b .L_80087DA0
.L_80087C5C:
/* 80087C5C 00084B9C  3C 60 54 45 */	lis r3, 0x54455831@ha
/* 80087C60 00084BA0  38 03 58 31 */	addi r0, r3, 0x54455831@l
/* 80087C64 00084BA4  7C 04 00 00 */	cmpw r4, r0
/* 80087C68 00084BA8  41 82 00 88 */	beq .L_80087CF0
/* 80087C6C 00084BAC  40 80 00 2C */	bge .L_80087C98
/* 80087C70 00084BB0  3C 60 53 48 */	lis r3, 0x53485031@ha
/* 80087C74 00084BB4  38 03 50 31 */	addi r0, r3, 0x53485031@l
/* 80087C78 00084BB8  7C 04 00 00 */	cmpw r4, r0
/* 80087C7C 00084BBC  41 82 00 5C */	beq .L_80087CD8
/* 80087C80 00084BC0  40 80 01 20 */	bge .L_80087DA0
/* 80087C84 00084BC4  3C 60 4D 44 */	lis r3, 0x4D444C33@ha
/* 80087C88 00084BC8  38 03 4C 33 */	addi r0, r3, 0x4D444C33@l
/* 80087C8C 00084BCC  7C 04 00 00 */	cmpw r4, r0
/* 80087C90 00084BD0  41 82 00 74 */	beq .L_80087D04
/* 80087C94 00084BD4  48 00 01 0C */	b .L_80087DA0
.L_80087C98:
/* 80087C98 00084BD8  3C 60 56 54 */	lis r3, 0x56545831@ha
/* 80087C9C 00084BDC  38 03 58 31 */	addi r0, r3, 0x56545831@l
/* 80087CA0 00084BE0  7C 04 00 00 */	cmpw r4, r0
/* 80087CA4 00084BE4  41 82 00 FC */	beq .L_80087DA0
/* 80087CA8 00084BE8  48 00 00 F8 */	b .L_80087DA0
.L_80087CAC:
/* 80087CAC 00084BEC  7F 03 C3 78 */	mr r3, r24
/* 80087CB0 00084BF0  7F 64 DB 78 */	mr r4, r27
/* 80087CB4 00084BF4  7F 25 CB 78 */	mr r5, r25
/* 80087CB8 00084BF8  48 00 01 15 */	bl calcSizeInformation__14J3DModelLoaderFPC17J3DModelInfoBlockUl
/* 80087CBC 00084BFC  7F 9C 1A 14 */	add r28, r28, r3
/* 80087CC0 00084C00  48 00 00 E0 */	b .L_80087DA0
.L_80087CC4:
/* 80087CC4 00084C04  7F 03 C3 78 */	mr r3, r24
/* 80087CC8 00084C08  7F 64 DB 78 */	mr r4, r27
/* 80087CCC 00084C0C  48 00 01 91 */	bl calcSizeJoint__14J3DModelLoaderFPC13J3DJointBlock
/* 80087CD0 00084C10  7F 9C 1A 14 */	add r28, r28, r3
/* 80087CD4 00084C14  48 00 00 CC */	b .L_80087DA0
.L_80087CD8:
/* 80087CD8 00084C18  7F 03 C3 78 */	mr r3, r24
/* 80087CDC 00084C1C  7F 64 DB 78 */	mr r4, r27
/* 80087CE0 00084C20  7F 25 CB 78 */	mr r5, r25
/* 80087CE4 00084C24  48 00 02 AD */	bl calcSizeShape__14J3DModelLoaderFPC13J3DShapeBlockUl
/* 80087CE8 00084C28  7F 9C 1A 14 */	add r28, r28, r3
/* 80087CEC 00084C2C  48 00 00 B4 */	b .L_80087DA0
.L_80087CF0:
/* 80087CF0 00084C30  7F 03 C3 78 */	mr r3, r24
/* 80087CF4 00084C34  7F 64 DB 78 */	mr r4, r27
/* 80087CF8 00084C38  48 00 03 4D */	bl calcSizeTexture__14J3DModelLoaderFPC15J3DTextureBlock
/* 80087CFC 00084C3C  7F 9C 1A 14 */	add r28, r28, r3
/* 80087D00 00084C40  48 00 00 A0 */	b .L_80087DA0
.L_80087D04:
/* 80087D04 00084C44  7F 03 C3 78 */	mr r3, r24
/* 80087D08 00084C48  7F 64 DB 78 */	mr r4, r27
/* 80087D0C 00084C4C  7F 25 CB 78 */	mr r5, r25
/* 80087D10 00084C50  48 00 04 AD */	bl calcSizeMaterialDL__14J3DModelLoaderFPC18J3DMaterialDLBlockUl
/* 80087D14 00084C54  7F 9C 1A 14 */	add r28, r28, r3
/* 80087D18 00084C58  48 00 00 88 */	b .L_80087DA0
.L_80087D1C:
/* 80087D1C 00084C5C  28 1D 00 00 */	cmplwi r29, 0
/* 80087D20 00084C60  3C A0 50 10 */	lis r5, 0x5010
/* 80087D24 00084C64  93 78 00 10 */	stw r27, 0x10(r24)
/* 80087D28 00084C68  7C A5 F3 78 */	or r5, r5, r30
/* 80087D2C 00084C6C  40 82 00 2C */	bne .L_80087D58
/* 80087D30 00084C70  38 00 00 01 */	li r0, 1
/* 80087D34 00084C74  7F 03 C3 78 */	mr r3, r24
/* 80087D38 00084C78  98 18 00 18 */	stb r0, 0x18(r24)
/* 80087D3C 00084C7C  7F 64 DB 78 */	mr r4, r27
/* 80087D40 00084C80  81 98 00 00 */	lwz r12, 0(r24)
/* 80087D44 00084C84  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80087D48 00084C88  7D 89 03 A6 */	mtctr r12
/* 80087D4C 00084C8C  4E 80 04 21 */	bctrl 
/* 80087D50 00084C90  7F 9C 1A 14 */	add r28, r28, r3
/* 80087D54 00084C94  48 00 00 4C */	b .L_80087DA0
.L_80087D58:
/* 80087D58 00084C98  28 1D 20 00 */	cmplwi r29, 0x2000
/* 80087D5C 00084C9C  40 82 00 44 */	bne .L_80087DA0
/* 80087D60 00084CA0  38 00 00 01 */	li r0, 1
/* 80087D64 00084CA4  7F 03 C3 78 */	mr r3, r24
/* 80087D68 00084CA8  98 18 00 18 */	stb r0, 0x18(r24)
/* 80087D6C 00084CAC  7F 64 DB 78 */	mr r4, r27
/* 80087D70 00084CB0  48 00 03 AD */	bl calcSizePatchedMaterial__14J3DModelLoaderFPC16J3DMaterialBlockUl
/* 80087D74 00084CB4  7F 9C 1A 14 */	add r28, r28, r3
/* 80087D78 00084CB8  48 00 00 28 */	b .L_80087DA0
.L_80087D7C:
/* 80087D7C 00084CBC  7F 03 C3 78 */	mr r3, r24
/* 80087D80 00084CC0  7F 64 DB 78 */	mr r4, r27
/* 80087D84 00084CC4  48 00 01 05 */	bl calcSizeEnvelope__14J3DModelLoaderFPC16J3DEnvelopeBlock
/* 80087D88 00084CC8  7F 9C 1A 14 */	add r28, r28, r3
/* 80087D8C 00084CCC  48 00 00 14 */	b .L_80087DA0
.L_80087D90:
/* 80087D90 00084CD0  7F 03 C3 78 */	mr r3, r24
/* 80087D94 00084CD4  7F 64 DB 78 */	mr r4, r27
/* 80087D98 00084CD8  48 00 01 01 */	bl calcSizeDraw__14J3DModelLoaderFPC12J3DDrawBlock
/* 80087D9C 00084CDC  7F 9C 1A 14 */	add r28, r28, r3
.L_80087DA0:
/* 80087DA0 00084CE0  80 1B 00 04 */	lwz r0, 4(r27)
/* 80087DA4 00084CE4  3B 5A 00 01 */	addi r26, r26, 1
/* 80087DA8 00084CE8  7F 7B 02 14 */	add r27, r27, r0
.L_80087DAC:
/* 80087DAC 00084CEC  7C 1A B8 40 */	cmplw r26, r23
/* 80087DB0 00084CF0  41 80 FE 48 */	blt .L_80087BF8
/* 80087DB4 00084CF4  7F 83 E3 78 */	mr r3, r28
/* 80087DB8 00084CF8  BA E1 00 0C */	lmw r23, 0xc(r1)
/* 80087DBC 00084CFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80087DC0 00084D00  7C 08 03 A6 */	mtlr r0
/* 80087DC4 00084D04  38 21 00 30 */	addi r1, r1, 0x30
/* 80087DC8 00084D08  4E 80 00 20 */	blr 

.global calcSizeInformation__14J3DModelLoaderFPC17J3DModelInfoBlockUl
calcSizeInformation__14J3DModelLoaderFPC17J3DModelInfoBlockUl:
/* 80087DCC 00084D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80087DD0 00084D10  7C 08 02 A6 */	mflr r0
/* 80087DD4 00084D14  7C 86 23 78 */	mr r6, r4
/* 80087DD8 00084D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80087DDC 00084D1C  A0 04 00 08 */	lhz r0, 8(r4)
/* 80087DE0 00084D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80087DE4 00084D24  3B E0 00 00 */	li r31, 0
/* 80087DE8 00084D28  7C A0 03 78 */	or r0, r5, r0
/* 80087DEC 00084D2C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80087DF0 00084D30  93 C1 00 08 */	stw r30, 8(r1)
/* 80087DF4 00084D34  2C 00 00 01 */	cmpwi r0, 1
/* 80087DF8 00084D38  7C 7E 1B 78 */	mr r30, r3
/* 80087DFC 00084D3C  41 82 00 28 */	beq .L_80087E24
/* 80087E00 00084D40  40 80 00 10 */	bge .L_80087E10
/* 80087E04 00084D44  2C 00 00 00 */	cmpwi r0, 0
/* 80087E08 00084D48  40 80 00 14 */	bge .L_80087E1C
/* 80087E0C 00084D4C  48 00 00 24 */	b .L_80087E30
.L_80087E10:
/* 80087E10 00084D50  2C 00 00 03 */	cmpwi r0, 3
/* 80087E14 00084D54  40 80 00 1C */	bge .L_80087E30
/* 80087E18 00084D58  48 00 00 14 */	b .L_80087E2C
.L_80087E1C:
/* 80087E1C 00084D5C  3B E0 00 04 */	li r31, 4
/* 80087E20 00084D60  48 00 00 10 */	b .L_80087E30
.L_80087E24:
/* 80087E24 00084D64  3B E0 00 04 */	li r31, 4
/* 80087E28 00084D68  48 00 00 08 */	b .L_80087E30
.L_80087E2C:
/* 80087E2C 00084D6C  3B E0 00 04 */	li r31, 4
.L_80087E30:
/* 80087E30 00084D70  80 86 00 14 */	lwz r4, 0x14(r6)
/* 80087E34 00084D74  7C C3 33 78 */	mr r3, r6
/* 80087E38 00084D78  4B FE 9C A1 */	bl "JSUConvertOffsetToPtr<17J3DModelHierarchy>__FPCvPCv"
/* 80087E3C 00084D7C  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80087E40 00084D80  7F E3 FB 78 */	mr r3, r31
/* 80087E44 00084D84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80087E48 00084D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80087E4C 00084D8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80087E50 00084D90  7C 08 03 A6 */	mtlr r0
/* 80087E54 00084D94  38 21 00 10 */	addi r1, r1, 0x10
/* 80087E58 00084D98  4E 80 00 20 */	blr 

.global calcSizeJoint__14J3DModelLoaderFPC13J3DJointBlock
calcSizeJoint__14J3DModelLoaderFPC13J3DJointBlock:
/* 80087E5C 00084D9C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80087E60 00084DA0  38 60 00 00 */	li r3, 0
/* 80087E64 00084DA4  28 00 00 00 */	cmplwi r0, 0
/* 80087E68 00084DA8  41 82 00 08 */	beq .L_80087E70
/* 80087E6C 00084DAC  38 60 00 10 */	li r3, 0x10
.L_80087E70:
/* 80087E70 00084DB0  A0 84 00 08 */	lhz r4, 8(r4)
/* 80087E74 00084DB4  1C 04 00 5C */	mulli r0, r4, 0x5c
/* 80087E78 00084DB8  54 84 10 3A */	slwi r4, r4, 2
/* 80087E7C 00084DBC  7C 63 22 14 */	add r3, r3, r4
/* 80087E80 00084DC0  7C 63 02 14 */	add r3, r3, r0
/* 80087E84 00084DC4  4E 80 00 20 */	blr 

.global calcSizeEnvelope__14J3DModelLoaderFPC16J3DEnvelopeBlock
calcSizeEnvelope__14J3DModelLoaderFPC16J3DEnvelopeBlock:
/* 80087E88 00084DC8  A0 04 00 08 */	lhz r0, 8(r4)
/* 80087E8C 00084DCC  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 80087E90 00084DD0  38 60 00 00 */	li r3, 0
/* 80087E94 00084DD4  4E 80 00 20 */	blr 

.global calcSizeDraw__14J3DModelLoaderFPC12J3DDrawBlock
calcSizeDraw__14J3DModelLoaderFPC12J3DDrawBlock:
/* 80087E98 00084DD8  A0 63 00 1A */	lhz r3, 0x1a(r3)
/* 80087E9C 00084DDC  A0 04 00 08 */	lhz r0, 8(r4)
/* 80087EA0 00084DE0  7C 03 00 50 */	subf r0, r3, r0
/* 80087EA4 00084DE4  54 03 08 3C */	slwi r3, r0, 1
/* 80087EA8 00084DE8  4E 80 00 20 */	blr 

.global calcSizeMaterial__18J3DModelLoader_v26FPC16J3DMaterialBlockUl
calcSizeMaterial__18J3DModelLoader_v26FPC16J3DMaterialBlockUl:
/* 80087EAC 00084DEC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80087EB0 00084DF0  7C 08 02 A6 */	mflr r0
/* 80087EB4 00084DF4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80087EB8 00084DF8  38 61 00 08 */	addi r3, r1, 8
/* 80087EBC 00084DFC  BF 61 00 9C */	stmw r27, 0x9c(r1)
/* 80087EC0 00084E00  7C 9C 23 78 */	mr r28, r4
/* 80087EC4 00084E04  7C BB 2B 78 */	mr r27, r5
/* 80087EC8 00084E08  3B E0 00 00 */	li r31, 0
/* 80087ECC 00084E0C  4B FE 44 D9 */	bl __ct__18J3DMaterialFactoryFRC16J3DMaterialBlock
/* 80087ED0 00084E10  A3 DC 00 08 */	lhz r30, 8(r28)
/* 80087ED4 00084E14  38 61 00 08 */	addi r3, r1, 8
/* 80087ED8 00084E18  4B FE 47 9D */	bl countUniqueMaterials__18J3DMaterialFactoryFv
/* 80087EDC 00084E1C  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 80087EE0 00084E20  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 80087EE4 00084E24  28 00 00 00 */	cmplwi r0, 0
/* 80087EE8 00084E28  41 82 00 08 */	beq .L_80087EF0
/* 80087EEC 00084E2C  3B E0 00 10 */	li r31, 0x10
.L_80087EF0:
/* 80087EF0 00084E30  57 64 02 95 */	rlwinm. r4, r27, 0, 0xa, 0xa
/* 80087EF4 00084E34  57 C0 10 3A */	slwi r0, r30, 2
/* 80087EF8 00084E38  7F FF 02 14 */	add r31, r31, r0
/* 80087EFC 00084E3C  41 82 00 14 */	beq .L_80087F10
/* 80087F00 00084E40  1C 7D 00 4C */	mulli r3, r29, 0x4c
/* 80087F04 00084E44  38 03 00 1F */	addi r0, r3, 0x1f
/* 80087F08 00084E48  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 80087F0C 00084E4C  7F FF 02 14 */	add r31, r31, r0
.L_80087F10:
/* 80087F10 00084E50  28 04 00 00 */	cmplwi r4, 0
/* 80087F14 00084E54  41 82 00 34 */	beq .L_80087F48
/* 80087F18 00084E58  3B 80 00 00 */	li r28, 0
/* 80087F1C 00084E5C  48 00 00 24 */	b .L_80087F40
.L_80087F20:
/* 80087F20 00084E60  7F 86 E3 78 */	mr r6, r28
/* 80087F24 00084E64  7F 67 DB 78 */	mr r7, r27
/* 80087F28 00084E68  38 61 00 08 */	addi r3, r1, 8
/* 80087F2C 00084E6C  38 80 00 00 */	li r4, 0
/* 80087F30 00084E70  38 A0 00 00 */	li r5, 0
/* 80087F34 00084E74  4B FE 60 11 */	bl calcSize__18J3DMaterialFactoryCFP11J3DMaterialQ218J3DMaterialFactory12MaterialTypeiUl
/* 80087F38 00084E78  7F FF 1A 14 */	add r31, r31, r3
/* 80087F3C 00084E7C  3B 9C 00 01 */	addi r28, r28, 1
.L_80087F40:
/* 80087F40 00084E80  7C 1C E8 40 */	cmplw r28, r29
/* 80087F44 00084E84  41 80 FF DC */	blt .L_80087F20
.L_80087F48:
/* 80087F48 00084E88  3B 80 00 00 */	li r28, 0
/* 80087F4C 00084E8C  48 00 00 24 */	b .L_80087F70
.L_80087F50:
/* 80087F50 00084E90  7F 86 E3 78 */	mr r6, r28
/* 80087F54 00084E94  7F 67 DB 78 */	mr r7, r27
/* 80087F58 00084E98  38 61 00 08 */	addi r3, r1, 8
/* 80087F5C 00084E9C  38 80 00 00 */	li r4, 0
/* 80087F60 00084EA0  38 A0 00 00 */	li r5, 0
/* 80087F64 00084EA4  4B FE 5F E1 */	bl calcSize__18J3DMaterialFactoryCFP11J3DMaterialQ218J3DMaterialFactory12MaterialTypeiUl
/* 80087F68 00084EA8  7F FF 1A 14 */	add r31, r31, r3
/* 80087F6C 00084EAC  3B 9C 00 01 */	addi r28, r28, 1
.L_80087F70:
/* 80087F70 00084EB0  7C 1C F0 40 */	cmplw r28, r30
/* 80087F74 00084EB4  41 80 FF DC */	blt .L_80087F50
/* 80087F78 00084EB8  7F E3 FB 78 */	mr r3, r31
/* 80087F7C 00084EBC  BB 61 00 9C */	lmw r27, 0x9c(r1)
/* 80087F80 00084EC0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80087F84 00084EC4  7C 08 03 A6 */	mtlr r0
/* 80087F88 00084EC8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80087F8C 00084ECC  4E 80 00 20 */	blr 

.global calcSizeShape__14J3DModelLoaderFPC13J3DShapeBlockUl
calcSizeShape__14J3DModelLoaderFPC13J3DShapeBlockUl:
/* 80087F90 00084ED0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80087F94 00084ED4  7C 08 02 A6 */	mflr r0
/* 80087F98 00084ED8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80087F9C 00084EDC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80087FA0 00084EE0  3B E0 00 00 */	li r31, 0
/* 80087FA4 00084EE4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80087FA8 00084EE8  7C 9E 23 78 */	mr r30, r4
/* 80087FAC 00084EEC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80087FB0 00084EF0  7C BD 2B 78 */	mr r29, r5
/* 80087FB4 00084EF4  93 81 00 30 */	stw r28, 0x30(r1)
/* 80087FB8 00084EF8  7C 7C 1B 78 */	mr r28, r3
/* 80087FBC 00084EFC  38 61 00 08 */	addi r3, r1, 8
/* 80087FC0 00084F00  4B FE 9D 51 */	bl __ct__15J3DShapeFactoryFRC13J3DShapeBlock
/* 80087FC4 00084F04  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80087FC8 00084F08  A0 9E 00 08 */	lhz r4, 8(r30)
/* 80087FCC 00084F0C  28 00 00 00 */	cmplwi r0, 0
/* 80087FD0 00084F10  41 82 00 08 */	beq .L_80087FD8
/* 80087FD4 00084F14  3B E0 00 10 */	li r31, 0x10
.L_80087FD8:
/* 80087FD8 00084F18  54 80 10 3A */	slwi r0, r4, 2
/* 80087FDC 00084F1C  38 61 00 08 */	addi r3, r1, 8
/* 80087FE0 00084F20  7F FF 02 14 */	add r31, r31, r0
/* 80087FE4 00084F24  4B FE A4 A5 */	bl calcSizeVcdVatCmdBuffer__15J3DShapeFactoryFUl
/* 80087FE8 00084F28  83 DC 00 14 */	lwz r30, 0x14(r28)
/* 80087FEC 00084F2C  7F FF 1A 14 */	add r31, r31, r3
/* 80087FF0 00084F30  48 00 00 24 */	b .L_80088014
.L_80087FF4:
/* 80087FF4 00084F34  28 00 00 12 */	cmplwi r0, 0x12
/* 80087FF8 00084F38  40 82 00 18 */	bne .L_80088010
/* 80087FFC 00084F3C  A0 9E 00 02 */	lhz r4, 2(r30)
/* 80088000 00084F40  7F A5 EB 78 */	mr r5, r29
/* 80088004 00084F44  38 61 00 08 */	addi r3, r1, 8
/* 80088008 00084F48  4B FE A3 F5 */	bl calcSize__15J3DShapeFactoryFiUl
/* 8008800C 00084F4C  7F FF 1A 14 */	add r31, r31, r3
.L_80088010:
/* 80088010 00084F50  3B DE 00 04 */	addi r30, r30, 4
.L_80088014:
/* 80088014 00084F54  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80088018 00084F58  28 00 00 00 */	cmplwi r0, 0
/* 8008801C 00084F5C  40 82 FF D8 */	bne .L_80087FF4
/* 80088020 00084F60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80088024 00084F64  7F E3 FB 78 */	mr r3, r31
/* 80088028 00084F68  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8008802C 00084F6C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80088030 00084F70  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80088034 00084F74  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80088038 00084F78  7C 08 03 A6 */	mtlr r0
/* 8008803C 00084F7C  38 21 00 40 */	addi r1, r1, 0x40
/* 80088040 00084F80  4E 80 00 20 */	blr 

.global calcSizeTexture__14J3DModelLoaderFPC15J3DTextureBlock
calcSizeTexture__14J3DModelLoaderFPC15J3DTextureBlock:
/* 80088044 00084F84  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80088048 00084F88  38 60 00 00 */	li r3, 0
/* 8008804C 00084F8C  28 00 00 00 */	cmplwi r0, 0
/* 80088050 00084F90  41 82 00 08 */	beq .L_80088058
/* 80088054 00084F94  38 60 00 10 */	li r3, 0x10
.L_80088058:
/* 80088058 00084F98  38 63 00 0C */	addi r3, r3, 0xc
/* 8008805C 00084F9C  4E 80 00 20 */	blr 

.global calcSizeMaterialTable__18J3DModelLoader_v26FPC16J3DMaterialBlockUl
calcSizeMaterialTable__18J3DModelLoader_v26FPC16J3DMaterialBlockUl:
/* 80088060 00084FA0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80088064 00084FA4  7C 08 02 A6 */	mflr r0
/* 80088068 00084FA8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8008806C 00084FAC  38 61 00 08 */	addi r3, r1, 8
/* 80088070 00084FB0  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80088074 00084FB4  3B E0 00 00 */	li r31, 0
/* 80088078 00084FB8  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8008807C 00084FBC  A3 C4 00 08 */	lhz r30, 8(r4)
/* 80088080 00084FC0  93 A1 00 94 */	stw r29, 0x94(r1)
/* 80088084 00084FC4  7C 9D 23 78 */	mr r29, r4
/* 80088088 00084FC8  93 81 00 90 */	stw r28, 0x90(r1)
/* 8008808C 00084FCC  7C BC 2B 78 */	mr r28, r5
/* 80088090 00084FD0  4B FE 43 15 */	bl __ct__18J3DMaterialFactoryFRC16J3DMaterialBlock
/* 80088094 00084FD4  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80088098 00084FD8  28 00 00 00 */	cmplwi r0, 0
/* 8008809C 00084FDC  41 82 00 08 */	beq .L_800880A4
/* 800880A0 00084FE0  3B E0 00 10 */	li r31, 0x10
.L_800880A4:
/* 800880A4 00084FE4  57 C0 10 3A */	slwi r0, r30, 2
/* 800880A8 00084FE8  3B A0 00 00 */	li r29, 0
/* 800880AC 00084FEC  7F FF 02 14 */	add r31, r31, r0
/* 800880B0 00084FF0  48 00 00 20 */	b .L_800880D0
.L_800880B4:
/* 800880B4 00084FF4  7F 87 E3 78 */	mr r7, r28
/* 800880B8 00084FF8  38 61 00 08 */	addi r3, r1, 8
/* 800880BC 00084FFC  38 80 00 00 */	li r4, 0
/* 800880C0 00085000  38 A0 00 00 */	li r5, 0
/* 800880C4 00085004  4B FE 5E 81 */	bl calcSize__18J3DMaterialFactoryCFP11J3DMaterialQ218J3DMaterialFactory12MaterialTypeiUl
/* 800880C8 00085008  7F FF 1A 14 */	add r31, r31, r3
/* 800880CC 0008500C  3B BD 00 01 */	addi r29, r29, 1
.L_800880D0:
/* 800880D0 00085010  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 800880D4 00085014  7C 06 F0 40 */	cmplw r6, r30
/* 800880D8 00085018  41 80 FF DC */	blt .L_800880B4
/* 800880DC 0008501C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800880E0 00085020  7F E3 FB 78 */	mr r3, r31
/* 800880E4 00085024  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 800880E8 00085028  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 800880EC 0008502C  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 800880F0 00085030  83 81 00 90 */	lwz r28, 0x90(r1)
/* 800880F4 00085034  7C 08 03 A6 */	mtlr r0
/* 800880F8 00085038  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800880FC 0008503C  4E 80 00 20 */	blr 

.global calcSizeTextureTable__14J3DModelLoaderFPC15J3DTextureBlock
calcSizeTextureTable__14J3DModelLoaderFPC15J3DTextureBlock:
/* 80088100 00085040  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80088104 00085044  38 60 00 00 */	li r3, 0
/* 80088108 00085048  28 00 00 00 */	cmplwi r0, 0
/* 8008810C 0008504C  41 82 00 08 */	beq .L_80088114
/* 80088110 00085050  38 60 00 10 */	li r3, 0x10
.L_80088114:
/* 80088114 00085054  38 63 00 0C */	addi r3, r3, 0xc
/* 80088118 00085058  4E 80 00 20 */	blr 

.global calcSizePatchedMaterial__14J3DModelLoaderFPC16J3DMaterialBlockUl
calcSizePatchedMaterial__14J3DModelLoaderFPC16J3DMaterialBlockUl:
/* 8008811C 0008505C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80088120 00085060  7C 08 02 A6 */	mflr r0
/* 80088124 00085064  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80088128 00085068  38 61 00 08 */	addi r3, r1, 8
/* 8008812C 0008506C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80088130 00085070  3B E0 00 00 */	li r31, 0
/* 80088134 00085074  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80088138 00085078  A3 C4 00 08 */	lhz r30, 8(r4)
/* 8008813C 0008507C  93 A1 00 94 */	stw r29, 0x94(r1)
/* 80088140 00085080  7C 9D 23 78 */	mr r29, r4
/* 80088144 00085084  93 81 00 90 */	stw r28, 0x90(r1)
/* 80088148 00085088  7C BC 2B 78 */	mr r28, r5
/* 8008814C 0008508C  4B FE 42 59 */	bl __ct__18J3DMaterialFactoryFRC16J3DMaterialBlock
/* 80088150 00085090  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80088154 00085094  28 00 00 00 */	cmplwi r0, 0
/* 80088158 00085098  41 82 00 08 */	beq .L_80088160
/* 8008815C 0008509C  3B E0 00 10 */	li r31, 0x10
.L_80088160:
/* 80088160 000850A0  57 C0 10 3A */	slwi r0, r30, 2
/* 80088164 000850A4  3B A0 00 00 */	li r29, 0
/* 80088168 000850A8  7F FF 02 14 */	add r31, r31, r0
/* 8008816C 000850AC  48 00 00 20 */	b .L_8008818C
.L_80088170:
/* 80088170 000850B0  7F 87 E3 78 */	mr r7, r28
/* 80088174 000850B4  38 61 00 08 */	addi r3, r1, 8
/* 80088178 000850B8  38 80 00 00 */	li r4, 0
/* 8008817C 000850BC  38 A0 00 02 */	li r5, 2
/* 80088180 000850C0  4B FE 5D C5 */	bl calcSize__18J3DMaterialFactoryCFP11J3DMaterialQ218J3DMaterialFactory12MaterialTypeiUl
/* 80088184 000850C4  7F FF 1A 14 */	add r31, r31, r3
/* 80088188 000850C8  3B BD 00 01 */	addi r29, r29, 1
.L_8008818C:
/* 8008818C 000850CC  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 80088190 000850D0  7C 06 F0 40 */	cmplw r6, r30
/* 80088194 000850D4  41 80 FF DC */	blt .L_80088170
/* 80088198 000850D8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8008819C 000850DC  7F E3 FB 78 */	mr r3, r31
/* 800881A0 000850E0  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 800881A4 000850E4  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 800881A8 000850E8  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 800881AC 000850EC  83 81 00 90 */	lwz r28, 0x90(r1)
/* 800881B0 000850F0  7C 08 03 A6 */	mtlr r0
/* 800881B4 000850F4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800881B8 000850F8  4E 80 00 20 */	blr 

.global calcSizeMaterialDL__14J3DModelLoaderFPC18J3DMaterialDLBlockUl
calcSizeMaterialDL__14J3DModelLoaderFPC18J3DMaterialDLBlockUl:
/* 800881BC 000850FC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800881C0 00085100  7C 08 02 A6 */	mflr r0
/* 800881C4 00085104  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 800881C8 00085108  BF 61 00 9C */	stmw r27, 0x9c(r1)
/* 800881CC 0008510C  7C 7B 1B 78 */	mr r27, r3
/* 800881D0 00085110  7C 9D 23 78 */	mr r29, r4
/* 800881D4 00085114  7C BC 2B 78 */	mr r28, r5
/* 800881D8 00085118  38 61 00 08 */	addi r3, r1, 8
/* 800881DC 0008511C  3B E0 00 00 */	li r31, 0
/* 800881E0 00085120  4B FE 44 0D */	bl __ct__18J3DMaterialFactoryFRC18J3DMaterialDLBlock
/* 800881E4 00085124  88 1B 00 18 */	lbz r0, 0x18(r27)
/* 800881E8 00085128  28 00 00 00 */	cmplwi r0, 0
/* 800881EC 0008512C  40 82 00 54 */	bne .L_80088240
/* 800881F0 00085130  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 800881F4 00085134  A3 DD 00 08 */	lhz r30, 8(r29)
/* 800881F8 00085138  28 00 00 00 */	cmplwi r0, 0
/* 800881FC 0008513C  41 82 00 08 */	beq .L_80088204
/* 80088200 00085140  3B E0 00 10 */	li r31, 0x10
.L_80088204:
/* 80088204 00085144  57 C0 10 3A */	slwi r0, r30, 2
/* 80088208 00085148  3B A0 00 00 */	li r29, 0
/* 8008820C 0008514C  7F FF 02 14 */	add r31, r31, r0
/* 80088210 00085150  48 00 00 20 */	b .L_80088230
.L_80088214:
/* 80088214 00085154  7F 87 E3 78 */	mr r7, r28
/* 80088218 00085158  38 61 00 08 */	addi r3, r1, 8
/* 8008821C 0008515C  38 80 00 00 */	li r4, 0
/* 80088220 00085160  38 A0 00 01 */	li r5, 1
/* 80088224 00085164  4B FE 5D 21 */	bl calcSize__18J3DMaterialFactoryCFP11J3DMaterialQ218J3DMaterialFactory12MaterialTypeiUl
/* 80088228 00085168  7F FF 1A 14 */	add r31, r31, r3
/* 8008822C 0008516C  3B BD 00 01 */	addi r29, r29, 1
.L_80088230:
/* 80088230 00085170  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 80088234 00085174  7C 06 F0 40 */	cmplw r6, r30
/* 80088238 00085178  41 80 FF DC */	blt .L_80088214
/* 8008823C 0008517C  48 00 00 38 */	b .L_80088274
.L_80088240:
/* 80088240 00085180  A3 BD 00 08 */	lhz r29, 8(r29)
/* 80088244 00085184  3B C0 00 00 */	li r30, 0
/* 80088248 00085188  48 00 00 20 */	b .L_80088268
.L_8008824C:
/* 8008824C 0008518C  7F 64 DB 78 */	mr r4, r27
/* 80088250 00085190  7F 87 E3 78 */	mr r7, r28
/* 80088254 00085194  38 61 00 08 */	addi r3, r1, 8
/* 80088258 00085198  38 A0 00 01 */	li r5, 1
/* 8008825C 0008519C  4B FE 5C E9 */	bl calcSize__18J3DMaterialFactoryCFP11J3DMaterialQ218J3DMaterialFactory12MaterialTypeiUl
/* 80088260 000851A0  7F FF 1A 14 */	add r31, r31, r3
/* 80088264 000851A4  3B DE 00 01 */	addi r30, r30, 1
.L_80088268:
/* 80088268 000851A8  57 C6 04 3E */	clrlwi r6, r30, 0x10
/* 8008826C 000851AC  7C 06 E8 40 */	cmplw r6, r29
/* 80088270 000851B0  41 80 FF DC */	blt .L_8008824C
.L_80088274:
/* 80088274 000851B4  7F E3 FB 78 */	mr r3, r31
/* 80088278 000851B8  BB 61 00 9C */	lmw r27, 0x9c(r1)
/* 8008827C 000851BC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80088280 000851C0  7C 08 03 A6 */	mtlr r0
/* 80088284 000851C4  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80088288 000851C8  4E 80 00 20 */	blr 
