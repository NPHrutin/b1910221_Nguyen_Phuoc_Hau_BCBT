<template>
    <div>
        <div class="news_hd">
            <h1 class="til">Tin Tức</h1>
            <p class="text">Thông Tin Được Cập Nhật Mỗi Ngày </p>
            <img class="news_hd_img" src="https://i.pinimg.com/564x/96/75/c2/9675c27e38dea5b4b86716de25adf5c5.jpg" alt="hinhanh">
            
        </div>
        <hr>
        <div class="name">
            <h3>Tin Mới </h3>
        </div>
        <div class="list_news">
            <div class="news_for" v-for="(slidenew,index) in slidenews" :key="index">
                <div class="news">
                    <div class="text-center">
                        <img class="news_img" :src="slidenew.image" alt="tintuc">
                    </div>
                    <div class="hd_text">
                        <h4 class="text-center">{{slidenew.title}}</h4>
                        <div >
                            <p>{{slidenew.content}}</p>
                        </div>
                        <div>
                            <p class="hd_day">ngày đăng: {{slidenew.day}}</p>
                        </div>
                    </div>
                    
                </div>        
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name : 'News',

    data: () => ({
        slidenews: [
            {
                title: 'Chăm sóc cây đúng cách',
                content: 'Đa số các loại hoa có điều có vẻ đẹp diễm lệ, những đặc điểm riêng độc đáo hương thơm quyến rũ khiến ta có thể mãi mãi ngắm nhìn...(xem thêm)',
                image: 'https://i.pinimg.com/474x/a1/98/6d/a1986d892b02628e73db725b6a5909f2.jpg',
                day : '5/12/2022'

            },
            {
                title: 'không gian xanh',
                content: 'Đa số các loại hoa có điều có vẻ đẹp diễm lệ, những đặc điểm riêng độc đáo hương thơm quyến rũ khiến ta có thể mãi mãi ngắm nhìn...(xem thêm)',
                image: 'https://i.pinimg.com/564x/ef/78/58/ef7858644b827c0a00269b3c07a246b0.jpg',
                day : '5/12/2022'
            },
            {
                title: 'lợi ích của việc trồng cây ',
                content: 'Đa số các loại hoa có điều có vẻ đẹp diễm lệ, những đặc điểm riêng độc đáo hương thơm quyến rũ khiến ta có thể mãi mãi ngắm nhìn...(xem thêm)',
                image: 'https://i.pinimg.com/474x/34/73/c5/3473c55f0f4125e2e048d15f09f4d17d.jpg',
                day : '4/12/2022'
            },
            {
                title: 'Người bạn của tôi " Xanh"',
                content: 'Đa số các loại hoa có điều có vẻ đẹp diễm lệ, những đặc điểm riêng độc đáo hương thơm quyến rũ khiến ta có thể mãi mãi ngắm nhìn...(xem thêm)',
                image: 'https://i.pinimg.com/474x/71/bb/9d/71bb9d2d091f446872f72b12f838b689.jpg',
                day : '4/12/2022'
            },
            {
                title: 'Tách hại của ánh sáng xanh',
                content: 'Đa số các loại hoa có điều có vẻ đẹp diễm lệ, những đặc điểm riêng độc đáo hương thơm quyến rũ khiến ta có thể mãi mãi ngắm nhìn...(xem thêm)',
                image: 'https://i.pinimg.com/564x/27/7a/61/277a613a55437e70b8a3752a15f675f2.jpg',
                day : '3/12/2022'
            },
            {
                title: 'Biến đổi khí hậu',
                content: 'Đa số các loại hoa có điều có vẻ đẹp diễm lệ, những đặc điểm riêng độc đáo hương thơm quyến rũ khiến ta có thể mãi mãi ngắm nhìn...(xem thêm)',
                image: 'https://i.pinimg.com/564x/f0/54/8c/f0548ce3ae70a8a8e9af671ae0f14440.jpg',
                day : '3/12/2022'
            },
            {
                title: 'Nước biển dân cao',
                content: 'Đa số các loại hoa có điều có vẻ đẹp diễm lệ, những đặc điểm riêng độc đáo hương thơm quyến rũ khiến ta có thể mãi mãi ngắm nhìn...(xem thêm)',
                image: 'https://i.pinimg.com/474x/e0/81/f0/e081f07262b6d62f7818d4e5e281bba3.jpg',
                day : '2/12/2022'
            },
            {
                title: 'Màu xanh của tự nhiên',
                content: 'Đa số các loại hoa có điều có vẻ đẹp diễm lệ, những đặc điểm riêng độc đáo hương thơm quyến rũ khiến ta có thể mãi mãi ngắm nhìn...(xem thêm)',
                image: 'https://i.pinimg.com/564x/f2/dc/39/f2dc39f589751a30d711b06be7a6df14.jpg',
                day : '2/12/2022'
            },
            {
                title: 'Ngủ đủ giấc ',
                content: 'Đa số các loại hoa có điều có vẻ đẹp diễm lệ, những đặc điểm riêng độc đáo hương thơm quyến rũ khiến ta có thể mãi mãi ngắm nhìn...(xem thêm)',
                image: 'https://i.pinimg.com/474x/cb/ea/56/cbea562d62d49f44d9e913b2ebfed913.jpg',
                day : '1/12/2022'
            }
        ]
    }),
}
</script>
<style>

    .news_img{
        height : 350px;
        width: 350px;
        border: 1px solid black;
        border-radius: 5%;  
    }

    .news{ 
        margin: 10px;
        padding: 10px;
        height: 550px;
        width: 390px;
        display: inline-block;
        border: 1px solid black;
        border-radius: 2%;
        background-color:rgb(253, 224, 253);  
    }
    .news_for{ 
        display: inline;
    }
    .list_news{
        /* background-color: black; */
        padding-left :25px;
        padding-right :auto ;
    }
    .hd_text{
        margin-top: 15px;
        font: 500 15px/26px "Dosis" !important;
    } 

    .news_hd_img{
        width : 100%;
        height : 400px;
    }

    .til{
        position: absolute;
        top:200px;
        left:450px;
        font-size: 100px;
        opacity: 0.7;
    }
    .hd_day{
        opacity: 0.8;
        float: right;
    }

</style>