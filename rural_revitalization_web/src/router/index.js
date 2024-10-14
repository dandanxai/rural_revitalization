import Vue from "vue"
import VueRouter from "vue-router"

import PolicyContent from '../views/Policy/PolicyContent/PolicyContent.vue'
import Body from "../components/Body/Body.vue";
import index from "../components/huang/index.vue"

Vue.use(VueRouter);

const router = new VueRouter({
    mode : 'history',
    routes: [
        {
            path : "/",
            redirect : '/body'
        },
        {
            path: '/body',
            name: 'body', // 确保这里的名称与重定向匹配
            component: Body
        },
        // {
        //     path : "/policyContent/:policy_id",
        //     name : 'policyContent',
        //     component : PolicyContent
        // },
        // 桑晨浩
        {
            path : "/policyContent/:policy_id",
            name : 'policyContent',
            component : index
        }
    ]
})

export default router