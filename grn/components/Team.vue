<template>
  <section id="team" class="container mx-auto">
    <h2 class="section-title">Nosso time</h2>
    <p>
      Desde a gravação até a finalização, nossa equipe está preparada e atualizada <br>
      com as mais recentes tecnologias. Somos uma família. Cada colaborador faz aquilo <br>
      que da melhor forma contribui para a sua satisfação.
    </p>
    <ul class="members row">
      <li>
        <img src="/member1.png">
        <div class="name">
          <h3> Jonson banck </h3>
          <h4> Desenvolvedor </h4>
        </div>
        <p>
          Cinegrafista, trabalha desde os 12 anos com
          gravação de vídeos para publicidade e propaganda.
          Nas horas vagas, gosta de jogar videogame.
        </p>
      </li>
      <li>
        <img src="/member2.png">
        <div class="name">
          <h3> Jonson banck </h3>
          <h4> Desenvolvedor </h4>
        </div>
        <p>
          Cinegrafista, trabalha desde os 12 anos com
          gravação de vídeos para publicidade e propaganda.
          Nas horas vagas, gosta de jogar videogame.
        </p>
      </li>
      <li>
        <img src="/member3.png">
        <div class="name">
          <h3> Jonson banck </h3>
          <h4> Desenvolvedor </h4>
        </div>
        <p>
          Cinegrafista, trabalha desde os 12 anos com
          gravação de vídeos para publicidade e propaganda.
          Nas horas vagas, gosta de jogar videogame.
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
    justify-content: center;
  }

  ul.members {
    padding: 0;
    margin: 0 auto;
    list-style: none;
    li {
      margin: 20px;
      text-align: center;
      width: 25%;
      .name {
        margin: 20px auto;
        h3 {
          font-size: 20px;
        }
        h4 {
          margin: 5px;
          font-size: 15px;
          font-weight: lighter;
          color: gray;
        }
      }
    }
  }

  @media(max-width: 768px) {
    ul.members {
      li {
        width: 100%;
      }
    }

    @media (orientation: landscape) {
      ul.members {
        width: 100%;
        li {
          width: 30%;
        }
      }
    }
  }
</style>
