export default{
    name : 'Header',
    data() {
        return {
            nowDate : "" , 
            searchQuery : '' ,
        }
    },
    methods : {
        //头部获取时间
        updateTime() {
            const now = new Date(); // 获取当前时间
            const year = now.getFullYear(); // 获取年
            const month = (now.getMonth() + 1).toString().padStart(2, '0'); // 获取月（0-11，因此需要+1）
            const date = now.getDate().toString().padStart(2, '0'); // 获取日

            // 格式化日期
            this.nowDate = `${year}-${month}-${date}`;
        },

        //搜索框
        handleSearch() {
            if (this.searchQuery.trim() !== '') {
                console.log('搜索内容:', this.searchQuery);
            } else {
                this.$message.warning('请输入搜索内容');
            }
        },
    },
    mounted() {
        //头部时间绑定
        this.updateTime()
        setInterval(this.updateTime , 1000)
    },
}