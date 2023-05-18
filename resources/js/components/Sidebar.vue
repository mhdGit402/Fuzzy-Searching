<template>
    <nav id="sidebar">
        <div style="display:flex" class="sidebar-header">
            <img width='220' src="/images/logo.png">
        </div>

        <ul style="font-weight:600;padding-left:5px ;" class="list-unstyled components mt-4">

            <li class="mb-3">

                <a href="/"><span>Home</span></a>

                <a href="#" data-bs-toggle="collapse" data-bs-target="#home-collapse"
                    aria-expanded="false"><span>User</span></a>

                <div class="collapse" id="home-collapse" style="">
                    <ul id="categoryTitle"
                        class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                        <li><a style="font-weight:600;padding-left:42px !important;" href="/user/create"
                                class="link-body-emphasis d-inline-flex text-decoration-none">Create User</a>
                        </li>
                        <li><a style="font-weight:600;padding-left:42px !important;" href="/users"
                                class="link-body-emphasis d-inline-flex text-decoration-none">View Users</a>
                        </li>
                        <li><a style="font-weight:600;padding-left:42px !important;" href="/users/duplicate"
                                class="link-body-emphasis d-inline-flex text-decoration-none">Detect Duplicates</a>
                        </li>
                        <li><a style="font-weight:600;padding-left:42px !important;" href="/users/merged"
                                class="link-body-emphasis d-inline-flex text-decoration-none">Merged Users</a>
                        </li>
                    </ul>
                </div>
            </li>


        </ul>

        <ul style="bottom: 0; position: absolute; font-weight: 600;" class="list-unstyled CTAs">
            <li>
                <!-- <a href="https://ava.ir/index.php/en/">Visit Company Website</a> -->
                <div class="btn-holder">
                    <button @click="redirect" class="btn btn-4 hover-border-7">
                        <span>Visit  Website</span>
                    </button>
                </div>

            </li>
        </ul>
    </nav>

</template>

<script>

export default {
    name: 'Sidebar',
    methods:{
        redirect(){
            window.open("https://ava.ir/index.php/en/", 'blank');
        }
    }
}
</script>

<style scoped>
.CTAs a:hover{
    transition: border-bottom ease-in-out .2s;
    border-bottom: 1px solid #0d6efd  !important;
    background-color: transparent !important;
}
#sidebar {
    height: 100%;
    width: 160px;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    overflow-x: hidden;
    padding-top: 20px;
}

#sidebar li a span {
    margin-left: 20px;
}

button {
    padding: 10px;
    font-size: 1.1em;
}

button:hover {
    color: inherit;
    text-decoration: none;
    transition: all 0.3s;
    /* background: #fff; */
}

#categoryTitle li a {
    font-size: 1.1em !important;
}

#categoryTitle a:hover {
    background-color: transparent !important;
}

#categoryTitle li:hover {
    background-color: #fff
}

#sidebar ul li a:visited {
    background-color: #fff;
}


@import "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";

body {
    font-family: 'Poppins', sans-serif;
    background: #fafafa;
}

p {
    font-family: 'Poppins', sans-serif;
    font-size: 1.1em;
    font-weight: 300;
    line-height: 1.7em;
    color: #999;
}

a,
a:hover,
a:focus {
    color: inherit;
    text-decoration: none;
    transition: all 0.3s;
}

.navbar {
    padding: 15px 10px;
    background: #fff;
    border: none;
    border-radius: 0;
    margin-bottom: 40px;
    box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
}

.navbar-btn {
    box-shadow: none;
    outline: none !important;
    border: none;
}

.line {
    width: 100%;
    height: 1px;
    border-bottom: 1px dashed #ddd;
    margin: 40px 0;
}

/* ---------------------------------------------------
    SIDEBAR STYLE
----------------------------------------------------- */

.wrapper {
    display: flex;
    width: 100%;
    align-items: stretch;
}

#sidebar {
    min-width: 250px;
    max-width: 250px;
    background: #ededed;
    color: #000;
    transition: all 0.3s;
}

#sidebar.active {
    margin-left: -250px;
}

#sidebar .sidebar-header {
    padding: 20px;
    /* background: #ededed; */
}

/* #sidebar ul.components {
    padding: 20px 0;
} */

#sidebar ul p {
    color: #fff;
    padding: 10px;
}

#sidebar ul li a {
    padding: 10px;
    font-size: 1.1em;
    display: block;
}

#sidebar ul li a:hover {
    background: #fff;
}

#sidebar ul li.active>a,
a[aria-expanded="true"] {
    color: #000;
    background: #fff;
}

a[data-toggle="collapse"] {
    position: relative;
}

.dropdown-toggle::after {
    display: block;
    position: absolute;
    top: 50%;
    right: 20px;
    transform: translateY(-50%);
}

ul ul a {
    font-size: 0.9em !important;
    padding-left: 30px !important;
}

ul.CTAs {
    padding: 20px;
}

ul.CTAs a {
    text-align: center;
    font-size: 0.9em !important;
    display: block;
    margin-bottom: 5px;
}

a.download {
    background: #fff;
    color: #7386D5;
}

a.article,
a.article:hover {
    background: #6d7fcc !important;
    color: #fff !important;
}

/* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */

#content {
    width: 100%;
    padding: 20px;
    min-height: 100vh;
    transition: all 0.3s;
}

/* ---------------------------------------------------
    MEDIAQUERIES
----------------------------------------------------- */

@media (max-width: 768px) {
    #sidebar {
        margin-left: -250px;
    }

    #sidebar.active {
        margin-left: 0;
    }

    #sidebarCollapse span {
        display: none;
    }
}






* {
  box-sizing: border-box;
  margin: 0; padding: 0;
}

:active, :hover, :focus {
  outline: 0!important;
  outline-offset: 0;
}
::before,
::after {
  position: absolute;
  content: "";
}

.btn-holder {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  max-width: 1000px;
  margin: 10px auto 35px;
}
.btn {
  position: relative;
  display: inline-block;
  width: auto; height: auto;
  background-color: transparent;
  border: none;
  cursor: pointer;
  margin: 0px 25px 15px;
  min-width: 150px;
}
  .btn span {         
    /* position: relative; */
    display: inline-block;
    font-size: 14px;
    font-weight: bold;
    letter-spacing: 2px;
    text-transform: uppercase;
    top: 0; left: 0;
    width: 100%;
    /* padding: 15px 20px; */
    transition: 0.3s;
  }



/* 1.hover-filled-slide-down */
.btn.hover-filled-slide-down::before {
  bottom: 0; left: 0; right: 0; 
  height: 100%; width: 100%;
}
.btn.hover-filled-slide-down:hover::before {
  height: 0%;
}

/* 2.hover-filled-slide-up */
.btn.hover-filled-slide-up::before {
  top: 0; left: 0; right: 0;
  height: 100%; width: 100%;
}
.btn.hover-filled-slide-up:hover::before {
  height: 0%;
}

/* 3.hover-filled-slide-left */
.btn.hover-filled-slide-left::before {
  top: 0; bottom: 0; left: 0;
  height: 100%; width: 100%;
}
.btn.hover-filled-slide-left:hover::before {
  width: 0%;
}

/* 4. hover-filled-slide-right */
.btn.hover-filled-slide-right::before {
  top:0; bottom: 0; right: 0;
  height: 100%; width: 100%;
}
.btn.hover-filled-slide-right:hover::before {
  width: 0%;
}

/* 5. hover-filled-opacity */
.btn.hover-filled-opacity::before {
  top:0; bottom: 0; right: 0;
  height: 100%; width: 100%;
  opacity: 1;
}
.btn.hover-filled-opacity:hover::before {
  opacity: 0;
}

/*--- btn-2 ---*/
.btn-2::before {
  background-color: rgb(28, 31, 30);
  transition: 0.3s ease-out;
}
.btn-2 span {
  color: rgb(28, 31, 30);
  border: 1px solid rgb(28, 31, 30);
  transition: 0.2s;
}  
.btn-2 span:hover {
  color: rgb(255,255,255);
  transition: 0.2s 0.1s;
}

/* 6. hover-slide-down */
.btn.hover-slide-down::before {
  top: 0; left: 0; right: 0; 
  height: 0%; width: 100%;
}
.btn.hover-slide-down:hover::before {
  height: 100%;
}

/* 7. hover-slide-up */
.btn.hover-slide-up::before {
  bottom: 0; left: 0; right: 0; 
  height: 0%; width: 100%;
}
.btn.hover-slide-up:hover::before {
  height: 100%;
}

/* 8. hover-slide-left */
.btn.hover-slide-left::before {
  top: 0; bottom: 0; right: 0; 
  height: 100%; width: 0%;
}
.btn.hover-slide-left:hover::before {
  width: 100%;
}

/* 9. hover-slide-right */
.btn.hover-slide-right::before {
  top: 0; bottom: 0; left: 0; 
  height: 100%; width: 0%;
}
.btn.hover-slide-right:hover::before {
  width: 100%;
}

/* 10. hover-opacity */
.btn.hover-opacity::before {
  top:0; bottom: 0; right: 0;
  height: 100%; width: 100%;
  opacity: 0;
}
.btn.hover-opacity:hover::before {
  opacity: 1;
}

/*--- btn-3 ---*/
.btn-3 {
  padding: 5px;
}
.btn-3 span {
  color: rgb(255, 255, 255);
  background-color: rgb(54, 56, 55);
}
.btn-3::before,
.btn-3::after {
  background: transparent;
  z-index: 2;
}

/* 11. hover-border-1 */
.btn.hover-border-1::before,
.btn.hover-border-1::after {
  width: 10%; height: 25%;
  transition: 0.35s;
}
.btn.hover-border-1::before {
  top: 0; left: 0;
  border-left: 1px solid rgb(28, 31, 30);
  border-top: 1px solid rgb(28, 31, 30);
}
.btn.hover-border-1::after {
  bottom: 0; right: 0;
  border-right: 1px solid rgb(28, 31, 30);
  border-bottom: 1px solid rgb(28, 31, 30);
}
.btn.hover-border-1:hover::before,
.btn.hover-border-1:hover::after {
  width: 99%;
  height: 98%;
}

/* 12. hover-border-2 */
.btn.hover-border-2::before,
.btn.hover-border-2::after {
  width: 10%; height: 25%;
  transition: 0.35s;
}
.btn.hover-border-2::before {
  bottom: 0; left: 0;
  border-left: 1px solid rgb(28, 31, 30);
  border-bottom: 1px solid rgb(28, 31, 30);
}
.btn.hover-border-2::after {
  top: 0; right: 0;
  border-right: 1px solid rgb(28, 31, 30);
  border-top: 1px solid rgb(28, 31, 30);
}
.btn.hover-border-2:hover::before,
.btn.hover-border-2:hover::after {
  width: 99%;
  height: 99%;
}

/* 13. hover-border-3 */
.btn.hover-border-3::before,
.btn.hover-border-3::after {
  width: 0%; height: 0%;
  opacity: 0;
  transition: width 0.2s 0.15s linear, height 0.15s linear, opacity 0s 0.35s;
}
.btn.hover-border-3::before {
  top: 0; right: 0;
  border-top: 1px solid rgb(28, 31, 30);
  border-left: 1px solid rgb(28, 31, 30);
}
.btn.hover-border-3::after {
  bottom: 0; left: 0;
  border-bottom: 1px solid rgb(28, 31, 30);
  border-right: 1px solid rgb(28, 31, 30);
}
.btn.hover-border-3:hover::before,
.btn.hover-border-3:hover::after {
  width: 100%; height: 99%;
  opacity: 1;
  transition: width 0.2s linear, height 0.15s 0.2s linear, opacity 0s;   
}

/* 14. hover-border-4 */
.btn.hover-border-4::before,
.btn.hover-border-4::after {
  width: 0%; height: 0%;
  opacity: 0;
  transition: width 0.2s linear, height 0.15s 0.2s ease-out, opacity 0s 0.35s;
}
.btn.hover-border-4::before {
  bottom: 0; left: -1px;
  border-top: 1px solid rgb(28, 31, 30);
  border-left: 1px solid rgb(28, 31, 30);
}
.btn.hover-border-4::after {
  top: 0; right: 0;
  border-bottom: 1px solid rgb(28, 31, 30);
  border-right: 1px solid rgb(28, 31, 30);
}
.btn.hover-border-4:hover::before,
.btn.hover-border-4:hover::after {
  width: 100%; height: 99%;
  opacity: 1;
  transition: width 0.2s 0.15s ease-out, height 0.15s ease-in, opacity 0s;   
}

/* 15. hover-border-5 */
.btn.hover-border-5::before,
.btn.hover-border-5::after {
  width: 0%; height: 0%;
  opacity: 0;
}
.btn.hover-border-5::before {
  top: 0; right: 0;
  border-top: 1px solid rgb(28, 31, 30);
  border-left: 1px solid rgb(28, 31, 30);
  transition: width 0.2s 0.5s ease-out, height 0.15s 0.35s linear, opacity 0s 0.7s;
}
.btn.hover-border-5::after {
  bottom: 0; left: 0px;
  border-bottom: 1px solid rgb(28, 31, 30);
  border-right: 1px solid rgb(28, 31, 30);
  transition: width 0.2s 0.15s linear, height 0.15s ease-in, opacity 0s 0.35s;
}
.btn.hover-border-5:hover::before,
.btn.hover-border-5:hover::after {
  width: 100%; height: 96%;
  opacity: 1;
}
.btn.hover-border-5:hover::before {
  transition: width 0.2s ease-in, height 0.15s 0.2s linear, opacity 0s;   /* 1,2 */
}
.btn.hover-border-5:hover::after {
  transition: width 0.2s 0.35s linear, height 0.15s 0.5s ease-out, opacity 0s 0.3s; 
} 

/*--- btn-4 ---*/
.btn-4 span {
  color: rgb(28, 31, 30);
  /* background-color: rgb(245,245,245); */
}
.btn-4 span:hover {
  color: rgb(54, 56, 55);
}
.btn-4::before,
.btn-4::after {
  width: 15%; height: 2px;
  background-color: rgb(54, 56, 55);
  z-index: 2;
}

/* 16. hover-border-6 */
.btn.hover-border-6::before,
.btn.hover-border-6::after {
  top: 0;
  transition: width 0.2s 0.35s ease-out;
}
.btn.hover-border-6::before {
  right: 50%;
}
.btn.hover-border-6::after {
  left: 50%;
}
.btn.hover-border-6:hover::before,
.btn.hover-border-6:hover::after {
  width: 50%;
  transition: width 0.2s ease-in;   
}

.btn.hover-border-6 span::before,
.btn.hover-border-6 span::after {
  width: 0%; height: 0%;
  background: transparent;
  opacity: 0;
  z-index: 2;
  transition: width 0.2s ease-in, height 0.15s 0.2s linear, opacity 0s 0.35s;
}
.btn.hover-border-6 span::before {
  top: 0; left: 0;
  border-left: 2px solid rgb(54, 56, 55);
  border-bottom: 2px solid rgb(54, 56, 55);
}
.btn.hover-border-6 span::after {
  top: 0; right: 0;
  border-right: 2px solid rgb(54, 56, 55);
  border-bottom: 2px solid rgb(54, 56, 55);
}
.btn.hover-border-6 span:hover::before,
.btn.hover-border-6 span:hover::after {
  width: 50%; height: 96%;
  opacity: 1;
  transition: height 0.2s 0.2s ease-in, width 0.2s 0.4s linear, opacity 0s 0.2s;   
}

/* 17. hover-border-7 */
.btn.hover-border-7::before,
.btn.hover-border-7::after {
  bottom: 0;
  transition: width 0.2s 0.35s ease-out;
}
.btn.hover-border-7::before {
  right: 50%;
}
.btn.hover-border-7::after {
  left: 50%;
}
.btn.hover-border-7:hover::before,
.btn.hover-border-7:hover::after {
  width: 50%;
  transition: width 0.2s ease-in;   
}

.btn.hover-border-7 span::before,
.btn.hover-border-7 span::after {
  width: 0%; height: 0%;
  background: transparent;
  opacity: 0;
  z-index: 2;
  transition: width 0.2s ease-in, height 0.15s 0.2s linear, opacity 0s 0.35s;
}
.btn.hover-border-7 span::before {
  bottom: 0; left: 0;
  border-left: 2px solid rgb(54, 56, 55);
  border-top: 2px solid rgb(54, 56, 55);
}
.btn.hover-border-7 span::after {
  bottom: 0; right: 0;
  border-right: 2px solid rgb(54, 56, 55);
  border-top: 2px solid rgb(54, 56, 55);
}
.btn.hover-border-7 span:hover::before,
.btn.hover-border-7 span:hover::after {
  width: 50%; height: 96%;
  opacity: 1;
  transition: height 0.2s 0.2s ease-in, width 0.2s 0.4s linear, opacity 0s 0.2s;   
}

/* 18. hover-border-8 */
.btn.hover-border-8::before,
.btn.hover-border-8::after {
  bottom: 0;
  width: 15%;
  transition: width 0.2s 0.35s ease-out;
}
.btn.hover-border-8::before {
  right: 50%;
}
.btn.hover-border-8::after {
  left: 50%;
}
.btn.hover-border-8:hover::before {
  width: 50%;
  transition: width 0.2s ease-in;   
}
.btn.hover-border-8:hover::after {
  width: 50%;
  transition: width 0.1s ease-in;   
}

.btn.hover-border-8 span::before,
.btn.hover-border-8 span::after {
  width: 0%; height: 0%;
  bottom: 0;
  background: transparent;
  opacity: 0;
  z-index: 2;
}
.btn.hover-border-8 span::before {
  left: 0%;
  border-left: 2px solid rgb(54, 56, 55);
  transition: height 0.25s ease-in, opacity 0s 0.35s;   
}
.btn.hover-border-8 span:hover::before {
  height: 96%;
  opacity: 1;
  transition: height 0.25s 0.2s ease-out, opacity 0s 0.2s;   
}
.btn.hover-border-8 span::after {
  right: 0%;
  border-right: 2px solid rgb(54, 56, 55);
  border-top: 2px solid rgb(54, 56, 55);
  transition: width 0.2s ease-in, height 0.15s 0.2s linear, opacity 0s 0.35s;   
}
.btn.hover-border-8 span:hover::after {
  width: 99%; height: 96%;
  opacity: 1;
  transition: height 0.15s 0.1s linear, width 0.2s 0.25s linear, opacity 0s 0.1s;   
}

/* 19. hover-border-9 */
.btn.hover-border-9::before,
.btn.hover-border-9::after {
  bottom: 0;
  width: 15%;
  transition: width 0.2s 0.35s ease-out;
}
.btn.hover-border-9::before {
  right: 50%;
}
.btn.hover-border-9::after {
  left: 50%;
}
.btn.hover-border-9:hover::before {
  width: 50%;
  transition: width 0.1s ease-in;   
}
.btn.hover-border-9:hover::after {
  width: 50%;
  transition: width 0.2s ease-in;   
}

.btn.hover-border-9 span::before,
.btn.hover-border-9 span::after {
  width: 0%; height: 0%;
  bottom: 0;
  background: transparent;
  opacity: 0;
  z-index: 2;
}
.btn.hover-border-9 span::after {
  right: 0%;
  border-right: 2px solid rgb(54, 56, 55);
  transition: height 0.25s ease-in, opacity 0s 0.35s;   
}
.btn.hover-border-9 span:hover::after {
  height: 96%;
  opacity: 1;
  transition: height 0.25s 0.2s ease-out, opacity 0s 0.2s;   
}
.btn.hover-border-9 span::before {
  left: 0%;
  border-left: 2px solid rgb(54, 56, 55);
  border-top: 2px solid rgb(54, 56, 55);
  transition: width 0.2s ease-in, height 0.15s 0.2s linear, opacity 0s 0.35s;   
}
.btn.hover-border-9 span:hover::before {
  width: 98.5%; height: 96%;
  opacity: 1;
  transition: height 0.15s 0.1s linear, width 0.2s 0.25s linear, opacity 0s 0.1s;   
}

/* 20. hover-border-10 */
.btn.hover-border-10::before,
.btn.hover-border-10::after {
  left: 0%;
  height: 30%;
  width: 2px;
  transition: height 0.2s 0.35s ease-out;
}
.btn.hover-border-10::before {
  top: 50%;
}
.btn.hover-border-10::after {
  bottom: 50%;
}
.btn.hover-border-10:hover::before {
  height: 50%;
  transition: height 0.2s ease-in;   
}
.btn.hover-border-10:hover::after {
  height: 50%;
  transition: height 0.1s ease-in;   
}

.btn.hover-border-10 span::before,
.btn.hover-border-10 span::after {
  width: 0%; height: 0%;
  background: transparent;
  opacity: 0;
  z-index: 2;
}
.btn.hover-border-10 span::after {
  bottom: 0; left: 0%;
  border-bottom: 2px solid rgb(54, 56, 55);
  transition: width 0.25s ease-in, opacity 0s 0.35s;   
}
.btn.hover-border-10 span:hover::after {
  width: 100%;
  opacity: 1;
  transition: width 0.25s 0.2s ease-out, opacity 0s 0.2s;   
}
.btn.hover-border-10 span::before {
  top: 0%; left: 0%;
  border-top: 2px solid rgb(54, 56, 55);
  border-right: 2px solid rgb(54, 56, 55);
  transition: height 0.15s ease-in, width 0.2s 0.15s linear, opacity 0s 0.35s;   
}
.btn.hover-border-10 span:hover::before {
  width: 98.5%; height: 96%;
  opacity: 1;
  transition: width 0.2s 0.1s linear, height 0.15s 0.3s ease-out, opacity 0s 0.1s;   
}

/*--- btn-5 ---*/
.btn-5 span {
  color: rgb(28, 31, 30);
  border: 2px solid rgb(249, 211, 27);
  transition: 0.2s;
}
.btn-5 span:hover {
  background-color: rgb(245,245,245);
}

/* 21. hover-border-11 */
.btn.hover-border-11::before,
.btn.hover-border-11::after {
  width: 100%; height: 2px;
  background-color: rgb(54, 56, 55);
  z-index: 2;
  transition: 0.35s; 
}
.btn.hover-border-11::before {
  top: 0; right: 0;
}
.btn.hover-border-11::after {
  bottom: 0; left: 0;
}
.btn.hover-border-11:hover::before,
.btn.hover-border-11:hover::after {
  width: 0%;
  transition: 0.2s 0.2s ease-out; 
}

.btn.hover-border-11 span::before,
.btn.hover-border-11 span::after {
  width: 2px; height: 100%;
  background-color: rgb(54, 56, 55);
  z-index: 2;
  transition: 0.25s; 
}
.btn.hover-border-11 span::before {
  bottom: 0; right: -2px;
}
.btn.hover-border-11 span::after {
  top: 0; left: -2px;
}
.btn.hover-border-11 span:hover::before,
.btn.hover-border-11 span:hover::after {
  height: 0%;
}


</style>