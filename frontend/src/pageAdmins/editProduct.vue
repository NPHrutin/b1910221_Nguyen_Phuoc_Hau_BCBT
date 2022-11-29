<template lang="">
     <div>
        <div class="br_add  text-center">
            <div class="hd-name mt-3">
                <h4>Cập Nhật Thông Tin Sản Phẩm</h4>
            </div>
            <div class="p-5">
                <form action="" >
                    <div class="form-group">
                        <label for="ten"  class="d-flex f_lable" >Tên Sản Phẩm</label>
                        <div></div>
                        <input 
                            type="text" 
                            name="ten"
                            v-model="tensp"
                            placeholder="Tứ Quý"
                            class="input p-1"
                        >
                    </div>
                    <p class="d-flex f_lable" >Loại sản phẩm</p>
                    <div class="form-group">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <input 
                                        type="radio"
                                        id = "Cây" 
                                        v-model="loaisp"
                                        value="Cây"
                                    >
                                    <label for="Cay">Cây</label>
                                </div>
                                <div class="col">
                                    <input 
                                        type="radio" 
                                        id ='phu_kien'
                                        v-model="loaisp"
                                        value="Phụ Kiên"
                                    >
                                    <label for="phu_kien">Phụ Kiện</label>
                                </div>
                            </div>
                        </div>
                        

                    </div>
                    <div class="form-group">
                        <label for="noidung"   class="d-flex f_lable" >thông tin sản phẩm</label>
                        <input 
                            type="text" 
                            name = 'noidung'
                            v-model="motasp"
                            class="input p-1"
                        >
                    </div>
                    <div class="form-group">
                        <label for="gia"  class="d-flex f_lable" >Giá</label>
                        <input 
                            type="text"
                            name="gia" 
                            v-model="giasp"
                            class="input p-1"
                        >
                    </div>
                    <div class="form-group">
                        <label for="soluong"  class="d-flex f_lable" >Số lượng</label>
                        <input 
                            type="text" 
                            name="soluong"
                            v-model="soluongsp"
                            class="input p-1"
                        >
                    </div>
                    <div class="form-group">
                        <label for="ban"  class="d-flex f_lable" >Đã bán</label>
                        <input 
                            type="text" 
                            name="ban"
                            v-model="bansp"
                            class="input p-1"
                        >
                    </div>
                    <div class="form-group" >
                        <label for="url"   class="d-flex f_lable">Hình sản phâm</label>
                        <input 
                            type="text" 
                            name="url"
                            v-model="urlsp"
                            class="input p-1"
                        >
                    </div>
                </form>
                <div>
                    <button type="submit" @click="updateProduct" class="btn btn-primary">Lưu thông tin</button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import axios from "axios";
import route from "../router/index"
export default {
    
    name:'edit',

    data() {
        return {
            tensp:'',
            giasp: '',
            motasp:'',
            urlsp : '',
            soluongsp: '',
            loaisp :'',
            idsp : '',
            bansp: '',
        };
    },
    created() {
        this.getProductById();
    },

    methods:{
        async getProductById() {
            try {
                const response = await axios.get('/Products/' + this.$route.params.id)

                this.tensp = response.data.ten;
                this.motasp = response.data.mota;
                this.giasp = response.data.gia;
                this.loaisp = response.data.loai;
                this.urlsp = response.data.url;
                this.soluongsp = response.data.soluong;
                this.bansp = response.data.ban;    
            }
            catch(err){
                console.log(err);
            }
        },

        async updateProduct() {
            try {
                await axios.put('/Products/' + this.$route.params.id,
                {
                    ten:this.tensp , 
                    mota:this.motasp, 
                    gia:this.giasp , 
                    loai:this.loaisp , 
                    url:this.urlsp,  
                    soluong:this.soluongsp, 
                    ban:this.bansp,
                    }

                )

                this.tensp = "",
                this.motasp = "",
                this.giasp = "",
                this.loaisp = "",
                this.urlsp = "",
                this.soluongsp ="", 
                this.bansp = "",
                this.$router.push("/Admin")
                
                    
            }
            catch(err){
                console.log(err);
            }
        },

    }

}
</script>
<style >
    .br_add{
        border: 1px solid black;
        background-color: rgb(132, 197, 113);
        border-radius:5px ;
        width:400px;
        margin : 50px auto;

    }

    .input{
        width:300px;
    }
    
</style>