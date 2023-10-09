´´´
-------------------
-------------------
CODIGO EN C DE COMO ESCRIBIR 10 NUEMEROS SUMARLOS Y OBTENER EL PROMEDIO
-------------------
-------------------
#include <stdio.h>  // Including the standard input-output header file for functions like printf.
 
/**
 * Calculates the average of an array of numbers.
 *
 * @param numbers: An array of numbers.
 * @param size: The size of the array.
 * @return: The average of the numbers.
 */
double calculateAverage(int numbers[], int size) {
    int sum = 0;
    for (int i = 0; i < size; i++) {
        sum += numbers[i];
    }
    return (double) sum / size;
}
 
int main() {
    int numbers[10];  // Array to store the 10 numbers.
    printf("Enter 10 numbers:\n");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &numbers[i]);  // Reading each number from the user.
    }
    double average = calculateAverage(numbers, 10);
    printf("Average: %f\n", average);
    return 0;
}
´´´

Disassembly of section .init:

00010330 <_init>:
   10330:	e92d4008 	push	{r3, lr}
   10334:	eb000026 	bl	103d4 <call_weak_fn>
   10338:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

0001033c <.plt>:
   1033c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10340:	e59fe004 	ldr	lr, [pc, #4]	; 1034c <.plt+0x10>
   10344:	e08fe00e 	add	lr, pc, lr
   10348:	e5bef008 	ldr	pc, [lr, #8]!
   1034c:	00010cb4 	.word	0x00010cb4

00010350 <printf@plt>:
   10350:	e28fc600 	add	ip, pc, #0, 12
   10354:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10358:	e5bcfcb4 	ldr	pc, [ip, #3252]!	; 0xcb4

0001035c <puts@plt>:
   1035c:	e28fc600 	add	ip, pc, #0, 12
   10360:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10364:	e5bcfcac 	ldr	pc, [ip, #3244]!	; 0xcac

00010368 <__libc_start_main@plt>:
   10368:	e28fc600 	add	ip, pc, #0, 12
   1036c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10370:	e5bcfca4 	ldr	pc, [ip, #3236]!	; 0xca4

00010374 <__gmon_start__@plt>:
   10374:	e28fc600 	add	ip, pc, #0, 12
   10378:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1037c:	e5bcfc9c 	ldr	pc, [ip, #3228]!	; 0xc9c

00010380 <__isoc99_scanf@plt>:
   10380:	e28fc600 	add	ip, pc, #0, 12
   10384:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10388:	e5bcfc94 	ldr	pc, [ip, #3220]!	; 0xc94

0001038c <abort@plt>:
   1038c:	e28fc600 	add	ip, pc, #0, 12
   10390:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10394:	e5bcfc8c 	ldr	pc, [ip, #3212]!	; 0xc8c

Disassembly of section .text:

00010398 <_start>:
   10398:	e3a0b000 	mov	fp, #0
   1039c:	e3a0e000 	mov	lr, #0
   103a0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   103a4:	e1a0200d 	mov	r2, sp
   103a8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   103ac:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   103b0:	e59fc010 	ldr	ip, [pc, #16]	; 103c8 <_start+0x30>
   103b4:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   103b8:	e59f000c 	ldr	r0, [pc, #12]	; 103cc <_start+0x34>
   103bc:	e59f300c 	ldr	r3, [pc, #12]	; 103d0 <_start+0x38>
   103c0:	ebffffe8 	bl	10368 <__libc_start_main@plt>
   103c4:	ebfffff0 	bl	1038c <abort@plt>
   103c8:	0001060c 	.word	0x0001060c
   103cc:	0001051c 	.word	0x0001051c
   103d0:	000105ac 	.word	0x000105ac

000103d4 <call_weak_fn>:
   103d4:	e59f3014 	ldr	r3, [pc, #20]	; 103f0 <call_weak_fn+0x1c>
   103d8:	e59f2014 	ldr	r2, [pc, #20]	; 103f4 <call_weak_fn+0x20>
   103dc:	e08f3003 	add	r3, pc, r3
   103e0:	e7932002 	ldr	r2, [r3, r2]
   103e4:	e3520000 	cmp	r2, #0
   103e8:	012fff1e 	bxeq	lr
   103ec:	eaffffe0 	b	10374 <__gmon_start__@plt>
   103f0:	00010c1c 	.word	0x00010c1c
   103f4:	00000024 	.word	0x00000024

000103f8 <deregister_tm_clones>:
   103f8:	e59f0018 	ldr	r0, [pc, #24]	; 10418 <deregister_tm_clones+0x20>
   103fc:	e59f3018 	ldr	r3, [pc, #24]	; 1041c <deregister_tm_clones+0x24>
   10400:	e1530000 	cmp	r3, r0
   10404:	012fff1e 	bxeq	lr
   10408:	e59f3010 	ldr	r3, [pc, #16]	; 10420 <deregister_tm_clones+0x28>
   1040c:	e3530000 	cmp	r3, #0
   10410:	012fff1e 	bxeq	lr
   10414:	e12fff13 	bx	r3
   10418:	00021030 	.word	0x00021030
   1041c:	00021030 	.word	0x00021030
   10420:	00000000 	.word	0x00000000

00010424 <register_tm_clones>:
   10424:	e59f0024 	ldr	r0, [pc, #36]	; 10450 <register_tm_clones+0x2c>
   10428:	e59f1024 	ldr	r1, [pc, #36]	; 10454 <register_tm_clones+0x30>
   1042c:	e0411000 	sub	r1, r1, r0
   10430:	e1a01141 	asr	r1, r1, #2
   10434:	e0811fa1 	add	r1, r1, r1, lsr #31
   10438:	e1b010c1 	asrs	r1, r1, #1
   1043c:	012fff1e 	bxeq	lr
   10440:	e59f3010 	ldr	r3, [pc, #16]	; 10458 <register_tm_clones+0x34>
   10444:	e3530000 	cmp	r3, #0
   10448:	012fff1e 	bxeq	lr
   1044c:	e12fff13 	bx	r3
   10450:	00021030 	.word	0x00021030
   10454:	00021030 	.word	0x00021030
   10458:	00000000 	.word	0x00000000

0001045c <__do_global_dtors_aux>:
   1045c:	e92d4010 	push	{r4, lr}
   10460:	e59f4018 	ldr	r4, [pc, #24]	; 10480 <__do_global_dtors_aux+0x24>
   10464:	e5d43000 	ldrb	r3, [r4]
   10468:	e3530000 	cmp	r3, #0
   1046c:	18bd8010 	popne	{r4, pc}
   10470:	ebffffe0 	bl	103f8 <deregister_tm_clones>
   10474:	e3a03001 	mov	r3, #1
   10478:	e5c43000 	strb	r3, [r4]
   1047c:	e8bd8010 	pop	{r4, pc}
   10480:	00021030 	.word	0x00021030

00010484 <frame_dummy>:
   10484:	eaffffe6 	b	10424 <register_tm_clones>

00010488 <calculateAverage>:
   10488:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1048c:	e28db000 	add	fp, sp, #0
   10490:	e24dd014 	sub	sp, sp, #20
   10494:	e50b0010 	str	r0, [fp, #-16]
   10498:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   1049c:	e3a03000 	mov	r3, #0
   104a0:	e50b3008 	str	r3, [fp, #-8]
   104a4:	e3a03000 	mov	r3, #0
   104a8:	e50b300c 	str	r3, [fp, #-12]
   104ac:	ea00000a 	b	104dc <calculateAverage+0x54>
   104b0:	e51b300c 	ldr	r3, [fp, #-12]
   104b4:	e1a03103 	lsl	r3, r3, #2
   104b8:	e51b2010 	ldr	r2, [fp, #-16]
   104bc:	e0823003 	add	r3, r2, r3
   104c0:	e5933000 	ldr	r3, [r3]
   104c4:	e51b2008 	ldr	r2, [fp, #-8]
   104c8:	e0823003 	add	r3, r2, r3
   104cc:	e50b3008 	str	r3, [fp, #-8]
   104d0:	e51b300c 	ldr	r3, [fp, #-12]
   104d4:	e2833001 	add	r3, r3, #1
   104d8:	e50b300c 	str	r3, [fp, #-12]
   104dc:	e51b200c 	ldr	r2, [fp, #-12]
   104e0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   104e4:	e1520003 	cmp	r2, r3
   104e8:	bafffff0 	blt	104b0 <calculateAverage+0x28>
   104ec:	e51b3008 	ldr	r3, [fp, #-8]
   104f0:	ee073a90 	vmov	s15, r3
   104f4:	eeb86be7 	vcvt.f64.s32	d6, s15
   104f8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   104fc:	ee073a90 	vmov	s15, r3
   10500:	eeb87be7 	vcvt.f64.s32	d7, s15
   10504:	ee865b07 	vdiv.f64	d5, d6, d7
   10508:	eeb07b45 	vmov.f64	d7, d5
   1050c:	eeb00b47 	vmov.f64	d0, d7
   10510:	e28bd000 	add	sp, fp, #0
   10514:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   10518:	e12fff1e 	bx	lr

0001051c <main>:
   1051c:	e92d4800 	push	{fp, lr}
   10520:	e28db004 	add	fp, sp, #4
   10524:	e24dd038 	sub	sp, sp, #56	; 0x38
   10528:	e59f0070 	ldr	r0, [pc, #112]	; 105a0 <main+0x84>
   1052c:	ebffff8a 	bl	1035c <puts@plt>
   10530:	e3a03000 	mov	r3, #0
   10534:	e50b3008 	str	r3, [fp, #-8]
   10538:	ea000009 	b	10564 <main+0x48>
   1053c:	e24b203c 	sub	r2, fp, #60	; 0x3c
   10540:	e51b3008 	ldr	r3, [fp, #-8]
   10544:	e1a03103 	lsl	r3, r3, #2
   10548:	e0823003 	add	r3, r2, r3
   1054c:	e1a01003 	mov	r1, r3
   10550:	e59f004c 	ldr	r0, [pc, #76]	; 105a4 <main+0x88>
   10554:	ebffff89 	bl	10380 <__isoc99_scanf@plt>
   10558:	e51b3008 	ldr	r3, [fp, #-8]
   1055c:	e2833001 	add	r3, r3, #1
   10560:	e50b3008 	str	r3, [fp, #-8]
   10564:	e51b3008 	ldr	r3, [fp, #-8]
   10568:	e3530009 	cmp	r3, #9
   1056c:	dafffff2 	ble	1053c <main+0x20>
   10570:	e24b303c 	sub	r3, fp, #60	; 0x3c
   10574:	e3a0100a 	mov	r1, #10
   10578:	e1a00003 	mov	r0, r3
   1057c:	ebffffc1 	bl	10488 <calculateAverage>
   10580:	ed0b0b05 	vstr	d0, [fp, #-20]	; 0xffffffec
   10584:	e14b21d4 	ldrd	r2, [fp, #-20]	; 0xffffffec
   10588:	e59f0018 	ldr	r0, [pc, #24]	; 105a8 <main+0x8c>
   1058c:	ebffff6f 	bl	10350 <printf@plt>
   10590:	e3a03000 	mov	r3, #0
   10594:	e1a00003 	mov	r0, r3
   10598:	e24bd004 	sub	sp, fp, #4
   1059c:	e8bd8800 	pop	{fp, pc}
   105a0:	0001061c 	.word	0x0001061c
   105a4:	00010630 	.word	0x00010630
   105a8:	00010634 	.word	0x00010634

000105ac <__libc_csu_init>:
   105ac:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   105b0:	e1a07000 	mov	r7, r0
   105b4:	e59f6048 	ldr	r6, [pc, #72]	; 10604 <__libc_csu_init+0x58>
   105b8:	e59f5048 	ldr	r5, [pc, #72]	; 10608 <__libc_csu_init+0x5c>
   105bc:	e08f6006 	add	r6, pc, r6
   105c0:	e08f5005 	add	r5, pc, r5
   105c4:	e0466005 	sub	r6, r6, r5
   105c8:	e1a08001 	mov	r8, r1
   105cc:	e1a09002 	mov	r9, r2
   105d0:	ebffff56 	bl	10330 <_init>
   105d4:	e1b06146 	asrs	r6, r6, #2
   105d8:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   105dc:	e3a04000 	mov	r4, #0
   105e0:	e2844001 	add	r4, r4, #1
   105e4:	e4953004 	ldr	r3, [r5], #4
   105e8:	e1a02009 	mov	r2, r9
   105ec:	e1a01008 	mov	r1, r8
   105f0:	e1a00007 	mov	r0, r7
   105f4:	e12fff33 	blx	r3
   105f8:	e1560004 	cmp	r6, r4
   105fc:	1afffff7 	bne	105e0 <__libc_csu_init+0x34>
   10600:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10604:	00010950 	.word	0x00010950
   10608:	00010948 	.word	0x00010948

0001060c <__libc_csu_fini>:
   1060c:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010610 <_fini>:
   10610:	e92d4008 	push	{r3, lr}
   10614:	e8bd8008 	pop	{r3, pc}
