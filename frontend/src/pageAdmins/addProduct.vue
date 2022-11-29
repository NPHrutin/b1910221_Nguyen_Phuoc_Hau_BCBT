<template >
    <div>
        <div class="br_add  text-center">
            <div class="hd-name mt-3">
                <h4>Thêm Sản Phẩm</h4>
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
                            placeholder="thông tin sản phẩm"
                            class="input p-1"
                        >
                    </div>
                    <div class="form-group">
                        <label for="gia"  class="d-flex f_lable" >Giá</label>
                        <input 
                            type="text"
                            name="gia" 
                            v-model="giasp"
                            placeholder="25000"
                            class="input p-1"
                        >
                    </div>
                    <div class="form-group">
                        <label for="soluong"  class="d-flex f_lable" >Số lượng</label>
                        <input 
                            type="text" 
                            name="soluong"
                            v-model="soluongsp"
                            placeholder="100"
                            class="input p-1"
                        >
                    </div>
                    <div class="form-group" >
                        <label for="url"   class="d-flex f_lable">Hình sản phâm</label>
                        <input 
                            type="text" 
                            name="url"
                            v-model="urlsp"
                            placeholder="hình"
                            class="input p-1"
                        >
                    </div>
                </form>
                <div>
                    <button type="submit" @click="saveProduct" class="btn btn-primary">Lưu thông tin</button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import axios from "axios";
export default {
    name:'AddProduct',

    data() {
        return {
            tensp:'',
            giasp: 0,
            motasp:'',
            urlsp : '',
            soluongsp: 0,
            loaisp :'',
            idsp : 0,
            bansp:0,

        };
    },

    methods:{
        async saveProduct() {
            try {
                const response = await axios.get("/Products")
                this.idsp = response.data.length + 1;
                await axios.post("/Products",{
                    id_sp:this.idsp,
                    ten:this.tensp,
                    mota:this.motasp,
                    gia:this.giasp,
                    loai:this.loaisp,
                    url:this.urlsp,
                    soluong:this.soluongsp,
                    ban:this.bansp

                });
                this.idsp = "",
                this.tensp = "",
                this.motasp = "",
                this.giasp = "",
                this.loaisp = "",
                this.urlsp = "",
                this.soluongsp = "",
                this.bansp = "",
                this.$router.push("/Admin")

                alert('thanh cong')
            }
            catch(err){
                console.log(err);
                alert('that bai')
            }
        },

    }
}
</script>
<style >
    body { 
        background-color: rgb(206, 241, 241);

    }
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