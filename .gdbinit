fb -[NSException raise]
fb -[NSAssertionHandler handleFailureInFunction:file:lineNumber:description:]
fb -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:]

fb NSKVODeallocateBreak
fb objc_exception_throw
fb malloc_printf
fb szone_error
fb malloc_error_break
fb CGPostError
fb _objc_error
fb objc_exception_during_finalize_error
fb auto_zone_resurrection_error
fb auto_refcount_underflow_error

fb -[_NSZombie init]
fb -[_NSZombie retainCount]
fb -[_NSZombie retain]
fb -[_NSZombie release]
fb -[_NSZombie autorelease]
fb -[_NSZombie methodSignatureForSelector:]
fb -[_NSZombie respondsToSelector:]
fb -[_NSZombie forwardInvocation:]
fb -[_NSZombie class]
fb -[_NSZombie dealloc]

# set env NSZombieEnabled YES
# set env NSDeallocateZombies NO
# set env MallocCheckHeapEach 10000
# set env MallocCheckHeapStart 10000
# set env MallocScribble 1
# set env MallocGuardEdges 1
# set env MallocCheckHeapAbort 1
# set env MallocStackLogging 1
# set env MallocStackLoggingNoCompact 1

set env CFZombie 5
