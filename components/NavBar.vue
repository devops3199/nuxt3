<script setup lang="ts"></script>
<template>
  <ul class="nav">
    <li><NuxtLink class="nav-menu" to="/">Home</NuxtLink></li>
    <li><NuxtLink class="nav-menu" to="/counter">Counter</NuxtLink></li>
    <li><NuxtLink class="nav-menu" to="/news">News</NuxtLink></li>
  </ul>
</template>
<style scoped>
.nav {
  display: flex;
  gap: 16px;
  padding: 0 16px;
  list-style: none;
}

.nav-menu {
  color: white;
  background-color: aquamarine;
  padding: 10px 20px;
}

.router-link-active {
  background-color: coral;
}
</style>
