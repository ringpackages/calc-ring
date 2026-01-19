#include "ring.h" 

#include "ringappcode.h" 

int main( int argc, char *argv[])
{
	RingState *pRingState;  
	pRingState = ring_state_new();  
	pRingState->nArgc = argc;  
	pRingState->pArgv = argv;  
	pRingState->pRingFilesList = ring_list_new_gc(pRingState,RING_ZERO);  
	pRingState->pRingFilesStack = ring_list_new_gc(pRingState,RING_ZERO);  
	ring_list_addstring_gc(pRingState,pRingState->pRingFilesList,"./calc/calculator.ringo");  
	ring_list_addstring_gc(pRingState,pRingState->pRingFilesStack,"./calc/calculator.ringo");  
	loadRingCode(pRingState);  
	ring_state_delete(pRingState);  
	return 0;  
}

