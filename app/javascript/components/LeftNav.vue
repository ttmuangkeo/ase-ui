<template>
  <nav>
    <ul>
      <li><router-link v-bind:to="`/`">Home</router-link></li>
      <li><router-link v-bind:to="`/reprocess`">Realogy Reprocess</router-link></li>
      <li><router-link v-bind:to="`/company`"> company brand</router-link></li>
      <li><router-link v-bind:to="`/openhouse`"> Open House</router-link></li>
    </ul>
  </nav>
</template>

<script>
export default {

}
</script>

<style scoped>
  li {
    padding: 20px;
    border-bottom: 1px solid #fff;
    cursor: pointer;
  }
  li:hover {
    background: #e5e5e5;
  }
</style>
