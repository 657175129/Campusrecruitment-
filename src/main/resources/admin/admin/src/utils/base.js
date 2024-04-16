const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot7iio7/",
            name: "springboot7iio7",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot7iio7/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "校园招聘平台与岗位推荐系统的设计与实现"
        } 
    }
}
export default base
