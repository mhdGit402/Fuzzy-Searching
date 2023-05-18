import './bootstrap';
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

import { createApp } from 'vue';

import Header from './components/Header.vue'
import Sidebar from './components/Sidebar.vue'
import Footer from './components/Footer.vue'
import Home from './components/Home.vue'
import CreateUser from './components/CreateUser.vue'
import Users from './components/Users.vue'
import DuplicateUsers from './components/DuplicateUsers.vue'

createApp({})
    .component('header-component', Header)
    .mount('#header')

createApp({})
    .component('sidebar-component', Sidebar)
    .mount('#sidebar')

createApp({})
    .component('footer-component', Footer)
    .mount('#footer')

createApp({})
    .component('home-component', Home)
    .mount('#app')

createApp({})
    .component('createuser-component', CreateUser)
    .mount('#createUser')

createApp({})
    .component('users-component', Users)
    .mount('#users')

createApp({})
    .component('duplicateusers-component', DuplicateUsers)
    .mount('#duplicateUsers')