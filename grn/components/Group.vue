<template>
  <div id="group" class="root" :style="`background-color:${backgroundColor}`">
    <div class="title">
      <h2 class="section-title">O Grupo</h2>
      <p>Para cada necessidade, uma empresa especializada</p>
    </div>
    <div class="group">
      <div id="link-lines">
        <img src="/link-lines.svg">
      </div>
      <div class="container mx-auto">
        <div class="row">
          <brand-ball brand-image="/logo-grupo-raul-neves.svg"
                      logo-width="90%"
                      :resizable="false"
                      large/>
        </div>
        <div class="row">
          <brand-ball brand-image="/logo-tv-gaspar.svg"
                      color="rgb(173, 39, 36)"
                      @hover="changeBackgroundColor"/>
          <brand-ball brand-image="/logo-neves-films.svg"
                      color="rgb(55, 55, 55)"
                      @hover="changeBackgroundColor"
                      logo-width="65%"/>
          <brand-ball brand-image="/logo-pw.svg"
                      color="rgb(24, 74, 199)"
                      @hover="changeBackgroundColor"/>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  import BrandBall from '~/components/BrandBall';

  export default {
    components: {
      BrandBall
    },
    data() {
      return {
        backgroundColor: ''
      }
    },
    methods: {
      changeBackgroundColor(color) {
        this.backgroundColor = color;
      }
    }
  }
</script>
<style lang="scss" scoped>
  @import "~/assets/css/style.scss";

  .root {
    background-color: $neves-films-color;
  }

  .group {
    padding: 30px;
    display: flex;
    align-items: center;
    transition: background-color $transition-time;
  }

  .row {
    text-align: center;
    display: flex;
    flex-flow: row nowrap;
    justify-content: center;
  }

  .title {
    color: white;
  }

  #link-lines {
    z-index: 1;
    width: 50%;
    left: 25%;
    position: absolute;
    display: flex;
    justify-content: center;
  }

</style>
