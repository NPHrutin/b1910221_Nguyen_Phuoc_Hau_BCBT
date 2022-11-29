<template lang="">
  <div>
    <div class="hd">
      <img class="hd-img" src="../assets/about1.jpg" alt="logo">
    </div>
    <div class="container mt-5">
      <div class="row m-auto">
        <div class="col ">
          <img class="hd-info" src="../assets/about2.jpg" alt="logo">
        </div>
        <div class="col text-center ">
          <h4>PLANTY là gì</h4>
          <p>PLANTY là cửa hàng cây xanh được thành lập từ nhưng năm 90 tại Tây Đô,đã tồn 
            tại và phát triển đến ngày nay.
          </p>
          <p>PLANTY với các chi nhánh trên toàn quốc đáp ứng nhu cầu trang trí với mọi địa điểm trên cả nước </p>
          <p>2000 người là lượng nhân viên hiện tại của PLANTY mỗi người đề được đào tạo từ cơ bản đến năng cao 
            đáp ứng mọi nhu cầu thiết kế của khách hàng
          </p>
        </div>
      </div>
      <div class="row m-auto">
        <div class="col text-center mt-5">
          <h4>SỨ MỆNH</h4>
          <p>PLANTY là cửa hàng cây xanh được thành lập từ nhưng năm 90 tại Tây Đô,đã tồn 
            tại và phát triển đến ngày nay.
          </p>
          <p>PLANTY với các chi nhánh trên toàn quốc đáp ứng nhu cầu trang trí với mọi địa điểm trên cả nước </p>
          <p>2000 người là lượng nhân viên hiện tại của PLANTY mỗi người đề được đào tạo từ cơ bản đến năng cao 
            đáp ứng mọi nhu cầu thiết kế của khách hàng
          </p>
        </div>
        <div class="col ">
          <img class="hd-info" src="../assets/about4.jpg" alt="logo">
        </div>
      </div>
      <div class="row">
        <div class="col ">
          <img class="hd-info" src="../assets/about5.jpg" alt="logo">
        </div>
        <div class="col text-center mt-5">
          <h4>MỤC TIÊU</h4>
          <p>PLANTY là cửa hàng cây xanh được thành lập từ nhưng năm 90 tại Tây Đô,đã tồn 
            tại và phát triển đến ngày nay.
          </p>
          <p>PLANTY với các chi nhánh trên toàn quốc đáp ứng nhu cầu trang trí với mọi địa điểm trên cả nước </p>
          <p>2000 người là lượng nhân viên hiện tại của PLANTY mỗi người đề được đào tạo từ cơ bản đến năng cao 
            đáp ứng mọi nhu cầu thiết kế của khách hàng
          </p>
        </div>
      </div>
    </div>
    <br>
    <div class="log-ing">
      <div class="mt-5">
          <vueper-slides
          autoplay          class="shadow"
          :visible-slides="3"
          :slide-ratio="1 / 4"
          :dragging-distance="70">
              <vueper-slide
                  v-for="(slide, i) in slides"
                  :key="i"
                  :image="slide.image"
                  :title="slide.title"
                  :content="slide.content" />
          </vueper-slides>
      </div>
    </div>
  </div>
</template>
<script>
import { VueperSlides, VueperSlide } from 'vueperslides'
import 'vueperslides/dist/vueperslides.css'
export default {
  

  data: () => ({
        slides: [
            {
                title: '',
                content: '',
                image: require('@/assets/about6.jpg')
            },
            {
                title: '',
                content: '',
                image: require('@/assets/about7.jpg')
            },
            {
                title: '',
                content: '',
                image: require('@/assets/about8.jpg')
            },
            {
                title: '',
                content: '',
                image: require('@/assets/about9.jpg')
            },
            {
                title: '',
                content: '',
                image: require('@/assets/about10.jpg')
            },
            {
                title: '',
                content: '',
                image: require('@/assets/about14.jpg')
            },
            {
                title: '',
                content: '',
                image: require('@/assets/about11.jpg')
            },
            {
                title: '',
                content: '',
                image: require('@/assets/about12.jpg')
            },
            {
                title: '',
                content: '',
                image: require('@/assets/about13.jpg')
            }


        ]
    }),
    components: { VueperSlides, VueperSlide },
}
</script>
<style>
  .hd-img {
    height:400px;
    width : 100%;
  }
  .hd-info{
    height:400px;
    margin-left: 0px;

  }
</style>
