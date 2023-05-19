<template>
  <nav id="sidebar">
    <div style="display:flex" class="sidebar-header">
      <img width='230' height="42" src="/images/logo.png">
    </div>

    <ul style="font-weight:600;padding-left:5px ;" class="list-unstyled components mt-5">

      <li class="mb-3">

        <a href="/"><span>Home</span></a>

        <a href="#" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false"><span>User</span></a>

        <div class="collapse" id="home-collapse" style="">
          <ul id="categoryTitle" class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="/user/create" class="link-body-emphasis d-inline-flex text-decoration-none">Create User</a>
            </li>
            <li><a href="/users/duplicate" class="link-body-emphasis d-inline-flex text-decoration-none">Detect
                Duplicates</a>
            </li>
            <li><a href="/users" class="link-body-emphasis d-inline-flex text-decoration-none">View Users</a>
            </li>
            <li><a href="/users/merged" class="link-body-emphasis d-inline-flex text-decoration-none">Merged Users</a>
            </li>
          </ul>
        </div>
      </li>


    </ul>

    <ul style="bottom: 0; position: absolute; font-weight: 600;" class="list-unstyled CTAs">
      <li>
        <div class="btn-holder">
          <button @click="redirect" class="btn btn-4 hover-border-7">
            <span>Visit Website</span>
          </button>
        </div>

      </li>
    </ul>
  </nav>
</template>

<script>

export default {
  name: 'Sidebar',
  methods: {
    redirect() {
      window.open("https://ava.ir/index.php/en/", 'blank');
    }
  }
}
</script>

<style scoped>
.CTAs a:hover {
  transition: border-bottom ease-in-out .2s;
  border-bottom: 1px solid #0d6efd !important;
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
}

#categoryTitle li a {
  font-size: 1.2em !important;
  font-weight: 600;
  padding-left: 42px !important;
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

#sidebar {
  min-width: 250px;
  max-width: 250px;
  background: #ededed;
  color: #000;
  transition: all 0.3s;
}

#sidebar .sidebar-header {
  padding-left: 10px;
  padding-top: 20px;
}

#sidebar ul p {
  color: #fff;
  padding: 10px;
}

#sidebar ul li a {
  padding: 15px;
  font-size: 1.2em;
  display: block;
}

#sidebar ul li a:hover {
  background: #fff;
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

/* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */

#content {
  width: 100%;
  padding: 20px;
  min-height: 100vh;
  transition: all 0.3s;
}

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

:active,
:hover,
:focus {
  outline: 0 !important;
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
  width: auto;
  height: auto;
  background-color: transparent;
  border: none;
  cursor: pointer;
  margin: 0px 25px 15px;
  min-width: 150px;
}

.btn span {
  display: inline-block;
  font-size: 16px;
  font-weight: bold;
  letter-spacing: 2px;
  text-transform: uppercase;
  top: 0;
  left: 0;
  width: 100%;
  transition: 0.3s;
}

/*--- btn-4 ---*/
.btn-4 span {
  color: rgb(28, 31, 30);
}

.btn-4 span:hover {
  color: rgb(54, 56, 55);
}

.btn-4::before,
.btn-4::after {
  width: 15%;
  height: 2px;
  background-color: rgb(54, 56, 55);
  z-index: 2;
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
  width: 0%;
  height: 0%;
  background: transparent;
  opacity: 0;
  z-index: 2;
  transition: width 0.2s ease-in, height 0.15s 0.2s linear, opacity 0s 0.35s;
}

.btn.hover-border-7 span::before {
  bottom: 0;
  left: 0;
  border-left: 2px solid rgb(54, 56, 55);
  border-top: 2px solid rgb(54, 56, 55);
}

.btn.hover-border-7 span::after {
  bottom: 0;
  right: 0;
  border-right: 2px solid rgb(54, 56, 55);
  border-top: 2px solid rgb(54, 56, 55);
}

.btn.hover-border-7 span:hover::before,
.btn.hover-border-7 span:hover::after {
  width: 50%;
  height: 96%;
  opacity: 1;
  transition: height 0.2s 0.2s ease-in, width 0.2s 0.4s linear, opacity 0s 0.2s;
}</style>