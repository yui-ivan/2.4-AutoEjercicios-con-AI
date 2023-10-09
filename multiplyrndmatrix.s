´´´

------------
------------
Codigo que genera dos matrices aleatorias y las multiplica en C
------------
------------

#include <stdio.h>   // Including the standard input-output header file for functions like printf.
#include <stdlib.h>  // Including the standard library header for functions like malloc and srand.
#include <time.h>    // Including the time header for generating random numbers.

/**
 * Multiplies two matrices and stores the result in a third matrix.
 *
 * @param matrix1: The first matrix.
 * @param rows1: The number of rows in the first matrix.
 * @param cols1: The number of columns in the first matrix.
 * @param matrix2: The second matrix.
 * @param rows2: The number of rows in the second matrix.
 * @param cols2: The number of columns in the second matrix.
 * @param result: The matrix to store the result of the multiplication.
 * @return: 1 if the multiplication is successful, 0 otherwise.
 */
int multiplyMatrix(const int* matrix1, int rows1, int cols1, const int* matrix2, int rows2, int cols2, int* result) {
    if (cols1 != rows2) {  // Checking if the matrices can be multiplied.
        printf("The number of columns in the first matrix should be equal to the number of rows in the second matrix.\n");
        return 0;
    }

    for (int i = 0; i < rows1; i++) {
        for (int j = 0; j < cols2; j++) {
            int sum = 0;
            for (int k = 0; k < cols1; k++) {
                sum += matrix1[i * cols1 + k] * matrix2[k * cols2 + j];
            }
            result[i * cols2 + j] = sum;
        }
    }

    return 1;  // Returning 1 to indicate successful multiplication.
}

/**
 * Prints a matrix.
 *
 * @param matrix: The matrix to print.
 * @param rows: The number of rows in the matrix.
 * @param cols: The number of columns in the matrix.
 */
void printMatrix(const int* matrix, int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printf("%d ", matrix[i * cols + j]);
        }
        printf("\n");
    }
}

/**
 * Generates a random matrix with the specified number of rows and columns.
 *
 * @param rows: The number of rows in the matrix.
 * @param cols: The number of columns in the matrix.
 * @return: A pointer to the generated matrix.
 */
int* generateRandomMatrix(int rows, int cols) {
    int* matrix = (int*) malloc(rows * cols * sizeof(int));

    if (matrix == NULL) {  // Checking for unsuccessful memory allocation.
        printf("Memory allocation failed.\n");
        exit(EXIT_FAILURE);  // Exiting the program with a failure status.
    }

    srand(time(NULL));  // Initializing the random number generator with the current time.

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            matrix[i * cols + j] = rand() % 10;  // Generating a random number between 0 and 9.
        }
    }

    return matrix;  // Returning the generated matrix.
}

// Usage example for multiplyMatrix and generateRandomMatrix

int main() {
    int rows1 = 3;
    int cols1 = 2;
    int rows2 = 2;
    int cols2 = 4;

    int* matrix1 = generateRandomMatrix(rows1, cols1);
    int* matrix2 = generateRandomMatrix(rows2, cols2);
    int* result = (int*) malloc(rows1 * cols2 * sizeof(int));

    if (result == NULL) {  // Checking for unsuccessful memory allocation.
        printf("Memory allocation failed.\n");
        exit(EXIT_FAILURE);  // Exiting the program with a failure status.
    }

    printf("Matrix 1:\n");
    printMatrix(matrix1, rows1, cols1);
    printf("\nMatrix 2:\n");
    printMatrix(matrix2, rows2, cols2);

    if (multiplyMatrix(matrix1, rows1, cols1, matrix2, rows2, cols2, result)) {
        printf("\nResult:\n");
        printMatrix(result, rows1, cols2);
    }

    // Remember to free allocated memory to avoid memory leaks
    free(matrix1);
    free(matrix2);
    free(result);

    return 0;
}
´´´
000103e4 <_init>:
   103e4:	e92d4008 	push	{r3, lr}
   103e8:	eb000038 	bl	104d0 <call_weak_fn>
   103ec:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

000103f0 <.plt>:
   103f0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   103f4:	e59fe004 	ldr	lr, [pc, #4]	; 10400 <.plt+0x10>
   103f8:	e08fe00e 	add	lr, pc, lr
   103fc:	e5bef008 	ldr	pc, [lr, #8]!
   10400:	00010c00 	.word	0x00010c00

00010404 <printf@plt>:
   10404:	e28fc600 	add	ip, pc, #0, 12
   10408:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1040c:	e5bcfc00 	ldr	pc, [ip, #3072]!	; 0xc00

00010410 <free@plt>:
   10410:	e28fc600 	add	ip, pc, #0, 12
   10414:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10418:	e5bcfbf8 	ldr	pc, [ip, #3064]!	; 0xbf8

0001041c <time@plt>:
   1041c:	e28fc600 	add	ip, pc, #0, 12
   10420:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10424:	e5bcfbf0 	ldr	pc, [ip, #3056]!	; 0xbf0

00010428 <puts@plt>:
   10428:	e28fc600 	add	ip, pc, #0, 12
   1042c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10430:	e5bcfbe8 	ldr	pc, [ip, #3048]!	; 0xbe8

00010434 <malloc@plt>:
   10434:	e28fc600 	add	ip, pc, #0, 12
   10438:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1043c:	e5bcfbe0 	ldr	pc, [ip, #3040]!	; 0xbe0

00010440 <__libc_start_main@plt>:
   10440:	e28fc600 	add	ip, pc, #0, 12
   10444:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10448:	e5bcfbd8 	ldr	pc, [ip, #3032]!	; 0xbd8

0001044c <__gmon_start__@plt>:
   1044c:	e28fc600 	add	ip, pc, #0, 12
   10450:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10454:	e5bcfbd0 	ldr	pc, [ip, #3024]!	; 0xbd0

00010458 <exit@plt>:
   10458:	e28fc600 	add	ip, pc, #0, 12
   1045c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10460:	e5bcfbc8 	ldr	pc, [ip, #3016]!	; 0xbc8

00010464 <srand@plt>:
   10464:	e28fc600 	add	ip, pc, #0, 12
   10468:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1046c:	e5bcfbc0 	ldr	pc, [ip, #3008]!	; 0xbc0

00010470 <putchar@plt>:
   10470:	e28fc600 	add	ip, pc, #0, 12
   10474:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10478:	e5bcfbb8 	ldr	pc, [ip, #3000]!	; 0xbb8

0001047c <rand@plt>:
   1047c:	e28fc600 	add	ip, pc, #0, 12
   10480:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10484:	e5bcfbb0 	ldr	pc, [ip, #2992]!	; 0xbb0

00010488 <abort@plt>:
   10488:	e28fc600 	add	ip, pc, #0, 12
   1048c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10490:	e5bcfba8 	ldr	pc, [ip, #2984]!	; 0xba8

Disassembly of section .text:

00010494 <_start>:
   10494:	e3a0b000 	mov	fp, #0
   10498:	e3a0e000 	mov	lr, #0
   1049c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   104a0:	e1a0200d 	mov	r2, sp
   104a4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   104a8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   104ac:	e59fc010 	ldr	ip, [pc, #16]	; 104c4 <_start+0x30>
   104b0:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   104b4:	e59f000c 	ldr	r0, [pc, #12]	; 104c8 <_start+0x34>
   104b8:	e59f300c 	ldr	r3, [pc, #12]	; 104cc <_start+0x38>
   104bc:	ebffffdf 	bl	10440 <__libc_start_main@plt>
   104c0:	ebfffff0 	bl	10488 <abort@plt>
   104c4:	00010a44 	.word	0x00010a44
   104c8:	000108a4 	.word	0x000108a4
   104cc:	000109e4 	.word	0x000109e4

000104d0 <call_weak_fn>:
   104d0:	e59f3014 	ldr	r3, [pc, #20]	; 104ec <call_weak_fn+0x1c>
   104d4:	e59f2014 	ldr	r2, [pc, #20]	; 104f0 <call_weak_fn+0x20>
   104d8:	e08f3003 	add	r3, pc, r3
   104dc:	e7932002 	ldr	r2, [r3, r2]
   104e0:	e3520000 	cmp	r2, #0
   104e4:	012fff1e 	bxeq	lr
   104e8:	eaffffd7 	b	1044c <__gmon_start__@plt>
   104ec:	00010b20 	.word	0x00010b20
   104f0:	0000003c 	.word	0x0000003c

000104f4 <deregister_tm_clones>:
   104f4:	e59f0018 	ldr	r0, [pc, #24]	; 10514 <deregister_tm_clones+0x20>
   104f8:	e59f3018 	ldr	r3, [pc, #24]	; 10518 <deregister_tm_clones+0x24>
   104fc:	e1530000 	cmp	r3, r0
   10500:	012fff1e 	bxeq	lr
   10504:	e59f3010 	ldr	r3, [pc, #16]	; 1051c <deregister_tm_clones+0x28>
   10508:	e3530000 	cmp	r3, #0
   1050c:	012fff1e 	bxeq	lr
   10510:	e12fff13 	bx	r3
   10514:	00021048 	.word	0x00021048
   10518:	00021048 	.word	0x00021048
   1051c:	00000000 	.word	0x00000000

00010520 <register_tm_clones>:
   10520:	e59f0024 	ldr	r0, [pc, #36]	; 1054c <register_tm_clones+0x2c>
   10524:	e59f1024 	ldr	r1, [pc, #36]	; 10550 <register_tm_clones+0x30>
   10528:	e0411000 	sub	r1, r1, r0
   1052c:	e1a01141 	asr	r1, r1, #2
   10530:	e0811fa1 	add	r1, r1, r1, lsr #31
   10534:	e1b010c1 	asrs	r1, r1, #1
   10538:	012fff1e 	bxeq	lr
   1053c:	e59f3010 	ldr	r3, [pc, #16]	; 10554 <register_tm_clones+0x34>
   10540:	e3530000 	cmp	r3, #0
   10544:	012fff1e 	bxeq	lr
   10548:	e12fff13 	bx	r3
   1054c:	00021048 	.word	0x00021048
   10550:	00021048 	.word	0x00021048
   10554:	00000000 	.word	0x00000000

00010558 <__do_global_dtors_aux>:
   10558:	e92d4010 	push	{r4, lr}
   1055c:	e59f4018 	ldr	r4, [pc, #24]	; 1057c <__do_global_dtors_aux+0x24>
   10560:	e5d43000 	ldrb	r3, [r4]
   10564:	e3530000 	cmp	r3, #0
   10568:	18bd8010 	popne	{r4, pc}
   1056c:	ebffffe0 	bl	104f4 <deregister_tm_clones>
   10570:	e3a03001 	mov	r3, #1
   10574:	e5c43000 	strb	r3, [r4]
   10578:	e8bd8010 	pop	{r4, pc}
   1057c:	00021048 	.word	0x00021048

00010580 <frame_dummy>:
   10580:	eaffffe6 	b	10520 <register_tm_clones>

00010584 <multiplyMatrix>:
   10584:	e92d4800 	push	{fp, lr}
   10588:	e28db004 	add	fp, sp, #4
   1058c:	e24dd020 	sub	sp, sp, #32
   10590:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   10594:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   10598:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
   1059c:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
   105a0:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
   105a4:	e59b3004 	ldr	r3, [fp, #4]
   105a8:	e1520003 	cmp	r2, r3
   105ac:	0a000003 	beq	105c0 <multiplyMatrix+0x3c>
   105b0:	e59f0118 	ldr	r0, [pc, #280]	; 106d0 <multiplyMatrix+0x14c>
   105b4:	ebffff9b 	bl	10428 <puts@plt>
   105b8:	e3a03000 	mov	r3, #0
   105bc:	ea000040 	b	106c4 <multiplyMatrix+0x140>
   105c0:	e3a03000 	mov	r3, #0
   105c4:	e50b3008 	str	r3, [fp, #-8]
   105c8:	ea000038 	b	106b0 <multiplyMatrix+0x12c>
   105cc:	e3a03000 	mov	r3, #0
   105d0:	e50b300c 	str	r3, [fp, #-12]
   105d4:	ea00002e 	b	10694 <multiplyMatrix+0x110>
   105d8:	e3a03000 	mov	r3, #0
   105dc:	e50b3010 	str	r3, [fp, #-16]
   105e0:	e3a03000 	mov	r3, #0
   105e4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   105e8:	ea000018 	b	10650 <multiplyMatrix+0xcc>
   105ec:	e51b3008 	ldr	r3, [fp, #-8]
   105f0:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
   105f4:	e0020392 	mul	r2, r2, r3
   105f8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   105fc:	e0823003 	add	r3, r2, r3
   10600:	e1a03103 	lsl	r3, r3, #2
   10604:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   10608:	e0823003 	add	r3, r2, r3
   1060c:	e5933000 	ldr	r3, [r3]
   10610:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   10614:	e59b1008 	ldr	r1, [fp, #8]
   10618:	e0010291 	mul	r1, r1, r2
   1061c:	e51b200c 	ldr	r2, [fp, #-12]
   10620:	e0812002 	add	r2, r1, r2
   10624:	e1a02102 	lsl	r2, r2, #2
   10628:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
   1062c:	e0812002 	add	r2, r1, r2
   10630:	e5922000 	ldr	r2, [r2]
   10634:	e0030392 	mul	r3, r2, r3
   10638:	e51b2010 	ldr	r2, [fp, #-16]
   1063c:	e0823003 	add	r3, r2, r3
   10640:	e50b3010 	str	r3, [fp, #-16]
   10644:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10648:	e2833001 	add	r3, r3, #1
   1064c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10650:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   10654:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10658:	e1520003 	cmp	r2, r3
   1065c:	baffffe2 	blt	105ec <multiplyMatrix+0x68>
   10660:	e51b3008 	ldr	r3, [fp, #-8]
   10664:	e59b2008 	ldr	r2, [fp, #8]
   10668:	e0020392 	mul	r2, r2, r3
   1066c:	e51b300c 	ldr	r3, [fp, #-12]
   10670:	e0823003 	add	r3, r2, r3
   10674:	e1a03103 	lsl	r3, r3, #2
   10678:	e59b200c 	ldr	r2, [fp, #12]
   1067c:	e0823003 	add	r3, r2, r3
   10680:	e51b2010 	ldr	r2, [fp, #-16]
   10684:	e5832000 	str	r2, [r3]
   10688:	e51b300c 	ldr	r3, [fp, #-12]
   1068c:	e2833001 	add	r3, r3, #1
   10690:	e50b300c 	str	r3, [fp, #-12]
   10694:	e51b200c 	ldr	r2, [fp, #-12]
   10698:	e59b3008 	ldr	r3, [fp, #8]
   1069c:	e1520003 	cmp	r2, r3
   106a0:	baffffcc 	blt	105d8 <multiplyMatrix+0x54>
   106a4:	e51b3008 	ldr	r3, [fp, #-8]
   106a8:	e2833001 	add	r3, r3, #1
   106ac:	e50b3008 	str	r3, [fp, #-8]
   106b0:	e51b2008 	ldr	r2, [fp, #-8]
   106b4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   106b8:	e1520003 	cmp	r2, r3
   106bc:	baffffc2 	blt	105cc <multiplyMatrix+0x48>
   106c0:	e3a03001 	mov	r3, #1
   106c4:	e1a00003 	mov	r0, r3
   106c8:	e24bd004 	sub	sp, fp, #4
   106cc:	e8bd8800 	pop	{fp, pc}
   106d0:	00010a54 	.word	0x00010a54

000106d4 <printMatrix>:
   106d4:	e92d4800 	push	{fp, lr}
   106d8:	e28db004 	add	fp, sp, #4
   106dc:	e24dd018 	sub	sp, sp, #24
   106e0:	e50b0010 	str	r0, [fp, #-16]
   106e4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   106e8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
   106ec:	e3a03000 	mov	r3, #0
   106f0:	e50b3008 	str	r3, [fp, #-8]
   106f4:	ea00001a 	b	10764 <printMatrix+0x90>
   106f8:	e3a03000 	mov	r3, #0
   106fc:	e50b300c 	str	r3, [fp, #-12]
   10700:	ea00000e 	b	10740 <printMatrix+0x6c>
   10704:	e51b3008 	ldr	r3, [fp, #-8]
   10708:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   1070c:	e0020392 	mul	r2, r2, r3
   10710:	e51b300c 	ldr	r3, [fp, #-12]
   10714:	e0823003 	add	r3, r2, r3
   10718:	e1a03103 	lsl	r3, r3, #2
   1071c:	e51b2010 	ldr	r2, [fp, #-16]
   10720:	e0823003 	add	r3, r2, r3
   10724:	e5933000 	ldr	r3, [r3]
   10728:	e1a01003 	mov	r1, r3
   1072c:	e59f004c 	ldr	r0, [pc, #76]	; 10780 <printMatrix+0xac>
   10730:	ebffff33 	bl	10404 <printf@plt>
   10734:	e51b300c 	ldr	r3, [fp, #-12]
   10738:	e2833001 	add	r3, r3, #1
   1073c:	e50b300c 	str	r3, [fp, #-12]
   10740:	e51b200c 	ldr	r2, [fp, #-12]
   10744:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10748:	e1520003 	cmp	r2, r3
   1074c:	baffffec 	blt	10704 <printMatrix+0x30>
   10750:	e3a0000a 	mov	r0, #10
   10754:	ebffff45 	bl	10470 <putchar@plt>
   10758:	e51b3008 	ldr	r3, [fp, #-8]
   1075c:	e2833001 	add	r3, r3, #1
   10760:	e50b3008 	str	r3, [fp, #-8]
   10764:	e51b2008 	ldr	r2, [fp, #-8]
   10768:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1076c:	e1520003 	cmp	r2, r3
   10770:	baffffe0 	blt	106f8 <printMatrix+0x24>
   10774:	e1a00000 	nop			; (mov r0, r0)
   10778:	e24bd004 	sub	sp, fp, #4
   1077c:	e8bd8800 	pop	{fp, pc}
   10780:	00010abc 	.word	0x00010abc

00010784 <generateRandomMatrix>:
   10784:	e92d4800 	push	{fp, lr}
   10788:	e28db004 	add	fp, sp, #4
   1078c:	e24dd018 	sub	sp, sp, #24
   10790:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   10794:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   10798:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   1079c:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
   107a0:	e0030392 	mul	r3, r2, r3
   107a4:	e1a03103 	lsl	r3, r3, #2
   107a8:	e1a00003 	mov	r0, r3
   107ac:	ebffff20 	bl	10434 <malloc@plt>
   107b0:	e1a03000 	mov	r3, r0
   107b4:	e50b3010 	str	r3, [fp, #-16]
   107b8:	e51b3010 	ldr	r3, [fp, #-16]
   107bc:	e3530000 	cmp	r3, #0
   107c0:	1a000003 	bne	107d4 <generateRandomMatrix+0x50>
   107c4:	e59f00d0 	ldr	r0, [pc, #208]	; 1089c <generateRandomMatrix+0x118>
   107c8:	ebffff16 	bl	10428 <puts@plt>
   107cc:	e3a00001 	mov	r0, #1
   107d0:	ebffff20 	bl	10458 <exit@plt>
   107d4:	e3a00000 	mov	r0, #0
   107d8:	ebffff0f 	bl	1041c <time@plt>
   107dc:	e1a03000 	mov	r3, r0
   107e0:	e1a00003 	mov	r0, r3
   107e4:	ebffff1e 	bl	10464 <srand@plt>
   107e8:	e3a03000 	mov	r3, #0
   107ec:	e50b3008 	str	r3, [fp, #-8]
   107f0:	ea000021 	b	1087c <generateRandomMatrix+0xf8>
   107f4:	e3a03000 	mov	r3, #0
   107f8:	e50b300c 	str	r3, [fp, #-12]
   107fc:	ea000017 	b	10860 <generateRandomMatrix+0xdc>
   10800:	ebffff1d 	bl	1047c <rand@plt>
   10804:	e1a01000 	mov	r1, r0
   10808:	e51b3008 	ldr	r3, [fp, #-8]
   1080c:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
   10810:	e0020392 	mul	r2, r2, r3
   10814:	e51b300c 	ldr	r3, [fp, #-12]
   10818:	e0823003 	add	r3, r2, r3
   1081c:	e1a03103 	lsl	r3, r3, #2
   10820:	e51b2010 	ldr	r2, [fp, #-16]
   10824:	e0820003 	add	r0, r2, r3
   10828:	e59f3070 	ldr	r3, [pc, #112]	; 108a0 <generateRandomMatrix+0x11c>
   1082c:	e0c32193 	smull	r2, r3, r3, r1
   10830:	e1a02143 	asr	r2, r3, #2
   10834:	e1a03fc1 	asr	r3, r1, #31
   10838:	e0422003 	sub	r2, r2, r3
   1083c:	e1a03002 	mov	r3, r2
   10840:	e1a03103 	lsl	r3, r3, #2
   10844:	e0833002 	add	r3, r3, r2
   10848:	e1a03083 	lsl	r3, r3, #1
   1084c:	e0412003 	sub	r2, r1, r3
   10850:	e5802000 	str	r2, [r0]
   10854:	e51b300c 	ldr	r3, [fp, #-12]
   10858:	e2833001 	add	r3, r3, #1
   1085c:	e50b300c 	str	r3, [fp, #-12]
   10860:	e51b200c 	ldr	r2, [fp, #-12]
   10864:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10868:	e1520003 	cmp	r2, r3
   1086c:	baffffe3 	blt	10800 <generateRandomMatrix+0x7c>
   10870:	e51b3008 	ldr	r3, [fp, #-8]
   10874:	e2833001 	add	r3, r3, #1
   10878:	e50b3008 	str	r3, [fp, #-8]
   1087c:	e51b2008 	ldr	r2, [fp, #-8]
   10880:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10884:	e1520003 	cmp	r2, r3
   10888:	baffffd9 	blt	107f4 <generateRandomMatrix+0x70>
   1088c:	e51b3010 	ldr	r3, [fp, #-16]
   10890:	e1a00003 	mov	r0, r3
   10894:	e24bd004 	sub	sp, fp, #4
   10898:	e8bd8800 	pop	{fp, pc}
   1089c:	00010ac0 	.word	0x00010ac0
   108a0:	66666667 	.word	0x66666667

000108a4 <main>:
   108a4:	e92d4800 	push	{fp, lr}
   108a8:	e28db004 	add	fp, sp, #4
   108ac:	e24dd030 	sub	sp, sp, #48	; 0x30
   108b0:	e3a03003 	mov	r3, #3
   108b4:	e50b3008 	str	r3, [fp, #-8]
   108b8:	e3a03002 	mov	r3, #2
   108bc:	e50b300c 	str	r3, [fp, #-12]
   108c0:	e3a03002 	mov	r3, #2
   108c4:	e50b3010 	str	r3, [fp, #-16]
   108c8:	e3a03004 	mov	r3, #4
   108cc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   108d0:	e51b100c 	ldr	r1, [fp, #-12]
   108d4:	e51b0008 	ldr	r0, [fp, #-8]
   108d8:	ebffffa9 	bl	10784 <generateRandomMatrix>
   108dc:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   108e0:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
   108e4:	e51b0010 	ldr	r0, [fp, #-16]
   108e8:	ebffffa5 	bl	10784 <generateRandomMatrix>
   108ec:	e50b001c 	str	r0, [fp, #-28]	; 0xffffffe4
   108f0:	e51b3008 	ldr	r3, [fp, #-8]
   108f4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   108f8:	e0030392 	mul	r3, r2, r3
   108fc:	e1a03103 	lsl	r3, r3, #2
   10900:	e1a00003 	mov	r0, r3
   10904:	ebfffeca 	bl	10434 <malloc@plt>
   10908:	e1a03000 	mov	r3, r0
   1090c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
   10910:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10914:	e3530000 	cmp	r3, #0
   10918:	1a000003 	bne	1092c <main+0x88>
   1091c:	e59f00b0 	ldr	r0, [pc, #176]	; 109d4 <main+0x130>
   10920:	ebfffec0 	bl	10428 <puts@plt>
   10924:	e3a00001 	mov	r0, #1
   10928:	ebfffeca 	bl	10458 <exit@plt>
   1092c:	e59f00a4 	ldr	r0, [pc, #164]	; 109d8 <main+0x134>
   10930:	ebfffebc 	bl	10428 <puts@plt>
   10934:	e51b200c 	ldr	r2, [fp, #-12]
   10938:	e51b1008 	ldr	r1, [fp, #-8]
   1093c:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
   10940:	ebffff63 	bl	106d4 <printMatrix>
   10944:	e59f0090 	ldr	r0, [pc, #144]	; 109dc <main+0x138>
   10948:	ebfffeb6 	bl	10428 <puts@plt>
   1094c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   10950:	e51b1010 	ldr	r1, [fp, #-16]
   10954:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
   10958:	ebffff5d 	bl	106d4 <printMatrix>
   1095c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   10960:	e58d3008 	str	r3, [sp, #8]
   10964:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10968:	e58d3004 	str	r3, [sp, #4]
   1096c:	e51b3010 	ldr	r3, [fp, #-16]
   10970:	e58d3000 	str	r3, [sp]
   10974:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10978:	e51b200c 	ldr	r2, [fp, #-12]
   1097c:	e51b1008 	ldr	r1, [fp, #-8]
   10980:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
   10984:	ebfffefe 	bl	10584 <multiplyMatrix>
   10988:	e1a03000 	mov	r3, r0
   1098c:	e3530000 	cmp	r3, #0
   10990:	0a000005 	beq	109ac <main+0x108>
   10994:	e59f0044 	ldr	r0, [pc, #68]	; 109e0 <main+0x13c>
   10998:	ebfffea2 	bl	10428 <puts@plt>
   1099c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   109a0:	e51b1008 	ldr	r1, [fp, #-8]
   109a4:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
   109a8:	ebffff49 	bl	106d4 <printMatrix>
   109ac:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
   109b0:	ebfffe96 	bl	10410 <free@plt>
   109b4:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
   109b8:	ebfffe94 	bl	10410 <free@plt>
   109bc:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
   109c0:	ebfffe92 	bl	10410 <free@plt>
   109c4:	e3a03000 	mov	r3, #0
   109c8:	e1a00003 	mov	r0, r3
   109cc:	e24bd004 	sub	sp, fp, #4
   109d0:	e8bd8800 	pop	{fp, pc}
   109d4:	00010ac0 	.word	0x00010ac0
   109d8:	00010adc 	.word	0x00010adc
   109dc:	00010ae8 	.word	0x00010ae8
   109e0:	00010af4 	.word	0x00010af4

000109e4 <__libc_csu_init>:
   109e4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   109e8:	e1a07000 	mov	r7, r0
   109ec:	e59f6048 	ldr	r6, [pc, #72]	; 10a3c <__libc_csu_init+0x58>
   109f0:	e59f5048 	ldr	r5, [pc, #72]	; 10a40 <__libc_csu_init+0x5c>
   109f4:	e08f6006 	add	r6, pc, r6
   109f8:	e08f5005 	add	r5, pc, r5
   109fc:	e0466005 	sub	r6, r6, r5
   10a00:	e1a08001 	mov	r8, r1
   10a04:	e1a09002 	mov	r9, r2
   10a08:	ebfffe75 	bl	103e4 <_init>
   10a0c:	e1b06146 	asrs	r6, r6, #2
   10a10:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10a14:	e3a04000 	mov	r4, #0
   10a18:	e2844001 	add	r4, r4, #1
   10a1c:	e4953004 	ldr	r3, [r5], #4
   10a20:	e1a02009 	mov	r2, r9
   10a24:	e1a01008 	mov	r1, r8
   10a28:	e1a00007 	mov	r0, r7
   10a2c:	e12fff33 	blx	r3
   10a30:	e1560004 	cmp	r6, r4
   10a34:	1afffff7 	bne	10a18 <__libc_csu_init+0x34>
   10a38:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10a3c:	00010518 	.word	0x00010518
   10a40:	00010510 	.word	0x00010510

00010a44 <__libc_csu_fini>:
   10a44:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010a48 <_fini>:
   10a48:	e92d4008 	push	{r3, lr}
   10a4c:	e8bd8008 	pop	{r3, pc}
