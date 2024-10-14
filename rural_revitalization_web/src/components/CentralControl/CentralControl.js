import Header from '../Header/Header.vue'
import Body from '../Body/Body.vue'
import Footer from '../Footer/Footer.vue'
import PolicyContent from '../../views/Policy/PolicyContent/PolicyContent.vue'
import index from '../huang/index.vue'

export default{
    name : "CentralControl",
    components : {
        Header,
        Body,
        Footer,
        PolicyContent,
        index
    },
    data() {
        return {
            nowDate : "" , 
            searchQuery : '' ,
            marquee_photo : [
                "http://images.chinagate.cn/site1020/2024-09/20/117438676_t2_0X14X600X352_e05756db-322c-4f9b-9f03-d12464a2abc1.jpg" ,  
                "http://images.chinagate.cn/site1020/2024-09/20/117438682_t2_3X0X600X336_52c58fcb-a538-4fa0-9e3c-fab6c82e6848.jpg" , 
                "http://images.chinagate.cn/site1020/2024-09/20/117438671_t2_4X0X600X335_5e096b03-209f-4f09-abe1-73ae420d997c.jpg" , 
                "http://images.chinagate.cn/site1020/2024-09/20/117438679_t2_0X0X600X338_f4f8e43d-5b74-40d8-9997-de0b35802463.jpg"
            ],
            policyAdvocacy : [],
            marqueePolicies : []
        }
    },
}