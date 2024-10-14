<template>
    <div>
        <div class="viewMain">
            <div class="viewMain_title">
                <h1>{{ mainInfo.title }}</h1>
            </div>

            <div class="viewMain_share">
                <span>{{ mainInfo.issued_at }}</span>
                <span>|</span>
                <span>来源</span>
            </div>

            <div class="viewMain_centent">
                <span v-for="item in 5" style="font-size: 1.5em;">{{ mainInfo.content }}</span>
            </div>
        </div>
    </div>
</template>

<script>
    import PolocyContent from "./PolicyContent.js"
    export default PolocyContent
</script>

<style>
    @import url("./PolicyContent.css");
</style>