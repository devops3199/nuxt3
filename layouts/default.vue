<script setup lang="ts"></script>
<template>
  <div class="default-layout">
    <NavBar />
    <div class="content">
      <slot />
    </div>
  </div>
</template>
<style scoped>
.default-layout {
  width: 100%;
  height: 100vh;
}

.content {
  padding: 0 16px;
}
</style>
