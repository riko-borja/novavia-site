<template>
  <footer class="footer">
    <div class="container footer-inner">
      <div class="brand">Novavia</div>
      <div class="copyright">
        © {{ new Date().getFullYear() }} Novavia. All rights reserved.
      </div>
    </div>
  </footer>
</template>

<style scoped>
.footer {
  margin-top: 80px;
  border-top: 1px solid rgba(255,255,255,0.1);
  padding: 24px 0;
  color: rgba(255,255,255,0.6);
  font-size: 0.9rem;
}

.footer-inner {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
</style>
