	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import tanweixinxi from '@/views/tanweixinxi/list'
	import address from '@/views/address/list'
	import shangpinxinxi from '@/views/shangpinxinxi/list'
	import tejiashangpin from '@/views/tejiashangpin/list'
	import tanweishenqingdiaozheng from '@/views/tanweishenqingdiaozheng/list'
	import storeup from '@/views/storeup/list'
	import shangjia from '@/views/shangjia/list'
	import yonghu from '@/views/yonghu/list'
	import discussshangpinxinxi from '@/views/discussshangpinxinxi/list'
	import discusstejiashangpin from '@/views/discusstejiashangpin/list'
	import orders from '@/views/orders/list'
	import shangpinleixing from '@/views/shangpinleixing/list'
	import config from '@/views/config/list'
	import shangjiaRegister from '@/views/shangjia/register'
	import shangjiaCenter from '@/views/shangjia/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/shangjiaCenter',
			name: '商家个人中心',
			component: shangjiaCenter
		}
		,{
			path: '/news',
			name: '商品资讯',
			component: news
		}
		,{
			path: '/tanweixinxi',
			name: '摊位信息',
			component: tanweixinxi
		}
		,{
			path: '/address',
			name: '地址',
			component: address
		}
		,{
			path: '/shangpinxinxi',
			name: '商品信息',
			component: shangpinxinxi
		}
		,{
			path: '/tejiashangpin',
			name: '特价商品',
			component: tejiashangpin
		}
		,{
			path: '/tanweishenqingdiaozheng',
			name: '摊位申请调整',
			component: tanweishenqingdiaozheng
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/shangjia',
			name: '商家',
			component: shangjia
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/discussshangpinxinxi',
			name: '商品信息评论',
			component: discussshangpinxinxi
		}
		,{
			path: '/discusstejiashangpin',
			name: '特价商品评论',
			component: discusstejiashangpin
		}
		,{
			path: '/orders',
			name: '订单管理',
			component: orders
		}
		,{
			path: '/shangpinleixing',
			name: '商品类型',
			component: shangpinleixing
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		]
	},
	{
		path: '/shangjiaRegister',
		name: '商家注册',
		component: shangjiaRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
