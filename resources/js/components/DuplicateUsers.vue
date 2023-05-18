<template>
    <div style="padding:55px;margin-left:255px;margin-top: 55px;">
        <h4 class="mb-4" style="font-weight: bold;">Duplicate Users:</h4>
        <DuplicateUserCard :prop1="id1" :prop2="id2"/>
    </div>
</template>

<script>
import DuplicateUserCard from './DuplicateUserCard.vue';
export default {
    name: 'DuplicateUsers',
    props: {
        id1: Array,
        id2: Array,
    },
    components: {
        DuplicateUserCard
    }
}
</script>