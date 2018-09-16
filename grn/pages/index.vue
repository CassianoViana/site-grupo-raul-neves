<template>
  <div>
    <top-bar/>
    <banner/>
    <group/>
    <services/>
    <team/>
    <div>Icons made by <a href="https://www.flaticon.com/authors/smashicons" title="Smashicons">Smashicons</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>
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
