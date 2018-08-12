Tarantalk
========

[Tarantool](https://tarantool.org/ "Tarantool") client for [Pharo Smalltalk](http://www.pharo-project.org/ "Pharo").

Tarantalk = Smalltalk + Lua + Tuple DB.

Enjoy its chemical effects on such a dynamic environment. 

## Installation ##

You can install via Catalog Browser, or just do it:

```Smalltalk
Metacello new  baseline: 'Tarantalk';  repository: 'github://mumez/Tarantalk/repository';  load.
```

## Settings ##

Tarantool supports authentication and fine-grained access control. So, you should add a user for Tarantalk from the tarantool admin console.

```Lua
box.cfg{listen = 3301}
box.schema.user.create('taran', {password = 'talk'})
box.schema.user.grant('taran', 'read,write,execute', 'universe')
```

## Connecting

You can pass a URI for connecting a running tarantool instance.

```Smalltalk
tarantalk := TrTarantalk connect: 'taran:talk@localhost:3301'.
```

## Usages ##

### Storing tuples

```Smalltalk
"Create a space"
tarantalk := TrTarantalk connect: 'taran:talk@localhost:3301'.
space := tarantalk ensureSpaceNamed: 'bookmarks'.
```

```Smalltalk
"Create a primary TREE index (string typed)"
primaryIndex := space ensurePrimaryIndexSetting: [ :options | options tree; partsTypes: #(#string)].
```

```Smalltalk
"Insert tuples"
space insert: #('Tarantool' 'https://tarantool.org' 'Tarantool main site').
space insert: #('Pharo books' 'http://files.pharo.org/books/' 'Pharo on-line books').
space insert: #('Pharo' 'http://pharo.org' 'Pharo main site').
space insert: #('Smalltalkユーザ会' 'http://www.smalltalk-users.jp' 'Japan Smalltalk users group').
```

### Retrieving tuples

```Smalltalk
"Select all tuples in a space"
primaryIndex selectAll.
```
```Smalltalk
"Find a tuple with 'Pharo' element"
primaryIndex selectHaving: #('Pharo').
  " => #(#('Pharo' 'http://pharo.org' 'Pharo main site'))"
```
```Smalltalk
"Find tuples with a condition."
primaryIndex select: #>= having: #('Smalltalkユーザ会').
  " => #(#('Smalltalkユーザ会' 'http://www.smalltalk-users.jp' 'Japan Smalltalk users group') #('Tarantool' 'https://tarantool.org' 'Tarantool main site'))"
```

### Updating tuples
```Smalltalk
"Update the first field in a tuple"
primaryIndex updateHaving: #('Pharo books') performing: [:row | row @ 1 assign: 'http://books.pharo.org'].
primaryIndex selectHaving: #('Pharo books').
  " => #(#('Pharo books' 'http://books.pharo.org' 'Pharo on-line books'))"
```

### Evaluating Lua expression

```Smalltalk
(tarantalk evalWithReturn: 'string.match("Hello, world!", "w(%w+)")') value.
  " => #('orld')"
```

```Smalltalk
(tarantalk evalWithReturn: '(require("digest").sha512_hex(...))' arguments: {'Hello, Smalltalk'}) value.
  " => #('ec599e128831b282f6f7a833834c90a3eb2e61453e5757ca3c2bc8a26e94d7c2f76bd6a7ce33df2427f3821e44a12d26781d39eac6782b59a649950ea59f9e13')"
```

### Calling Lua stored function

```Lua
function bookmarkUrls()
	local urls = {}
	for k,v in box.space.bookmarks:pairs() do
		table.insert(urls, v[2])
	end
	return urls
end
box.schema.func.create('bookmarkUrls')
```

```Smalltalk
tarantalk call: 'bookmarkUrls'.
  " => #(#('http://pharo.org' 'http://files.pharo.org/books/' 'http://www.smalltalk-users.jp' 'https://tarantool.org'))"
```

### Releasing

```Smalltalk
tarantalk release.

"OR"

TrTarantalk releaseAll.
```

## Performance

I tried a simple micro benchmark and compared the results with my Redis client - [RediStick](<http://smalltalkhub.com/#!/~MasashiUmezawa/RediStick> "RediStick").

Tarantalk outperformed RediStick well (more than 5x faster).
I think the reason is partly related to the async-write API of Tarantool. But it is still remarkable.

### The results
On mid 2013 MacBook Air (1.7GHz Core i7, 8GB RAM).

|  | Tarantalk | RediStick |
|-----------|-----------|-----------|
| Simple Get/Put round-trips (1st try to an empty space) | 0:00:00:03.104 | 0:00:00:14.449 |
| Simple Get/Put round-trips (2nd try) | 0:00:00:03.184 | 0:00:00:15.291 |
| Deleting keys | 0:00:00:00.931 | 0:00:00:07.166 |

### Tarantalk code
```Smalltalk
tarantalk := TrTarantalk connect: 'taran:talk@localhost:3301'.
space := tarantalk ensureSpaceNamed: 'perf'.
space ensurePrimaryIndex.
```

```Smalltalk
"Simple Get/Put round-trips"
[  
  1 to: 10000 do: [:idx | | ret newVal |
    newVal := idx asString.
    space at: idx put: newVal.
    ret := space at: idx.
    (ret = newVal) ifFalse: [ self halt ]. "for checking that value is correctly stored"
  ]
] timeToRun.
```
```Smalltalk
"Deleting keys"
[  
  1 to: 10000 do: [:idx | 
    space removeKey: idx
  ]
] timeToRun.
```

### RediStick code

```Smalltalk
stick := RsRediStick targetUrl: 'sync://localhost'.
stick connect.
redisEndPoint := stick endpoint.
```

```Smalltalk
"Simple Get/Put round-trips"
[  
  1 to: 10000 do: [:idx | | ret newVal |
    newVal := idx asString.
    redisEndPoint set: idx value: newVal.
    ret := redisEndPoint get: idx.
    (ret = newVal) ifFalse: [ self halt ]. "for checking that value is correctly stored"
  ]
] timeToRun.
```
```Smalltalk
"Deleting keys"
[  
  1 to: 10000 do: [:idx |
    redisEndPoint del: {idx}.
  ].
] timeToRun.
```
