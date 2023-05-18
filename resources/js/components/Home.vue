<template>
    <div style="padding:55px;margin-left:255px;margin-top: 55px;">
        <div>
            <div>
                <div>
                    <div>
                        <h4 style="font-weight: bold;">AVA Communication Industries</h4>
                    </div>
                </div>
            </div>
            <div>
                <div>
                    <div>
                        <div style="padding:20px">
                            <p>
                                Ava Communication Industries, having more than fifteen years of
                                experience and relying on the knowledge and skill of a highly motivated R&amp;D team, is a
                                knowledge-based privately-held company in Iran, leading in manufacture of state-of-the-art
                                telecommunications technologies. The Company has designed and produced New-Generation
                                Network-Based Hybrid Call Centers based on NGN and IMS architecture for the first time in
                                Iran
                                since 2002.
                            </p>
                            <p>
                                Ava Communications produces New-Generation Telecommunications Switches under the brand name
                                of
                                “AVA”, in two classes of “Enterprise” and “Carrier Grade”, from low capacities (several
                                hundred
                                ports) to high capacities (several million ports), as well as Access Gateway Equipment
                                supporting a variety of media and standard protocols.
                            </p>
                            <p>
                                Relying on the capabilities of its research and development center, Ava has also
                                manufactured
                                the first IP Phone product that has been designed and made in Iran.
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mb-5 mt-5">
            <h4 style="font-weight: bold;">WHY CHOOSE AVA</h4>
            <p style="padding:20px">Our experience and expertise in implementing telecommunication projects and customer satisfaction:</p>
        </div>
        <cardComponent />

    </div>
</template>

<script>
import cardComponent from './cardComponent.vue';

export default {
    name: "Home",
    components:{
        cardComponent,
    }
}
</script>

<style scoped>
p{
    max-width: 95%;
    font-size: 18px;
}
</style>