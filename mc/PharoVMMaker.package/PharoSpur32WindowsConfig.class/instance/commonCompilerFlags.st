compiler flags
commonCompilerFlags
	^ super commonCompilerFlags, #('-DSPURVM' "'-DSPUR_USE_EXECUTABLE_MEMORY'")