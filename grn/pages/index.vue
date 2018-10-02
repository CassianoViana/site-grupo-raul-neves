<template>
  <div>
    <top-bar/>
    <banner/>
    <group/>
    <services/>
    <!--<team/>-->
  </div>
</template>

<script>
  import TopBar from '~/components/TopBar'
  import Logo from '~/components/Logo'
  import Banner from '~/components/Banner'
  import Group from '~/components/Group'
  import Team from '~/components/Team';
  import Services from '~/components/Services'

  export default {
    components: {
      TopBar,
      Banner,
      Group,
      Services,
      Team,
      Logo
    }
  }
</script>
