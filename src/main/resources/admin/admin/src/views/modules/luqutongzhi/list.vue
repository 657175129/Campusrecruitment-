<template>
	<div class="main-content" :style='{"padding":"30px 0 0"}'>
		<!-- 列表页 -->
		<template v-if="showFlag">
			<el-form class="center-form-pv" :style='{"width":"150px","margin":"0","position":"absolute","right":"7%","background":"none","zIndex":"1003"}' :inline="true" :model="searchForm">
				<el-row :style='{"flexWrap":"wrap","justifyContent":"center","display":"flex"}' >
					<div :style='{"width":"100%","margin":"0 0 10px","flexWrap":"wrap","justifyContent":"center","display":"flex"}'>
						<label :style='{"margin":"0","color":"#333","textAlign":"left","display":"inline-block","width":"100%","lineHeight":"40px","fontSize":"14px","fontWeight":"500","height":"40px"}' class="item-label">姓名</label>
						<el-input v-model="searchForm.xingming" placeholder="姓名" clearable></el-input>
					</div>

					<div :style='{"width":"100%","margin":"0 0 10px","flexWrap":"wrap","justifyContent":"center","display":"flex"}'>
						<label :style='{"margin":"0","color":"#333","textAlign":"left","display":"inline-block","width":"100%","lineHeight":"40px","fontSize":"14px","fontWeight":"500","height":"40px"}' class="item-label">录取日期</label>
						<el-date-picker v-model="searchForm.yaoqingriqistart" type="date" value-format="yyyy-MM-dd" format="yyyy-MM-dd" placeholder="录取日期起始"></el-date-picker>
						至
						<el-date-picker v-model="searchForm.yaoqingriqiend" type="date" value-format="yyyy-MM-dd" format="yyyy-MM-dd" placeholder="录取日期结束"></el-date-picker>
					</div>

					<div :style='{"width":"100%","margin":"0 0 10px","flexWrap":"wrap","justifyContent":"center","display":"flex"}'>
						<label :style='{"margin":"0","color":"#333","textAlign":"left","display":"inline-block","width":"100%","lineHeight":"40px","fontSize":"14px","fontWeight":"500","height":"40px"}' class="item-label">企业名称</label>
						<el-input v-model="searchForm.qiyemingcheng" placeholder="企业名称" clearable></el-input>
					</div>
					<el-button :style='{"border":"2px solid","cursor":"pointer","padding":"0px","outline":"none","backgroundColor":"#fff","margin":"10px auto","color":"rgba(135, 154, 108, 1)","borderRadius":"4px","borderImage":"linear-gradient(180deg, rgba(135.00000715255737, 154.00000602006912, 108.00000116229057, 1), rgba(226.0000017285347, 226.0000017285347, 226.0000017285347, 0.3799999952316284)) 1 1","width":"100%","fontSize":"14px","height":"40px"}' type="success" @click="search()">查询</el-button>
				</el-row>

				<el-row :style='{"margin":"20px 0 0 0px","flexWrap":"wrap","flexDirection":"column","background":"none","justifyContent":"center","display":"flex"}'>
<!--					<el-button :style='{"border":"2px solid","cursor":"pointer","padding":"0 24px","margin":"0 auto 10px","outline":"none","color":"rgba(135, 154, 108, 1)","borderRadius":"4px","background":"#fff","borderImage":"linear-gradient(180deg, rgba(135.00000715255737, 154.00000602006912, 108.00000116229057, 1), rgba(226.0000017285347, 226.0000017285347, 226.0000017285347, 0.3799999952316284)) 1 1","width":"100%","fontSize":"14px","height":"40px"}' v-if="isAuth('luqutongzhi','新增')" type="success" @click="addOrUpdateHandler()">新增</el-button>-->
<!--					<el-button :style='{"border":"2px solid","cursor":"pointer","padding":"0 24px","margin":"0 auto 10px","outline":"none","color":"rgba(135, 154, 108, 1)","borderRadius":"4px","background":"#fff","borderImage":"linear-gradient(180deg, rgba(135.00000715255737, 154.00000602006912, 108.00000116229057, 1), rgba(226.0000017285347, 226.0000017285347, 226.0000017285347, 0.3799999952316284)) 1 1","width":"100%","fontSize":"14px","height":"40px"}' v-if="isAuth('luqutongzhi','删除')" :disabled="dataListSelections.length <= 0" type="danger" @click="deleteHandler()">删除</el-button>-->




				</el-row>
			</el-form>

			<!-- <div> -->
				<el-table class="tables"
					:stripe='false'
					:style='{"padding":"0","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.3020)","borderColor":"#eee","margin":"0 0 0 7%","borderRadius":"30px 30px 5px 5px","borderWidth":"1px 0 0 1px","background":"#fff","width":"calc(86% - 170px)","borderStyle":"solid"}'
					v-if="isAuth('luqutongzhi','查看')"
					:data="dataList"
					v-loading="dataListLoading"
				@selection-change="selectionChangeHandler">
					<el-table-column :resizable='true' type="selection" align="center" width="50"></el-table-column>
					<el-table-column :resizable='true' :sortable='false' label="编号" type="index" width="50" />

					<el-table-column :resizable='true' :sortable='false'
						prop="zhanghao"
					label="账号">
						<template slot-scope="scope">
							{{scope.row.zhanghao}}
						</template>
					</el-table-column>

					<el-table-column :resizable='true' :sortable='false'
						prop="xingming"
					label="姓名">
						<template slot-scope="scope">
							{{scope.row.xingming}}
						</template>
					</el-table-column>

<!--					<el-table-column :resizable='true' :sortable='false'-->
<!--						prop="shoujihaoma"-->
<!--					label="手机号码">-->
<!--						<template slot-scope="scope">-->
<!--							{{scope.row.shoujihaoma}}-->
<!--						</template>-->
<!--					</el-table-column>-->

<!--					<el-table-column :resizable='true' :sortable='false'-->
<!--						prop="yaoqingneirong"-->
<!--					label="录取内容">-->
<!--						<template slot-scope="scope">-->
<!--							{{scope.row.yaoqingneirong}}-->
<!--						</template>-->
<!--					</el-table-column>-->
<!--					<el-table-column :resizable='true' :sortable='false'-->
<!--						prop="yaoqingriqi"-->
<!--					label="录取日期">-->
<!--						<template slot-scope="scope">-->
<!--							{{scope.row.yaoqingriqi}}-->
<!--						</template>-->
<!--					</el-table-column>-->

					<el-table-column :resizable='true' :sortable='false'
						prop="qiyezhanghao"
					label="企业账号">
						<template slot-scope="scope">
							{{scope.row.qiyezhanghao}}
						</template>
					</el-table-column>

					<el-table-column :resizable='true' :sortable='false'
						prop="qiyemingcheng"
					label="企业名称">
						<template slot-scope="scope">
							{{scope.row.qiyemingcheng}}
						</template>
					</el-table-column>

<!--					<el-table-column :resizable='true' :sortable='false'-->
<!--						prop="lianxishouji"-->
<!--					label="联系手机">-->
<!--						<template slot-scope="scope">-->
<!--							{{scope.row.lianxishouji}}-->
<!--						</template>-->
<!--					</el-table-column>-->

					<el-table-column :resizable='true' :sortable='false' prop="status" label="状态"></el-table-column>
<!--					<el-table-column :resizable='true' :sortable='false' v-if="isAuth('luqutongzhi','审核')" prop="sfsh" label="回复">-->
<!--						<template slot-scope="scope">-->
<!--							<el-button  type="text" size="small" @click="shDialog(scope.row)">回复</el-button>-->
<!--						</template>-->
<!--					</el-table-column>-->
					<el-table-column width="300" label="操作">
						<template slot-scope="scope">
<!--							<el-button :style='{"border":"2px solid","cursor":"pointer","padding":"0 24px","margin":"0 10px 5px 0","outline":"none","color":"rgba(135, 154, 108, 1)","borderRadius":"4px","background":"#fff","borderImage":"linear-gradient(180deg, rgba(135.00000715255737, 154.00000602006912, 108.00000116229057, 1), rgba(226.0000017285347, 226.0000017285347, 226.0000017285347, 0.3799999952316284)) 1 1","width":"auto","fontSize":"14px","height":"32px"}' v-if=" isAuth('luqutongzhi','查看')" type="success" size="mini" @click="addOrUpdateHandler(scope.row.id,'info')">详情</el-button>-->
<!--							<el-button :style='{"border":"2px solid","cursor":"pointer","padding":"0 24px","margin":"0 10px 5px 0","outline":"none","color":"rgba(135, 154, 108, 1)","borderRadius":"4px","background":"#fff","borderImage":"linear-gradient(180deg, rgba(135.00000715255737, 154.00000602006912, 108.00000116229057, 1), rgba(226.0000017285347, 226.0000017285347, 226.0000017285347, 0.3799999952316284)) 1 1","width":"auto","fontSize":"14px","height":"32px"}' v-if=" isAuth('luqutongzhi','审核')" type="success" size="mini" @click="shDialog(scope.row)">签收</el-button>-->
<!--							<el-button :style='{"border":"2px solid","cursor":"pointer","padding":"0 24px","margin":"0 10px 5px 0","outline":"none","color":"rgba(135, 154, 108, 1)","borderRadius":"4px","background":"#fff","borderImage":"linear-gradient(180deg, rgba(135.00000715255737, 154.00000602006912, 108.00000116229057, 1), rgba(226.0000017285347, 226.0000017285347, 226.0000017285347, 0.3799999952316284)) 1 1","width":"auto","fontSize":"14px","height":"32px"}' v-if=" isAuth('luqutongzhi','修改')" type="primary" size="mini" @click="addOrUpdateHandler(scope.row.id)">修改</el-button>-->
              <el-button :style='{"border":"2px solid","cursor":"pointer","padding":"0 24px","margin":"0 10px 5px 0","outline":"none","color":"rgba(135, 154, 108, 1)","borderRadius":"4px","background":"#fff","borderImage":"linear-gradient(180deg, rgba(135.00000715255737, 154.00000602006912, 108.00000116229057, 1), rgba(226.0000017285347, 226.0000017285347, 226.0000017285347, 0.3799999952316284)) 1 1","width":"auto","fontSize":"14px","height":"32px"}' v-if=" isAuth('luqutongzhi','新增')" type="success" size="mini" @click="offer(scope.row)">录取</el-button>
              <el-button :style='{"border":"2px solid","cursor":"pointer","padding":"0 24px","margin":"0 10px 5px 0","outline":"none","color":"rgba(135, 154, 108, 1)","borderRadius":"4px","background":"#fff","borderImage":"linear-gradient(180deg, rgba(135.00000715255737, 154.00000602006912, 108.00000116229057, 1), rgba(226.0000017285347, 226.0000017285347, 226.0000017285347, 0.3799999952316284)) 1 1","width":"auto","fontSize":"14px","height":"32px"}' v-if=" isAuth('luqutongzhi','审核')" type="success" size="mini" @click="shDialog(scope.row)">签收</el-button>




<!--							<el-button :style='{"border":"2px solid","cursor":"pointer","padding":"0 24px","margin":"0 10px 5px 0","outline":"none","color":"rgba(135, 154, 108, 1)","borderRadius":"4px","background":"#fff","borderImage":"linear-gradient(180deg, rgba(135.00000715255737, 154.00000602006912, 108.00000116229057, 1), rgba(226.0000017285347, 226.0000017285347, 226.0000017285347, 0.3799999952316284)) 1 1","width":"auto","fontSize":"14px","height":"32px"}' v-if="isAuth('luqutongzhi','删除') " type="danger" size="mini" @click="deleteHandler(scope.row.id)">删除</el-button>-->
						</template>
					</el-table-column>
				</el-table>
				<el-pagination
					@size-change="sizeChangeHandle"
					@current-change="currentChangeHandle"
					:current-page="pageIndex"
					background
					:page-sizes="[10, 20, 30, 50]"
					:page-size="pageSize"
					:layout="layouts.join()"
					:total="totalPage"
					prev-text="<"
					next-text=">"
					:hide-on-single-page="false"
					:style='{"padding":"0","margin":"20px 0 ","whiteSpace":"nowrap","color":"#333","textAlign":"center","width":"70%","fontWeight":"500"}'
				></el-pagination>
			<!-- </div> -->
		</template>

		<!-- 添加/修改页面  将父组件的search方法传递给子组件-->
		<add-or-update v-if="addOrUpdateFlag" :parent="this" ref="addOrUpdate"></add-or-update>


		<el-dialog title="签收" :visible.sync="sfshVisiable" width="50%">
			<el-form ref="form" :model="form" label-width="80px">
				<el-form-item label="签收">
<!--					<el-input type="textarea" :rows="8" v-model="shForm.shhf"></el-input>-->
          <el-select v-model="shForm.shhf" placeholder="签收状态">
            <el-option label="接受" value="接受"></el-option>
            <el-option label="拒绝" value="拒绝"></el-option>
          </el-select>
				</el-form-item>
			</el-form>
			<span slot="footer" class="dialog-footer">
				<el-button @click="shDialog">取 消</el-button>
				<el-button type="primary" @click="shHandler">确 定</el-button>
			</span>
		</el-dialog>



	</div>
</template>

<script>
import axios from 'axios'
import AddOrUpdate from "./add-or-update";
export default {
  data() {
    return {
      oneData:{},
      searchForm: {
        key: ""
      },
      form:{},
      dataList: [],
      pageIndex: 1,
      pageSize: 10,
      totalPage: 0,
      dataListLoading: false,
      dataListSelections: [],
      showFlag: true,
      sfshVisiable: false,
      shForm: {},
      chartVisiable: false,
      chartVisiable1: false,
      chartVisiable2: false,
      chartVisiable3: false,
      chartVisiable4: false,
      chartVisiable5: false,
      addOrUpdateFlag:false,
      layouts: ["total","prev","pager","next","sizes","jumper"],

    };
  },
  created() {
    this.init();
    this.getDataList();
    this.contentStyleChange()
  },
  mounted() {
  },
  filters: {
    htmlfilter: function (val) {
      return val.replace(/<[^>]*>/g).replace(/undefined/g,'');
    }
  },
  components: {
    AddOrUpdate,
  },
  methods: {

    contentStyleChange() {
      this.contentPageStyleChange()
    },
    // 分页
    contentPageStyleChange(){
      let arr = []

      // if(this.contents.pageTotal) arr.push('total')
      // if(this.contents.pageSizes) arr.push('sizes')
      // if(this.contents.pagePrevNext){
      //   arr.push('prev')
      //   if(this.contents.pagePager) arr.push('pager')
      //   arr.push('next')
      // }
      // if(this.contents.pageJumper) arr.push('jumper')
      // this.layouts = arr.join()
      // this.contents.pageEachNum = 10
    },








    init () {
    },
    search() {
      this.pageIndex = 1;
      this.getDataList();
    },

    // 获取数据列表
    async getDataList() {
      this.dataListLoading = true;
      // let params = {
      //   page: this.pageIndex,
      //   limit: this.pageSize,
      //   sort: 'id',
      //   order: 'desc',
      // }
      //      if(this.searchForm.xingming!='' && this.searchForm.xingming!=undefined){
      //       params['xingming'] = '%' + this.searchForm.xingming + '%'
      //     }
      //      if(this.searchForm.yaoqingriqistart!='' && this.searchForm.yaoqingriqistart!=undefined ){
      //       params['yaoqingriqistart'] = this.searchForm.yaoqingriqistart
      //     }
      //     if(this.searchForm.yaoqingriqiend!='' && this.searchForm.yaoqingriqiend!=undefined){
      //       params['yaoqingriqiend'] = this.searchForm.yaoqingriqiend
      //     }
      //      if(this.searchForm.qiyemingcheng!='' && this.searchForm.qiyemingcheng!=undefined){
      //       params['qiyemingcheng'] = '%' + this.searchForm.qiyemingcheng + '%'
      //     }
      // this.$http({
      //   url: "luqutongzhi/page",
      //   method: "get",
      //   params: params
      // }).then(({ data }) => {
      //   if (data && data.code === 0) {
      //     this.dataList = data.data.list;
      //     this.totalPage = data.data.total;
      //   } else {
      //     this.dataList = [];
      //     this.totalPage = 0;
      //   }
      //   this.dataListLoading = false;
      // });

      //-------------------------------------------

      let params = {
        page: this.pageIndex,
        limit: this.pageSize,
        sort: 'id',
        order: 'desc',
      }
      await this.$http({
        url: "tongzhixinxi/page",
        method: "get",
        params: params
      }).then(({data}) => {
        if (data && data.code === 0) {

          this.dataList = data.data.list;
          this.totalPage = data.data.total;
          console.log("tongzhixinxi:")
          console.log(this.dataList)
        } else {
          this.dataList = [];
          this.totalPage = 0;
        }
        this.dataListLoading = false;
      });


      //  ····················zhaopinyiyuan 中的信息
      let paramsZhao = {
        page: this.pageIndex,
        limit: this.pageSize,
        sort: 'id',
        order: 'desc',
      }

      await  this.$http({
        url: "zhaopinyiyuan/page",
        method: "get",
        params: params
      }).then(({data}) => {
        if (data && data.code === 0) {
          var list = data.data.list



          // this.dataList.concat(list);
          const combinedList = [...this.dataList,...list]
          this.dataList=combinedList
          console.log("zhaopinyiyuan:")
          console.log(this.dataList)
          this.totalPage = this.totalPage + data.data.total;
        } else {
          this.dataList = [];
          this.totalPage = 0;
        }
        this.dataListLoading = false;
      });

    },
    // 每页数
    sizeChangeHandle(val) {
      this.pageSize = val;
      this.pageIndex = 1;
      this.getDataList();
    },
    // 当前页
    currentChangeHandle(val) {
      this.pageIndex = val;
      this.getDataList();
    },
    // 多选
    selectionChangeHandler(val) {
      this.dataListSelections = val;
    },
    // 录取
    offer(row){
      this.oneData =row
      this.addOrUpdateHandler()
    },
    // 添加/修改
    addOrUpdateHandler(id,type) {
      this.showFlag = false;
      this.addOrUpdateFlag = true;
      this.crossAddOrUpdateFlag = false;
      if(type!='info'){
        type = 'else';
      }
      this.$nextTick(() => {
        this.$refs.addOrUpdate.init(id,type);
      });
    },
    // 审核窗口
    shDialog(row){
      console.log(row)
      console.log(row.interviewTime)
      this.sfshVisiable = !this.sfshVisiable;
      // 说明是interview表
      if(row.interviewtime!=='undefined'){
        this.shForm = {
          offerType:1,//说明是inform
          zhanghao: row.zhanghao,
          xingming: row.xingming,
          shoujihaoma: row.shoujihaoma,
          yaoqingneirong: row.yaoqingneirong,
          yaoqingriqi: row.yaoqingriqi,
          qiyezhanghao: row.qiyezhanghao,
          qiyemingcheng: row.qiyemingcheng,
          lianxishouji: row.lianxishouji,
          shhf: row.shhf,
          id: row.id
        }
      }else {
        this.shForm = {

          zhanghao: row.zhanghao,
          xingming: row.xingming,
          shoujihaoma: row.shoujihaoma,
          yaoqingneirong: row.yaoqingneirong,
          yaoqingriqi: row.yaoqingriqi,
          qiyezhanghao: row.qiyezhanghao,
          qiyemingcheng: row.qiyemingcheng,
          lianxishouji: row.lianxishouji,
          shhf: row.shhf,
          id: row.id
        }
      }
    },
    // 审核
    shHandler(){
      this.$confirm(`确定操作?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(() => {
        this.$http({
          url: "luqutongzhi/update",
          method: "post",
          data: this.shForm
        }).then(({ data }) => {
          if (data && data.code === 0) {
            this.$message({
              message: "操作成功",
              type: "success",
              duration: 1500,
              onClose: () => {
                this.getDataList();
                this.shDialog()
              }
            });
          } else {
            this.$message.error(data.msg);
          }
        });
      });
    },
    // 下载
    download(file){
      window.open(`${file}`)
    },
    // 删除
    deleteHandler(id) {
      var ids = id
        ? [Number(id)]
        : this.dataListSelections.map(item => {
            return Number(item.id);
          });
      this.$confirm(`确定进行[${id ? "删除" : "批量删除"}]操作?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(() => {
        this.$http({
          url: "luqutongzhi/delete",
          method: "post",
          data: ids
        }).then(({ data }) => {
          if (data && data.code === 0) {
            this.$message({
              message: "操作成功",
              type: "success",
              duration: 1500,
              onClose: () => {
                this.search();
              }
            });
          } else {
            this.$message.error(data.msg);
          }
        });
      });
    },


  }

};
</script>
<style lang="scss" scoped>

	.center-form-pv {
	  .el-date-editor.el-input {
	    width: auto;
	  }
	}

	.el-input {
	  width: auto;
	}

	// form
	.center-form-pv .el-input /deep/ .el-input__inner {
				border: 0px solid;
				border-radius: 0;
				padding: 0 10px;
				box-shadow: 0px 4px 10px 0px rgba(0,0,0,0.3020);
				outline: none;
				margin: 0 auto;
				color: #333;
				width: 100%;
				font-size: 14px;
				height: 40px;
			}

	.center-form-pv .el-select /deep/ .el-input__inner {
				border: 0;
				border-radius: 0;
				padding: 0 10px;
				box-shadow: 0px 4px 10px 0px rgba(0,0,0,0.3020);
				outline: none;
				color: #333;
				width: 100%;
				font-size: 14px;
				height: 40px;
			}

	.center-form-pv .el-date-editor /deep/ .el-input__inner {
				border: 0;
				border-radius: 0;
				padding: 0 10px 0 30px;
				box-shadow: 0px 4px 10px 0px rgba(0,0,0,0.3020);
				outline: none;
				color: #333;
				width: 100%;
				font-size: 14px;
				height: 40px;
			}

	// table
	.el-table /deep/ .el-table__header-wrapper thead {
				color: #fff;
				font-weight: 500;
				width: 100%;
			}

	.el-table /deep/ .el-table__header-wrapper thead tr {
				background: #fff;
			}

	.el-table /deep/ .el-table__header-wrapper thead tr th {
				padding: 12px 0;
				background: rgba(135, 154, 108, 1);
				border-color: #eee;
				border-width: 0 1px 1px 0;
				border-style: solid;
				text-align: center;
			}

	.el-table /deep/ .el-table__header-wrapper thead tr th .cell {
				padding: 0 10px;
				word-wrap: normal;
				word-break: break-all;
				white-space: normal;
				font-weight: bold;
				display: inline-block;
				vertical-align: middle;
				width: 100%;
				line-height: 24px;
				position: relative;
				text-overflow: ellipsis;
			}


	.el-table /deep/ .el-table__body-wrapper tbody {
				width: 100%;
			}

	.el-table /deep/ .el-table__body-wrapper tbody tr {
				background: #fff;
			}

	.el-table /deep/ .el-table__body-wrapper tbody tr td {
				padding: 12px 0;
				color: #999;
				background: #fff;
				border-color: #eee;
				border-width: 0 1px 1px 0;
				border-style: solid;
				text-align: center;
			}


	.el-table /deep/ .el-table__body-wrapper tbody tr:hover td {
				padding: 12px 0;
				color: #333;
				border-color: #eee;
				border-width: 0 1px 1px 0;
				border-style: solid;
				text-align: center;
			}

	.el-table /deep/ .el-table__body-wrapper tbody tr td {
				padding: 12px 0;
				color: #999;
				background: #fff;
				border-color: #eee;
				border-width: 0 1px 1px 0;
				border-style: solid;
				text-align: center;
			}

	.el-table /deep/ .el-table__body-wrapper tbody tr td .cell {
				padding: 0 10px;
				overflow: hidden;
				word-break: break-all;
				white-space: normal;
				line-height: 24px;
				text-overflow: ellipsis;
			}

	// pagination
	.main-content .el-pagination /deep/ .el-pagination__total {
				margin: 0 10px 0 0;
				color: #666;
				font-weight: 400;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .btn-prev {
				border: none;
				border-radius: 2px;
				padding: 0;
				margin: 0 5px;
				color: #666;
				background: #f4f4f5;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				min-width: 35px;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .btn-next {
				border: none;
				border-radius: 2px;
				padding: 0;
				margin: 0 5px;
				color: #666;
				background: #f4f4f5;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				min-width: 35px;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .btn-prev:disabled {
				border: none;
				cursor: not-allowed;
				border-radius: 2px;
				padding: 0;
				margin: 0 5px;
				color: #C0C4CC;
				background: #f4f4f5;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .btn-next:disabled {
				border: none;
				cursor: not-allowed;
				border-radius: 2px;
				padding: 0;
				margin: 0 5px;
				color: #C0C4CC;
				background: #f4f4f5;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .el-pager {
				padding: 0;
				margin: 0;
				display: inline-block;
				vertical-align: top;
			}

	.main-content .el-pagination /deep/ .el-pager .number {
				cursor: pointer;
				padding: 0 4px;
				margin: 0 5px;
				color: #666;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				border-radius: 2px;
				background: #f4f4f5;
				text-align: center;
				min-width: 30px;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .el-pager .number:hover {
				cursor: pointer;
				padding: 0 4px;
				margin: 0 5px;
				color: rgba(135, 154, 108, 1);
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				border-radius: 2px;
				background: #f4f4f5;
				text-align: center;
				min-width: 30px;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .el-pager .number.active {
				cursor: default;
				padding: 0 4px;
				margin: 0 5px;
				color: #FFF;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				border-radius: 2px;
				background: rgba(135, 154, 108, 1);
				text-align: center;
				min-width: 30px;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .el-pagination__sizes {
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input {
				margin: 0 5px;
				width: 100px;
				position: relative;
			}

	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input .el-input__inner {
				border: 1px solid #DCDFE6;
				cursor: pointer;
				padding: 0 25px 0 8px;
				color: #606266;
				display: inline-block;
				font-size: 13px;
				line-height: 28px;
				border-radius: 3px;
				outline: 0;
				background: #FFF;
				width: 100%;
				text-align: center;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input span.el-input__suffix {
				top: 0;
				position: absolute;
				right: 0;
				height: 100%;
			}

	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input .el-input__suffix .el-select__caret {
				cursor: pointer;
				color: #C0C4CC;
				width: 25px;
				font-size: 14px;
				line-height: 28px;
				text-align: center;
			}

	.main-content .el-pagination /deep/ .el-pagination__jump {
				margin: 0 0 0 24px;
				color: #606266;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .el-pagination__jump .el-input {
				border-radius: 3px;
				padding: 0 2px;
				margin: 0 2px;
				display: inline-block;
				width: 50px;
				font-size: 14px;
				line-height: 18px;
				position: relative;
				text-align: center;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .el-pagination__jump .el-input .el-input__inner {
				border: 1px solid #DCDFE6;
				cursor: pointer;
				padding: 0 3px;
				color: #606266;
				display: inline-block;
				font-size: 14px;
				line-height: 28px;
				border-radius: 3px;
				outline: 0;
				background: #FFF;
				width: 100%;
				text-align: center;
				height: 28px;
			}
</style>
