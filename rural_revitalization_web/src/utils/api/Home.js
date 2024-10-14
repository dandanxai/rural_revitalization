import request from "./request.js"


//首页加载的时候获取政策宣传
export function getPolicy(){
    return request({
        url : '/policies/getPolicies',
        method : 'get',
        headers: { 'Content-Type': "application/x-www-form-urlencoded" },
    })
}

//首页走马灯加载
export function getMarqueeInfo(){
    return request({
        url : '/policies/getMarqueePolicies',
        method : 'get',
        headers: { 'Content-Type': "application/x-www-form-urlencoded" },
    })
}

//点击详情
export function gotoDetail(id){
    return request({
        url : `/policies/gotoDetail/${id}`,
        method : 'get',
        headers: { 'Content-Type': "application/x-www-form-urlencoded" },
    })
}