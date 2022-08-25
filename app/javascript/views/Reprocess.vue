<template>
    <section class="v-container">
        <textarea v-model="reprocessList" name="" id="" cols="50" rows="10" placeholder="Enter externalkey2: P00200000FDdtnyabbe24lpc1dlz1T7qp8kIYPb8"></textarea>
        <button id="input-geocode" @click="getAgent">
            bulk reprocess
        </button>
    </section>
</template>

<script>

import axios from "axios";
export default {
    data() {
        return {
            reprocessList: [
                // 'P00200000FDdtnyabbe24lpc1dlz1T7qp8kIYPb8'
            ]
        }
    },
    methods: {
        agentList() {
            const self = this
            const endpointList = []
            this.reprocessList.forEach((externalKey2) => {
                endpointList.push(`/api/get_agent/${externalKey2}`)
                self.$store.commit('updateEndpoints', endpointList)
            })
        },
        getAgent() {
            this.agentList();
            axios.all(this.$store.getters.endpoint.map((endpoints) => axios.put(endpoints)))
            .then((data) => console.log(data))
            .catch((err) => console.log(err, 'twesting werero mewsg'))
        }
    }
}
</script>

<style>
.v-container {
    padding: 24px;
}
.agentProfile {
    height: 1080px;
    overflow: auto;
}
.agentProfileImage {
    width: 50%;
}
#input-geocode {
    background-color: #fff;
    font-size: 15px;
    font-weight: 300;
    margin: 12px;
    padding: 0 11px 0 13px;
    text-overflow: ellipsis;
    width: 350px;
}
</style>

cathy.kilpatrick@wellsfargo.com