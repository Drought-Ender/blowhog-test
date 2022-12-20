.include "macros.inc"
.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
lbl_805203E8:
	.float 0.5
lbl_805203EC:
	.float 0.0
lbl_805203F0:
	.float 1.0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global "__ct__Q23Sys8CylinderFRC10Vector3<f>RC10Vector3<f>f"
"__ct__Q23Sys8CylinderFRC10Vector3<f>RC10Vector3<f>f":
/* 80421628 0041E568  C0 64 00 00 */	lfs f3, 0(r4)
/* 8042162C 0041E56C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80421630 0041E570  D0 63 00 00 */	stfs f3, 0(r3)
/* 80421634 0041E574  C0 64 00 08 */	lfs f3, 8(r4)
/* 80421638 0041E578  D0 03 00 04 */	stfs f0, 4(r3)
/* 8042163C 0041E57C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80421640 0041E580  D0 63 00 08 */	stfs f3, 8(r3)
/* 80421644 0041E584  C0 65 00 04 */	lfs f3, 4(r5)
/* 80421648 0041E588  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8042164C 0041E58C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80421650 0041E590  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 80421654 0041E594  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80421658 0041E598  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 8042165C 0041E59C  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 80421660 0041E5A0  4E 80 00 20 */	blr 

.global "set__Q23Sys8CylinderFRC10Vector3<f>RC10Vector3<f>f"
"set__Q23Sys8CylinderFRC10Vector3<f>RC10Vector3<f>f":
/* 80421664 0041E5A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80421668 0041E5A8  7C 08 02 A6 */	mflr r0
/* 8042166C 0041E5AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80421670 0041E5B0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80421674 0041E5B4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 80421678 0041E5B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042167C 0041E5BC  C0 44 00 00 */	lfs f2, 0(r4)
/* 80421680 0041E5C0  7C 7F 1B 78 */	mr r31, r3
/* 80421684 0041E5C4  C0 05 00 00 */	lfs f0, 0(r5)
/* 80421688 0041E5C8  FF E0 08 90 */	fmr f31, f1
/* 8042168C 0041E5CC  C0 84 00 04 */	lfs f4, 4(r4)
/* 80421690 0041E5D0  C0 65 00 04 */	lfs f3, 4(r5)
/* 80421694 0041E5D4  EC 22 00 2A */	fadds f1, f2, f0
/* 80421698 0041E5D8  C0 A2 20 88 */	lfs f5, lbl_805203E8@sda21(r2)
/* 8042169C 0041E5DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 804216A0 0041E5E0  EC 44 18 2A */	fadds f2, f4, f3
/* 804216A4 0041E5E4  C1 04 00 08 */	lfs f8, 8(r4)
/* 804216A8 0041E5E8  C0 E5 00 08 */	lfs f7, 8(r5)
/* 804216AC 0041E5EC  EC 21 01 72 */	fmuls f1, f1, f5
/* 804216B0 0041E5F0  EC C8 38 2A */	fadds f6, f8, f7
/* 804216B4 0041E5F4  EC 42 01 72 */	fmuls f2, f2, f5
/* 804216B8 0041E5F8  D0 23 00 00 */	stfs f1, 0(r3)
/* 804216BC 0041E5FC  EC 63 20 28 */	fsubs f3, f3, f4
/* 804216C0 0041E600  EC 26 01 72 */	fmuls f1, f6, f5
/* 804216C4 0041E604  D0 43 00 04 */	stfs f2, 4(r3)
/* 804216C8 0041E608  EC 47 40 28 */	fsubs f2, f7, f8
/* 804216CC 0041E60C  D0 23 00 08 */	stfs f1, 8(r3)
/* 804216D0 0041E610  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804216D4 0041E614  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 804216D8 0041E618  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 804216DC 0041E61C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 804216E0 0041E620  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 804216E4 0041E624  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 804216E8 0041E628  EC 21 00 72 */	fmuls f1, f1, f1
/* 804216EC 0041E62C  EC 00 00 32 */	fmuls f0, f0, f0
/* 804216F0 0041E630  EC 42 00 B2 */	fmuls f2, f2, f2
/* 804216F4 0041E634  EC 01 00 2A */	fadds f0, f1, f0
/* 804216F8 0041E638  EC 22 00 2A */	fadds f1, f2, f0
/* 804216FC 0041E63C  4B FF 01 09 */	bl pikmin2_sqrtf__Ff
/* 80421700 0041E640  C0 02 20 8C */	lfs f0, lbl_805203EC@sda21(r2)
/* 80421704 0041E644  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80421708 0041E648  40 81 00 34 */	ble .L_8042173C
/* 8042170C 0041E64C  C0 42 20 90 */	lfs f2, lbl_805203F0@sda21(r2)
/* 80421710 0041E650  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80421714 0041E654  EC 42 08 24 */	fdivs f2, f2, f1
/* 80421718 0041E658  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8042171C 0041E65C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80421720 0041E660  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80421724 0041E664  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80421728 0041E668  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8042172C 0041E66C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80421730 0041E670  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80421734 0041E674  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80421738 0041E678  48 00 00 08 */	b .L_80421740
.L_8042173C:
/* 8042173C 0041E67C  FC 20 00 90 */	fmr f1, f0
.L_80421740:
/* 80421740 0041E680  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80421744 0041E684  D3 FF 00 1C */	stfs f31, 0x1c(r31)
/* 80421748 0041E688  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8042174C 0041E68C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80421750 0041E690  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80421754 0041E694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80421758 0041E698  7C 08 03 A6 */	mtlr r0
/* 8042175C 0041E69C  38 21 00 20 */	addi r1, r1, 0x20
/* 80421760 0041E6A0  4E 80 00 20 */	blr 

.global culled__Q23Sys8CylinderFRC5Plane
culled__Q23Sys8CylinderFRC5Plane:
/* 80421764 0041E6A4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80421768 0041E6A8  7C 08 02 A6 */	mflr r0
/* 8042176C 0041E6AC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80421770 0041E6B0  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80421774 0041E6B4  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 80421778 0041E6B8  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8042177C 0041E6BC  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 80421780 0041E6C0  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 80421784 0041E6C4  F3 A1 00 78 */	psq_st f29, 120(r1), 0, qr0
/* 80421788 0041E6C8  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 8042178C 0041E6CC  F3 81 00 68 */	psq_st f28, 104(r1), 0, qr0
/* 80421790 0041E6D0  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 80421794 0041E6D4  F3 61 00 58 */	psq_st f27, 88(r1), 0, qr0
/* 80421798 0041E6D8  DB 41 00 40 */	stfd f26, 0x40(r1)
/* 8042179C 0041E6DC  F3 41 00 48 */	psq_st f26, 72(r1), 0, qr0
/* 804217A0 0041E6E0  DB 21 00 30 */	stfd f25, 0x30(r1)
/* 804217A4 0041E6E4  F3 21 00 38 */	psq_st f25, 56(r1), 0, qr0
/* 804217A8 0041E6E8  DB 01 00 20 */	stfd f24, 0x20(r1)
/* 804217AC 0041E6EC  F3 01 00 28 */	psq_st f24, 40(r1), 0, qr0
/* 804217B0 0041E6F0  DA E1 00 10 */	stfd f23, 0x10(r1)
/* 804217B4 0041E6F4  F2 E1 00 18 */	psq_st f23, 24(r1), 0, qr0
/* 804217B8 0041E6F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804217BC 0041E6FC  93 C1 00 08 */	stw r30, 8(r1)
/* 804217C0 0041E700  7C 7E 1B 78 */	mr r30, r3
/* 804217C4 0041E704  7C 9F 23 78 */	mr r31, r4
/* 804217C8 0041E708  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 804217CC 0041E70C  C0 04 00 04 */	lfs f0, 4(r4)
/* 804217D0 0041E710  C0 42 20 88 */	lfs f2, lbl_805203E8@sda21(r2)
/* 804217D4 0041E714  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 804217D8 0041E718  EC 03 00 32 */	fmuls f0, f3, f0
/* 804217DC 0041E71C  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 804217E0 0041E720  EC A2 00 72 */	fmuls f5, f2, f1
/* 804217E4 0041E724  C0 24 00 00 */	lfs f1, 0(r4)
/* 804217E8 0041E728  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 804217EC 0041E72C  EC 04 00 7A */	fmadds f0, f4, f1, f0
/* 804217F0 0041E730  C0 24 00 08 */	lfs f1, 8(r4)
/* 804217F4 0041E734  EF 82 01 72 */	fmuls f28, f2, f5
/* 804217F8 0041E738  C3 23 00 08 */	lfs f25, 8(r3)
/* 804217FC 0041E73C  EF 63 01 72 */	fmuls f27, f3, f5
/* 80421800 0041E740  C3 03 00 04 */	lfs f24, 4(r3)
/* 80421804 0041E744  EF 44 01 72 */	fmuls f26, f4, f5
/* 80421808 0041E748  C2 E3 00 00 */	lfs f23, 0(r3)
/* 8042180C 0041E74C  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80421810 0041E750  C0 02 20 90 */	lfs f0, lbl_805203F0@sda21(r2)
/* 80421814 0041E754  EF B9 E0 28 */	fsubs f29, f25, f28
/* 80421818 0041E758  EF D8 D8 28 */	fsubs f30, f24, f27
/* 8042181C 0041E75C  EF F7 D0 28 */	fsubs f31, f23, f26
/* 80421820 0041E760  EC 21 00 7C */	fnmsubs f1, f1, f1, f0
/* 80421824 0041E764  4B FE FF E1 */	bl pikmin2_sqrtf__Ff
/* 80421828 0041E768  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8042182C 0041E76C  EC 58 D8 2A */	fadds f2, f24, f27
/* 80421830 0041E770  C0 DE 00 1C */	lfs f6, 0x1c(r30)
/* 80421834 0041E774  EC 97 D0 2A */	fadds f4, f23, f26
/* 80421838 0041E778  EC 1E 00 F2 */	fmuls f0, f30, f3
/* 8042183C 0041E77C  C0 FF 00 00 */	lfs f7, 0(r31)
/* 80421840 0041E780  EC 62 00 F2 */	fmuls f3, f2, f3
/* 80421844 0041E784  C1 1F 00 08 */	lfs f8, 8(r31)
/* 80421848 0041E788  EC B9 E0 2A */	fadds f5, f25, f28
/* 8042184C 0041E78C  EC 5F 01 FA */	fmadds f2, f31, f7, f0
/* 80421850 0041E790  EC 64 19 FA */	fmadds f3, f4, f7, f3
/* 80421854 0041E794  C0 9F 00 0C */	lfs f4, 0xc(r31)
/* 80421858 0041E798  EC C6 00 72 */	fmuls f6, f6, f1
/* 8042185C 0041E79C  C0 02 20 8C */	lfs f0, lbl_805203EC@sda21(r2)
/* 80421860 0041E7A0  EC 3D 12 3A */	fmadds f1, f29, f8, f2
/* 80421864 0041E7A4  EC 45 1A 3A */	fmadds f2, f5, f8, f3
/* 80421868 0041E7A8  EC 21 20 28 */	fsubs f1, f1, f4
/* 8042186C 0041E7AC  EC 42 20 28 */	fsubs f2, f2, f4
/* 80421870 0041E7B0  EC 26 08 2A */	fadds f1, f6, f1
/* 80421874 0041E7B4  EC 46 10 2A */	fadds f2, f6, f2
/* 80421878 0041E7B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042187C 0041E7BC  41 81 00 0C */	bgt .L_80421888
/* 80421880 0041E7C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80421884 0041E7C4  40 81 00 0C */	ble .L_80421890
.L_80421888:
/* 80421888 0041E7C8  38 60 00 00 */	li r3, 0
/* 8042188C 0041E7CC  48 00 00 08 */	b .L_80421894
.L_80421890:
/* 80421890 0041E7D0  38 60 00 01 */	li r3, 1
.L_80421894:
/* 80421894 0041E7D4  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 80421898 0041E7D8  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8042189C 0041E7DC  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 804218A0 0041E7E0  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 804218A4 0041E7E4  E3 A1 00 78 */	psq_l f29, 120(r1), 0, qr0
/* 804218A8 0041E7E8  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 804218AC 0041E7EC  E3 81 00 68 */	psq_l f28, 104(r1), 0, qr0
/* 804218B0 0041E7F0  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 804218B4 0041E7F4  E3 61 00 58 */	psq_l f27, 88(r1), 0, qr0
/* 804218B8 0041E7F8  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 804218BC 0041E7FC  E3 41 00 48 */	psq_l f26, 72(r1), 0, qr0
/* 804218C0 0041E800  CB 41 00 40 */	lfd f26, 0x40(r1)
/* 804218C4 0041E804  E3 21 00 38 */	psq_l f25, 56(r1), 0, qr0
/* 804218C8 0041E808  CB 21 00 30 */	lfd f25, 0x30(r1)
/* 804218CC 0041E80C  E3 01 00 28 */	psq_l f24, 40(r1), 0, qr0
/* 804218D0 0041E810  CB 01 00 20 */	lfd f24, 0x20(r1)
/* 804218D4 0041E814  E2 E1 00 18 */	psq_l f23, 24(r1), 0, qr0
/* 804218D8 0041E818  CA E1 00 10 */	lfd f23, 0x10(r1)
/* 804218DC 0041E81C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804218E0 0041E820  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804218E4 0041E824  83 C1 00 08 */	lwz r30, 8(r1)
/* 804218E8 0041E828  7C 08 03 A6 */	mtlr r0
/* 804218EC 0041E82C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804218F0 0041E830  4E 80 00 20 */	blr 

.global intersect__Q23Sys8CylinderFRCQ23Sys8TriangleRf
intersect__Q23Sys8CylinderFRCQ23Sys8TriangleRf:
/* 804218F4 0041E834  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 804218F8 0041E838  7C 08 02 A6 */	mflr r0
/* 804218FC 0041E83C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80421900 0041E840  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80421904 0041E844  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 80421908 0041E848  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8042190C 0041E84C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 80421910 0041E850  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80421914 0041E854  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 80421918 0041E858  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 8042191C 0041E85C  F3 81 00 78 */	psq_st f28, 120(r1), 0, qr0
/* 80421920 0041E860  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 80421924 0041E864  F3 61 00 68 */	psq_st f27, 104(r1), 0, qr0
/* 80421928 0041E868  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 8042192C 0041E86C  F3 41 00 58 */	psq_st f26, 88(r1), 0, qr0
/* 80421930 0041E870  DB 21 00 40 */	stfd f25, 0x40(r1)
/* 80421934 0041E874  F3 21 00 48 */	psq_st f25, 72(r1), 0, qr0
/* 80421938 0041E878  DB 01 00 30 */	stfd f24, 0x30(r1)
/* 8042193C 0041E87C  F3 01 00 38 */	psq_st f24, 56(r1), 0, qr0
/* 80421940 0041E880  DA E1 00 20 */	stfd f23, 0x20(r1)
/* 80421944 0041E884  F2 E1 00 28 */	psq_st f23, 40(r1), 0, qr0
/* 80421948 0041E888  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8042194C 0041E88C  7C 9C 23 78 */	mr r28, r4
/* 80421950 0041E890  7C 7B 1B 78 */	mr r27, r3
/* 80421954 0041E894  7C BD 2B 78 */	mr r29, r5
/* 80421958 0041E898  3B C0 00 00 */	li r30, 0
/* 8042195C 0041E89C  7F 9F E3 78 */	mr r31, r28
.L_80421960:
/* 80421960 0041E8A0  7F 63 DB 78 */	mr r3, r27
/* 80421964 0041E8A4  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80421968 0041E8A8  4B FF FD FD */	bl culled__Q23Sys8CylinderFRC5Plane
/* 8042196C 0041E8AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80421970 0041E8B0  41 82 00 0C */	beq .L_8042197C
/* 80421974 0041E8B4  38 60 00 00 */	li r3, 0
/* 80421978 0041E8B8  48 00 00 F8 */	b .L_80421A70
.L_8042197C:
/* 8042197C 0041E8BC  3B DE 00 01 */	addi r30, r30, 1
/* 80421980 0041E8C0  3B FF 00 10 */	addi r31, r31, 0x10
/* 80421984 0041E8C4  2C 1E 00 03 */	cmpwi r30, 3
/* 80421988 0041E8C8  41 80 FF D8 */	blt .L_80421960
/* 8042198C 0041E8CC  C0 7B 00 10 */	lfs f3, 0x10(r27)
/* 80421990 0041E8D0  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 80421994 0041E8D4  C0 42 20 88 */	lfs f2, lbl_805203E8@sda21(r2)
/* 80421998 0041E8D8  C0 3B 00 18 */	lfs f1, 0x18(r27)
/* 8042199C 0041E8DC  EC 03 00 32 */	fmuls f0, f3, f0
/* 804219A0 0041E8E0  C0 9B 00 0C */	lfs f4, 0xc(r27)
/* 804219A4 0041E8E4  EC A2 00 72 */	fmuls f5, f2, f1
/* 804219A8 0041E8E8  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 804219AC 0041E8EC  C0 5B 00 14 */	lfs f2, 0x14(r27)
/* 804219B0 0041E8F0  EC 04 00 7A */	fmadds f0, f4, f1, f0
/* 804219B4 0041E8F4  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 804219B8 0041E8F8  EF 82 01 72 */	fmuls f28, f2, f5
/* 804219BC 0041E8FC  C3 3B 00 08 */	lfs f25, 8(r27)
/* 804219C0 0041E900  EF 63 01 72 */	fmuls f27, f3, f5
/* 804219C4 0041E904  C3 1B 00 04 */	lfs f24, 4(r27)
/* 804219C8 0041E908  EF 44 01 72 */	fmuls f26, f4, f5
/* 804219CC 0041E90C  C2 FB 00 00 */	lfs f23, 0(r27)
/* 804219D0 0041E910  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 804219D4 0041E914  C0 02 20 90 */	lfs f0, lbl_805203F0@sda21(r2)
/* 804219D8 0041E918  EF B9 E0 28 */	fsubs f29, f25, f28
/* 804219DC 0041E91C  EF D8 D8 28 */	fsubs f30, f24, f27
/* 804219E0 0041E920  EF F7 D0 28 */	fsubs f31, f23, f26
/* 804219E4 0041E924  EC 21 00 7C */	fnmsubs f1, f1, f1, f0
/* 804219E8 0041E928  4B FE FE 1D */	bl pikmin2_sqrtf__Ff
/* 804219EC 0041E92C  EC 18 D8 2A */	fadds f0, f24, f27
/* 804219F0 0041E930  C0 5C 00 10 */	lfs f2, 0x10(r28)
/* 804219F4 0041E934  C0 DB 00 1C */	lfs f6, 0x1c(r27)
/* 804219F8 0041E938  EC 77 D0 2A */	fadds f3, f23, f26
/* 804219FC 0041E93C  EC 9E 00 B2 */	fmuls f4, f30, f2
/* 80421A00 0041E940  C0 FC 00 0C */	lfs f7, 0xc(r28)
/* 80421A04 0041E944  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80421A08 0041E948  C1 1C 00 14 */	lfs f8, 0x14(r28)
/* 80421A0C 0041E94C  EC BF 21 FA */	fmadds f5, f31, f7, f4
/* 80421A10 0041E950  C1 3C 00 18 */	lfs f9, 0x18(r28)
/* 80421A14 0041E954  EC 99 E0 2A */	fadds f4, f25, f28
/* 80421A18 0041E958  C0 02 20 8C */	lfs f0, lbl_805203EC@sda21(r2)
/* 80421A1C 0041E95C  EC 43 11 FA */	fmadds f2, f3, f7, f2
/* 80421A20 0041E960  EC 7D 2A 3A */	fmadds f3, f29, f8, f5
/* 80421A24 0041E964  EC A6 00 72 */	fmuls f5, f6, f1
/* 80421A28 0041E968  EC 24 12 3A */	fmadds f1, f4, f8, f2
/* 80421A2C 0041E96C  EC 43 48 28 */	fsubs f2, f3, f9
/* 80421A30 0041E970  EC 21 48 28 */	fsubs f1, f1, f9
/* 80421A34 0041E974  EC 42 28 28 */	fsubs f2, f2, f5
/* 80421A38 0041E978  EC 65 08 2A */	fadds f3, f5, f1
/* 80421A3C 0041E97C  EC 22 00 F2 */	fmuls f1, f2, f3
/* 80421A40 0041E980  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80421A44 0041E984  40 81 00 0C */	ble .L_80421A50
/* 80421A48 0041E988  38 60 00 00 */	li r3, 0
/* 80421A4C 0041E98C  48 00 00 24 */	b .L_80421A70
.L_80421A50:
/* 80421A50 0041E990  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80421A54 0041E994  40 80 00 10 */	bge .L_80421A64
/* 80421A58 0041E998  FC 00 10 50 */	fneg f0, f2
/* 80421A5C 0041E99C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80421A60 0041E9A0  48 00 00 0C */	b .L_80421A6C
.L_80421A64:
/* 80421A64 0041E9A4  FC 00 18 50 */	fneg f0, f3
/* 80421A68 0041E9A8  D0 1D 00 00 */	stfs f0, 0(r29)
.L_80421A6C:
/* 80421A6C 0041E9AC  38 60 00 01 */	li r3, 1
.L_80421A70:
/* 80421A70 0041E9B0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 80421A74 0041E9B4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80421A78 0041E9B8  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 80421A7C 0041E9BC  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80421A80 0041E9C0  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 80421A84 0041E9C4  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80421A88 0041E9C8  E3 81 00 78 */	psq_l f28, 120(r1), 0, qr0
/* 80421A8C 0041E9CC  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 80421A90 0041E9D0  E3 61 00 68 */	psq_l f27, 104(r1), 0, qr0
/* 80421A94 0041E9D4  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 80421A98 0041E9D8  E3 41 00 58 */	psq_l f26, 88(r1), 0, qr0
/* 80421A9C 0041E9DC  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 80421AA0 0041E9E0  E3 21 00 48 */	psq_l f25, 72(r1), 0, qr0
/* 80421AA4 0041E9E4  CB 21 00 40 */	lfd f25, 0x40(r1)
/* 80421AA8 0041E9E8  E3 01 00 38 */	psq_l f24, 56(r1), 0, qr0
/* 80421AAC 0041E9EC  CB 01 00 30 */	lfd f24, 0x30(r1)
/* 80421AB0 0041E9F0  E2 E1 00 28 */	psq_l f23, 40(r1), 0, qr0
/* 80421AB4 0041E9F4  CA E1 00 20 */	lfd f23, 0x20(r1)
/* 80421AB8 0041E9F8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80421ABC 0041E9FC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80421AC0 0041EA00  7C 08 03 A6 */	mtlr r0
/* 80421AC4 0041EA04  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80421AC8 0041EA08  4E 80 00 20 */	blr 