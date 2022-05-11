const base = {
    get() {
        return {
            url : "http://localhost:8080/lymetro/",
            name: "lymetro",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/lymetro/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "洛阳地铁信息查询与管理系统"
        } 
    }
}
export default base
