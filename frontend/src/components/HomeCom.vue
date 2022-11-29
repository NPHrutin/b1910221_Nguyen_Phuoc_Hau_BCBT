<template >
    <div>
        <vueper-slides fixed-height = "600px" autoplay>
            <vueper-slide
                v-for="(slide, i) in slides" 
                :key="i"
                :image="slide.image"
                :title="slide.title"
                :content="slide.content" />
        </vueper-slides>
    </div>
    <div class="container">
        <div class="row">
            <div class="col text-center text1">
                <h3>Điều quang trong nhất ở  PLANTY là sự hài lòng của Khách Hàng từ Sản 
                    Phẩm và Thái Độ phục vu   </h3>
                <p>Với kiếm nghiệm nhiều năm trong thiết kế tiểu cảnh PLANTY đáp ứng mọi nhu cầu của khách hàng, tiểu cảnh văn phong,học tập và làm việc
                </p>
            </div>
            <div class="col">
                <img src="../assets/home5.jpg" alt="logo">
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row text-center m-5">
            <div class="col">
                <div class="img-car">
                    <router-link to="/">
                        <h4 class="text">Trong Nhà</h4>
                        <img class="img1" src="../assets/car_img.jpg" alt="img">
                    </router-link>
                </div>
            </div>
            <div class="col">
                <div class="img-car">
                    <router-link to="/">
                        <h4 class="text">Văn Phòng</h4>
                        <img class="img1" src="../assets/car_img5.jpg" alt="img">
                    </router-link>
                </div>
            </div>
            <div class="col">
                <div class="img-car">
                    <router-link to="/">
                        <h4 class="text">Tiểu Cảnh</h4>
                        <img class="img1" src="../assets/car_img10.jpg" alt="img">
                    </router-link>
                </div>
            </div>
        </div>
        <div class="row text-center m-5">
            <div class="col">
                <div class="img-car">
                    <router-link to="/">
                        <h4 class="text">Chậu </h4>
                        <img class="img1" src="../assets/car_img7.jpg" alt="img">
                    </router-link>
                </div>
            </div>
            <div class="col">
                <div class="img-car">
                    <router-link to="/">
                        <h4 class="text">Phụ Kiện</h4>
                        <img class="img1" src="../assets/car_img9.jpg" alt="img">
                    </router-link>
                </div>
            </div>
            <div class="col">
                <div class="img-car">
                    <router-link to="/">
                        <h4 class="text">Phân Bón</h4>
                        <img class="img1" src="../assets/car_img8.jpg" alt="img">
                    </router-link>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <h3 class="text-center ">Sản Phẩm</h3>
</template>
<script>
import { VueperSlides, VueperSlide } from 'vueperslides'
import 'vueperslides/dist/vueperslides.css'
export default {
    name : 'Home',
    data: () => ({
        slides: [
            {
                title: '',
                content: '',
                image: require('@/assets/home5_bg1.jpg')
            },
            {
                title: '',
                content: '',
                image: require('@/assets/home5_bg2.jpg')
            },
            {
                title: '',
                content: '',
                image: require('@/assets/home5_bg3.jpg')
            }
        ]
    }),
    components: { VueperSlides, VueperSlide },
}
</script>

<style>

    .text1 {
        margin:auto;
        padding: auto;
    }

    .img1 {
        border: 1px solid black;
        width: 300px;   
        height: 300px;
        border-radius:10% ;

    }
    .text{
        position:absolute;
        bottom:0px;
        color: rgb(34, 25, 25);
        left : 30px;
        font: 600 24px Dosis !important;

    }
    .img1:hover{
        -webkit-transform: scale(1.02);
	    transform: scale(1.02);

    }
</style>