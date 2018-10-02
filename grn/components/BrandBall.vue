<template>
  <div class="brand-ball"
       @mouseover="$emit('hover',color)"
       :class="{'resizable':resizable, 'large':large}">
    <img :src="brandImage" :style="`width:${logoWidth}`"/>
  </div>
</template>
<script>
  export default {
    props: {
      'brand-image': {
        required: true
      },
      'logoWidth': {
        required: false,
        default: '70%'
      },
      resizable: {
        type: Boolean,
        default: true
      },
      large: {
        type: Boolean,
        default: false
      },
      color: {
        type: String
      }
    }
  }
</script>
<style lang="scss">
  @import "~/assets/css/style.scss";

  $ball-size: 200px;

  div.brand-ball {
    cursor: pointer;
    z-index: 2;
    background: white;
    align-items: stretch;
    display: flex;
    justify-content: center;
    min-width: $ball-size;
    min-height: $ball-size;
    width: $ball-size;
    height: $ball-size;

    border-radius: 50%;
    transition: width $transition-time, height $transition-time, transform $transition-time;
    margin: 10px 50px;

    img {
      padding: 0;
    }
  }

  div.brand-ball.large {
    $large-factor: 1.6;
    min-width: $ball-size * $large-factor;
    min-height: $ball-size * $large-factor;
    width: $ball-size * $large-factor;
    height: $ball-size * $large-factor;
  }

  div.brand-ball.resizable:hover {
    transform: scale(1.2, 1.2);
    box-shadow: 0 0 100px rgba(0, 0, 0, 0.4);
  }

  @media(max-width: 768px) {
    $ball-size: 140px;

    div.brand-ball {
      min-width: $ball-size;
      min-height: $ball-size;
      width: $ball-size;
      height: $ball-size;
      margin: 10px 30px;
    }

    div.brand-ball.large {
      $large-factor: 1.3;
      min-width: $ball-size * $large-factor;
      min-height: $ball-size * $large-factor;
      width: $ball-size * $large-factor;
      height: $ball-size * $large-factor;
    }
  }


  @media(max-width: 500px) {
    $ball-size: 100px;

    div.brand-ball {
      min-width: $ball-size;
      min-height: $ball-size;
      width: $ball-size;
      height: $ball-size;
      margin: 10px;
    }

    div.brand-ball.large {
      $large-factor: 1.3;
      min-width: $ball-size * $large-factor;
      min-height: $ball-size * $large-factor;
      width: $ball-size * $large-factor;
      height: $ball-size * $large-factor;
    }
  }
</style>
