<template>
<div class="container">
    <div class="row">
        <div class="col">
            <div id="card1" class="card order-card">
                <div class="card-block">
                    <h2 class="text-right mb-4"><i class="bi bi-shield-check f-right"></i><span>300+</span></h2>
                    <h6>Successfully completed cases</h6>
                </div>
            </div>
        </div>
        
        <div class="col">
            <div id="card2" class="card order-card">
                <div class="card-block">
                    <h2 class="text-right mb-4"><i class="bi bi-globe f-right"></i><span>50+</span></h2>
                    <h6>National and international technical standard certificate</h6>
                </div>
            </div>
        </div>
        
        <div class="col">
            <div id="card3" class="card order-card">
                <div class="card-block">
                    <h2 class="text-right mb-4"><i class="bi bi-broadcast-pin f-right"></i><span>20+</span></h2>
                    <h6>years of experience in infrastructure and telecommunication systems</h6>
                </div>
            </div>
        </div>
        
	</div>
</div>
</template>

<script>
    export default {
        name: 'cardComponent'
    }
</script>

<style scoped>
h6{
    font-size:17px;
}
#card1{
    background-color: #1B9C85;
}
#card2{
    background-color: #0081C9;
}
#card3{
    background-color: #131949;
}

.card{
    border: 1px solid #FF5370;
    height:80% !important;
}

body{
    margin-top:20px;
    background:#FAFAFA;
}
.order-card {
    color: #fff;
}

.order-card i {
        font-size: 30px !important;
    }

.bg-c-blue {
    background: linear-gradient(45deg,#4099ff,#73b4ff);
}

.bg-c-green {
    background: linear-gradient(45deg,#2ed8b6,#59e0c5);
}

.bg-c-yellow {
    background: linear-gradient(45deg,#FFB64D,#ffcb80);
}

.bg-c-pink {
    background: linear-gradient(45deg,#FF5370,#ff869a);
}


.card {
    border-radius: 5px;
    -webkit-box-shadow: 0 1px 2.94px 0.06px rgba(4,26,55,0.16);
    box-shadow: 0 1px 2.94px 0.06px rgba(4,26,55,0.16);
    border: none;
    margin-bottom: 30px;
    -webkit-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
}

.card .card-block {
    padding: 25px;
}

.order-card i {
    font-size: 26px;
}

.f-left {
    float: left;
}

.f-right {
    float: right;
}
</style>