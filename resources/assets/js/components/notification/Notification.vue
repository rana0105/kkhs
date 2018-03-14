<template>
	<div class="single-modal-nofi overflow-fix">
		<a href="">
			<p>
				<span>{{ singleNotify.data.freelancer.name }}</span> Apply In your
				<span>{{ singleNotify.data.project }}</span>
			</p>
			<h2><timeago :since="singleNotify.created_at"></timeago></h2>
		</a>
	</div>
</template>

<script>
export default {
  name: 'Notification',
  props: ['singleNotify'],
}
</script>

<style lang="css" scoped>
</style>