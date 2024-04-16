const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot123456/",
            name: "springboot123456",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot123456/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "校园招聘系统"
        } 
    }
}
export default base
