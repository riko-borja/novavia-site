<template>
  <section class="page-header">
    <div class="container">
      <h1>{{ title }}</h1>
      <p v-if="subtitle" class="subtitle">
        {{ subtitle }}
      </p>
    </div>
  </section>
</template>

<script setup>
defineProps({
  title: String,
  subtitle: String
})
</script>

<style scoped>
.page-header {
  padding-top: 70px;
  padding-bottom: 24px;
}

.container {
  max-width: 1100px;
  margin: 0 auto;
  padding: 0 18px;
}

h1 {
  margin: 0;
  font-size: 2.4rem;
  line-height: 1.1;
}

.subtitle {
  margin-top: 12px;
  max-width: 70ch;
  color: rgba(255,255,255,0.74);
  font-size: 1.05rem;
}
</style>
