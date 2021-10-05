! Name of package being compiled: Thread
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
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
! Externally visible functions in this package
	.export	_P_Thread_InitializeScheduler
	.export	_P_Thread_Run
	.export	_P_Thread_PrintReadyList
	.export	_P_Thread_ThreadStartMain
	.export	_P_Thread_ThreadFinish
	.export	_P_Thread_FatalError
	.export	_P_Thread_SetInterruptsTo
	.export	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Thread_Thread
	.export	_Method_P_Thread_Thread_1
	.export	_Method_P_Thread_Thread_2
	.export	_Method_P_Thread_Thread_3
	.export	_Method_P_Thread_Thread_4
	.export	_Method_P_Thread_Thread_5
	.export	_Method_P_Thread_Thread_6
	.export	_Method_P_Thread_Thread_7
	.export	_Method_P_Thread_Thread_8
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
	.export	_P_Thread_readyList
	.export	_P_Thread_currentThread
	.export	_P_Thread_mainThread
	.export	_P_Thread_idleThread
	.export	_P_Thread_threadsToBeDestroyed
	.export	_P_Thread_currentInterruptStatus
_P_Thread_readyList:
	.skip	12
_P_Thread_currentThread:
	.skip	4
_P_Thread_mainThread:
	.skip	4092
_P_Thread_idleThread:
	.skip	4092
_P_Thread_threadsToBeDestroyed:
	.skip	12
_P_Thread_currentInterruptStatus:
	.skip	4
	.align
! String constants
_StringConst_42:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_41:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_40:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_39:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_38:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_37:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_36:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_35:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_34:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_33:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_32:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_31:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_30:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_29:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_28:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_27:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_26:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_25:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_24:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_23:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_22:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_21:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_20:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_19:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_18:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_17:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_16:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_15:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_14:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_13:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_12:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_11:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_10:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_9:
	.word	18			! length
	.ascii	"\" -- TERMINATING!\n"
	.align
_StringConst_8:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_7:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_6:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Thread.k\0"
_packageName:
	.ascii	"Thread\0"
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
_CheckVersion_P_Thread_:
	.export	_CheckVersion_P_Thread_
	set	0xcbdd1927,r4		! myHashVal = -874702553
	cmp	r3,r4
	be	_Label_45
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
_Label_45:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_46
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_46
_Label_46:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Thread_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_376:
	push	r0
	sub	r1,1,r1
	bne	_Label_376
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_47 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_47  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_readyList = zeros  (sizeInBytes=12)
	set	_P_Thread_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Thread_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_mainThread = zeros  (sizeInBytes=4092)
	set	_P_Thread_mainThread,r4
	mov	1023,r3
_Label_377:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_377
!   _P_Thread_mainThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_51 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_52 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_51  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_53 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-36]
!   _temp_54 = _temp_53 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_54 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_idleThread = zeros  (sizeInBytes=4092)
	set	_P_Thread_idleThread,r4
	mov	1023,r3
_Label_378:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_378
!   _P_Thread_idleThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_56 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_57 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_56  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_58 = _function_44_IdleFunction
	set	_function_44_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_59 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_58  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Thread_currentThread = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	set	_P_Thread_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	26,r13		! source line 26
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_60
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_61
	.word	-12
	.word	4
	.word	_Label_62
	.word	-16
	.word	4
	.word	_Label_63
	.word	-20
	.word	4
	.word	_Label_64
	.word	-24
	.word	4
	.word	_Label_65
	.word	-28
	.word	4
	.word	_Label_66
	.word	-32
	.word	4
	.word	_Label_67
	.word	-36
	.word	4
	.word	_Label_68
	.word	-40
	.word	4
	.word	_Label_69
	.word	-44
	.word	4
	.word	_Label_70
	.word	-48
	.word	4
	.word	_Label_71
	.word	-52
	.word	4
	.word	_Label_72
	.word	-56
	.word	4
	.word	_Label_73
	.word	-60
	.word	4
	.word	0
_Label_60:
	.ascii	"InitializeScheduler\0"
	.align
_Label_61:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_62:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_63:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_64:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_65:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_66:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_67:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_68:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_72:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_44_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_44_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_379:
	push	r0
	sub	r1,1,r1
	bne	_Label_379
	mov	31,r13		! source line 31
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0WH",r10
_Label_74:
!	_Label_75	jmp	_Label_75
_Label_75:
	mov	41,r13		! source line 41
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	42,r13		! source line 42
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0IF",r10
	mov	43,r13		! source line 43
	mov	"\0\0SE",r10
!   _temp_79 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_77 else goto _Label_78
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_78
	jmp	_Label_77
_Label_77:
! THEN...
	mov	44,r13		! source line 44
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	44,r13		! source line 44
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_80
_Label_78:
! ELSE...
	mov	46,r13		! source line 46
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! END IF...
_Label_80:
! END WHILE...
	jmp	_Label_74
_Label_76:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_44_IdleFunction:
	.word	_sourceFileName
	.word	_Label_81
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_82
	.word	8
	.word	4
	.word	_Label_83
	.word	-12
	.word	4
	.word	_Label_84
	.word	-16
	.word	4
	.word	0
_Label_81:
	.ascii	"IdleFunction\0"
	.align
_Label_82:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_84:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Thread_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_Run,r1
	push	r1
	mov	9,r1
_Label_380:
	push	r0
	sub	r1,1,r1
	bne	_Label_380
	mov	53,r13		! source line 53
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0AS",r10
!   prevThread = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-32]
! SEND STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0AS",r10
!   _P_Thread_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Thread_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_85 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_85 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0WH",r10
_Label_86:
	mov	77,r13		! source line 77
	mov	"\0\0SE",r10
!   _temp_90 = &_P_Thread_threadsToBeDestroyed
	set	_P_Thread_threadsToBeDestroyed,r1
	store	r1,[r14+-24]
!   Send message IsEmpty
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_89  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_89 then goto _Label_88 else goto _Label_87
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_87
	jmp	_Label_88
_Label_87:
	mov	77,r13		! source line 77
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0AS",r10
	mov	78,r13		! source line 78
	mov	"\0\0SE",r10
!   _temp_91 = &_P_Thread_threadsToBeDestroyed
	set	_P_Thread_threadsToBeDestroyed,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_92 = th + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_92 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-16],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_86
_Label_88:
! RETURN STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_Run:
	.word	_sourceFileName
	.word	_Label_93
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_94
	.word	8
	.word	4
	.word	_Label_95
	.word	-16
	.word	4
	.word	_Label_96
	.word	-20
	.word	4
	.word	_Label_97
	.word	-24
	.word	4
	.word	_Label_98
	.word	-9
	.word	1
	.word	_Label_99
	.word	-28
	.word	4
	.word	_Label_100
	.word	-32
	.word	4
	.word	_Label_101
	.word	-36
	.word	4
	.word	0
_Label_93:
	.ascii	"Run\0"
	.align
_Label_94:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_98:
	.byte	'C'
	.ascii	"_temp_89\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_100:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_101:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Thread_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_381:
	push	r0
	sub	r1,1,r1
	bne	_Label_381
	mov	85,r13		! source line 85
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_102 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_102  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	93,r13		! source line 93
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0SE",r10
!   _temp_103 = _function_43_ThreadPrint
	set	_function_43_ThreadPrint,r1
	store	r1,[r14+-16]
!   _temp_104 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_103  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	95,r13		! source line 95
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_105
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_106
	.word	-12
	.word	4
	.word	_Label_107
	.word	-16
	.word	4
	.word	_Label_108
	.word	-20
	.word	4
	.word	_Label_109
	.word	-24
	.word	4
	.word	0
_Label_105:
	.ascii	"PrintReadyList\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_109:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Thread_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_382:
	push	r0
	sub	r1,1,r1
	bne	_Label_382
	mov	100,r13		! source line 100
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0AS",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_110 = _P_Thread_currentThread + 80
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_110  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_112 = _P_Thread_currentThread + 84
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_111 = *_temp_112  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_111  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	114,r13		! source line 114
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	115,r13		! source line 115
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! CALL STATEMENT...
!   _temp_113 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_113  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! RETURN STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_114
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_115
	.word	-12
	.word	4
	.word	_Label_116
	.word	-16
	.word	4
	.word	_Label_117
	.word	-20
	.word	4
	.word	_Label_118
	.word	-24
	.word	4
	.word	_Label_119
	.word	-28
	.word	4
	.word	_Label_120
	.word	-32
	.word	4
	.word	0
_Label_114:
	.ascii	"ThreadStartMain\0"
	.align
_Label_115:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_117:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_118:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_119:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_120:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Thread_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_ThreadFinish,r1
	push	r1
	mov	4,r1
_Label_383:
	push	r0
	sub	r1,1,r1
	bne	_Label_383
	mov	121,r13		! source line 121
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	132,r13		! source line 132
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! SEND STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0SE",r10
!   _temp_121 = &_P_Thread_threadsToBeDestroyed
	set	_P_Thread_threadsToBeDestroyed,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! --------------------  DEBUG  --------------------
	mov	139,r13		! source line 139
	mov	"\0\0DE",r10
	debug
! RETURN STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_122
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_123
	.word	-12
	.word	4
	.word	_Label_124
	.word	-16
	.word	4
	.word	0
_Label_122:
	.ascii	"ThreadFinish\0"
	.align
_Label_123:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_124:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError  ===============
! 
_P_Thread_FatalError:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_FatalError,r1
	push	r1
	mov	8,r1
_Label_384:
	push	r0
	sub	r1,1,r1
	bne	_Label_384
	mov	144,r13		! source line 144
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   _temp_125 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_125  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	152,r13		! source line 152
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0IF",r10
!   if _P_Thread_currentThread == 0 then goto _Label_127		(int)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_127
!	_Label_126	jmp	_Label_126
_Label_126:
! THEN...
	mov	154,r13		! source line 154
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_128 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_128  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_130 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_129 = *_temp_130  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_129  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	155,r13		! source line 155
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_127:
! CALL STATEMENT...
!   _temp_131 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_131  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	157,r13		! source line 157
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	158,r13		! source line 158
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_132 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_132  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	159,r13		! source line 159
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	160,r13		! source line 160
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_FatalError:
	.word	_sourceFileName
	.word	_Label_133
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_134
	.word	8
	.word	4
	.word	_Label_135
	.word	-12
	.word	4
	.word	_Label_136
	.word	-16
	.word	4
	.word	_Label_137
	.word	-20
	.word	4
	.word	_Label_138
	.word	-24
	.word	4
	.word	_Label_139
	.word	-28
	.word	4
	.word	_Label_140
	.word	-32
	.word	4
	.word	_Label_141
	.word	-36
	.word	4
	.word	0
_Label_133:
	.ascii	"FatalError\0"
	.align
_Label_134:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_141:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Thread_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_385:
	push	r0
	sub	r1,1,r1
	bne	_Label_385
	mov	165,r13		! source line 165
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	179,r13		! source line 179
	mov	"\0\0AS",r10
!   oldStat = _P_Thread_currentInterruptStatus		(4 bytes)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_143		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_143
!	_Label_142	jmp	_Label_142
_Label_142:
! THEN...
	mov	181,r13		! source line 181
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_144
_Label_143:
! ELSE...
	mov	184,r13		! source line 184
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	185,r13		! source line 185
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_144:
! RETURN STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_145
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_146
	.word	8
	.word	4
	.word	_Label_147
	.word	-12
	.word	4
	.word	0
_Label_145:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_146:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_147:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Thread_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_386:
	push	r0
	sub	r1,1,r1
	bne	_Label_386
	mov	192,r13		! source line 192
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_148
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_148:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION ThreadPrint  ===============
! 
_function_43_ThreadPrint:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_43_ThreadPrint,r1
	push	r1
	mov	17,r1
_Label_387:
	push	r0
	sub	r1,1,r1
	bne	_Label_387
	mov	210,r13		! source line 210
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	217,r13		! source line 217
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   _temp_149 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_149  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	218,r13		! source line 218
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_151 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-60]
!   Data Move: _temp_150 = *_temp_151  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_150  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	219,r13		! source line 219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_152 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_152  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	220,r13		! source line 220
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	221,r13		! source line 221
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_161 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-48]
!   Data Move: _temp_160 = *_temp_161  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Branch to the right case label
	load	[r14+-52],r1
	cmp	r1,1
	be	_Label_155
	cmp	r1,2
	be	_Label_156
	cmp	r1,3
	be	_Label_157
	cmp	r1,4
	be	_Label_158
	cmp	r1,5
	be	_Label_159
	jmp	_Label_153
! CASE 1...
_Label_155:
! CALL STATEMENT...
!   _temp_162 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_162  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	223,r13		! source line 223
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0BR",r10
	jmp	_Label_154
! CASE 2...
_Label_156:
! CALL STATEMENT...
!   _temp_163 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_163  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	226,r13		! source line 226
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0BR",r10
	jmp	_Label_154
! CASE 3...
_Label_157:
! CALL STATEMENT...
!   _temp_164 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_164  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	229,r13		! source line 229
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0BR",r10
	jmp	_Label_154
! CASE 4...
_Label_158:
! CALL STATEMENT...
!   _temp_165 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_165  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	232,r13		! source line 232
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0BR",r10
	jmp	_Label_154
! CASE 5...
_Label_159:
! CALL STATEMENT...
!   _temp_166 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_166  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	235,r13		! source line 235
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0BR",r10
	jmp	_Label_154
! DEFAULT CASE...
_Label_153:
! CALL STATEMENT...
!   _temp_167 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_167  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_154:
! CALL STATEMENT...
!   _temp_168 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_168  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_169 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_169  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	241,r13		! source line 241
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_170 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_170  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_43_ThreadPrint:
	.word	_sourceFileName
	.word	_Label_171
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_172
	.word	8
	.word	4
	.word	_Label_173
	.word	-12
	.word	4
	.word	_Label_174
	.word	-16
	.word	4
	.word	_Label_175
	.word	-20
	.word	4
	.word	_Label_176
	.word	-24
	.word	4
	.word	_Label_177
	.word	-28
	.word	4
	.word	_Label_178
	.word	-32
	.word	4
	.word	_Label_179
	.word	-36
	.word	4
	.word	_Label_180
	.word	-40
	.word	4
	.word	_Label_181
	.word	-44
	.word	4
	.word	_Label_182
	.word	-48
	.word	4
	.word	_Label_183
	.word	-52
	.word	4
	.word	_Label_184
	.word	-56
	.word	4
	.word	_Label_185
	.word	-60
	.word	4
	.word	_Label_186
	.word	-64
	.word	4
	.word	_Label_187
	.word	-68
	.word	4
	.word	_Label_188
	.word	-72
	.word	4
	.word	0
_Label_171:
	.ascii	"ThreadPrint\0"
	.align
_Label_172:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_188:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Thread_Thread:
	.word	_Label_189
	jmp	_Method_P_Thread_Thread_1	! 4:	setPriority
	jmp	_Method_P_Thread_Thread_2	! 8:	getPriority
	jmp	_Method_P_Thread_Thread_3	! 12:	Init
	jmp	_Method_P_Thread_Thread_4	! 16:	Fork
	jmp	_Method_P_Thread_Thread_5	! 20:	Yield
	jmp	_Method_P_Thread_Thread_6	! 24:	Sleep
	jmp	_Method_P_Thread_Thread_7	! 28:	CheckOverflow
	jmp	_Method_P_Thread_Thread_8	! 32:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_189:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_190
	.word	_sourceFileName
	.word	36		! line number
	.word	4092		! size of instances, in bytes
	.word	_P_Thread_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_190:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD setPriority  ===============
! 
_Method_P_Thread_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_1,r1
	push	r1
	mov	256,r13		! source line 256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_1:
	.word	_sourceFileName
	.word	_Label_191
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_192
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_193
	.word	12
	.word	4
	.word	0
_Label_191:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"setPriority\0"
	.align
_Label_192:
	.ascii	"Pself\0"
	.align
_Label_193:
	.byte	'I'
	.ascii	"n\0"
	.align
! 
! ===============  METHOD getPriority  ===============
! 
_Method_P_Thread_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_2,r1
	push	r1
	mov	262,r13		! source line 262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_2:
	.word	_sourceFileName
	.word	_Label_194
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_195
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_194:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"getPriority\0"
	.align
_Label_195:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Thread_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_3,r1
	push	r1
	mov	25,r1
_Label_388:
	push	r0
	sub	r1,1,r1
	bne	_Label_388
	mov	268,r13		! source line 268
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0AS",r10
!   _temp_196 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_196) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_196 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-108],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0AS",r10
!   _temp_197 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-104]
!   Move address of _temp_197 [0 ] into _temp_198
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Data Move: *_temp_198 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0AS",r10
!   _temp_199 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-96]
!   Move address of _temp_199 [999 ] into _temp_200
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Data Move: *_temp_200 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	279,r13		! source line 279
	mov	"\0\0AS",r10
!   _temp_201 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-88]
!   Move address of _temp_201 [999 ] into _temp_202
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   stackTop = _temp_202		(4 bytes)
	load	[r14+-84],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0AS",r10
!   _temp_203 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   NEW ARRAY Constructor...
!   _temp_205 = &_temp_204
	add	r14,-76,r1
	store	r1,[r14+-20]
!   _temp_205 = _temp_205 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	13,r1
	store	r1,[r14+-16]
_Label_207:
!   Data Move: *_temp_205 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_205 = _temp_205 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_206 = _temp_206 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_206) then goto _Label_207
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_207
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-76]
!   _temp_208 = &_temp_204
	add	r14,-76,r1
	store	r1,[r14+-12]
!   make sure array has size 13
	load	[r14+-80],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_389
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_389:
!   make sure array has size 13
	load	[r14+-12],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_203 = *_temp_208  (sizeInBytes=56)
	load	[r14+-12],r5
	load	[r14+-80],r4
	mov	14,r3
_Label_390:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_390
! RETURN STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_3:
	.word	_sourceFileName
	.word	_Label_209
	.word	8		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_210
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_211
	.word	12
	.word	4
	.word	_Label_212
	.word	-12
	.word	4
	.word	_Label_213
	.word	-16
	.word	4
	.word	_Label_214
	.word	-20
	.word	4
	.word	_Label_215
	.word	-76
	.word	56
	.word	_Label_216
	.word	-80
	.word	4
	.word	_Label_217
	.word	-84
	.word	4
	.word	_Label_218
	.word	-88
	.word	4
	.word	_Label_219
	.word	-92
	.word	4
	.word	_Label_220
	.word	-96
	.word	4
	.word	_Label_221
	.word	-100
	.word	4
	.word	_Label_222
	.word	-104
	.word	4
	.word	_Label_223
	.word	-108
	.word	4
	.word	0
_Label_209:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_210:
	.ascii	"Pself\0"
	.align
_Label_211:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Thread_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_4,r1
	push	r1
	mov	7,r1
_Label_391:
	push	r0
	sub	r1,1,r1
	bne	_Label_391
	mov	285,r13		! source line 285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	296,r13		! source line 296
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_224 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_224  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_226 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_225  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	304,r13		! source line 304
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_4:
	.word	_sourceFileName
	.word	_Label_227
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_228
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_229
	.word	12
	.word	4
	.word	_Label_230
	.word	16
	.word	4
	.word	_Label_231
	.word	-12
	.word	4
	.word	_Label_232
	.word	-16
	.word	4
	.word	_Label_233
	.word	-20
	.word	4
	.word	_Label_234
	.word	-24
	.word	4
	.word	_Label_235
	.word	-28
	.word	4
	.word	0
_Label_227:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_228:
	.ascii	"Pself\0"
	.align
_Label_229:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_230:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_234:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_235:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Thread_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_5,r1
	push	r1
	mov	11,r1
_Label_392:
	push	r0
	sub	r1,1,r1
	bne	_Label_392
	mov	309,r13		! source line 309
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_238 == _P_Thread_currentThread then goto _Label_237		(int)
	load	[r14+-32],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_237
!	_Label_236	jmp	_Label_236
_Label_236:
! THEN...
	mov	326,r13		! source line 326
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_239 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	326,r13		! source line 326
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_237:
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	328,r13		! source line 328
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
	mov	332,r13		! source line 332
	mov	"\0\0SE",r10
!   _temp_240 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_242		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_242
!	_Label_241	jmp	_Label_241
_Label_241:
! THEN...
	mov	337,r13		! source line 337
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_244		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_244
!	_Label_243	jmp	_Label_243
_Label_243:
! THEN...
	mov	338,r13		! source line 338
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_245 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_245  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	338,r13		! source line 338
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_244:
! ASSIGNMENT STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_247 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_246  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	342,r13		! source line 342
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! END IF...
_Label_242:
! ASSIGNMENT STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	344,r13		! source line 344
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_5:
	.word	_sourceFileName
	.word	_Label_248
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_249
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_250
	.word	-12
	.word	4
	.word	_Label_251
	.word	-16
	.word	4
	.word	_Label_252
	.word	-20
	.word	4
	.word	_Label_253
	.word	-24
	.word	4
	.word	_Label_254
	.word	-28
	.word	4
	.word	_Label_255
	.word	-32
	.word	4
	.word	_Label_256
	.word	-36
	.word	4
	.word	_Label_257
	.word	-40
	.word	4
	.word	_Label_258
	.word	-44
	.word	4
	.word	0
_Label_248:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_249:
	.ascii	"Pself\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_256:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_257:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_258:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Thread_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_6,r1
	push	r1
	mov	7,r1
_Label_393:
	push	r0
	sub	r1,1,r1
	bne	_Label_393
	mov	349,r13		! source line 349
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0IF",r10
!   if _P_Thread_currentInterruptStatus == 2 then goto _Label_260		(int)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_260
!	_Label_259	jmp	_Label_259
_Label_259:
! THEN...
	mov	362,r13		! source line 362
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_261 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_261  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	362,r13		! source line 362
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_260:
! IF STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_264 == _P_Thread_currentThread then goto _Label_263		(int)
	load	[r14+-24],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_263
!	_Label_262	jmp	_Label_262
_Label_262:
! THEN...
	mov	366,r13		! source line 366
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_265 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_265  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	366,r13		! source line 366
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_263:
! ASSIGNMENT STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0AS",r10
	mov	372,r13		! source line 372
	mov	"\0\0SE",r10
!   _temp_266 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_267
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_267
	jmp	_Label_268
_Label_267:
! THEN...
	mov	374,r13		! source line 374
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_269 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_269  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	374,r13		! source line 374
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_268:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	376,r13		! source line 376
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! RETURN STATEMENT...
	mov	376,r13		! source line 376
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_6:
	.word	_sourceFileName
	.word	_Label_270
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_271
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_272
	.word	-12
	.word	4
	.word	_Label_273
	.word	-16
	.word	4
	.word	_Label_274
	.word	-20
	.word	4
	.word	_Label_275
	.word	-24
	.word	4
	.word	_Label_276
	.word	-28
	.word	4
	.word	_Label_277
	.word	-32
	.word	4
	.word	0
_Label_270:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_271:
	.ascii	"Pself\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_277:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Thread_Thread_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_7,r1
	push	r1
	mov	9,r1
_Label_394:
	push	r0
	sub	r1,1,r1
	bne	_Label_394
	mov	381,r13		! source line 381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0IF",r10
!   _temp_281 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_281 [0 ] into _temp_282
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_280 = *_temp_282  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_280 == 606348324 then goto _Label_279		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_279
!	_Label_278	jmp	_Label_278
_Label_278:
! THEN...
	mov	388,r13		! source line 388
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_283 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	388,r13		! source line 388
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
	jmp	_Label_284
_Label_279:
! ELSE...
	mov	389,r13		! source line 389
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
!   _temp_288 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_288 [999 ] into _temp_289
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_287 = *_temp_289  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_287 == 606348324 then goto _Label_286		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_286
!	_Label_285	jmp	_Label_285
_Label_285:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_290 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	390,r13		! source line 390
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_286:
! END IF...
_Label_284:
! RETURN STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_7:
	.word	_sourceFileName
	.word	_Label_291
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_292
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_293
	.word	-12
	.word	4
	.word	_Label_294
	.word	-16
	.word	4
	.word	_Label_295
	.word	-20
	.word	4
	.word	_Label_296
	.word	-24
	.word	4
	.word	_Label_297
	.word	-28
	.word	4
	.word	_Label_298
	.word	-32
	.word	4
	.word	_Label_299
	.word	-36
	.word	4
	.word	_Label_300
	.word	-40
	.word	4
	.word	0
_Label_291:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_292:
	.ascii	"Pself\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Thread_Thread_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_8,r1
	push	r1
	mov	34,r1
_Label_395:
	push	r0
	sub	r1,1,r1
	bne	_Label_395
	mov	396,r13		! source line 396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! CALL STATEMENT...
!   _temp_301 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	403,r13		! source line 403
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	404,r13		! source line 404
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_302 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	405,r13		! source line 405
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_303  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	406,r13		! source line 406
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_304 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	407,r13		! source line 407
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_305 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	408,r13		! source line 408
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_310 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
!   Calculate and save the FOR-LOOP ending value
!   _temp_311 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-104]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_310  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+-132]
_Label_306:
!   Perform the FOR-LOOP termination test
!   if i > _temp_311 then goto _Label_309		
	load	[r14+-132],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_309
_Label_307:
	mov	409,r13		! source line 409
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_312 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_313 = i + 2		(int)
	load	[r14+-132],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	411,r13		! source line 411
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_314 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	412,r13		! source line 412
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_316 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Move address of _temp_316 [i ] into _temp_317
!     make sure index expr is >= 0
	load	[r14+-132],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Data Move: _temp_315 = *_temp_317  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	413,r13		! source line 413
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_318 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	414,r13		! source line 414
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_320 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Move address of _temp_320 [i ] into _temp_321
!     make sure index expr is >= 0
	load	[r14+-132],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Data Move: _temp_319 = *_temp_321  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_322 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	416,r13		! source line 416
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_308:
!   i = i + 1
	load	[r14+-132],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
	jmp	_Label_306
! END FOR
_Label_309:
! CALL STATEMENT...
!   _temp_323 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-56]
!   _temp_324 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_324  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	418,r13		! source line 418
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_325 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-48]
!   _temp_327 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-40]
!   Move address of _temp_327 [0 ] into _temp_328
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_326 = _temp_328		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_326  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	419,r13		! source line 419
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	420,r13		! source line 420
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_331
	cmp	r1,2
	be	_Label_332
	cmp	r1,3
	be	_Label_333
	cmp	r1,4
	be	_Label_334
	cmp	r1,5
	be	_Label_335
	jmp	_Label_329
! CASE 1...
_Label_331:
! CALL STATEMENT...
!   _temp_336 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	422,r13		! source line 422
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0BR",r10
	jmp	_Label_330
! CASE 2...
_Label_332:
! CALL STATEMENT...
!   _temp_337 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0BR",r10
	jmp	_Label_330
! CASE 3...
_Label_333:
! CALL STATEMENT...
!   _temp_338 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0BR",r10
	jmp	_Label_330
! CASE 4...
_Label_334:
! CALL STATEMENT...
!   _temp_339 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_330
! CASE 5...
_Label_335:
! CALL STATEMENT...
!   _temp_340 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0BR",r10
	jmp	_Label_330
! DEFAULT CASE...
_Label_329:
! CALL STATEMENT...
!   _temp_341 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_330:
! ASSIGNMENT STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! RETURN STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0RE",r10
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_8:
	.word	_sourceFileName
	.word	_Label_342
	.word	4		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_343
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_344
	.word	-12
	.word	4
	.word	_Label_345
	.word	-16
	.word	4
	.word	_Label_346
	.word	-20
	.word	4
	.word	_Label_347
	.word	-24
	.word	4
	.word	_Label_348
	.word	-28
	.word	4
	.word	_Label_349
	.word	-32
	.word	4
	.word	_Label_350
	.word	-36
	.word	4
	.word	_Label_351
	.word	-40
	.word	4
	.word	_Label_352
	.word	-44
	.word	4
	.word	_Label_353
	.word	-48
	.word	4
	.word	_Label_354
	.word	-52
	.word	4
	.word	_Label_355
	.word	-56
	.word	4
	.word	_Label_356
	.word	-60
	.word	4
	.word	_Label_357
	.word	-64
	.word	4
	.word	_Label_358
	.word	-68
	.word	4
	.word	_Label_359
	.word	-72
	.word	4
	.word	_Label_360
	.word	-76
	.word	4
	.word	_Label_361
	.word	-80
	.word	4
	.word	_Label_362
	.word	-84
	.word	4
	.word	_Label_363
	.word	-88
	.word	4
	.word	_Label_364
	.word	-92
	.word	4
	.word	_Label_365
	.word	-96
	.word	4
	.word	_Label_366
	.word	-100
	.word	4
	.word	_Label_367
	.word	-104
	.word	4
	.word	_Label_368
	.word	-108
	.word	4
	.word	_Label_369
	.word	-112
	.word	4
	.word	_Label_370
	.word	-116
	.word	4
	.word	_Label_371
	.word	-120
	.word	4
	.word	_Label_372
	.word	-124
	.word	4
	.word	_Label_373
	.word	-128
	.word	4
	.word	_Label_374
	.word	-132
	.word	4
	.word	_Label_375
	.word	-136
	.word	4
	.word	0
_Label_342:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_343:
	.ascii	"Pself\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_374:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_375:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
