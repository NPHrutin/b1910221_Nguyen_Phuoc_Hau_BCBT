import {createStore} from "vuex"
import axios from "axios"

const store = createStore({
    state(){
        return {
            allProducts: [],
        }
    }
    ,
    mutations:{
        setProductData (state, allProducts) {
            state.allProducts =  allProducts;
        }
    },

    actions :{
        async getProductData ({context}){
            await axios.get('/products')
            .then(function(response){
                context.commit("setProductData",response.data)
            })
            .catch(error => {
                console.log(error)
            })
        }
    }


})

export default store;