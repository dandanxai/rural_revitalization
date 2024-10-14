<template>
    <div>
        <div class="main_interface_main">
            
            <!-- 第一层 -->
            <div class="main_interface_main_top">
                <!-- 轮播图 -->
                <div class="main_interface_main_top_marquee">
                    <el-carousel class="marquee" height="100%" indicator-position="none">
                        <el-carousel-item v-for="item in marqueePolicies" :key="item.policy_id">
                            <a class="marquee_links" @click="gotoPolicyContent(item.policy_id)">
                                <img :src="item.image_url" class="marquee_links_photo">
                                <span class="marquee_links_span">{{ item.title }}</span>
                            </a>
                        </el-carousel-item>
                    </el-carousel>
                </div>

                <!-- 轮播图右侧资讯 -->
                <div class="main_interface_main_top_information">
                    <!-- 链接 -->
                    <div class="main_interface_main_top_information_top">
                        <ul class="main_interface_main_top_information_ul">
                            <li class="main_interface_main_top_information_ul_li" v-for="item in policyAdvocacy.slice(0 , 8)" :key="item.policy_id">
                                <a class="main_interface_main_top_information_ul_li_links" @click="gotoPolicyContent(item.policy_id)">{{ item.title }}</a>
                            </li>
                        </ul>
                    </div>

                    <!-- 更多 -->
                    <div class="main_interface_main_top_information_bottom">
                        <a href="#" class="main_interface_main_top_information_bottom_links">更多>>></a>
                    </div>
                </div>
            </div>

            <!-- 轮播图下方横幅 -->
            <div class="main_interface_main_top_information_banners">
                <div class="main_interface_main_top_information_banners_left">
                    <img class="main_interface_main_top_information_img" src="http://images.chinagate.cn/site1020/2024-06/04/117233438_5fe653c7-850e-47fa-8177-d7212722b4f9.jpg">
                </div>
                <div class="main_interface_main_top_information_banners_right">
                    <img class="main_interface_main_top_information_img" src="http://images.chinagate.cn/site1020/2021-08/27/aaeab59e-7ff6-4fe8-8d8a-e1fee637f02f.jpg">
                </div>
            </div>

            <!-- 助农商城 + 农业技术 -->
            <div class="main_interface_main_top_information_function">
                <!-- 农产品 -->
                <div class="main_interface_main_top_information_function_products">
                    <div class="main_interface_main_top_information_function_products_title">
                        <a href="#" class="main_interface_main_top_information_function_products_title_links">助农商城</a>
                    </div>
                    <div class="main_interface_main_top_information_function_products_info">
                        <ul class="main_interface_main_top_information_function_products_info_ul">
                            <li class="main_interface_main_top_information_function_products_info_ul_li">1</li>
                            <li class="main_interface_main_top_information_function_products_info_ul_li">2</li>
                            <li class="main_interface_main_top_information_function_products_info_ul_li">3</li>
                            <li class="main_interface_main_top_information_function_products_info_ul_li">4</li>
                            <li class="main_interface_main_top_information_function_products_info_ul_li">5</li>
                            <li class="main_interface_main_top_information_function_products_info_ul_li">6</li>
                            <li class="main_interface_main_top_information_function_products_info_ul_li">7</li>
                            <li class="main_interface_main_top_information_function_products_info_ul_li">8</li>
                            <li class="main_interface_main_top_information_function_products_info_ul_li">9</li>
                        </ul>
                    </div>
                </div>

                <!-- 农业技术 -->
                <div class="main_interface_main_top_information_function_technology">
                    <div class="main_interface_main_top_information_function_technology_title">
                        <a href="#" class="main_interface_main_top_information_function_technology_title_links">农业技术</a>
                    </div>
                    <div class="main_interface_main_top_information_function_technology_info">
                        <ul class="main_interface_main_top_information_function_technology_info_ul">
                            <li class="main_interface_main_top_information_function_technology_info_ul_li">1</li>
                            <li class="main_interface_main_top_information_function_technology_info_ul_li">2</li>
                            <li class="main_interface_main_top_information_function_technology_info_ul_li">3</li>
                            <li class="main_interface_main_top_information_function_technology_info_ul_li">4</li>
                            <li class="main_interface_main_top_information_function_technology_info_ul_li">5</li>
                            <li class="main_interface_main_top_information_function_technology_info_ul_li">6</li>
                            <li class="main_interface_main_top_information_function_technology_info_ul_li">7</li>
                            <li class="main_interface_main_top_information_function_technology_info_ul_li">8</li>
                            <li class="main_interface_main_top_information_function_technology_info_ul_li">9</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 乡村旅游 + 乡村文化 -->
            <div class="main_interface_main_top_information_function_second">
                <!-- 乡村旅游 -->
                <div class="main_interface_main_top_information_function_tourism">
                    <div class="main_interface_main_top_information_function_tourism_title">
                        <span class="main_interface_main_top_information_function_tourism_title_choose" @mouseover="showContent()" @click="clickContent()">乡村旅游</span>
                        <span class="main_interface_main_top_information_function_tourism_title_choose" @mouseover="showContent()" @click="clickContent()">乡村文化</span>
                    </div>
                    <div class="main_interface_main_top_information_function_tourism_info">
                        <div class="main_interface_main_top_information_function_tourism_info_left">
                            <el-carousel class="marquee" height="100%" indicator-position="none">
                                <el-carousel-item v-for="item in marquee_photo" :key="item">
                                    <a href="#" class="marquee_links">
                                        <img :src="item" class="marquee_links_photo">
                                        <span class="marquee_links_span">这是简介</span>
                                    </a>
                                </el-carousel-item>
                            </el-carousel>
                        </div>
                        <div class="main_interface_main_top_information_function_tourism_info_right">
                            <div class="main_interface_main_top_information_function_tourism_info_right_top">
                                <ul class="main_interface_main_top_information_function_tourism_info_right_top_ul">
                                    <li class="main_interface_main_top_information_function_tourism_info_right_top_ul_li" v-for="item in policyAdvocacy.slice(0 , 8)" :key="item.policy_id">
                                        <a href="#" class="main_interface_main_top_information_ul_li_links">{{ item.title }}</a>
                                    </li>
                                </ul>
                            </div>
                            <!-- 更多 -->
                            <div class="main_interface_main_top_information_function_tourism_info_right_bottom">
                                <a href="#" class="main_interface_main_top_information_bottom_links">更多>>></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 社区互动 -->
            <div class="main_interface_main_top_information_function_community">
                <div class="main_interface_main_top_information_function_community_title">
                    <span>社区互动</span>
                </div>
                <div v-for="item in marquee_photo" :key="item" class="main_interface_main_top_information_function_community_interaction">

                </div>
            </div>

            <!-- 底部宣传 -->
            <div class="main_interface_main_top_information_function_publicize">
                <div class="main_interface_main_top_information_function_publicize_top">
                    <span>政策宣传</span>
                </div>
                <div class="main_interface_main_top_information_function_publicize_bottom">
                    <ul class="main_interface_main_top_information_function_publicize_bottom_ul">
                        <li class="main_interface_main_top_information_function_publicize_bottom_ul_li"></li>
                        <li class="main_interface_main_top_information_function_publicize_bottom_ul_li"></li>
                        <li class="main_interface_main_top_information_function_publicize_bottom_ul_li"></li>
                        <li class="main_interface_main_top_information_function_publicize_bottom_ul_li"></li>
                        <li class="main_interface_main_top_information_function_publicize_bottom_ul_li"></li>
                        <li class="main_interface_main_top_information_function_publicize_bottom_ul_li"></li>
                        <li class="main_interface_main_top_information_function_publicize_bottom_ul_li"></li>
                        <li class="main_interface_main_top_information_function_publicize_bottom_ul_li"></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import Body from "./Body.js"
    export default Body
</script>

<style>
    @import url("./Body.css");
</style>