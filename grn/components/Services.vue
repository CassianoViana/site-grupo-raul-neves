<template>
  <section id="services" class="container mx-auto">
    <h2 class="section-title">Serviços</h2>
    <p>
      Nossas soluções foram pensadas para atender às diferentes demandas do mercado.<br>
      Precisando divulgar sua marca, produzir um vídeo institucional, ou gravar o seu evento? <br>
      Estamos presentes nas redes sociais, comércio regional, TV e atraveś da propaganda <i>outdoor</i><br>
      por meio dos painéis de led. Tecnologia inovadora e segura, com resultado garantido.
    </p>
    <ul class="services row">
      <li>
        <div class="img-wrapper">
          <img src="/announcement.svg">
        </div>
        <h3>Painel de LED</h3>
        <p>
          O Painel de LED é um meio de comunicação chamativo,
          capaz de prender a atenção dos espectadores por ser mais
          dinâmico que os outros tipos de painel.
        </p>
        <!--<div class="btn">
          <nuxt-link class="button" to="/painel-de-led">
            Clique para saber mais
          </nuxt-link>
        </div>-->
      </li>
      <li>
        <div class="img-wrapper">
          <img src="/tablet.svg">
        </div>
        <h3>TV Indoor</h3>
        <p>
          A <i>TV Indoor</i> permite que você apresente a sua marca através dos
          televisores espalhados pelos estabelecimentos comerciais da cidade.
          Dessa forma você estará presente desde à padaria até o posto de gasolina.
        </p>
        <!--<div class="btn">
          <nuxt-link class="button" to="/tv-indoor">
            Clique para saber mais
          </nuxt-link>
        </div>-->
      </li>
      <li>
        <div class="img-wrapper">
          <img src="/microphone.svg">
        </div>
        <h3>Reportagens</h3>
        <p>
          A <i>TV Gaspar</i> é a principal emissora online da região. Através do site e das
          insersões na <i>tv indoor</i> você fica sabendo de tudo que acontece, de forma rápida,
          clara e visual.
        </p>
        <!--<div class="btn">
          <button class="button">
            Clique para saber mais
          </button>
        </div>-->
      </li>
    </ul>
    <ul class="services row">
      <li>
        <div class="img-wrapper">
          <img src="/video-player-2.svg">
        </div>
        <h3>Produção de vídeos</h3>
        <p>
          Sempre atualizados com as novas tecnologias, nossa equipe é capaz de entregar a
          você o melhor resultado em produção de vídeo. Desde o roteiro, <b>gravação</b> e finalização
          são as etapas necessárias para a produção de um vídeo de qualidade.
        </p>
      </li>
      <li>
        <div class="img-wrapper">
          <!--<img src="/evento.svg">-->
          <img src="/champagne.svg">
        </div>
        <h3>Cobertura de eventos</h3>
        <p>
          Quer deixar registrado para sempre aquela festa bacana ou o evento da sua empresa?
          Possuimos toda a estrutura para capturar os melhores ângulos do seu evento, seja
          para publicação ou <b>tranmissão ao vivo</b>.
        </p>
      </li>
      <li>
        <div class="img-wrapper">
          <img src="/computer.svg">
        </div>
        <h3>Mídias digitais</h3>
        <p>
          A internet é hoje o maior meio de comunicação virtual.
          Temos soluções para impulsionar você e sua marca, seja por meio de
          vídeos e reportagens ou produção de sites institucionais.
        </p>
      </li>
    </ul>
  </section>
</template>

<script>
  export default {
    name: "Services"
  }
</script>

<style scoped lang="scss">
  @import '~/assets/css/style.scss';

  .row {
    display: flex;
    flex-flow: row wrap;
  }

  ul.services {
    padding: 0;
    list-style: none;
    justify-content: center;
    li {
      width: 30%;
      align-items: center;
      text-align: center;
      display: flex;
      flex-flow: column nowrap;
      margin: 30px 20px;
      div.btn {
        display: flex;
        flex-flow: column;
        flex-grow: 1;
        justify-content: flex-end;
        margin: 10px auto;
        button {
          align-content: end;
        }
      }
      h3 {
        text-transform: uppercase;
        color: $primary-color;
        margin: 18px auto;
        font-size: 20px;
      }
      .img-wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 180px;
        height: 180px;
        border-radius: 50%;
      }
    }
  }

  @media(max-width: 768px) {
    ul.services {
      max-width: 100%;
      li {
        width: 80%;
        align-items: center;
        text-align: center;
        display: flex;
        flex-flow: column nowrap;
        margin: 30px 10px;
        h3 {
          color: $primary-color;
          margin: 20px auto;
          font-size: 25px;
        }
        img {
          color: red;
          width: 100px;
        }
      }
    }
  }
</style>
