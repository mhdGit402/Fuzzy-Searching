<template>
    <div style="padding:55px;margin-left:255px;margin-top: 55px;">

        <h4 class="mb-4" style="font-weight: bold;">Create User:</h4>

        <form @submit.prevent="submitForm">
            <div style="font-size:17px;" class="mb-3">

                <label for="firstname" class="form-label">First name</label>
                <input v-model="firstname" type="text" class="form-control mb-3" id="firstname"
                    placeholder="Enter First name...">
                <label for="lastname" class="form-label">Last name</label>
                <input v-model="lastname" type="text" class="form-control" id="lastname" placeholder="Enter Last name...">



            </div>

            <button style="width:150px;" type="submit" class="btn btn-outline-primary mt-3">Submit</button>

            <div style="width: 50%;" class="mt-4" v-if="errors.length != 0">
                    <div class="alert alert-warning" role="alert">
                        Please fill the following field(s):
                        <p class="mt-3" v-for="error in errors">{{ error }}</p>
                    </div>                    
            </div>

            <div style="width: 50%;" class="mt-4" v-if="successfulCreate">
                <div style="height:60px;" class="alert alert-success" role="alert">
                    <p>User added successfully!</p>
                </div>
            </div>
        </form>

    </div>
</template>

<script>
import axios from 'axios';

export default {
    name: "CreateUser",
    data() {
        return {
            firstname: null,
            lastname: null,
            data: {},
            errors: [],
            successfulCreate: false
        }
    },
    methods: {
        submitForm() {

            this.successfulCreate = false;

            if (this.firstname && this.lastname && this.nameLength(this.firstname)) {

                this.data = {
                    firstname: this.firstname,
                    lastname: this.lastname
                }

                axios.post('http://127.0.0.1:8000/user/create', this.data)
                    .then(res => {
                        if (res.data) {
                            this.data = {};
                            this.firstname = null;
                            this.lastname = null;
                            this.successfulCreate = true;
                            setTimeout(() => this.successfulCreate = false, 2500)
                        }
                    })
                    .catch(err => console.log(err))
            }

            this.errors = [];

            if (!this.firstname) {
                this.errors.push('First name')
            } else if (!this.nameLength(this.firstname)) {
                this.errors.push('First name must be at least 4 characters.');
            }

            if (!this.lastname) {
                this.errors.push('Last name')
            }

        },
        nameLength(el) {
            if (el.length < 4) {
                return false;
            }
            return true;
        }
    }

}
</script>

<style scoped>
p {
    font-weight: bold;
}

.form-control {
    width: 50% !important;
    height: 50px !important;
}
</style>