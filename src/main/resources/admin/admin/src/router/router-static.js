import Vue from "vue";
//配置路由
import VueRouter from "vue-router";
Vue.use(VueRouter);
//1.创建组件
import Index from "@/views/index";
import Home from "@/views/home";
import Login from "@/views/login";
import NotFound from "@/views/404";
import UpdatePassword from "@/views/update-password";
import pay from "@/views/pay";
import register from "@/views/register";
import center from "@/views/center";
import news from "@/views/modules/news/list";
import ditiexianlu from "@/views/modules/ditiexianlu/list";
import discussshiwuxinxi from "@/views/modules/discussshiwuxinxi/list";
import shiwuxinxi from "@/views/modules/shiwuxinxi/list";
import yonghu from "@/views/modules/yonghu/list";
import zhandian from "@/views/modules/zhandian/list";
import shikebiao from "@/views/modules/shikebiao/list";
import config from "@/views/modules/config/list";

//2.配置路由   注意：名字
const routes = [
  {
    path: "/index",
    name: "首页",
    component: Index,
    children: [
      {
        // 这里不设置值，是把main作为默认页面
        path: "/",
        name: "首页",
        component: Home,
        meta: { icon: "", title: "center" },
      },
      {
        path: "/updatePassword",
        name: "修改密码",
        component: UpdatePassword,
        meta: { icon: "", title: "updatePassword" },
      },
      {
        path: "/center",
        name: "个人信息",
        component: center,
        meta: { icon: "", title: "center" },
      },
      {
        path: "/news",
        name: "新闻中心",
        component: news,
      },
      {
        path: "/ditiexianlu",
        name: "地铁线路",
        component: ditiexianlu,
      },
      {
        path: "/discussshiwuxinxi",
        name: "失物信息评论",
        component: discussshiwuxinxi,
      },
      {
        path: "/shiwuxinxi",
        name: "失物信息",
        component: shiwuxinxi,
      },
      {
        path: "/yonghu",
        name: "用户",
        component: yonghu,
      },
      {
        path: "/zhandian",
        name: "站点",
        component: zhandian,
      },
      {
        path: "/shikebiao",
        name: "时刻表",
        component: shikebiao,
      },
      {
        path: "/config",
        name: "轮播图管理",
        component: config,
      },
    ],
  },
  {
    path: "/login",
    name: "login",
    component: Login,
    meta: { icon: "", title: "login" },
  },
  {
    path: "/register",
    name: "register",
    component: register,
    meta: { icon: "", title: "register" },
  },
  {
    path: "/",
    name: "首页",
    redirect: "/index",
  } /*默认跳转路由*/,
  {
    path: "*",
    component: NotFound,
  },
];
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: "hash",
  /*hash模式改为history*/
  routes, // （缩写）相当于 routes: routes
});

export default router;
