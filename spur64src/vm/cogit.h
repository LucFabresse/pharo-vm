/* Automatically generated by
	CCodeGenerator VMMaker.oscog-eem.1630 uuid: 2ed025ea-f400-4440-8e8b-5aa46d06c9ab
 */


/*** Function Prototypes ***/


#if !PRODUCTION && defined(PlatformNoDbgRegParms)
# define NoDbgRegParms PlatformNoDbgRegParms
#endif

#if !defined(NoDbgRegParms)
# define NoDbgRegParms /*empty*/
#endif



#if !defined(NeverInline)
# define NeverInline /*empty*/
#endif

extern sqInt abortOffset(void);
extern void addCogMethodsToHeapMap(void);
extern sqInt bytecodePCForstartBcpcin(sqInt mcpc, sqInt startbcpc, CogBlockMethod *cogMethod);
extern void callCogCodePopReceiver(void);
extern void callCogCodePopReceiverAndClassRegs(void);
extern sqInt ceCPICMissreceiver(CogMethod *cPIC, sqInt receiver);
extern sqInt ceSICMiss(sqInt receiver);
extern void checkAssertsEnabledInCogit(void);
extern sqInt checkIntegrityOfObjectReferencesInCode(sqInt gcModes);
extern char * codeEntryFor(char *address);
extern char * codeEntryNameFor(char *address);
extern sqInt cogCodeBase(void);
extern sqInt cogCodeConstituents(void);
extern void cogitPostGCAction(sqInt gcMode);
extern sqInt cogMethodDoesntLookKosher(CogMethod *cogMethod);
extern CogMethod * cogMNUPICSelectorreceivermethodOperandnumArgs(sqInt selector, sqInt rcvr, sqInt methodOperand, sqInt numArgs);
extern CogMethod * cogselector(sqInt aMethodObj, sqInt aSelectorOop);
extern void compactCogCompiledCode(void);
extern sqInt defaultCogCodeSize(void);
extern void enterCogCodePopReceiver(void);
extern CogBlockMethod * findMethodForStartBcpcinHomeMethod(sqInt startbcpc, CogMethod *cogMethod);
extern void followForwardedLiteralsIn(CogMethod *cogMethod);
extern void followForwardedMethods(void);
extern void freeUnmarkedMachineCode(void);
extern void initializeCodeZoneFromupTo(sqInt startAddress, sqInt endAddress);
extern sqInt isPCWithinMethodZone(void *address);
extern sqInt isSendReturnPC(sqInt retpc);
extern void linkSendAtintooffsetreceiver(sqInt callSiteReturnAddress, CogMethod *sendingMethod, CogMethod *targetMethod, sqInt theEntryOffset, sqInt receiver);
extern void mapObjectReferencesInMachineCode(sqInt gcMode);
extern void markAndTraceMachineCodeOfMarkedMethods(void);
extern void markMethodAndReferents(CogBlockMethod *aCogMethod);
extern usqInt maxCogMethodAddress(void);
extern usqInt mcPCForBackwardBranchstartBcpcin(sqInt bcpc, sqInt startbcpc, CogBlockMethod *cogMethod);
extern sqInt minCogMethodAddress(void);
extern sqInt mnuOffset(void);
extern sqInt patchToOpenPICFornumArgsreceiver(sqInt selector, sqInt numArgs, sqInt receiver);
extern void printCogMethodFor(void *address);
extern void printTrampolineTable(void);
extern sqInt recordPrimTraceFunc(void);
extern void setBreakMethod(sqInt anObj);
extern void setPostCompileHook(void (*aFunction)(CogMethod *));
extern void setSelectorOfto(CogMethod *cogMethod, sqInt aSelectorOop);
extern sqInt traceLinkedSendOffset(void);
extern void unlinkAllSends(void);
extern void unlinkSendsLinkedForInvalidClasses(void);
extern void unlinkSendsOfisMNUSelector(sqInt selector, sqInt isMNUSelector);
extern void unlinkSendsToFree(void);
extern void unlinkSendsToandFreeIf(sqInt targetMethodObject, sqInt freeIfTrue);
extern void addAllToYoungReferrers(void);
extern void freeMethod(CogMethod *cogMethod);
extern CogMethod * methodFor(void *address);
extern sqInt numMethodsOfType(sqInt cogMethodType);
extern void printCogMethods(void);
extern void printCogMethodsOfType(sqInt cmType);
extern void printCogMethodsWithMethod(sqInt methodOop);
extern void printCogMethodsWithPrimitive(sqInt primIdx);
extern void printCogMethodsWithSelector(sqInt selectorOop);
extern void printCogYoungReferrers(void);
extern void printOpenPICList(void);
extern char * whereIsMaybeCodeThing(sqInt anOop);
extern sqInt numRegArgs(void);
extern sqInt genQuickReturnConst(void);
extern sqInt genQuickReturnInstVar(void);
extern sqInt genQuickReturnSelf(void);
extern void recordCallOffsetIn(CogMethod *cogMethod);
extern void rewritePrimInvocationInto(CogMethod *cogMethod, void (*primFunctionPointer)(void));
extern void voidCogCompiledCode(void);
extern void callCogCodePopReceiverArg0Regs(void);
extern void callCogCodePopReceiverArg1Arg0Regs(void);


/*** Global Variables ***/
VM_EXPORT sqInt blockNoContextSwitchOffset;
VM_EXPORT sqInt breakPC;
VM_EXPORT void * CFramePointer;
VM_EXPORT void * CStackPointer;
VM_EXPORT sqInt ceBaseFrameReturnTrampoline;
VM_EXPORT void (*ceCall0ArgsPIC)(void);
VM_EXPORT void (*ceCall1ArgsPIC)(void);
VM_EXPORT void (*ceCall2ArgsPIC)(void);
VM_EXPORT void (*ceCallCogCodePopReceiverAndClassRegs)(void);
VM_EXPORT void (*ceCallCogCodePopReceiverArg0Regs)(void);
VM_EXPORT void (*ceCallCogCodePopReceiverArg1Arg0Regs)(void);
VM_EXPORT void (*ceCallCogCodePopReceiverReg)(void);
VM_EXPORT sqInt ceCannotResumeTrampoline;
VM_EXPORT void (*ceCaptureCStackPointers)(void);
VM_EXPORT sqInt ceCheckForInterruptTrampoline;
VM_EXPORT void (*ceEnterCogCodePopReceiverReg)(void);
VM_EXPORT unsigned long (*ceGetFP)(void);
VM_EXPORT unsigned long (*ceGetSP)(void);
VM_EXPORT sqInt ceReturnToInterpreterTrampoline;
VM_EXPORT unsigned long (*ceTryLockVMOwner)(void);
VM_EXPORT void (*ceUnlockVMOwner)(void);
VM_EXPORT sqInt cFramePointerInUse;
VM_EXPORT sqInt cmEntryOffset;
VM_EXPORT sqInt cmNoCheckEntryOffset;
VM_EXPORT unsigned long debugPrimCallStackOffset;
VM_EXPORT sqInt missOffset;
VM_EXPORT void (*realCECallCogCodePopReceiverAndClassRegs)(void);
VM_EXPORT void (*realCECallCogCodePopReceiverArg0Regs)(void);
VM_EXPORT void (*realCECallCogCodePopReceiverArg1Arg0Regs)(void);
VM_EXPORT void (*realCECallCogCodePopReceiverReg)(void);
VM_EXPORT void (*realCEEnterCogCodePopReceiverReg)(void);
VM_EXPORT int traceFlags ;
VM_EXPORT sqInt traceStores;


/*** Macros ***/
#define blockAlignment(self) 8
#define breakOnImplicitReceiver() (traceFlags & 64)
#define ceBaseFrameReturnPC() ceBaseFrameReturnTrampoline
#define ceCannotResumePC() ((usqInt)ceCannotResumeTrampoline)
#define ceReturnToInterpreterPC() ((usqInt)ceReturnToInterpreterTrampoline)
#define compileSendTrace() (traceFlags & 2)
#define entryOffset() cmEntryOffset
#define getCFramePointer() CFramePointer
#define getCStackPointer() CStackPointer
#define interpretOffset() missOffset
#define noCheckEntryOffset() cmNoCheckEntryOffset
#define noContextSwitchBlockEntryOffset() blockNoContextSwitchOffset
#define printOnTrace() (traceFlags & 1)
#define recordBlockTrace() (traceFlags & 4)
#define recordEventTrace() (traceFlags & 16)
#define recordOverflowTrace() (traceFlags & 32)
#define recordPrimTrace() (traceFlags & 8)
#define recordSendTrace() (traceFlags & 2)
#define setCFramePointer(theFP) (CFramePointer = (void *)(theFP))
#define setCStackPointer(theSP) (CStackPointer = (void *)(theSP))
#define tryLockVMOwner() (ceTryLockVMOwner() != 0)
#define unlockVMOwner() ceUnlockVMOwner()
