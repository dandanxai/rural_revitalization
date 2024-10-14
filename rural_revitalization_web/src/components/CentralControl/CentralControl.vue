<template>
    <div>
        <Header></Header>
        <router-view></router-view>
        <Footer></Footer>
    </div>
</template>

<script>
    import CentralControl from './CentralControl.js';
    export default CentralControl
</script>

<style>
    @import url("./CentralControl.css");
</style>