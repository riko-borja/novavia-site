<template>
  <main class="page">
    <div class="container">
    <PageHeader
    title="Services"
    subtitle="We help teams design, build, and ship clean web experiences—fast."
    />
      <div class="grid">
        <article class="card">
          <h3>Landing pages</h3>
          <p>Conversion-focused pages with clear sections, CTA flow, and performance-first assets.</p>
        </article>
        <article class="card">
          <h3>UI systems</h3>
          <p>Reusable components + consistent spacing/typography so future pages stay on-brand.</p>
        </article>
        <article class="card">
          <h3>Deployment setup</h3>
          <p>Staging + production workflow with simple, repeatable deployments.</p>
        </article>
        <article class="card">
          <h3>Content polish</h3>
          <p>Rewrite and structure content so it reads like a modern tech brand (without fluff).</p>
        </article>
      </div>

      <div class="note">
        <strong>Typical turnaround:</strong> 2–5 days depending on scope.
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
.grid{
  margin-top: 22px;
  display:grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
}
@media (max-width: 900px){ .grid{ grid-template-columns: 1fr; } }
.card{
  padding: 18px;
  border-radius: 16px;
  border: 1px solid rgba(255,255,255,0.12);
  background: rgba(255,255,255,0.05);
}
.card h3 { margin: 0 0 10px; }
.card p { margin: 0; color: rgba(255,255,255,0.74); line-height: 1.5; }
.note{
  margin-top: 18px;
  padding: 14px 16px;
  border-radius: 14px;
  border: 1px solid rgba(255,255,255,0.12);
  background: rgba(255,255,255,0.04);
  color: rgba(255,255,255,0.78);
}
</style>
