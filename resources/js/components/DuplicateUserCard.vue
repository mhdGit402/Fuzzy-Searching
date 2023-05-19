<template>
    <div v-show="showDuplicate" class="card primary">
        <table class="table">
            <thead class="thead-light">
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody v-for="(item, parentIndex) in b">
                <tr>
                    <td>{{ parentIndex + 1 }}</td>
                    <td>{{ item.firstname }}</td>
                    <td style="border-right: 1px solid #c5c5c5;">{{ item.lastname }}</td>
                    <td style="border:transparent">
                        <button class="btn btn-outline-primary" @click="remove(item)" style="width:90px;position: absolute; margin:40px;">Remove</button>
                        <button class="btn btn-outline-primary" @click="merge(item)" style="width:90px;position: absolute; margin-top:40px;margin-left:150px;">Merge</button>
                    </td>
                </tr>
                <tr v-for="(el, index) in item.value">
                    <td>{{ parentIndex + 1 }} - {{ index + 1 }}</td>
                    <td>{{ el.firstname }}</td>
                    <td style="border-right: 1px solid #c5c5c5;">{{ el.lastname }}</td>
                    <td :style="index != Object.keys(item.value).length - 1 ? {'border-bottom': 'transparent'} : {}"></td>
                </tr>
            </tbody>
        </table>
    </div>

    <div v-if="showRemove" class="card remove">
        <table class="table">
            <thead class="thead-light">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr :id="b.id" v-show="!deleteRowID.includes(b.id)">
                    <td>{{ b.id }}</td>
                    <td>{{ b.firstname }}</td>
                    <td>{{ b.lastname }}</td>
                    <td><button @click="removeDuplicate(b.id)" style="border:none;color:#0d6efd; background-color: transparent;">Remove</button></td>
                </tr>
                <tr v-for="el in b.value" :id="el.id" v-show="!deleteRowID.includes(el.id)">
                    <td>{{ el.id }}</td>
                    <td>{{ el.firstname }}</td>
                    <td>{{ el.lastname }}</td>
                    <td><button @click="removeDuplicate(el.id)" style="border:none;color:#0d6efd;background-color: transparent;">Remove</button></td>
                </tr>
            </tbody>
        </table>
        <div style="width: 100%;" class="mt-4" v-if="successfulRemove">
            <div style="height:55px;" class="alert alert-success" role="alert">
                <p>Duplicate user deleted successfully!</p>
            </div>
        </div>
    </div>

    <div v-if="showMerge" class="card merge">
        <p class="mt-1 mb-4">Please select an item in order to merge other items into:</p>
        <table class="table">
            <thead class="thead-light">
                <tr>
                    <th>Select</th>
                    <th scope="col">ID</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                </tr>
            </thead>
            <tbody>
                <tr v-show="!mergeRowID.includes(mergeItems.id)" :id="`tr${mergeItems.id}`">
                    <td><input @click="toggleBackground(mergeItems.id)" v-model="check" type="radio" :value="mergeItems.id"></td>
                    <td>{{ mergeItems.id }}</td>
                    <td>{{ mergeItems.firstname }}</td>
                    <td>{{ mergeItems.lastname }}</td>
                </tr>
                <tr v-for="el in mergeItems.value" v-show="!mergeRowID.includes(el.id)" :id="`tr${el.id}`">
                    <td><input @click="toggleBackground(el.id)" v-model="check" type="radio" :value="el.id"></td>
                    <td>{{ el.id }}</td>
                    <td>{{ el.firstname }}</td>
                    <td>{{ el.lastname }}</td>
                </tr>
            </tbody>
        </table>
        <button @click="mergeItem(mergeItems, check)" id="merge" style="width:150px;"
            class="btn btn-primary mt-3">Merge</button>

        <div v-if="alert" style="width: 100%;" class="mt-4">
            <div style="height:55px;" class="alert alert-warning" role="alert">
                <p>Please select an item to merge into</p>
            </div>
        </div>

        <div style="width: 100%;" class="mt-4" v-if="successfulMerge">
            <div style="height:100px;" class="alert alert-success" role="alert">
                <p>All the duplicates merged successfully!</p>
                <p>Now you are redirecting ...</p>
            </div>
        </div>

    </div>
</template>

<script>
import axios from 'axios';

export default {
    name: 'DuplicateUserCard',
    props: ['prop1', 'prop2'],
    data() {
        return {
            a: null,
            b: null,
            showDuplicate: true,
            showRemove: false,
            successfulRemove: false,
            deleteRowID: [],
            showMerge: false,
            mergeItems: [],
            check: false,
            alert: false,
            successfulMerge: false,
            mergeRowID: [],
            trID : []
        }
    },
    mounted() {
        this.a = Object.values(this.prop2);

        this.b = this.prop1.filter(el => {
            if (!(this.a.includes(el.id))) {
                return el;
            }
        });
    },
    methods: {
        toggleBackground(e){
            this.trID.push(e);
            this.trID.forEach(el => {
                document.querySelector(`#tr${el}`).style.backgroundColor =  '#fff';
            });
            document.querySelector(`#tr${e}`).style.backgroundColor =  '#ededed';
        },
        remove(el) {
            this.b = el;
            this.showDuplicate = false;
            this.showRemove = true;
        },
        removeDuplicate(id) {
            axios.delete(`http://127.0.0.1:8000/users/remove/${id}`)
                .then(res => {
                    if (res.data) {
                        this.deleteRowID.push(id);
                        this.successfulRemove = true;
                        setTimeout(() => this.successfulRemove = false, 2500)
                    }
                })
                .catch(err => console.log(err))
        },
        merge(el) {
            this.showDuplicate = false;
            this.showMerge = true;
            this.mergeItems = el;
        },
        mergeItem(el, selectedID) {

            if (selectedID) {
                let id = [];
                if (selectedID != el.id) {
                    id.push(el.id);
                }
                el.value.forEach(item => {
                    if (item.id != selectedID) {
                        id.push(item.id);
                    }
                })

                let mergeData = [];
                mergeData = {
                    mergeID: selectedID,
                    mergedIDs: id
                }

                axios.post(`http://127.0.0.1:8000/users/merge`, mergeData)
                    .then(res => {
                        if (res.data) {
                            this.mergeRowID = id.concat();
                            this.check = false;
                            this.successfulMerge = true;
                            setTimeout(() => {
                                this.successfulMerge = false;
                                window.location.href = `http://127.0.0.1:8000/users/duplicate`;
                            }, 2700)
                        }
                    })
                    .catch(err => console.log(err))

            } else if (!selectedID) {
                this.alert = true;
                setTimeout(() => this.alert = false, 2500)
            }
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

tbody:nth-child(odd) {
    background-color: #ededed;
}

p {
    font-weight: bold;
}
.remove tr:nth-child(even){
    background-color: #ededed;
}
</style>