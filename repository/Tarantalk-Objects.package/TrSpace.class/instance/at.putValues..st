dictionary-like
at: key putValues: values
	^ self upsert: ((Array with: key), values) performing: [:opts | 
		1 to: values size do: [:idx |  
			opts @ idx assign: (values at: idx)
		]
	]