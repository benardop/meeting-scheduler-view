<script setup lang="ts"></script>

<style scoped>
footer {
  position: relative;
  display: flex;
  flex-direction: column;
  /* background-color: black; */
  background-color: #191F45;
  font-size: 12px;
  padding-top: 1.5rem;
  padding-left: 1.5rem;
  text-align: left;
  min-height: 1em;
  padding: 1.5em 0;
  align-items: flex-start;
}

.footer-sep {
  display: flex;
  flex-wrap: wrap;
  border-top: solid 1px #272727;
  text-align: left;
  align-content: left;
  width: 90%;
  padding-left: 1.2rem;
  margin-left: 1rem;
  justify-content: space-around;
  padding-top: 1.5rem;
}

.footer-sep > ul {
  margin-right: 3rem;
  margin-bottom: 2rem;
  list-style-type: none;
}
.footer-sep > li {
  width: 100px;
}

.footer-sep > * {
  flex: 1 1 150px;
}

.bb-logo-mini {
  /* content: url("/logo-images/attendify-logo.png"); */
  /* height: 30px;
  width: 80px;
  opacity: 0.85;  */
  margin-bottom: 1rem;
  margin-left: 1.5rem; 
}
</style>

<template>
  <footer>
    <img class="bb-logo-mini" />
    <section class="footer-sep">
      <ul>
        <h4>Explore</h4>
        <li><router-link to="/">Home</router-link></li>
        <li><router-link to="/about">About</router-link></li>
        <li><router-link to="/">FAQ's</router-link></li>
      </ul>
      <ul>
        <h4>Visit</h4>
        <li>
          <router-link to="https://goo.gl/maps/jQavNBvXGRFWjjrr6"
            >Head Office<br />Nairobi <br />00100</router-link
          >
        </li>
      </ul>
      <ul>
        <h4>Contact</h4>
        <li>
          <router-link to="/">
            <i class="fa fa-envelope fa-fw"></i> benard.pacho@gmail.com
          </router-link>
        </li>
        <li>
          <router-link to="/">
            <i class="fa fa-mobile fa-fw"></i>+2547777456
          </router-link>
        </li>
      </ul>
      <ul>
        <h4>Follow</h4>
        <li>
          <router-link to="/">
            <i class="fa fa-instagram fa-fw"></i>LinkedIn
          </router-link>
        </li>
        <li>
          <router-link to="/">
            <i class="fa fa-facebook fa-fw"></i>Facebook
          </router-link>
        </li>
        <li>
          <router-link to="/">
            <i class="fa fa-twitter fa-fw"></i>Twitter
          </router-link>
        </li>
      </ul>
    </section>
    <section class="footer-sep">
      <p>&#169; 2023 BOMIS. All Rights Reserved.</p>
    </section>
  </footer>
</template>
