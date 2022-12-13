<script setup lang="ts">
type News = {
  comments_count: number;
  domain: string;
  id: number;
  points: number;
  time: number;
  time_age: string;
  title: string;
  type: string;
  url: string;
  user: string;
};

const {
  data: news,
  pending,
  refresh,
} = await useAsyncData<News[]>("news", () =>
  $fetch("https://api.hnpwa.com/v0/news/1.json")
);

const refetchHandler = () => {
  refresh();
};
</script>
<template>
  <div>
    <h1>News</h1>
    <div class="wrapper">
      <button class="refetch-btn" @click="refetchHandler">Refetch</button>
    </div>
    <div v-if="pending">Loading</div>
    <div v-else class="news">
      <div class="news-item" v-for="item in news">
        {{ item.title }}
      </div>
    </div>
  </div>
</template>
<style scoped>
.news {
  display: flex;
  flex-direction: column;
  gap: 8px;
  padding-bottom: 8px;
}
.news-item {
  padding: 10px 20px;
  border: 1px solid #787878;
  border-radius: 5px;
}

.wrapper {
  margin: 16px 0;
}

.refetch-btn {
  color: white;
  background-color: wheat;
  padding: 10px 20px;
  outline: none;
  border: none;
  cursor: pointer;
}

.refetch-btn:hover {
  opacity: 0.7;
}
</style>
