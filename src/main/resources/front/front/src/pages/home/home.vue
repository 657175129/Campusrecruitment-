<template>
<div class="home-preview" :style='{"width":"100%","margin":"20px 0 0","flexWrap":"wrap","justifyContent":"space-between","display":"flex"}'>


	<!-- 系统简介 -->
	<div :style='{"border":"0px solid #dfdfdf","padding":"20px 0 0 0","boxShadow":"0px 0px 0px #eee","margin":"20px auto","overflow":"hidden","borderRadius":"0","background":"none","width":"1200px","position":"relative","height":"auto","order":"4"}'>
	  <div :style='{"padding":"8px 50px 8px  20px ","margin":"0px 0 0px 0","color":"#fff","textAlign":"left","top":"64px","left":"0","background":"linear-gradient(135deg, rgba(17,112,210,1) 0%, rgba(8,179,68,1) 100%)","width":"auto","lineHeight":"1","fontSize":"26px","position":"absolute","fontWeight":"bold","zIndex":"9"}'>{{systemIntroductionDetail.title}}</div>
	  <div :style='{"margin":"0 0 80px 0px","color":"#1170d2","textAlign":"left","display":"block","width":"100%","lineHeight":"1","fontSize":"32px","fontWeight":"bold"}'>{{systemIntroductionDetail.subtitle}}</div>
	  <div :style='{"width":"400px","padding":"0px","float":"right","display":"inline-block","height":"450px"}'>
	    <img :style='{"boxShadow":"0px 0px 0px #ddd","margin":"0px","objectFit":"cover","borderRadius":"0px","display":"block","width":"100%","height":"100%"}' :src="baseUrl + systemIntroductionDetail.picture1">
	    <img :style='{"boxShadow":"1px 1px 1px #ddd","margin":"0px","objectFit":"cover","borderRadius":"8px","flex":1,"display":"none","width":"265px","height":"120px"}' :src="baseUrl + systemIntroductionDetail.picture2">
	    <img :style='{"boxShadow":"1px 1px 1px #ddd","margin":"0px","objectFit":"cover","borderRadius":"8px","flex":1,"display":"none","width":"265px","height":"120px"}' :src="baseUrl + systemIntroductionDetail.picture3">
	  </div>
	  <div :style='{"padding":"20px 20px 20px 20px","boxShadow":"0px 0px 0px #f6f6f6","margin":"50px 50px 50px 50px","borderColor":"#ffec9d","color":"#fff","float":"left","textIndent":"2em","overflow":"hidden","borderRadius":"20px","background":"linear-gradient(135deg, rgba(17,112,210,1) 0%, rgba(8,179,68,1) 100%)","borderWidth":"0px","width":"650px","lineHeight":"24px","fontSize":"16px","borderStyle":"double dotted solid double","height":"350px"}' v-html="systemIntroductionDetail.content"></div>
	  <div :style='{"width":"750px","background":"url(http://codegen.caihongy.cn/20221118/f10b67d3afa14445b66892c21da97e9a.png) no-repeat left top,url(http://codegen.caihongy.cn/20221118/b7e8bbc409524190a641a34ec7d4523e.png) no-repeat right bottom","display":"block","height":"450px"}' />
	  <div :style='{"top":"84px","left":"0","background":"#08b344","display":"block","width":"calc(100% - 0px)","position":"absolute","height":"1px","zIndex":"0"}' />
	  <div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
	  <div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
	</div>

<div class="recommend" :style='{"border":"0px solid #dfdfdf","boxShadow":"0px 0px 0px #eee","padding":"0","margin":"0","overflow":"hidden","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20221118/6840d1949de64f4caac19a375cf196a5.jpg)  fixed center top,#f0f0f0","width":"100%","position":"relative","height":"auto","order":"2"}'>
	<div v-if="true" class="idea recommendIdea" :style='{"padding":"0","margin":"0 auto","flexWrap":"wrap","background":"#efefef","display":"flex","width":"1200px","justifyContent":"space-between"}'>
		<div class="box1" :style='{"width":"1200px","position":"absolute","top":"74px","background":"#08b344","height":"1px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
    <div class="title" :style='{"padding":"0","margin":"60px auto 20px","textAlign":"left","background":"none","width":"1200px","lineHeight":"1","position":"relative"}'>
		<span :style='{"padding":"8px 50px 8px  20px ","fontSize":"30px","color":"#fff","textShadow":"0px 0px 0px #eee","background":"linear-gradient(135deg, rgba(17,112,210,1) 0%, rgba(8,179,68,1) 100%)","fontWeight":"bold"}'>招聘信息推荐</span>
	</div>
	
	
	
	
	
	<!-- 样式四 -->
	<div class="list list4 index-pv1" :style='{"width":"1200px","padding":"0px","margin":"40px auto","overflow":"hidden","background":"none","height":"auto"}'>
		<div v-if="zhaopinxinxiRecommend.length>0" class="list-item animation-box" @click="toDetail('zhaopinxinxiDetail', zhaopinxinxiRecommend[0])" :style='{"cursor":"pointer","margin":"0 0px","borderRadius":"4px","background":"#fff","width":"48%","position":"relative","float":"left","height":"570px"}'>
			<img :style='{"width":"100%","objectFit":"cover","borderRadius":"4px","float":"left","height":"100%"}' v-if="preHttp(zhaopinxinxiRecommend[0].zhaopintupian)" :src="zhaopinxinxiRecommend[0].zhaopintupian.split(',')[0]" alt="" />
			<img :style='{"width":"100%","objectFit":"cover","borderRadius":"4px","float":"left","height":"100%"}' v-else :src="baseUrl + (zhaopinxinxiRecommend[0].zhaopintupian?zhaopinxinxiRecommend[0].zhaopintupian.split(',')[0]:'')" alt="" />
			<div class="title line1" :style='{"whiteSpace":"nowrap","color":"#fff","textAlign":"center","bottom":"0","overflow":"hidden","borderRadius":"0 0 4px 4px","left":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}'>
                <div>招聘名称:{{zhaopinxinxiRecommend[0].zhaopinmingcheng}}</div>
                <div>{{zhaopinxinxiRecommend[0].zhiweimingcheng}}</div>
                <div>{{zhaopinxinxiRecommend[0].xinchoudaiyu}}</div>
            </div>
		</div>
		<div class="list-body" :style='{"width":"50%","margin":"0 0 10px","float":"right","background":"none","display":"inline-block","height":"275px"}'>
			<div v-if="zhaopinxinxiRecommend.length>1" @click="toDetail('zhaopinxinxiDetail', zhaopinxinxiRecommend[1])" class="list-item animation-box" :style='{"cursor":"pointer","margin":"0","borderRadius":"4px","background":"#fff","display":"inline-block","width":"49%","position":"relative","float":"left","height":"275px"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"4px","float":"left","height":"100%"}' v-if="preHttp(zhaopinxinxiRecommend[1].zhaopintupian)" :src="zhaopinxinxiRecommend[1].zhaopintupian.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"4px","float":"left","height":"100%"}' v-else :src="baseUrl + (zhaopinxinxiRecommend[1].zhaopintupian?zhaopinxinxiRecommend[1].zhaopintupian.split(',')[0]:'')" alt="" />
				<div class="title line1" :style='{"whiteSpace":"nowrap","color":"#fff","textAlign":"center","bottom":"0","overflow":"hidden","borderRadius":"0 0 4px 4px","left":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}'>
                    <div>招聘名称:{{zhaopinxinxiRecommend[1].zhaopinmingcheng}}</div>
                    <div>{{zhaopinxinxiRecommend[1].zhiweimingcheng}}</div>
                    <div>{{zhaopinxinxiRecommend[1].xinchoudaiyu}}</div>
                </div>
			</div>
			<div v-if="zhaopinxinxiRecommend.length>2" @click="toDetail('zhaopinxinxiDetail', zhaopinxinxiRecommend[2])" class="list-item animation-box" :style='{"cursor":"pointer","margin":"0","borderRadius":"4px","background":"#fff","display":"inline-block","width":"48%","position":"relative","float":"right","height":"275px"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"4px","float":"left","height":"100%"}' v-if="preHttp(zhaopinxinxiRecommend[2].zhaopintupian)" :src="zhaopinxinxiRecommend[2].zhaopintupian.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"4px","float":"left","height":"100%"}' v-else :src="baseUrl + (zhaopinxinxiRecommend[2].zhaopintupian?zhaopinxinxiRecommend[2].zhaopintupian.split(',')[0]:'')" alt="" />
				<div class="title line1" :style='{"whiteSpace":"nowrap","color":"#fff","textAlign":"center","bottom":"0","overflow":"hidden","borderRadius":"0 0 4px 4px","left":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}'>
                    <div>招聘名称:{{zhaopinxinxiRecommend[2].zhaopinmingcheng}}</div>
                    <div>{{zhaopinxinxiRecommend[2].zhiweimingcheng}}</div>
                    <div>{{zhaopinxinxiRecommend[2].xinchoudaiyu}}</div>
                </div>
			</div>
		</div>
		<div class="list-body" :style='{"width":"50%","margin":"10px 0 0","float":"right","display":"inline-block","height":"275px"}'>
			<div v-if="zhaopinxinxiRecommend.length>3" @click="toDetail('zhaopinxinxiDetail', zhaopinxinxiRecommend[3])" class="list-item animation-box" :style='{"cursor":"pointer","margin":"0px","borderRadius":"4px","background":"#fff","display":"inline-block","width":"49%","position":"relative","float":"left","height":"275px"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"4px","float":"left","height":"100%"}' v-if="preHttp(zhaopinxinxiRecommend[3].zhaopintupian)" :src="zhaopinxinxiRecommend[3].zhaopintupian.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"4px","float":"left","height":"100%"}' v-else :src="baseUrl + (zhaopinxinxiRecommend[3].zhaopintupian?zhaopinxinxiRecommend[3].zhaopintupian.split(',')[0]:'')" alt="" />
				<div class="title line1" :style='{"whiteSpace":"nowrap","color":"#fff","textAlign":"center","bottom":"0","overflow":"hidden","borderRadius":"0 0 4px 4px","left":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}'>
                    <div>招聘名称:{{zhaopinxinxiRecommend[3].zhaopinmingcheng}}</div>
                    <div>{{zhaopinxinxiRecommend[3].zhiweimingcheng}}</div>
                    <div>{{zhaopinxinxiRecommend[3].xinchoudaiyu}}</div>
                </div>
			</div>
			<div v-if="zhaopinxinxiRecommend.length>4" @click="toDetail('zhaopinxinxiDetail', zhaopinxinxiRecommend[4])" class="list-item animation-box" :style='{"cursor":"pointer","margin":"0","borderRadius":"4px","background":"#fff","display":"inline-block","width":"48%","position":"relative","float":"right","height":"275px"}'>
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"4px","float":"left","height":"100%"}' v-if="preHttp(zhaopinxinxiRecommend[4].zhaopintupian)" :src="zhaopinxinxiRecommend[4].zhaopintupian.split(',')[0]" alt="" />
				<img :style='{"width":"100%","objectFit":"cover","borderRadius":"4px","float":"left","height":"100%"}' v-else :src="baseUrl + (zhaopinxinxiRecommend[4].zhaopintupian?zhaopinxinxiRecommend[4].zhaopintupian.split(',')[0]:'')" alt="" />
				<div class="title line1" :style='{"whiteSpace":"nowrap","color":"#fff","textAlign":"center","bottom":"0","overflow":"hidden","borderRadius":"0 0 4px 4px","left":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}'>
                    <div>招聘名称:{{zhaopinxinxiRecommend[4].zhaopinmingcheng}}</div>
                    <div>{{zhaopinxinxiRecommend[4].zhiweimingcheng}}</div>
                    <div>{{zhaopinxinxiRecommend[4].xinchoudaiyu}}</div>
                </div>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	<div @click="moreBtn('zhaopinxinxi')" :style='{"border":"0px solid #ffa100","cursor":"pointer","boxShadow":"0px 0px 0px #ddd5c6,inset 0px 0px 0px 0px #ffa100","margin":"40px auto 40px","borderRadius":"0px","textAlign":"center","background":"url(http://codegen.caihongy.cn/20221118/85c87f82844444f2b945ecfffbbad360.png) repeat-x","display":"block","width":"1200px","lineHeight":"44px"}'>
		<span :style='{"padding":"0 0 0 10px","borderColor":"#ccc","margin":"0","color":"#333","background":"#eee","borderWidth":"1px 0 1px 1px","display":"inline-block","width":"100px","fontSize":"16px","lineHeight":"44px","borderStyle":"solid","height":"44px"}'>查看更多</span>
		<i v-if="true" :style='{"padding":"0 20px 0 0","borderColor":"#ccc","margin":"0 0 0 -10px","color":"#333","borderWidth":"1px 1px 1px 0px","background":"#eee","display":"inline-block","width":"40px","fontSize":"16px","lineHeight":"44px","borderStyle":"solid","height":"44px"}' class="el-icon-d-arrow-right"></i>
	</div>
	
</div>

	




	<!-- 关于我们 -->
	<div :style='{"border":"0px solid #dfdfdf","padding":"0 20px 80px 0","boxShadow":"0px 0px 0px #eee","margin":"20px auto 20px","overflow":"hidden","borderRadius":"0px","background":"none","width":"1200px","position":"relative","height":"auto","order":"1"}'>
	  <div :style='{"padding":"8px 50px 8px  20px ","margin":"0px 0 0px 0","color":"#fff","textAlign":"left","top":"44px","left":"0","background":"linear-gradient(135deg, rgba(17,112,210,1) 0%, rgba(8,179,68,1) 100%)","width":"auto","lineHeight":"1","fontSize":"26px","position":"absolute","textShadow":"0px 0px 0px #eee","fontWeight":"bold","zIndex":"9"}'>{{aboutUsDetail.title}}</div>
	  <div :style='{"margin":"0 0 80px 0px","color":"#1170d2","textAlign":"left","display":"block","width":"100%","lineHeight":"1","fontSize":"32px","fontWeight":"bold"}'>{{aboutUsDetail.subtitle}}</div>
	  <div :style='{"padding":"0","margin":"0 0 40px 40px","display":"inline-block","width":"556px","position":"absolute","float":"left","height":"480px"}'>
	    <img :style='{"boxShadow":"-40px 40px 0px #1170d2","margin":"0px","objectFit":"cover","borderRadius":"0","display":"block","width":"100%","float":"left","height":"100%"}' :src="baseUrl + aboutUsDetail.picture1">
	    <img :style='{"margin":"0 0px","objectFit":"cover","borderRadius":"8px","display":"none","width":"48%","float":"right","height":"170px"}' :src="baseUrl + aboutUsDetail.picture2">
	    <img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseUrl + aboutUsDetail.picture3">
	  </div>
	  <div :style='{"padding":"20px 20px 20px 100px","boxShadow":"12px 12px 0px #e2f0e8","margin":"40px 0 0 0","borderColor":"#08b344","color":"rgb(102, 102, 102)","display":"inline-block","float":"right","textIndent":"2em","overflow":"hidden","borderRadius":"0px","background":"rgba(255,255,255,.6)","borderWidth":"4px","width":"640px","lineHeight":"24px","fontSize":"16px","borderStyle":"solid solid solid double","height":"440px"}' v-html="aboutUsDetail.content"></div>
	  <div :style='{"top":"66px","left":"0","background":"#08b344","display":"block","width":"calc(100% - 40px)","position":"absolute","height":"1px","zIndex":"0"}' />
	  <div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
	  <div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
	  <div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
	</div>
</div>
</template>

<script>
  export default {
    //数据集合
    data() {
      return {
        baseUrl: '',
        aboutUsDetail: {},
        systemIntroductionDetail: {},
        newsList: [],
        zhaopinxinxiRecommend: [],

      }
    },
    created() {
      this.baseUrl = this.$config.baseUrl;
      this.getAboutUs();
      this.getSystemIntroduction();
      this.getList();
    },
    //方法集合
    methods: {
      preHttp(str) {
          return str && str.substr(0,4)=='http';
      },
      getAboutUs() {
          this.$http.get('aboutus/detail/1', {}).then(res => {
            if(res.data.code == 0) {
              this.aboutUsDetail = res.data.data;
            }
          })
      },
      getSystemIntroduction() {
          this.$http.get('systemintro/detail/1', {}).then(res => {
            if(res.data.code == 0) {
              this.systemIntroductionDetail = res.data.data;
            }
          })
      },
		getList() {
          let autoSortUrl = "";
          autoSortUrl = "zhaopinxinxi/autoSort";
			this.$http.get(autoSortUrl, {params: {
				page: 1,
				limit: 6,
			}}).then(res => {
				if (res.data.code == 0) {
					this.zhaopinxinxiRecommend = res.data.data.list;
					
					
					// 商品列表样式五
					
				}
			});
			
		},
		toDetail(path, item) {
			this.$router.push({path: '/index/' + path, query: {detailObj: JSON.stringify(item)}});
		},
		moreBtn(path) {
			this.$router.push({path: '/index/' + path});
		}
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.home-preview {
	
		.recommend {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
        }
        
        .list5 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				filter: brightness(1.1);
				transform: rotate(0deg);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				opacity: 0.75;
				transition: all 0.3s ease-in-out 0s;
			}
		}
		
		.news {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list6 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list6 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list6 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list6 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				filter: brightness(1.1);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: all 0.3s ease-in-out 0s;
			}
		}
	
		.lists {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: #08b344;
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
        }
        
        .list3 .swiper-button-next::after {
				color: #08b344;
			}
			
			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-next {
            left: auto;
            right: 10px;
			}
			
			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				-webkit-perspective: 1000px;
				perspective: 1000px;
				opacity: 0.75;
				transition: all 0.3s ease-in-out 0s;
			}
		}
	}
</style>
