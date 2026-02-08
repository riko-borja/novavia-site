<template>
  <main class="page">
    <div class="container">
    <PageHeader
    title="About"
    subtitle="Novavia is built around a simple idea: clean systems ship faster than complicated ones."
    />
      <div class="two">
        <section class="card">
          <h3>What we believe</h3>
          <ul>
            <li><strong>Clarity wins:</strong> fewer options, better defaults.</li>
            <li><strong>Speed matters:</strong> performance and shipping cadence are features.</li>
            <li><strong>Consistency scales:</strong> reuse beats rewriting.</li>
          </ul>
        </section>

        <section class="card">
          <h3>How we work</h3>
          <p>
            Start with a simple structure, lock in the layout system, then iterate on copy
            and details. Staging first, production when ready.
          </p>
          <p class="muted">
            This page is placeholder copy—update it once your actual offering is finalized.
          </p>
        </section>
      </div>
    </div>
  </main>
</template>
<script setup>
import PageHeader from "../components/PageHeader.vue";
</script>
<style scoped>
.page { padding: 70px 0 90px; }
.container { max-width: 1100px; margin: 0 auto; padding: 0 18px; }
h1 { margin: 0; font-size: 2.4rem; }
.subhead { margin-top: 12px; max-width: 70ch; color: rgba(255,255,255,0.74); }
.two{
  margin-top: 22px;
  display:grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
}
@media (max-width: 900px){ .two{ grid-template-columns: 1fr; } }
.card{
  padding: 18px;
  border-radius: 16px;
  border: 1px solid rgba(255,255,255,0.12);
  background: rgba(255,255,255,0.05);
}
.card h3 { margin: 0 0 10px; }
.card p { margin: 0 0 12px; color: rgba(255,255,255,0.74); line-height: 1.5; }
.card ul { margin: 0; padding-left: 18px; color: rgba(255,255,255,0.74); }
.muted { margin: 0; color: rgba(255,255,255,0.62); }
</style>
