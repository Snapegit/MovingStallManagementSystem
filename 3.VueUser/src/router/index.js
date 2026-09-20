import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import storeupList from '@/views/pages/storeup/list'
import shangpinleixingList from '@/views/pages/shangpinleixing/list'
import shangpinleixingDetail from '@/views/pages/shangpinleixing/formModel'
import shangpinleixingAdd from '@/views/pages/shangpinleixing/formAdd'
import shangpinxinxiList from '@/views/pages/shangpinxinxi/list'
import shangpinxinxiDetail from '@/views/pages/shangpinxinxi/formModel'
import shangpinxinxiAdd from '@/views/pages/shangpinxinxi/formAdd'
import cartList from '@/views/pages/shop_order/cart'
import addressList from '@/views/pages/shop_address/list'
import newsList from '@/views/pages/news/list'
import tejiashangpinList from '@/views/pages/tejiashangpin/list'
import tejiashangpinDetail from '@/views/pages/tejiashangpin/formModel'
import tejiashangpinAdd from '@/views/pages/tejiashangpin/formAdd'
import tanweixinxiList from '@/views/pages/tanweixinxi/list'
import tanweixinxiDetail from '@/views/pages/tanweixinxi/formModel'
import tanweixinxiAdd from '@/views/pages/tanweixinxi/formAdd'
import shangjiaList from '@/views/pages/shangjia/list'
import shangjiaDetail from '@/views/pages/shangjia/formModel'
import shangjiaAdd from '@/views/pages/shangjia/formAdd'
import tanweishenqingdiaozhengList from '@/views/pages/tanweishenqingdiaozheng/list'
import tanweishenqingdiaozhengDetail from '@/views/pages/tanweishenqingdiaozheng/formModel'
import tanweishenqingdiaozhengAdd from '@/views/pages/tanweishenqingdiaozheng/formAdd'
import order_confirm from '@/views/pages/shop_order/confirm'
import ordersList from '@/views/pages/shop_order/list'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'shangpinleixingList',
			component: shangpinleixingList
		}, {
			path: 'shangpinleixingDetail',
			component: shangpinleixingDetail
		}, {
			path: 'shangpinleixingAdd',
			component: shangpinleixingAdd
		}
		, {
			path: 'shangpinxinxiList',
			component: shangpinxinxiList
		}, {
			path: 'shangpinxinxiDetail',
			component: shangpinxinxiDetail
		}, {
			path: 'shangpinxinxiAdd',
			component: shangpinxinxiAdd
		}
		, {
			path: 'cartList',
			component: cartList
		}
		, {
			path: 'addressList',
			component: addressList
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'tejiashangpinList',
			component: tejiashangpinList
		}, {
			path: 'tejiashangpinDetail',
			component: tejiashangpinDetail
		}, {
			path: 'tejiashangpinAdd',
			component: tejiashangpinAdd
		}
		, {
			path: 'tanweixinxiList',
			component: tanweixinxiList
		}, {
			path: 'tanweixinxiDetail',
			component: tanweixinxiDetail
		}, {
			path: 'tanweixinxiAdd',
			component: tanweixinxiAdd
		}
		, {
			path: 'shangjiaList',
			component: shangjiaList
		}, {
			path: 'shangjiaDetail',
			component: shangjiaDetail
		}, {
			path: 'shangjiaAdd',
			component: shangjiaAdd
		}
		, {
			path: 'tanweishenqingdiaozhengList',
			component: tanweishenqingdiaozhengList
		}, {
			path: 'tanweishenqingdiaozhengDetail',
			component: tanweishenqingdiaozhengDetail
		}, {
			path: 'tanweishenqingdiaozhengAdd',
			component: tanweishenqingdiaozhengAdd
		}
		, {
			path: 'order_confirm',
			component: order_confirm
		}
		, {
			path: 'ordersList',
			component: ordersList
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
