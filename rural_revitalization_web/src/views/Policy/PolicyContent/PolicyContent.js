import { gotoDetail } from '../../../utils/api/Home.js'

export default {
    name: "PolicyContent",
    data() {
        return {
            mainInfo : {}
        };
    },
    computed: {
        
    },
    mounted() {
        gotoDetail(this.$route.params.policy_id).then(
            request => {
                this.mainInfo = request.data[0]
            },
            error => {
                console.log(error)
            }
        )
    }
};
