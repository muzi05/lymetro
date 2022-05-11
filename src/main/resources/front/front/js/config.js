
var projectName = '洛阳地铁信息查询与管理系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
        name: '我的收藏',
        url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '失物信息',
	url: './pages/shiwuxinxi/list.html'
}, 
// {
// 	name: '地铁线路',
// 	url: './pages/ditiexianlu/list.html'
// },
{
	name: '时刻表',
	url: './pages/shikebiao/list.html'
}, 

{
	name: '新闻中心',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/lymetro/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-full","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["新增","查看","修改","删除","查看评论"],"menu":"失物信息","menuJump":"列表","tableName":"shiwuxinxi"}],"menu":"失物信息管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除"],"menu":"站点","menuJump":"列表","tableName":"zhandian"}],"menu":"站点管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["新增","查看","修改","删除"],"menu":"地铁线路","menuJump":"列表","tableName":"ditiexianlu"}],"menu":"地铁线路管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["新增","查看","修改","删除"],"menu":"时刻表","menuJump":"列表","tableName":"shikebiao"}],"menu":"时刻表管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"新闻中心","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看"],"menu":"失物信息列表","menuJump":"列表","tableName":"shiwuxinxi"}],"menu":"失物信息模块"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看"],"menu":"地铁线路列表","menuJump":"列表","tableName":"ditiexianlu"}],"menu":"地铁线路模块"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看"],"menu":"时刻表列表","menuJump":"列表","tableName":"shikebiao"}],"menu":"时刻表模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看"],"menu":"失物信息列表","menuJump":"列表","tableName":"shiwuxinxi"}],"menu":"失物信息模块"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看"],"menu":"地铁线路列表","menuJump":"列表","tableName":"ditiexianlu"}],"menu":"地铁线路模块"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看"],"menu":"时刻表列表","menuJump":"列表","tableName":"shikebiao"}],"menu":"时刻表模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
