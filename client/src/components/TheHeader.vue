<script setup>
import { getUserName } from "../utils/userDetail";
import { clearToken } from "../utils/userDetail";
import { useRouter } from "vue-router";
import { login } from "../utils/login";
import { ref } from "vue";
import { inject } from "vue";
const isAuthenticated = inject("isAuthenticated");

const router = useRouter();

const loginRedirect = async () => {
  await login();
  // Redirect to dashboard
  console.log("HAHAHA");
  console.log(router);
  router.push("/dashboard");
  isAuthenticated.value = true;
};
const logout = () => {
  clearToken();
  router.push("/");
  isAuthenticated.value = false;
};
</script>

<style scoped>
/**
    This is where we define the main layout elements of the pages. Divided functionally by commonality or page class.
 */

/*
    A simple two-column stretched layout for the header and footer, positioning the items at start/end points of the container.

    Bonus exercise: refactor this so we don't duplicate selectors (I've left things slightly redundant for clarity)

    Result:

     <==== flexy width ====>
    |-----------------------|
    ||---|             |---||
    ||   |             |   ||
    ||---|             |---||
    |-----------------------|
 */

header {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: space-between;
  align-content: stretch;
  align-items: flex-start;
  /* background-color: rgba(0, 0, 0, 0.85); */
  background-color: #191F45;
  position: fixed;
  width: 100%;
}

.bb-logo {
  /* content: url("/logo-images/attendify-logo.png"); */
  /* content: url("/logo-images/logo.png"); */
  /* height: 47px;
  width: 130px; */
  /* opacity: 0.85; */
}

.bb-logo-mini {
  content: url("/logo-images/attendify-logo.png");
  height: 20px;
  width: 100px;
  opacity: 0.85;
  padding-bottom: 1rem;
  padding-left: 1.5rem;
}

.bb-logo:hover {
  opacity: 1;
}

.search-container {
  position: relative;
  display: inline-block;
  height: 30px;
  width: 50px;
  vertical-align: bottom;
  margin-top: -2px;
  margin-right: -8px;
}

header .search-icon {
  border: none;
  cursor: pointer;
  background: none;
  margin-left: -20px;
}

header .search-icon:hover {
  border: none;
  cursor: pointer;
  background: none;
  color: white;
}

.search {
  position: absolute;
  left: 49px; /* Button width-1px (Not 50px/100% because that will sometimes show a 1px line between the search box and button) */
  background-color: rgb(32, 32, 32);
  outline: none;
  border: none;
  padding: 0;
  width: 0;
  height: 100%;
  z-index: 10;
  transition-duration: 0.5s;
  border-radius: 4px;
  -moz-transition-duration: 0.4s;
  -webkit-transition-duration: 0.4s;
  -o-transition-duration: 0.4s;
}

.search:focus {
  width: 363px; /* Bar width+1px */
  padding: 0 16px 0 0;
}

.expandright {
  left: auto;
  right: 49px; /* Button width-1px */
}

.expandright:focus {
  padding: 0 0 0 16px;
}

.search-button {
  margin-bottom: -4px;
}

.search-button:hover {
  color: white;
  cursor: pointer;
}
.search-button:active {
  color: white;
}

.mglass {
  display: inline-block;
  pointer-events: none;
  -webkit-transform: rotate(-45deg);
  -moz-transform: rotate(-45deg);
  -o-transform: rotate(-45deg);
  -ms-transform: rotate(-45deg);
  font-size: 32px;
  margin: -6px 8px;
}

.mglass:hover {
  color: white;
  cursor: pointer;
}

.header-nav2 {
  flex-direction: row-reverse;
  display: flex;
  gap: 45px;
  padding-top: 10px;
  list-style-type: none;
}

header .flexItem {
  order: 0;
  align-self: auto;
}

/* header */
.searchBox {
  margin-top: 0.25em;
}

.searchBox input {
  vertical-align: middle;
  display: inline-block;
  height: 1.25em;
}

.login:hover {
  cursor: pointer;
}

.searchBox input[type="search"] {
  width: 15em;
  padding: 1em;
}

.searchBox input[type="submit"] {
  margin-left: 0.4em;
  border: 0;
  width: 1.25em;
  background-size: contain;
  cursor: pointer;
}

header .cartAndCategories li {
  display: block;
  position: relative;
}

header .cart {
  display: inline-block;
  vertical-align: middle;
  background-size: contain;
  opacity: 0.8;
}

header .cart:hover {
  opacity: 1;
}

/**
    Here we define any static sizes we want to apply to our page elements, along with any padding/margins.

    For example, we might want a max-width on the main container of each page, so they are consistent in size.

    We also set the document body to use border-box sizing, so all sizes are absolute.
 */

main {
  /* unset max-width to get full-page "liquidity" */
  max-width: 100em;
  margin: 0 auto 0 auto;
}

header {
  min-height: 2.7em;
  width: 100%;
  z-index: 1;
  padding: 1.1rem 2.5rem 0.8rem 2.5rem;
}

footer {
  min-height: 1em;
  padding: 1.5em 0;
}
</style>

<template>
  <header>
    <div class="flexItem">
      <router-link to="/">
        <img class="bb-logo" />
      </router-link>
    </div>
    <div class="flexItem">
      <ul class="header-nav2">
        <li v-if="isAuthenticated" class="login">
          <a @click="logout">Sign out</a>
        </li>
        <li class="login" v-else><a @click="loginRedirect">Sign in</a></li>
      </ul>
    </div>
  </header>
</template>
