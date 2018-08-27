<template>
  <div>
    <div class="outer-top-line">
      <div class="top-line container mx-auto">
        <span>Bem-vindo, {{dateNow}}</span>
        <span>Tel: (47) 3318-0431</span>
      </div>
    </div>
    <div class="outer-nav container mx-auto">
      <div class="flex-row social-buttons">
        <button class="primary social button mr-1"> f</button>
        <button class="primary social button mr-1"> i</button>
        <button class="primary social button"> t</button>
      </div>
      <nav class="bar">
        <ul>
          <li><a href="#group">Grupo</a></li>
          <li><a href="#services">Serviços</a></li>
          <li class="logo">
            <img src="/logo-grupo-raul-neves.svg"/>
          </li>
          <li><a href="#team">Time</a></li>
          <li><a href="#contact">Contato</a></li>
        </ul>
      </nav>
      <button class="primary button call-button">
        Ligar
      </button>
    </div>
  </div>
</template>
<script>
  export default {
    computed: {
      dateNow() {
        const monthNames = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho",
          "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"
        ];
        let today = new Date();
        let dd = today.getDate();
        let mm = today.getMonth() + 1; //January is 0!

        let hh = today.getHours();
        let min = today.getMinutes();

        let yyyy = today.getFullYear();
        if (dd < 10) {
          dd = '0' + dd;
        }
        let monthName = monthNames[mm];
        return `${dd} de ${monthName} de ${yyyy} ${hh}:${min}`;
      }
    }
  }
</script>
<style lang="scss">
  @import "~/assets/css/style.scss";

  div.outer-top-line {
    background: $dark-color;
  }

  div.top-line {
    color: white;
    font-size: 12px;
    padding: 8px 0;
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-between;
  }

  div.outer-nav {
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-between;
    align-items: center;
  }

  nav.bar {
    padding: 25px;
    ul {
      padding-left: 0;
      list-style: none;
      display: flex;
      flex-flow: row nowrap;
      justify-content: center;
      align-items: center;

      li {
        a {
          color: $primary-color;
          text-decoration: none;
        }
        box-sizing: border-box;
        font-size: 15px;
        margin: auto 10px;
        padding: 5px;
      }

      li.logo {
        margin: auto 30px;
        img {
          width: 200px;
        }
      }

      li:not(.logo):hover {
        border-top: 2px solid $primary-color;
      }
    }
  }

  @media(max-width: 768px) {

    div.top-line {
      display: none;
    }

    div.outer-nav {
      padding: 30px;
      display: flex;
      flex-flow: column nowrap;
      justify-content: space-around;
      align-items: center;
    }

    nav.bar {
      padding: 10px;
      min-width: 100%;
      ul {
        flex-flow: column nowrap;
        justify-content: center;
        align-items: center;

        li {
          text-align: center;
          width: 100%;
          font-size: 15px;
          margin: 0;
          padding: 5px;
        }

        li.logo {
          margin: 0;
          order: 1;
          img {
            width: 100%;
          }
        }

        li:not(.logo) {
          order: 2;
          font-size: 20px;
        }
      }
    }

    nav.bar {
      order: 1;
    }
    .social-buttons {
      order: 2;
    }
    .call-button {
      margin-top: 10px;
      order: 3;
    }

  }
</style>
