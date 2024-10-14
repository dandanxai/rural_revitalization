<template>
    <div>
        <div class="main_interface_header">
            <!-- 友情链接 -->
            <div class="main_interface_header_top">
                <div class="main_interface_header_top_middle">
                    <!-- 用户登录 -->
                    <a href="#" class="main_interface_header_top_middle_links">暂未登录</a>
                    <select class="main_interface_header_top_middle_select">
                        <option value="zh" selected>简体中文</option> <!-- 默认选中中文 -->
                        <option value="en">日语</option>
                        <option value="fr">英语</option>
                        <option value="es">繁体中文</option>
                    </select>
                    <span>|</span>
                    <a href="#" class="links">友情链接</a>
                    <span>|</span>
                    <a href="#" class="links">友情链接</a>
                    <span>|</span>
                    <a href="#" class="links">友情链接</a>
                </div>
            </div>

            <!-- 图标 + 搜索框 -->
            <div class="main_interface_header_center">
                <div class="main_interface_header_center_right">
                    <img src="http://images.chinagate.cn/images_wb/ch/2021xiangcunzx/Logo.gif" class="main_interface_header_center_right_img">
                </div>
                
                <div class="main_interface_header_center_left">
                    <span class="main_interface_header_center_left_date">{{ nowDate }}</span>
                    <el-input
                        v-model="searchQuery"
                        placeholder="请输入要搜索的内容"
                        class="main_interface_header_center_left_search"
                        @keyup.enter="handleSearch"
                    >
                    <template #append>
                        <el-button icon="el-icon-search" @click="handleSearch">搜索</el-button>
                    </template>
                    </el-input>
                </div>
            </div>

            <!-- 底部导航栏 -->
            <div class="main_interface_header_bottom">
                <div class="main_interface_header_bottom_navigation">
                    <a href="#" class="navigation_links">农产品销售</a>
                    <a href="#" class="navigation_links">农业技术支持</a>
                    <a href="#" class="navigation_links">乡村旅游推广</a>
                    <a href="#" class="navigation_links">乡村文化传承</a>
                    <a href="#" class="navigation_links">政策宣传</a>
                    <a href="#" class="navigation_links">社区互动</a>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import Header from "./Header.js"
    export default Header
</script>

<style>
    @import url("./Header.css");
</style>