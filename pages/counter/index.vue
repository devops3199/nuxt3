<script setup lang="ts">
import { ref } from "vue";

const count = ref(0);
</script>
<template>
  <div class="container">
    <button @click="count--">Minus</button>
    <span class="count">{{ count }}</span>
    <button @click="count++">Plus</button>
  </div>
</template>
<style scoped>
.container {
  display: flex;
  gap: 16px;
}

.count {
  font-weight: 700;
  font-size: 16px;
}
</style>
