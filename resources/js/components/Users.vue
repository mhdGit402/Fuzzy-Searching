<template>
    <div style="padding:55px;margin-left:255px;margin-top: 55px;">
        <h4 class="mb-4" style="font-weight: bold;">Users Details:</h4>
        <div class="card">
        <table class="table">
            <thead class="thead-light">
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">First name</th>
                    <th scope="col">Last name</th>
                </tr>
            </thead>
            <tbody v-for="(item, index) in data">
                <tr>
                    <td>{{ index + 1 }}</td>
                    <td>{{item.firstname}}</td>
                    <td>{{item.lastname}}</td>
                </tr>
            </tbody>
        </table>
    </div>
    </div>
</template>

<script>
    export default{
        name: 'Users',
        props:{
            data: Array
        }
    }
</script>

<style scoped>
.card {
    border: none;
}
.thead-light{
    background-color: #c5c5c5;
}
a{
    text-decoration: none;
    margin-right:10px;
}
button {
    border:none;
    color: #0d6efd;
    background-color: transparent;
}
</style>