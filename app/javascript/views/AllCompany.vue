<template>
  <section>
    <div id="company-options">
      <ul>
        <li v-for="(rec, key) in $store.getters.allCompany" :key="`rec-${key}`" @click="getBrand(rec.moxi_works_company_id)">
          Name: {{rec.name}}
        </li>
      </ul>
    </div>
  </section>
</template>

<script>

export default {
  data() {
    return {
      companyId: ''
    };
  },
  mounted() {
    this.getAllCompany();
  },
  methods: {
    getBrand(companyId) {
      this.$router.push({name: 'get-brand', params: {companyId: companyId}})
    },
    getAllCompany() {
      const self = this;
      $.ajax({
        url: `api/get_company`,
        method: "GET",
        success: function (res) {
          console.log(res)
          self.$store.commit('updateAllCompany', res);
        }
      })
    }
  }
}
</script>

<style>
  #company-options {
    position: absolute;
    top: 0;
    left: 0;
    right: 65%;
    bottom: 0;
    overflow-y: auto;
    overflow-x: hidden;
  }
  li {
    padding: 24px;
    cursor: pointer;
    border-bottom: 1px solid #dcdcdc;
  }

  li:first-child {
    margin-top: 0;
  }  
</style>