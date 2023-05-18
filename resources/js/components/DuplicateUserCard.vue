<template>
    <div v-show="showDuplicate" class="card">
        <table class="table">
            <thead class="thead-light">
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">First name</th>
                    <th scope="col">Last name</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody v-for="(item, parentIndex) in b">
                <tr>
                    <td>{{ parentIndex + 1 }}</td>
                    <td>{{ item.firstname }}</td>
                    <td>{{ item.lastname }}</td>
                    <td style="border:transparent"><button @click="remove(item)">Remove</button><a href="#">Merge</a></td>
                </tr>
                <tr v-for="(el, index) in item.value">
                    <td>{{ parentIndex + 1 }} - {{ index + 1 }}</td>
                    <td>{{ el.firstname }}</td>
                    <td>{{ el.lastname }}</td>
                    <td style="border:transparent"></td>
                </tr>
            </tbody>
        </table>
    </div>

    <div v-if="showRemove" class="card">
        <table class="table">
            <thead class="thead-light">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">First name</th>
                    <th scope="col">Last name</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr :id="b.id">
                    <td>{{ b.id }}</td>
                    <td>{{ b.firstname }}</td>
                    <td>{{ b.lastname }}</td>
                    <td><button @click="removeDuplicate(b.id)">Remove</button></td>
                </tr>
                <tr v-for="el in b.value" :id="el.id" v-show="!deleteRowID.includes(el.id)">
                    <td>{{ el.id }}</td>
                    <td>{{ el.firstname }}</td>
                    <td>{{ el.lastname }}</td>
                    <td><button @click="removeDuplicate(el.id)">Remove</button></td>
                </tr>
            </tbody>
        </table>
        <div style="width: 100%;" class="mt-4" v-if="successfulRemove">
            <div style="height:55px;" class="alert alert-success" role="alert">
                <p>Duplicate user deleted successfully!</p>
            </div>
        </div>
    </div>

</template>

<script>
import axios from 'axios';


export default {
    name: 'DuplicateUserCard',
    props: ['prop1','prop2'],
    data(){
        return {
            a: null,
            b: null,
            showDuplicate: true,
            showRemove: false,
            successfulRemove: false,
            deleteRowID: []
        }
    },
    mounted() {
        this.a = Object.values(this.prop2);

        this.b = this.prop1.filter(el => {
            if (!(this.a.includes(el.id))) {
                return el;
            }
        });

        // console.log(this.b);
    },
    methods:{
        remove(el){
            this.b = el;
            this.showDuplicate = false;
            this.showRemove = true;
        },
        removeDuplicate(id){
            axios.delete(`http://127.0.0.1:8000/users/remove/${id}`)
            .then(res => {
                if(res.data){
                    this.deleteRowID.push(id);
                    this.successfulRemove = true;
                    setTimeout(() => this.successfulRemove = false, 2500)
                }
            })
            .catch(err => console.log(err))
        }
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

a {
    text-decoration: none;
    margin-right: 10px;
}

button {
    border: none;
    color: #0d6efd;
    background-color: transparent;
}

tbody:nth-child(odd) {
    background-color: #ededed;
}
p {
    font-weight: bold;
}
</style>