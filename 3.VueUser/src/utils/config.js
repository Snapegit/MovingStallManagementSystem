const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '商品资讯管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'商品资讯',
							url:'/index/newsList'
						},
					]
				},
				{
					name: '特价商品管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'特价商品',
							url:'/index/tejiashangpinList'
						},
					]
				},
				{
					name: '购物车管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'购物车',
							url:'/index/cartList'
						},
					]
				},
				{
					name: '商品信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'商品信息',
							url:'/index/shangpinxinxiList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "流动摊位管理系统"
        } 
    }
}
export default config
