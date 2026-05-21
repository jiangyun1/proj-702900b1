<template>
	<el-container>
		<index-header></index-header>
		<el-container>
			<el-row>
				<el-col :span="3">	<index-aside></index-aside></el-col>
				<el-col :span="21"><index-main></index-main></el-col>
			</el-row>
		
			
		</el-container>
	</el-container>
</template>
<script>
	import IndexHeader from '@/components/index/IndexHeader'
	import IndexAside from '@/components/index/IndexAsideStatic'
	import IndexMain from '@/components/index/IndexMain'
	export default {
		components: {
			IndexHeader,
			IndexAside,
			IndexMain
		}
	}
</script>

<style lang="scss" scoped>
	// 铺满全屏
	.el-container {
		position: absolute;
		width: 100%;
		top: 0;
		left: 0;
		bottom: 0;
	}
</style>
