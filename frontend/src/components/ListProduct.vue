<template lang="">
    <div class="list_car">
        <div class="car_for" v-for="(item,index) in items" :key="item.id_sp  ">
            <div class="car">
                <div class="car_s">
                    <img class="car_img" :src="item.url" alt="">
                </div>
                <div class="hd_text">
                    <p>{{item.ten}}</p>
                    <div >
                        <p class="gia">{{item.gia}} vnd</p>
                        <p class="gia_ban">Đã bán:{{item.ban}}</p>
                    </div>
                    <div class="container">
                        <div class="row mt-3 text-center">
                            <div class="col border border-dark hove">
                                <i class="fa-regular fa-heart"></i>
                            </div>
                            <div class="col border border-dark hove">
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col border border-dark text-center hove">
                                Mua Ngay
                            </div>
                        </div>
                    </div>
                </div>
            </div>        
        </div>
    </div>
</template>
<script>
import axios from "axios";
export default {
    name:"ListProduct",
    data() {
        return {
            items: [ ],
        };
    },
    created() {
        this.getProduct();
    },

    methods:{
        async getProduct() {
            try {
                const response = await axios.get("/Products")
                this.items = response.data;
            }
            catch(err){
                console.log(err);
            }
        },

    }
    


}
</script>
<style>
    .car_img{
        height: 200px;
        width: 200px;
        border: 1px solid black;
        border-radius: 5%;
    }

    .car{ 
        margin: 10px;
        padding: 10px;
        display: inline-block;
        border: 1px solid black;
        border-radius: 2%;
        background-color:rgb(213, 223, 223);  
    }
    .car_for{ 
        display: inline;
    }
    .list_car{
        /* background-color: black; */
        padding-left :25px;
        padding-right :auto;
    }
    .hd_text{
        margin-top: 15px;
        font: 500 15px/26px "Dosis" !important;
    }
    .gia ,.gia_ban{
        display: inline;
    }
    .gia_ban{
        float: right;
    }
    
    .hove:hover{
        background-color:rgb(243, 250, 121);
    }

</style>