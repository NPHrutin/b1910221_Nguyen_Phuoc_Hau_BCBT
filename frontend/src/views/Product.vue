<template lang="">
    <div>
        <div class="container ">
            <div class="row produ">
                <div class="col-2 sider">
                    <div class="iput">
                        <form action="">
                            <p class="mt-3">Giá Tiền:</p>
                            <input type="radio" id="age1" name="gia" value="gia1">
                            <label for="gia1"> 50 - 100</label><br>
                            <input type="radio" id="gia2" name="gia" value="gia2">
                            <label for="gia2"> 100 - 200</label><br>  
                            <input type="radio" id="gia3" name="gia" value="gia3">
                            <label for="age3"> lớn hơn 200 </label><br><br>
                        </form>
                        <br>
                        <form class="w3-container w3-card-4">
                            <h2>Màu</h2>
                            <p>
                            <input class="w3-check" type="checkbox" checked="checked">
                            <label>Xanh</label></p>
                            <p>
                            <input class="w3-check" type="checkbox">
                            <label> Đỏ</label></p>
                            <p>
                            <input class="w3-check" type="checkbox">
                            <label> Hồng</label></p>
                            <p>
                            <input class="w3-check" type="checkbox" disabled>
                            <label>Vàng</label></p>
                        </form>
                    </div>
                </div>
                <div class="col-10 sider1">
                    <ListProduct/>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import ListProduct from '@/components/ListProduct.vue'
export default {
    name: 'ProductView',

  components: {
    ListProduct,
  
  },
    
}
</script>
<style >
    .produ{
        margin-left: -80px;
        margin-right: -80px;
    }
    .sider{
        margin-right: -40px;
        border-right: 3px solid black;
        background-color: rgb(233, 246, 224);
    }
    
</style>