//Original:/proj/frio/dv/testcases/core/c_dsp32mac_pair_a1a0/c_dsp32mac_pair_a1a0.dsp
// Spec Reference: dsp32mac pair a1a0
# mach: bfin

.include "testutils.inc"
	start

	A1 = A0 = 0;

// The result accumulated in A       , and stored to a reg half
	imm32 r0, 0x63545abd;
	imm32 r1, 0x86bcfec7;
	imm32 r2, 0xa8645679;
	imm32 r3, 0x00860007;
	imm32 r4, 0xefb86569;
	imm32 r5, 0x1235860b;
	imm32 r6, 0x000c086d;
	imm32 r7, 0x678e0086;
	R7 = ( A1 += R1.L * R0.L ),  R6 = ( A0 = R1.L * R0.L );
	P1 = A1.w;
	P2 = A0.w;
	R1 = ( A1 = R2.L * R3.L ),  R0 = ( A0 = R2.H * R3.L );
	P3 = A1.w;
	P4 = A0.w;
	R3 = ( A1 = R7.L * R4.L ),  R2 = ( A0 += R7.H * R4.H );
	P5 = A1.w;
	SP = A0.w;
	R5 = ( A1 += R6.L * R5.L ),  R4 = ( A0 += R6.L * R5.H );
	FP = A1.w;
	CHECKREG r0, 0xFFFB3578;
	CHECKREG r1, 0x0004BA9E;
	CHECKREG r2, 0x00177258;
	CHECKREG r3, 0x17A3558C;
	CHECKREG r4, 0x0455E4F4;
	CHECKREG r5, 0xFB35EDF0;
	CHECKREG r6, 0xFF221DD6;
	CHECKREG r7, 0xFF221DD6;
	CHECKREG p1, 0xFF221DD6;
	CHECKREG p2, 0xFF221DD6;
	CHECKREG p3, 0x0004BA9E;
	CHECKREG p4, 0xFFFB3578;
	CHECKREG p5, 0x17A3558C;
	CHECKREG sp, 0x00177258;
	CHECKREG fp, 0xFB35EDF0;

	imm32 r0, 0x98764abd;
	imm32 r1, 0xa1bcf4c7;
	imm32 r2, 0xa1145649;
	imm32 r3, 0x00010005;
	imm32 r4, 0xefbc1569;
	imm32 r5, 0x1235010b;
	imm32 r6, 0x000c001d;
	imm32 r7, 0x678e0001;
	R5 = ( A1 += R1.L * R0.H ),  R4 = ( A0 = R1.L * R0.L );
	P1 = A1.w;
	P2 = A0.w;
	R1 = ( A1 = R2.L * R3.H ),  R0 = ( A0 -= R2.H * R3.L );
	P2 = A0.w;
	P3 = A1.w;
	P4 = A0.w;
	R3 = ( A1 -= R4.L * R5.H ),  R2 = ( A0 += R4.H * R5.H );
	P5 = A1.w;
	SP = A0.w;
	R1 = ( A1 += R6.L * R7.H ),  R0 = ( A0 += R6.L * R7.H );
	FP = A0.w;
	CHECKREG r0, 0xF955783E;
	CHECKREG r1, 0xFC03F6B2;
	CHECKREG r2, 0xF93E0212;
	CHECKREG r3, 0xFBEC8086;
	CHECKREG r4, 0xF97279D6;
	CHECKREG r5, 0x0449E564;
	CHECKREG r6, 0x000C001D;
	CHECKREG r7, 0x678E0001;
	CHECKREG p1, 0x0449E564;
	CHECKREG p2, 0xF9762F0E;
	CHECKREG p3, 0x0000AC92;
	CHECKREG p4, 0xF9762F0E;
	CHECKREG p5, 0xFBEC8086;
	CHECKREG sp, 0xF93E0212;
	CHECKREG fp, 0xF955783E;

	imm32 r0, 0x7136459d;
	imm32 r1, 0xabd69ec7;
	imm32 r2, 0x71145679;
	imm32 r3, 0x08010007;
	imm32 r4, 0xef9c1569;
	imm32 r5, 0x1225010b;
	imm32 r6, 0x0003401d;
	imm32 r7, 0x678e0561;
	R5 = ( A1 += R1.H * R0.L ),  R4 = ( A0 = R1.L * R0.L );
	P1 = A1.w;
	P2 = A0.w;
	R7 = ( A1 -= R2.H * R3.L ),  R6 = ( A0 -= R2.H * R3.L );
	P3 = A1.w;
	P4 = A0.w;
	R1 = ( A1 = R4.H * R5.L ),  R0 = ( A0 += R4.H * R5.H );
	P5 = A1.w;
	SP = A0.w;
	R5 = ( A1 += R6.H * R7.L ),  R4 = ( A0 += R6.L * R7.H );
	FP = A0.w;
	CHECKREG r0, 0xDFA7BA7E;
	CHECKREG r1, 0xF66CBF80;
	CHECKREG r2, 0x71145679;
	CHECKREG r3, 0x08010007;
	CHECKREG r4, 0xEF9AE3A2;
	CHECKREG r5, 0x004EF7CC;
	CHECKREG r6, 0xCB19D6FE;
	CHECKREG r7, 0xCE37E816;
	CHECKREG p1, 0xCE3E172E;
	CHECKREG p2, 0xCB200616;
	CHECKREG p3, 0xCE37E816;
	CHECKREG p5, 0xF66CBF80;
	CHECKREG p4, 0xCB19D6FE;
	CHECKREG sp, 0xDFA7BA7E;
	CHECKREG fp, 0xEF9AE3A2;

	imm32 r0, 0x123489bd;
	imm32 r1, 0x91bcfec7;
	imm32 r2, 0xa9145679;
	imm32 r3, 0xd0910007;
	imm32 r4, 0xedb91569;
	imm32 r5, 0xd235910b;
	imm32 r6, 0x0d0c0999;
	imm32 r7, 0x67de0009;
	R1 = ( A1 += R5.H * R3.H ),  R0 = ( A0 = R5.L * R3.L );
	P1 = A1.w;
	P2 = A0.w;
	R3 = ( A1 = R2.H * R1.H ),  R2 = ( A0 = R2.H * R1.L );
	P3 = A1.w;
	P4 = A0.w;
	R5 = ( A1 -= R7.H * R0.H ),  R4 = ( A0 += R7.H * R0.H );
	P5 = A1.w;
	SP = A0.w;
	R7 = ( A1 -= R4.H * R6.H ),  R6 = ( A0 -= R4.L * R6.H );
	FP = A0.w;
	CHECKREG r0, 0xFFF9EE9A;
	CHECKREG r1, 0x114737D6;
	CHECKREG r2, 0xDA154570;
	CHECKREG r3, 0xF4447118;
	CHECKREG r4, 0xDA0F974C;
	CHECKREG r5, 0xF44A1F3C;
	CHECKREG r6, 0xE4BBB02C;
	CHECKREG r7, 0xF82827D4;
	CHECKREG p1, 0x114737D6;
	CHECKREG p2, 0xFFF9EE9A;
	CHECKREG p3, 0xF4447118;
	CHECKREG p4, 0xDA154570;
	CHECKREG p5, 0xF44A1F3C;
	CHECKREG sp, 0xDA0F974C;
	CHECKREG fp, 0xE4BBB02C;

	pass