releasing
reset
	<script>
	defaultCommonQueueWorkerPool ifNotNil: [ 
		defaultCommonQueueWorkerPool stop.
		defaultCommonQueueWorkerPool := nil
	].
	defaultWorkerPool ifNotNil: [ 
		defaultWorkerPool stop.
		defaultWorkerPool := nil
	].