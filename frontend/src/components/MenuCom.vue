<template lang="">
    <div class="menu" >
        <div class = "container">
            <div class="row menu-1 ">
                <div class="col search d-flex">
                    <input
                        type="text"
                        class="form-search"
                        placeholder="Nhập thông tin cần tìm"
                    />
                                    <!-- :value="modelValue"
                                    @input="updateModelValue"
                                    @keyup.enter="submit" -->
                    <button
                        class="input-search"
                        type="button"
                        @click="submit"
                    >
                        <i class="fas fa-search"></i>
                    </button>
                </div>
                <div class="col logo">
                    <router-link class="img" @click ="scrollToTop()" to="/">
                        <img src="../assets/logo.jpg" alt="logo" >
                    </router-link>
                </div> 
                <div class="col login d-flex justify-content-end">
                     <router-link class="li-icon" @click ="scrollToTop()" to="/Login" >
                        <i class="fa-regular fa-circle-user"></i>
                    </router-link>
                    <router-link class="li-icon" @click ="scrollToTop()" to="/" >
                        <i class="fa-solid fa-cart-shopping"></i>
                    </router-link>
                    <router-link class="li-icon" @click ="scrollToTop()" to="/" >
                        <i class="fa-regular fa-heart"></i>
                    </router-link>
                   
                </div>
            </div>
        </div>
        <nav class="navba">
            <router-link class="linav" @click ="scrollToTop()" to="/">
                    Trang Chủ
                </router-link>
            <router-link class="linav" @click ="scrollToTop()" to="/about">
                    Giới Thiệu
            </router-link>
            <router-link class="linav" @click ="scrollToTop()" to="/Product">
                    Sản Phẩm
            </router-link>
            <router-link class="linav" @click ="scrollToTop()" to="/Product">
                    Trang Trí
            </router-link>
             <router-link class="linav" @click ="scrollToTop()" to="/News">
                    Tin Tức
             </router-link>
        </nav>  
    </div>
</template>
<script>

export default {
    name :'Menu',

    methods: {

        scrollToTop() {
            window.scrollTo(0, 0);
        },
    },
}
</script>
<style>
    * {
        font-family: 'Nunito', sans-serif;
    }
    .menu{
        background-color:  #c2f0cc;
        margin-top: 0px ;
        height:150px;
        padding: 20px 0px 0px 20px;
    }
    .search ,.logo , .login {
        display: inline;
    }

    .form-search {
        border-radius: 50px 0px 0px 50px;
        height: 40px;
        line-height: 10px;
        size: 50px;
        border-style: none;
        padding: 20px
        
    }
    .input-search{
        border-radius: 0px 50px 50px 0px;
        height: 40px;
        width: 50px;
        line-height: 10px;
        border-color: #fff;
        background: #fff;
        border-style: none;
    }

    .img img{
        width: 50px;
        border-radius: 50%;
    }
    .logo{
        border-left: 250px solid #c2f0cc;

    }
    .navba{
        margin-top:20px;
        text-align: center;
        /* position: fixed; */


    }

    .linav{
        color: black;
        text-align: center;
        margin:0px 20px;
        font-size:15px;
    }
    .li-icon{
        font-size:20px;
        color: black;
        margin-right:auto; 
        margin-left:auto;
    }

</style>