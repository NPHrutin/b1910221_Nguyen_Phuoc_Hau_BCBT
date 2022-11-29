<template lang="">
    <div class="ft-1">
       <p class= img><img src="../assets/footer.jpg" alt="logo"></p>
       <p class=" p"> Kênh mua sắm sản phẩm Cây cảnh, cây trang trí với hàng ngàn lựa chọn thỏa mãn nhu cầu trang trí nhà, văn phong , nơi học và làm việc... 
        Nhận thiết kế, thi công trọn gói cây cảnh quan, bonsai và vườn koi giá tốt nhất</p>
    </div>
    <div class="ft-2">
        <div class="container">
            <div class="row">
                <div class="col d-flex">
                    <ul>
                        Follow Us
                        <li>
                            <a href="#">
                                <i class="fa-brands fa-facebook">  FaceBook</i>  
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa-brands fa-square-instagram">  Instagram</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa-brands fa-twitter">  Twitter</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa-brands fa-youtube">  Youtube</i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col d-flex">
                    <ul class="inflo">
                        Thông Tin
                        <li>
                            <a href="#">Trang Chủ</a>
                        </li>
                        <li>
                            <a href="#">Giới Thiệu</a>
                        </li>
                        <li>
                            <a href="#">Tiểu Cảnh</a>
                        </li>
                        <li>
                            <a href="#">Tin Tức </a>
                        </li>
                        <li>
                            <a href="#">Trang trí</a>
                        </li>

                    </ul>
                </div>
                <div class="col d-flex">
                    <ul class="inflo">
                        Sản Phâm
                        <li>Các Loại Sen Đá</li>
                        <li>Cây Lá Kim</li>
                        <li>Châu Cây </li>
                        <li>Đất Trông</li>
                        <li>Phân Bón</li>
                        <li>Dụng Cụ Chăm Sóc Cây</li>
                    </ul>
                </div>
                <dic class="col d-flex">
                    <ul>
                        Thống Tin Liên Lạc
                        <li>
                            <i class="fa-solid fa-signature"></i>
                            Nguyễn Phước Hậu
                        </li>
                        <li>
                            <i class="fa-solid fa-house"></i>
                            Cân Thơ
                        </li>
                        <li>
                            <i class="fa-solid fa-phone"></i>
                            0334-245-365
                        </li>
                        <li>
                            <i class="fa-solid fa-envelope"></i>
                            phuochau@gmail.com
                        </li>
                    </ul>
                </dic>
            </div>
        </div>
    </div>
    <div class="ft-3">
        <p>powered by Nguyen Phuoc Hau &commat; 2022</p>
    </div>
</template>
<script>
export default {
    name: 'Footer'
}
</script>
<style >
    .img {
        border-radius: 50%;
        width: 90px;
        margin-left: auto; 
        margin-right: auto;

    }

    .p{
        text-align: center;
    }
    .ft-1{
        background-color:rgb(163, 234, 218);
        padding: 15px 0px;
    }
    .ft-2{
        background-color: rgb(182, 229, 236) ;
        padding: 15px 0px;
    }
    .ft-3{
        background-color: rgb(62, 60, 60);
        text-align: center;
        color: #fff;
        padding-top :4px;
        padding-bottom:1px;
    }

    ul {
        list-style: none;
        font-size :20px;
        
    }
    ul li {
        font-size :15px;
    }
    li {
        margin : 10px;
    }
</style>