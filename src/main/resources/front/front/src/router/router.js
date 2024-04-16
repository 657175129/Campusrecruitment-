import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Storeup from '../pages/storeup/list'
import xueshengList from '../pages/xuesheng/list'
import xueshengDetail from '../pages/xuesheng/detail'
import xueshengAdd from '../pages/xuesheng/add'
import qiyeList from '../pages/qiye/list'
import qiyeDetail from '../pages/qiye/detail'
import qiyeAdd from '../pages/qiye/add'
import zhaopinxinxiList from '../pages/zhaopinxinxi/list'
import zhaopinxinxiDetail from '../pages/zhaopinxinxi/detail'
import zhaopinxinxiAdd from '../pages/zhaopinxinxi/add'
import zhiweimingchengList from '../pages/zhiweimingcheng/list'
import zhiweimingchengDetail from '../pages/zhiweimingcheng/detail'
import zhiweimingchengAdd from '../pages/zhiweimingcheng/add'
import qiuzhixinxiList from '../pages/qiuzhixinxi/list'
import qiuzhixinxiDetail from '../pages/qiuzhixinxi/detail'
import qiuzhixinxiAdd from '../pages/qiuzhixinxi/add'
import toudixinxiList from '../pages/toudixinxi/list'
import toudixinxiDetail from '../pages/toudixinxi/detail'
import toudixinxiAdd from '../pages/toudixinxi/add'
import zhaopinyiyuanList from '../pages/zhaopinyiyuan/list'
import zhaopinyiyuanDetail from '../pages/zhaopinyiyuan/detail'
import zhaopinyiyuanAdd from '../pages/zhaopinyiyuan/add'
import tongzhixinxiList from '../pages/tongzhixinxi/list'
import tongzhixinxiDetail from '../pages/tongzhixinxi/detail'
import tongzhixinxiAdd from '../pages/tongzhixinxi/add'
import zaixianzixunList from '../pages/zaixianzixun/list'
import zaixianzixunDetail from '../pages/zaixianzixun/detail'
import zaixianzixunAdd from '../pages/zaixianzixun/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'storeup',
					component: Storeup
				},
				{
					path: 'xuesheng',
					component: xueshengList
				},
				{
					path: 'xueshengDetail',
					component: xueshengDetail
				},
				{
					path: 'xueshengAdd',
					component: xueshengAdd
				},
				{
					path: 'qiye',
					component: qiyeList
				},
				{
					path: 'qiyeDetail',
					component: qiyeDetail
				},
				{
					path: 'qiyeAdd',
					component: qiyeAdd
				},
				{
					path: 'zhaopinxinxi',
					component: zhaopinxinxiList
				},
				{
					path: 'zhaopinxinxiDetail',
					component: zhaopinxinxiDetail
				},
				{
					path: 'zhaopinxinxiAdd',
					component: zhaopinxinxiAdd
				},
				{
					path: 'zhiweimingcheng',
					component: zhiweimingchengList
				},
				{
					path: 'zhiweimingchengDetail',
					component: zhiweimingchengDetail
				},
				{
					path: 'zhiweimingchengAdd',
					component: zhiweimingchengAdd
				},
				{
					path: 'qiuzhixinxi',
					component: qiuzhixinxiList
				},
				{
					path: 'qiuzhixinxiDetail',
					component: qiuzhixinxiDetail
				},
				{
					path: 'qiuzhixinxiAdd',
					component: qiuzhixinxiAdd
				},
				{
					path: 'toudixinxi',
					component: toudixinxiList
				},
				{
					path: 'toudixinxiDetail',
					component: toudixinxiDetail
				},
				{
					path: 'toudixinxiAdd',
					component: toudixinxiAdd
				},
				{
					path: 'zhaopinyiyuan',
					component: zhaopinyiyuanList
				},
				{
					path: 'zhaopinyiyuanDetail',
					component: zhaopinyiyuanDetail
				},
				{
					path: 'zhaopinyiyuanAdd',
					component: zhaopinyiyuanAdd
				},
				{
					path: 'tongzhixinxi',
					component: tongzhixinxiList
				},
				{
					path: 'tongzhixinxiDetail',
					component: tongzhixinxiDetail
				},
				{
					path: 'tongzhixinxiAdd',
					component: tongzhixinxiAdd
				},
				{
					path: 'zaixianzixun',
					component: zaixianzixunList
				},
				{
					path: 'zaixianzixunDetail',
					component: zaixianzixunDetail
				},
				{
					path: 'zaixianzixunAdd',
					component: zaixianzixunAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
