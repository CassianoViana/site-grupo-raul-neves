<template>
  <div>
    <div class="outer-top-line">
      <div id="topLine"
           class="top-line container mx-auto">
        <span>Bem-vindo, {{dateNow}}</span>
        <span>
          Tel: (47) 3318-0431
        </span>
      </div>
    </div>
    <div class="fixable-bar"
         :class="{'fixed':fixedBar}">
      <div class="outer-nav container mx-auto">
        <div class="flex-row social-buttons"
             v-show="menuOpen">
          <a target="_blank"
             href="https://www.facebook.com/tvgasparoficial/" class="primary social button mr-1"
             :class="{'light':fixedBar}">f</a>
          <a target="_blank"
             href="https://vimeo.com/nevesfilms" class="primary social button mr-1"
             :class="{'light':fixedBar}">v</a>
          <a target="_blank"
             href="https://twitter.com/tvgaspar" class="primary social button"
             :class="{'light':fixedBar}">t</a>
        </div>
        <nav class="bar">
          <ul>
            <li v-show="menuOpen">
              <a href="#group" @click.prevent="scroolTo('group')">
                Grupo
              </a>
            </li>
            <li class="logo">
              <img :src="`/logo-grupo-raul-neves${fixedBar?'-light':''}.svg`"/>
              <button
                @click="menuOpen = !menuOpen"
                id="burger-button">
                <img v-if="fixedBar" :src="menuOpen?'/menu-list-close.svg':'/menu-list.svg'"/>
                <img v-else :src="menuOpen?'/menu-list-close-dark.svg':'/menu-list-dark.svg'"/>
              </button>
            </li>
            <li v-show="menuOpen">
              <a href="#services" @click.prevent="scroolTo('services')">
                Serviços
              </a>
            </li>
            <!--<li v-show="menuOpen">
              <a href="#team"
                 @click.prevent="scroolTo('team')">
                Time
              </a>
            </li>
            <li v-show="menuOpen">
              <a href="#contact">
                Contato
              </a>
            </li>-->
          </ul>
        </nav>
        <a href="https://api.whatsapp.com/send?phone=5547997436800"
           v-show="menuOpen"
           class="primary button call-button" :class="{'light':fixedBar}">
          Ligar
        </a>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        fixedBar: false,
        menuOpen: true,
        scrollListener: undefined
      }
    },
    computed: {
      dateNow() {
        const monthNames = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho",
          "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"
        ];
        let today = new Date();
        let dd = today.getDate();
        let mm = today.getMonth(); //January is 0!

        let hh = today.getHours();
        let min = today.getMinutes();

        let yyyy = today.getFullYear();
        if (dd < 10) {
          dd = '0' + dd;
        }
        let monthName = monthNames[mm];
        return `${dd} de ${monthName} de ${yyyy} ${hh}:${min}`;
      }
    },
    methods: {
      scroolTo(id) {
        const elmt = document.getElementById(id)
        elmt.scrollIntoView({behavior: 'smooth', block: 'start'});
      },
      controlTopBarFixation(evt) {
        this.fixedBar = window.scrollY > 0;
        this.menuOpen = window.innerWidth > 768;
      }
    },
    mounted() {
      this.scrollListener = window.addEventListener('scroll', this.controlTopBarFixation)
    },
    destroyed() {
      window.removeEventListener('scroll', this.scrollListener);
    },
  }
</script>
<style lang="scss">
  @import "~/assets/css/style.scss";

  .social-buttons {
    a {
      padding: 5px 8px !important;
      text-align: center !important;
    }
  }

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
        font-size: 19px;
        margin: auto 10px;
        padding: 5px;
      }

      li.logo {
        margin: auto 30px;
        display: flex;
        flex-flow: row nowrap;
        align-items: center;
        justify-content: center;
        #burger-button {
          display: none;
        }
        img {
          width: 200px;
        }
      }

      li:not(.logo):hover {
        border-top: 2px solid $primary-color;
      }
    }
  }

  .fixable-bar {
    transition: all $transition-time;
    nav.bar {
      transition: padding $transition-time;
      ul {
        li {
          a {
            transition: padding $transition-time;
          }
        }
      }
    }
  }

  .fixable-bar.fixed {
    z-index: 3;
    width: 100%;
    position: fixed;
    background: rgba(0, 0, 0, 0.8);
    top: 0;
    nav.bar {
      padding: 10px;
      ul {
        li {
          a {
            color: white;
          }
        }
      }
      li:not(.logo):hover {
        border-top: 2px solid white;
      }
    }
    button {
      color: white;
    }
  }

  @media(max-width: 768px) {
    .call-button {
      margin-bottom: 20px;
    }
    div.top-line {
      display: flex;
      flex-flow: column nowrap;
      text-align: center;
      padding: 5px 10px;
      font-size: 15px;
      span {
        margin: 5px auto;
      }
    }

    div.outer-nav {
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
          margin: 3px auto;
          a {
            font-size: 28px;
          }
        }

        li.logo {
          margin: 0;
          order: 1;
          display: flex;
          justify-content: space-between;
          img {
            width: 50%;
          }
          #burger-button {
            display: inline-block;
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

    @media(orientation: landscape) {
      .outer-nav {
        padding: 0 !important;
      }
      nav.bar {
        padding: 10px;
        ul {
          li.logo {
            img {
              width: 25%;
            }
          }
        }
      }
    }
  }
</style>
