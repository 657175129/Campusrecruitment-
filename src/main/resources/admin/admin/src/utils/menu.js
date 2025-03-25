const menu = {
    list() {
        // return [{"backMenu":[{
        // "child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["新增","查看","修改","删除"],
        // "menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},
        // {"child":[{"appFrontIcon":"cuIcon-phone","buttons":["新增","查看","修改","删除"],
        // "menu":"企业","menuJump":"列表","tableName":"qiye"}],"menu":"企业管理"},{
        // "child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","修改","删除","职位统计","首页总数","查看评论","首页统计"],
        // "menu":"招聘信息","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息管理"},{"child":[
        // {"appFrontIcon":"cuIcon-present","buttons":["新增","查看","修改","删除"],"menu":"岗位分类",
        // "menuJump":"列表","tableName":"zhiweimingcheng"}],"menu":"岗位分类管理"},{"child":[{"appFrontIcon":"cuIcon-similar",
        // "buttons":["查看","删除"],"menu":"求职信息","menuJump":"列表","tableName":"qiuzhixinxi"}],"menu":"求职信息管理"},
        // {"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["删除","查看","投递人数统计","首页总数","首页统计"],
        // "menu":"投递信息","menuJump":"列表","tableName":"toudixinxi"}],"menu":"投递信息管理"},
        // {"child":[{"appFrontIcon":"cuIcon-album","buttons":["查看","删除"],"menu":"招聘意愿",
        // "menuJump":"列表","tableName":"zhaopinyiyuan"}],"menu":"招聘意愿管理"},{"child":[{"appFrontIcon":"cuIcon-similar",
        // "buttons":["删除","查看"],"menu":"通知信息","menuJump":"列表","tableName":"tongzhixinxi"}],"menu":"通知信息管理"},
        // {"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","删除"],"menu":"在线咨询","menuJump":"列表","tableName"
        // :"zaixianzixun"}],"menu":"在线咨询管理"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看","修改"],"menu":
        // "轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-discover","buttons":["查看","修改"],
        // "menu":"关于我们","tableName":"aboutus"},{"appFrontIcon":"cuIcon-form","buttons":["查看","修改"],
        // "menu":"系统简介","tableName":"systemintro"}],"menu":"系统管理"}],"frontMenu":
        // [{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看","投递","咨询"],
        // "menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],
        // "menu":"招聘信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":
        // "否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-similar",
        // "buttons":["查看","修改","新增","删除"],"menu":"求职信息","menuJump":"列表","tableName":"qiuzhixinxi"}],"menu":"求职信息管理"},
        // {"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","删除"],"menu":"投递信息","menuJump":"列表","tableName":"toudixinxi"}],
        // "menu":"投递信息管理"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["查看","审核"],"menu":"邀请面试","menuJump":
        // "列表","tableName":"zhaopinyiyuan"}],"menu":"邀请面试管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["查看","审核"],
        // "menu":"通知信息","menuJump":"列表","tableName":"tongzhixinxi"}],"menu":"通知信息管理"},{"child":[{"appFrontIcon":
        // "cuIcon-list","buttons":["查看","修改","删除"],"menu":"在线咨询","menuJump":"列表","tableName":"zaixianzixun"}],"menu":"在线咨询管理"}],
        // "frontMenu":[{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看","投递","咨询"],"menu":"招聘信息列表",
        // "menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"}],"hasBackLogin":"是","hasBackRegister":"是",
        // "hasFrontLogin":"是","hasFrontRegister":"否","roleName":"学生","tableName":"xuesheng"},
        // {"backMenu":[{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["新增","查看","修改","删除"],"menu":"招聘信息","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["查看","招聘意愿"],"menu":"求职信息","menuJump":"列表","tableName":"qiuzhixinxi"}],"menu":"求职信息管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","审核","通知"],"menu":"投递信息","menuJump":"列表","tableName":"toudixinxi"}],"menu":"投递信息管理"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["查看","修改","删除"],"menu":"邀请面试","menuJump":"列表","tableName":"zhaopinyiyuan"}],"menu":"邀请面试管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["查看","修改","删除"],"menu":"通知信息","menuJump":"列表","tableName":"tongzhixinxi"}],"menu":"通知信息管理"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","回复","审核"],"menu":"在线咨询","menuJump":"列表","tableName":"zaixianzixun"}],"menu":"在线咨询管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看","投递","咨询"],"menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"企业","tableName":"qiye"}]
        return [
            {
                "backMenu": [
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-flashlightopen",
                                "buttons": [
                                    "新增",
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu": "学生",
                                "menuJump": "列表",
                                "tableName": "xuesheng"
                            }
                        ],
                        "menu": "学生管理"
                    },
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-phone",
                                "buttons": [
                                    "新增",
                                    "查看",
                                    "修改",
                                    "删除",
                                ],
                                "menu": "企业",
                                "menuJump": "列表",
                                "tableName": "qiye"
                            }
                        ],
                        "menu": "企业管理"
                    },
                    // {
                    //     "child": [
                    //         {
                    //             "appFrontIcon": "cuIcon-keyboard",
                    //             "buttons": [
                    //                 "查看",
                    //                 "修改",
                    //                 "删除",
                    //                 "职位统计",
                    //                 "首页总数",
                    //                 "查看评论",
                    //                 "首页统计"
                    //             ],
                    //             "menu": "招聘信息",
                    //             "menuJump": "列表",
                    //             "tableName": "zhaopinxinxi"
                    //         }
                    //     ],
                    //     "menu": "招聘信息管理"
                    // },
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-present",
                                "buttons": [
                                    "新增",
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu": "岗位分类",
                                "menuJump": "列表",
                                "tableName": "zhiweimingcheng"
                            }
                        ],
                        "menu": "岗位分类管理"
                    },


                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-similar",
                                "buttons": [
                                    "查看",
                                    "删除"
                                ],
                                "menu": "学生求职信息",
                                "menuJump": "列表",
                                "tableName": "qiuzhixinxi"
                            },
                            {
                                "appFrontIcon": "cuIcon-album",
                                "buttons": [
                                    "查看",
                                    "删除"
                                ],
                                "menu": "企业邀请面试",
                                "menuJump": "列表",
                                "tableName": "zhaopinyiyuan"
                            }
                        ],
                        "menu": "求职面试管理"
                    },


                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-keyboard",
                                "buttons": [
                                    "查看",
                                    "修改",
                                    "删除",
                                    "职位统计",
                                    "首页总数",
                                    "查看评论",
                                    "首页统计"
                                ],
                                "menu": "企业招聘信息",
                                "menuJump": "列表",
                                "tableName": "zhaopinxinxi"
                            },

                            {
                                "appFrontIcon": "cuIcon-newshot",
                                "buttons": [
                                    "删除",
                                    "查看",
                                    "投递人数统计",
                                    "首页总数",
                                    "首页统计"
                                ],
                                "menu": "学生投递信息",
                                "menuJump": "列表",
                                "tableName": "toudixinxi"
                            },

                            {
                                "appFrontIcon": "cuIcon-similar",
                                "buttons": [
                                    "删除",
                                    "查看"
                                ],
                                "menu": "企业通知面试",
                                "menuJump": "列表",
                                "tableName": "tongzhixinxi"
                            }

                        ],
                        "menu": "招聘面试管理"
                    },


                    // {
                    //     "child": [
                    //         {
                    //             "appFrontIcon": "cuIcon-album",
                    //             "buttons": [
                    //                 "查看",
                    //                 "删除"
                    //             ],
                    //             "menu": "邀请面试",
                    //             "menuJump": "列表",
                    //             "tableName": "zhaopinyiyuan"
                    //         }
                    //     ],
                    //     "menu": "邀请面试管理"
                    // },



                    // {
                    //     "child": [
                    //         {
                    //             "appFrontIcon": "cuIcon-similar",
                    //             "buttons": [
                    //                 "删除",
                    //                 "查看"
                    //             ],
                    //             "menu": "通知面试",
                    //             "menuJump": "列表",
                    //             "tableName": "tongzhixinxi"
                    //         }
                    //     ],
                    //     "menu": "通知面试管理"
                    // },
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-list",
                                "buttons": [
                                    "查看",
                                    "删除"
                                ],
                                "menu": "在线咨询",
                                "menuJump": "列表",
                                "tableName": "zaixianzixun"
                            }
                        ],
                        "menu": "在线咨询管理"
                    },
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-copy",
                                "buttons": [
                                    "查看",
                                    "修改"
                                ],
                                "menu": "轮播图管理",
                                "tableName": "config"
                            },
                            {
                                "appFrontIcon": "cuIcon-discover",
                                "buttons": [
                                    "查看",
                                    "修改"
                                ],
                                "menu": "关于我们",
                                "tableName": "aboutus"
                            },
                            {
                                "appFrontIcon": "cuIcon-form",
                                "buttons": [
                                    "查看",
                                    "修改"
                                ],
                                "menu": "系统简介",
                                "tableName": "systemintro"
                            }
                        ],
                        "menu": "系统管理"
                    }
                ],


                "frontMenu": [
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-time",
                                "buttons": [
                                    "查看",
                                    "投递",
                                    "咨询"
                                ],
                                "menu": "招聘信息列表",
                                "menuJump": "列表",
                                "tableName": "zhaopinxinxi"
                            }
                        ],
                        "menu": "招聘信息模块"
                    }
                ],
                "hasBackLogin": "是",
                "hasBackRegister": "否",
                "hasFrontLogin": "否",
                "hasFrontRegister": "否",
                "roleName": "管理员",
                "tableName": "users"
            },
            {
                "backMenu": [
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-similar",
                                "buttons": [
                                    "查看",
                                    "修改",
                                    "新增",
                                    "删除"
                                ],
                                "menu": "学生求职信息",
                                "menuJump": "列表",
                                "tableName": "qiuzhixinxi"
                            },
                            {
                                "appFrontIcon": "cuIcon-album",
                                "buttons": [
                                    "查看",
                                    "审核"
                                ],
                                "menu": "企业邀请面试",
                                "menuJump": "列表",
                                "tableName": "zhaopinyiyuan"
                            }
                        ],
                        "menu": "求职面试管理"
                    },


                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-newshot",
                                "buttons": [
                                    "查看",
                                    "删除"
                                ],
                                "menu": "学生投递信息",
                                "menuJump": "列表",
                                "tableName": "toudixinxi"
                            },
                            {
                                "appFrontIcon": "cuIcon-similar",
                                "buttons": [
                                    "查看",
                                    "审核"
                                ],
                                "menu": "企业通知面试",
                                "menuJump": "列表",
                                "tableName": "tongzhixinxi"
                            }
                        ],
                        "menu": "投递通知管理"
                    },


                    // {
                    //     "child": [
                    //         {
                    //             "appFrontIcon": "cuIcon-album",
                    //             "buttons": [
                    //                 "查看",
                    //                 "审核"
                    //             ],
                    //             "menu": "邀请面试",
                    //             "menuJump": "列表",
                    //             "tableName": "zhaopinyiyuan"
                    //         }
                    //     ],
                    //     "menu": "邀请面试管理"
                    // },


                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-album",
                                "buttons": [
                                    "查看",
                                    "审核"
                                ],
                                "menu": "录取通知",
                                "menuJump": "列表",
                                "tableName": "luqutongzhi"
                            }
                        ],
                        "menu": "录取通知管理"
                    },

                    // {
                    //     "child": [
                    //         {
                    //             "appFrontIcon": "cuIcon-similar",
                    //             "buttons": [
                    //                 "查看",
                    //                 "审核"
                    //             ],
                    //             "menu": "通知面试",
                    //             "menuJump": "列表",
                    //             "tableName": "tongzhixinxi"
                    //         }
                    //     ],
                    //     "menu": "通知面试管理"
                    // },

                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-list",
                                "buttons": [
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu": "在线咨询",
                                "menuJump": "列表",
                                "tableName": "zaixianzixun"
                            }
                        ],
                        "menu": "在线咨询管理"
                    }
                ],

                "frontMenu": [
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-time",
                                "buttons": [
                                    "查看",
                                    "投递",
                                    "咨询"
                                ],
                                "menu": "招聘信息列表",
                                "menuJump": "列表",
                                "tableName": "zhaopinxinxi"
                            },
                        ],
                        "menu": "招聘信息模块"
                    }
                ],
                "hasBackLogin": "是",
                "hasBackRegister": "是",
                "hasFrontLogin": "是",
                "hasFrontRegister": "否",
                "roleName": "学生",
                "tableName": "xuesheng"
            },


            {
                "backMenu": [
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-keyboard",
                                "buttons": [
                                    "新增",
                                    "查看",
                                    "修改",
                                    "删除",
                                    "查看评论"
                                ],
                                "menu": "企业招聘信息",
                                "menuJump": "列表",
                                "tableName": "zhaopinxinxi"
                            },
                            {
                                "appFrontIcon": "cuIcon-newshot",
                                "buttons": [
                                    "查看",
                                    "审核",
                                    "通知"
                                ],
                                "menu": "学生投递信息",
                                "menuJump": "列表",
                                "tableName": "toudixinxi"
                            },
                            {
                                "appFrontIcon": "cuIcon-similar",
                                "buttons": [
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu": "企业通知面试",
                                "menuJump": "列表",
                                "tableName": "tongzhixinxi"
                            }
                        ],
                        "menu": "招聘面试管理"
                    },

                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-similar",
                                "buttons": [
                                    "查看",
                                    "招聘意愿"
                                ],
                                "menu": "学生求职信息",
                                "menuJump": "列表",
                                "tableName": "qiuzhixinxi"
                            },
                            {
                                "appFrontIcon": "cuIcon-album",
                                "buttons": [
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu": "企业邀请面试",
                                "menuJump": "列表",
                                "tableName": "zhaopinyiyuan"
                            }
                        ],
                        "menu": "求职面试管理"
                    },

                    // {
                    //     "child": [
                    //         {
                    //             "appFrontIcon": "cuIcon-newshot",
                    //             "buttons": [
                    //                 "查看",
                    //                 "审核",
                    //                 "通知"
                    //             ],
                    //             "menu": "投递信息",
                    //             "menuJump": "列表",
                    //             "tableName": "toudixinxi"
                    //         }
                    //     ],
                    //     "menu": "投递信息管理"
                    // },

                    // {
                    //     "child": [
                    //         {
                    //             "appFrontIcon": "cuIcon-album",
                    //             "buttons": [
                    //                 "查看",
                    //                 "修改",
                    //                 "删除"
                    //             ],
                    //             "menu": "邀请面试",
                    //             "menuJump": "列表",
                    //             "tableName": "zhaopinyiyuan"
                    //         }
                    //     ],
                    //     "menu": "邀请面试管理"
                    // },

                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-album",
                                "buttons": [
                                    "新增",
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu": "录取通知",
                                "menuJump": "列表",
                                "tableName": "luqutongzhi"
                            }
                        ],
                        "menu": "录取通知管理"
                    },

                    // {
                    //     "child": [
                    //         {
                    //             "appFrontIcon": "cuIcon-similar",
                    //             "buttons": [
                    //                 "查看",
                    //                 "修改",
                    //                 "删除"
                    //             ],
                    //             "menu": "通知面试",
                    //             "menuJump": "列表",
                    //             "tableName": "tongzhixinxi"
                    //         }
                    //     ],
                    //     "menu": "通知面试管理"
                    // },
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-list",
                                "buttons": [
                                    "查看",
                                    "回复",
                                    "审核"
                                ],
                                "menu": "在线咨询",
                                "menuJump": "列表",
                                "tableName": "zaixianzixun"
                            }
                        ],
                        "menu": "在线咨询管理"
                    }
                ],
                "frontMenu": [
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-time",
                                "buttons": [
                                    "查看",
                                    "投递",
                                    "咨询"
                                ],
                                "menu": "招聘信息列表",
                                "menuJump": "列表",
                                "tableName": "zhaopinxinxi"
                            }
                        ],
                        "menu": "招聘信息模块"
                    }
                ],
                "hasBackLogin": "是",
                "hasBackRegister": "是",
                "hasFrontLogin": "否",
                "hasFrontRegister": "否",
                "roleName": "企业",
                "tableName": "qiye"
            }
        ]
    }
}
export default menu;
