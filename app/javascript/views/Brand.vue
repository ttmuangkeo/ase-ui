<template>
  <section>
    <div class="container">
      <h1>Name: {{$store.getters.companyBranding.display_name}}</h1>
      <div>
        <h1>colors</h1>
        <p>Button Background and font color</p>
        <button :style="this.buttonStyles">button_background_color</button>
        <p>Font background and color</p>
        <span :style="this.colors"> Lorem ipsum dolor sit amet conse commodi vitae</span>
      </div>
      <hr>
      <div class="container">
        <h1>CMA Header</h1>
        <img :src="$store.getters.companyBranding.image_cma_pdf_logo_header" alt="">
        <hr>
        <h1>CMA Pres Cover</h1>
        <img :src="$store.getters.companyBranding.image_pres_cover_logo" alt="">
        <h1>CMA Pres Cover</h1>
        <img :src="$store.getters.companyBranding.image_logo" alt="">
      </div>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      styles: {    
          // "image_logo": $store.getters.companyBranding.image_logo,
          // "cma_authoring_color": $store.getters.companyBranding.cma_authoring_color,
          // "background_color": this.$store.getters.companyBranding.background_color
          // "background_font_color_primary": "#ffffff",
          // "button_background_color": this.$store.getters.companyBranding.button_background_color,
          // "button_font_color": "#ffffff",
          // "copyright": "\u0026copy; 2022 MoxiWorks",
          // "display_name": "Vacasa",
          // "email_element_background_color": "#003349",
          // "image_cma_pdf_logo_header": "https://images-static.moxiworks.com/static/images/br/vacasa/VacasaIdentityLockupHorizontalWideBlue_1194x158.png",
          // "image_email_logo_alt": "https://images-static.moxiworks.com/static/images/br/vacasa/Vacasa_Identity_Icon_Hero.png",
          // "image_favicon": "https://images-static.moxiworks.com/static/images/br/vacasa/VacasaIconProfileBlue.jpg",
          // "image_pres_cover_logo": "https://images-static.moxiworks.com/static/images/br/vacasa/VacasaIdentityLockupHorizontalWideBlue_1194x158.png",
          // "pres_block_background_color": "#003349",
          // "pres_block_text_color": "#ffffff"
      },
      buttonStyles: {
            "background-color": this.$store.getters.companyBranding.button_background_color,
            "color": this.$store.getters.companyBranding.button_font_color,
            "width": "23%",
            "height": "40px"
      },
      colors: {
            "background-color": this.$store.getters.companyBranding.background_color,
            "color": this.$store.getters.companyBranding.background_font_color_primary,
            "width": "23%",
            "height": "40px",
            "padding": "10px"
      }
    }
  },
  mounted() {
    this.getBranding();
  },
  beforeRouteLeave(to, from, next) {
    this.resetStyles();
    next();
  },
  methods: {
    getBranding() {
      const self = this;
      $.ajax({
        url: `/api/get_brand/${this.$route.params.companyId}`,
        method: 'GET',
        success: function(res) {
          console.log(res)
          self.$store.commit('updateCompanyBranding', res)
        }
      })
    },
    resetStyles() {
      this.buttonStyles = {}
    }
  }
}
</script>

<style>

</style>