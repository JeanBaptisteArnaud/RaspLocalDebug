multi-threading simulation switch
checkForEventsMayContextSwitch: mayContextSwitch
	"This method includes or excludes CoInterpreterMT methods as required.
	 Auto-generated by CogVMSimulator>>ensureMultiThreadingOverridesAreUpToDate"

	^self perform: #checkForEventsMayContextSwitch:
		withArguments: {mayContextSwitch}
		inSuperclass: (cogThreadManager ifNil: [CoInterpreterPrimitives] ifNotNil: [CoInterpreterMT])