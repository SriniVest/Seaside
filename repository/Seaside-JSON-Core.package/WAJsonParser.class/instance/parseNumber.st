parsing-internal
parseNumber
	| negated number |
	negated := stream peek = $-.
	negated ifTrue: [ stream next ].
	number := self parseNumberInteger.
	(stream peek = $.) ifTrue: [
		stream next. 
		number := number + self parseNumberFraction ].
	('eE' includes: stream peek) ifTrue: [
		stream next.
		number := number * self parseNumberExponent ].
	negated ifTrue: [ number := number negated ].
	^ self whitespace; createNumber: number