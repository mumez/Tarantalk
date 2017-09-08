releasing
releaseAll
	<script>
	self allInstances do: [ :each | each destroy ]