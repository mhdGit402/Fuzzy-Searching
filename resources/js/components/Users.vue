<template>
    <div style="padding:55px;margin-left:255px;margin-top: 55px;">
        <h4 class="mb-4" style="font-weight: bold;">Users Details:</h4>
        <p class="mt-3 mb-4">If you are seeing any duplicate items, Please first 
            <a href="/users/duplicate">Remove or Merge</a>
        items then revisit this page.
        </p>
        <div class="card">
        <table class="table">
            <thead class="thead-light">
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
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
    /* margin-right:10px; */
}
button {
    border:none;
    color: #0d6efd;
    background-color: transparent;
}
p{
    font-weight: bold;
}
tbody:nth-child(odd) {
    background-color: #ededed;
}
</style>