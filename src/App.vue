<template>
  <div class="app">
    <header class="header">
      <div class="container header-inner">
        <RouterLink class="brand" to="/">
          <span class="brand-mark"></span>
          <span class="brand-text">Novavia</span>
        </RouterLink>

        <nav class="nav">
          <RouterLink to="/products">Products</RouterLink>
          <RouterLink to="/services">Services</RouterLink>
          <RouterLink to="/about">About</RouterLink>
          <RouterLink to="/contact" class="cta">Contact</RouterLink>
        </nav>
      </div>
    </header>

    <RouterView />
    <Footer></Footer>
  </div>
</template>

<script setup>
  import Footer from "./components/Footer.vue";
</script>

<style>
:root {
  --bg: #0b1020;
  --card: rgba(255, 255, 255, 0.06);
  --border: rgba(255, 255, 255, 0.12);
  --text: rgba(255, 255, 255, 0.92);
  --muted: rgba(255, 255, 255, 0.70);
}

body {
  margin: 0;
  font-family: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Arial, "Apple Color Emoji",
    "Segoe UI Emoji";
  color: var(--text);
  background: radial-gradient(1200px 600px at 20% 0%, rgba(124, 92, 255, 0.35), transparent 60%),
    radial-gradient(900px 500px at 90% 20%, rgba(0, 209, 255, 0.25), transparent 55%),
    var(--bg);
}

a {
  color: inherit;
}

.container {
  max-width: 1100px;
  margin: 0 auto;
  padding: 0 20px;
}

.header {
  position: sticky;
  top: 0;
  z-index: 10;
  backdrop-filter: blur(12px);
  background: rgba(11, 16, 32, 0.65);
  border-bottom: 1px solid var(--border);
}

.header-inner {
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 72px;
}

.brand {
  display: inline-flex;
  align-items: center;
  gap: 10px;
  text-decoration: none;
  font-weight: 700;
  letter-spacing: 0.2px;
}

.brand-mark {
  width: 12px;
  height: 12px;
  border-radius: 999px;
  background: linear-gradient(135deg, #7c5cff, #00d1ff);
  box-shadow: 0 0 18px rgba(124, 92, 255, 0.45);
}

.nav {
  display: flex;
  align-items: center;
  gap: 14px;
}

.nav a {
  text-decoration: none;
  color: var(--muted);
  padding: 8px 10px;
  border-radius: 10px;
  position: relative;
}

.nav a:hover {
  color: var(--text);
  background: rgba(255, 255, 255, 0.06);
}

/* Active (exact) link — nice “glow pill” */
.nav a.router-link-exact-active {
  color: var(--text);
  background: rgba(255, 255, 255, 0.08);
  border: 1px solid rgba(255, 255, 255, 0.14);
}

/* Contact CTA keeps button look even when active */
.nav .cta.router-link-exact-active {
  background: linear-gradient(135deg, rgba(124, 92, 255, 0.45), rgba(0, 209, 255, 0.28));
  border: 1px solid rgba(255, 255, 255, 0.22);
}

</style>
