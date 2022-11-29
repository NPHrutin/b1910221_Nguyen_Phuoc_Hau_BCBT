<template lang="">
    <div class="new_pro">
        <div >
            <router-link to="/Admin/add"  type="button" class="btn btn-primary mt-5">Thêm Sản Phẩm</router-link>
        </div>
    </div>
    <br>
     <div class="list_product">
        <h4>Danh sách sản phẩm</h4>
        <div class="product_for" v-for="(item,index) in items" :key="item.id_sp  ">
            <div class="product">
                <div class="product_s">
                    <img class="product_img" :src="item.url" alt="">
                </div>
                <div class="hd_text">
                    <p>{{item.ten}}</p>
                    <div >
                        <p class="gia">{{item.gia}} vnd</p>
                        <p class="gia_ban">Đã bán:{{item.ban}}</p>
                    </div>
                    <div class="container">
                        <div class="row mt-3">
                            <div class="col-8">
                                <router-link  :to="{name :'Edit', params: { id: item.id_sp } }"  type="button" class="btn btn-success bt_edit">Cập Nhật</router-link>
                            </div>
                            <div class="col-4 ms-2">
                                <a 
                                    class="btn btn-warning bt_dele"
                                    :hau="item.id_sp"
                                    @click ="deleteProduct(item.id_sp)"
                                >
                                     Xóa
                                </a>
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
    name:'ADMIN',

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
    
        async deleteProduct(id){
            try {
                
                await axios.delete("/Products/" + id);
                this.getProduct();
            }
            catch (err){
                console.log(err);
            }
        }
    }
}
</script>
<style >

.product_img{
        height: 200px;
        width: 200px;
        border: 1px solid black;
        border-radius: 5%;
    }

    .product{ 
        margin: 10px;
        padding: 10px;
        display: inline-block;
        border: 1px solid black;
        border-radius: 2%;
        background-color:rgb(213, 223, 223);  
    }
    .product_for{ 
        display: inline;
    }
    .list_product{
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

    .bt_edit{
        margin-left:-3px ;
    }
    .bt_dele{
        margin-left :-10px;
    }
    
</style>