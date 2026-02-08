<template>
  <header class="header">
    <div class="brand">Novavia</div>
    <nav class="nav">
      <RouterLink to="/">Home</RouterLink>
      <RouterLink to="/products">Products</RouterLink>
      <RouterLink to="/services">Services</RouterLink>
      <RouterLink to="/about">About</RouterLink>
      <RouterLink to="/contact">Contact</RouterLink>
    </nav>
  </header>

  <RouterView class="page" />
</template>

<script setup></script>

<style>
body {
  margin: 0;
  font-family: Arial, sans-serif;
}

.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 16px 24px;
  border-bottom: 1px solid #333;
}

.brand {
  font-weight: 700;
  letter-spacing: 0.5px;
}

.nav {
  display: flex;
  gap: 14px;
}

.nav a {
  text-decoration: none;
  color: inherit;
  opacity: 0.8;
}

.nav a.router-link-active {
  opacity: 1;
  text-decoration: underline;
}

.page {
  padding: 24px;
}
</style>
