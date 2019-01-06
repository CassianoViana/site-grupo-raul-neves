<template>
  <div>
    <div class="banner"
         :style="`background-image: url('${currentBanner}')`"
         :class="{'odd': currentIndex % 2 === 0}"
    >
      <div class="gradient" :style="`${currentStyle}`"></div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        slideInterval: null,
        currentIndex: 0,
        banners: [
          {
            banner: '/banner-tv-gaspar.png',
            //gradient: 'background: linear-gradient(to right, red, transparent, blue)'
          },
          {
            banner: '/banner-neves.png',
            //gradient: 'background: linear-gradient(to right, red, transparent, green)'
          },
          {
            banner: '/banner-player-web.png',
            //gradient: 'background: linear-gradient(to right, red, transparent, green)'
          },
          {
            banner: '/banner-all.png',
            //gradient: 'background: linear-gradient(to right, red, transparent, green)'
          },
        ]
      }
    },
    methods: {
      changeBanner() {
        this.currentIndex = this.currentIndex >= this.banners.length - 1
          ? 0 : this.currentIndex + 1;
      }
    },
    computed: {
      currentBanner() {
        return this.banners[this.currentIndex].banner;
      },
      currentStyle() {
        return this.banners[this.currentIndex].gradient;
      }
    },
    mounted() {
      this.slideInterval = setInterval(this.changeBanner, 5000)
    },
    destroyed() {
      clearInterval(this.slideInterval);
    }
  }
</script>
<style lang="scss">
  @import "~/assets/css/style.scss";

  div.banner {
    position: relative;
    background-position: center;
    background-size: auto 100% ;
    transition: background-image 2s;

    .gradient {
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
    }

  }

  @media(min-width: 937px) {
    div.banner.odd {
      background-size: 100%;
    }

    div.banner:not(.odd) {
      background-size: 100%;
    }
  }

  @media(max-width: 1500px) { div.banner { height: 450px; } }
  @media(max-width: 1200px) { div.banner { height: 300px; } }

  @media(max-width: 936px) {
    div.banner {
      height: 200px;
    }
  }

</style>
