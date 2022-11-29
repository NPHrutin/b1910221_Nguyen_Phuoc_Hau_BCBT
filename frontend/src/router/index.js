import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import Edit from '../pageAdmins/editProduct.vue'


const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  },
  {
    path: '/News',
    name: 'News',
    component: () => import('../views/NewView.vue')
  },
  {
    path: '/Product',
    name: 'Product',
    component: () => import('../views/Product.vue')
  },
  {
    path: '/Login',
    name: 'login',
    component: () => import('../views/loginView.vue')
  },
  {
    path: '/Admin',
    name: 'Admin',
    component: () => import('../pageAdmins/adminPage.vue')
  },
  {
    path: '/Admin/Add',
    name: 'AddProduct',
    component: () => import('../pageAdmins/addProduct.vue')
  },
  {
    path: '/Admin/Edit/:id',
    name: 'Edit',
    component: Edit,
  },{
    path: '/Admin/update',
    name: 'Update',
    component: () => import('../pageAdmins/updateProduct.vue')
  }
  
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
