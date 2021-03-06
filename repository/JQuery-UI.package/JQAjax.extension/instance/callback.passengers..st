*JQuery-UI
callback: aBlock passengers: aQuery
	"Trigger the callback aBlock with the passengers of aQuery. Nodes that have no passenger are ignored."

	self
		callback: [ :value | 
			aBlock value: ((GRPlatform subStringsIn: value value splitBy: $,
				collect: [ :each | self renderContext callbacks passengerAt: each ])
				reject: [ :each | each isNil ]) ]
		value: (JSStream on: JQuery functionName , '.map(' , aQuery greaseString , '.get(),function(each){return each.id}).join(",")')