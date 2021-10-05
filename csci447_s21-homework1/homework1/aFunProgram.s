! Name of package being compiled: aFunProgram
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	printDouble
	.import	GetCh
	.import	_P_System_nl
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLMemoryInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
_Global_c:
	.skip	4
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xb11804f8,r3		! .  hashVal = -1323825928
	call	_CheckVersion_P_aFunProgram_	! .
	cmp	r1,0			! .
	be	_Label_2		! .
	ret				! .
_Label_2:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"aFunProgram.k\0"
_packageName:
	.ascii	"aFunProgram\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_aFunProgram_:
	.export	_CheckVersion_P_aFunProgram_
	set	0xb11804f8,r4		! myHashVal = -1323825928
	cmp	r3,r4
	be	_Label_3
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_3:
	mov	0,r1
! Make sure _P_System_ has hash value 0x5cf92220 (decimal 1559831072)
	set	_packageName,r2
	set	0x5cf92220,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_4
_Label_4:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	2,r1
_Label_23:
	push	r0
	sub	r1,1,r1
	bne	_Label_23
	mov	8,r13		! source line 8
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	9,r13		! source line 9
	mov	"\0\0AS",r10
!   _Global_c = 0		(4 bytes)
	mov	0,r1
	set	_Global_c,r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	10,r13		! source line 10
	mov	"\0\0WH",r10
_Label_5:
!	_Label_6	jmp	_Label_6
_Label_6:
	mov	10,r13		! source line 10
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   Call the function
	mov	12,r13		! source line 12
	mov	"\0\0CE",r10
	call	GetCh
!   Retrieve Result: targetName=_temp_8  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=_temp_8  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	12,r13		! source line 12
	mov	"\0\0CA",r10
	call	_function_1_foo
! ASSIGNMENT STATEMENT...
	mov	14,r13		! source line 14
	mov	"\0\0AS",r10
!   _Global_c = _Global_c + 1		(int)
	set	_Global_c,r1
	load	[r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_c,r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_5
_Label_7:
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_9
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_10
	.word	-9
	.word	1
	.word	0
_Label_9:
	.ascii	"main\0"
	.align
_Label_10:
	.byte	'C'
	.ascii	"_temp_8\0"
	.align
! 
! ===============  FUNCTION foo  ===============
! 
_function_1_foo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_1_foo,r1
	push	r1
	mov	2,r1
_Label_24:
	push	r0
	sub	r1,1,r1
	bne	_Label_24
	mov	18,r13		! source line 18
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0IF",r10
!   if intIsZero (_Global_c) then goto _Label_11
	set	_Global_c,r1
	load	[r1],r1
	cmp	r1,r0
	be	_Label_11
	jmp	_Label_12
_Label_11:
! THEN...
	mov	20,r13		! source line 20
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0IF",r10
!   _temp_15 = x XOR 113		(bool)
	loadb	[r14+8],r1
	mov	113,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_15 then goto _Label_14 else goto _Label_13
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_13
	jmp	_Label_14
_Label_13:
! THEN...
	mov	21,r13		! source line 21
	mov	"\0\0TN",r10
! --------------------  DEBUG  --------------------
	mov	21,r13		! source line 21
	mov	"\0\0DE",r10
	debug
! END IF...
_Label_14:
! END IF...
_Label_12:
! IF STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0IF",r10
!   _temp_18 = x XOR 10		(bool)
	loadb	[r14+8],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_18 then goto _Label_17 else goto _Label_16
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_16
	jmp	_Label_17
_Label_16:
! THEN...
	mov	26,r13		! source line 26
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _Global_c = -1		(4 bytes)
	mov	-1,r1
	set	_Global_c,r2
	store	r1,[r2]
! END IF...
_Label_17:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=x  sizeInBytes=1
	loadb	[r14+8],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	29,r13		! source line 29
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_1_foo:
	.word	_sourceFileName
	.word	_Label_19
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_20
	.word	8
	.word	1
	.word	_Label_21
	.word	-9
	.word	1
	.word	_Label_22
	.word	-10
	.word	1
	.word	0
_Label_19:
	.ascii	"foo\0"
	.align
_Label_20:
	.byte	'C'
	.ascii	"x\0"
	.align
_Label_21:
	.byte	'C'
	.ascii	"_temp_18\0"
	.align
_Label_22:
	.byte	'C'
	.ascii	"_temp_15\0"
	.align
