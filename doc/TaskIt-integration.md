TaskIt integration
========

Tarantalk async API feature can be leveragted much by integrating with [TaskIt](https://github.com/sbragagnolo/taskit).
You can orchestrate async requests with combinable #future sends.

## Installation ##

Please load 'Tarantalk-TaskIt' package for enabling TaskIt integration, that is included in 'extra' package group.

```smalltalk
Metacello new
   baseline: 'Tarantalk';
   repository: 'github://mumez/Tarantalk/repository';
   load: #('extra').
```
[TaskIt](https://github.com/sbragagnolo/taskit) is required and will be installed automatically.

## Using future sends ##



