<template>
    <div style="padding:55px;margin-left:255px;margin-top: 55px;">

<h4 class="mb-4" style="font-weight: bold;">Merged Users:</h4>

<div class="card">
        <table class="table">
            <thead class="thead-light">
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Merged Into</th>
                </tr>
            </thead>
            <tbody >
                <tr v-for="(item, parentIndex) in data">
                    <td>{{ parentIndex + 1 }}</td>
                    <td>{{ item.firstname }}</td>
                    <td>{{ item.lastname }}</td>
                    <td >{{ item.user.firstname }} {{ item.user.lastname }}</td>
                </tr>
            </tbody>
        </table>
    </div>

</div>
</template>

<script>
    export default {
        name: 'MergedUsers',
        props: ['data'],
        mounted(){
            // console.log(this.data);
        }
    }
</script>

<style scoped>
.card {
    border: none;
}
.thead-light {
    background-color: #c5c5c5;
}
tr:nth-child(even){
    background-color: #ededed;
}
a {
    text-decoration: none;
    margin-right: 10px;
}
p {
    font-weight: bold;
}
</style>