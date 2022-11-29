<template lang="">
    <div class="bg_lg_in">
        <div class="bg-form">
            <div>
                <div class="container ">
                    <div class="row text-content">
                        <p>Đăng Nhập</p>
                    </div>
                    <div class="row text-content">
                        <img class="log_img " src="../assets/person-svgrepo-com.svg" alt="">
                    </div>
                    <hr>
                    <form action="">
                        <div class="row">
                            <!-- <img src="../assets/person-svgrepo-com.svg" alt=""></img> -->
                            <!-- <div class="col">
                                
                                <input type="text"></input>
                            </div>
                            <div class="col">
                                
                                <input type="text"></input>
                            </div> 
                            <div class="row">
                                <button type="submit" >Đăng Nhập</button>
                            </div>  -->
                        </div>
                       

                    </form>
                </div>
            </div>
        </div>
        <img class="bg_img" src="../assets/login.jpg" alt="logo">
        
    </div>
</template>
<script>

export default {
    name : 'Login',
    
}
</script>
<style>
 .bg_lg_in {
    background-color: antiquewhite;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 50;
 }
 .bg_img{
    width: 1300px;
    height: 750px;
    opacity: 0.7;
 }

 .bg-form{
    position: absolute;
    background-color:rgb(245, 212, 212);
    z-index: 51 ;
    border: 1px solid black;
    margin-top:300px;
    margin-left: 500px;
    
    
 }
 
    
</style>