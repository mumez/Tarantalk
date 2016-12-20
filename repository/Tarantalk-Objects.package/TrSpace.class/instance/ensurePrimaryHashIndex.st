accessing-index
ensurePrimaryHashIndex
	^self ensurePrimaryIndexSetting: [:opts | opts hash; partsTypes: #(#string)]