import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import aboutus from '@/views/modules/aboutus/list'
    import zhaopinyiyuan from '@/views/modules/zhaopinyiyuan/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import toudixinxi from '@/views/modules/toudixinxi/list'
    import zhiweimingcheng from '@/views/modules/zhiweimingcheng/list'
    import qiye from '@/views/modules/qiye/list'
    import discusszhaopinxinxi from '@/views/modules/discusszhaopinxinxi/list'
    import zhaopinxinxi from '@/views/modules/zhaopinxinxi/list'
    import systemintro from '@/views/modules/systemintro/list'
    import tongzhixinxi from '@/views/modules/tongzhixinxi/list'
    import qiuzhixinxi from '@/views/modules/qiuzhixinxi/list'
    import luqutongzhi from '@/views/modules/luqutongzhi/list'
    import zaixianzixun from '@/views/modules/zaixianzixun/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/aboutus',
        name: '关于我们',
        component: aboutus
      }
      ,{
	path: '/zhaopinyiyuan',
        name: '招聘意愿',
        component: zhaopinyiyuan
      }
      ,
    {path: '/luqutongzhi',
        name: '录取通知',
        component: luqutongzhi
      }
      ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
      ,{
	path: '/toudixinxi',
        name: '投递信息',
        component: toudixinxi
      }
      ,{
	path: '/zhiweimingcheng',
        name: '职位名称',
        component: zhiweimingcheng
      }
      ,{
	path: '/qiye',
        name: '企业',
        component: qiye
      }
      ,{
	path: '/discusszhaopinxinxi',
        name: '招聘信息评论',
        component: discusszhaopinxinxi
      }
      ,{
	path: '/zhaopinxinxi',
        name: '招聘信息',
        component: zhaopinxinxi
      }
      ,{
	path: '/systemintro',
        name: '系统简介',
        component: systemintro
      }
      ,{
	path: '/tongzhixinxi',
        name: '通知信息',
        component: tongzhixinxi
      }
      ,{
	path: '/qiuzhixinxi',
        name: '求职信息',
        component: qiuzhixinxi
      }
      ,{
	path: '/zaixianzixun',
        name: '在线咨询',
        component: zaixianzixun
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '系统首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
