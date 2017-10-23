releasing
releaseAll
	<script>
	self talksDict valuesDo: [:each | each release].
	self initialize