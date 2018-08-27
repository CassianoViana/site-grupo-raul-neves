<template>
  <div>
    <top-bar></top-bar>
    <banner></banner>
    <group></group>
    <section class="presentation">
    </section>
    <section class="team">
    </section>
  </div>
</template>

<script>
  import TopBar from '~/components/TopBar'
  import Logo from '~/components/Logo'
  import Banner from '~/components/Banner'
  import Group from '~/components/Group'

  export default {
    components: {
      TopBar,
      Banner,
      Group,
      Logo
    }
  }
</script>
