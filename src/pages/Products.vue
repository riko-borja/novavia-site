<template>
  <main class="page">
    <section class="hero">
      <div class="container">
        <PageHeader
        title="Products"
        subtitle="A small suite of focused products that help teams move faster—from concept to launch."
        />
        <div class="grid">
          <article class="card">
            <h3>Novavia Core</h3>
            <p>
              A clean foundation for shipping modern web experiences with speed
              and reliability built in.
            </p>
            <ul>
              <li>Design system-ready UI</li>
              <li>Performance-first defaults</li>
              <li>Simple content structure</li>
            </ul>
          </article>

          <article class="card">
            <h3>Novavia Ops</h3>
            <p>
              Operational tooling that keeps releases stable and predictable as
              your product grows.
            </p>
            <ul>
              <li>Deploy-friendly structure</li>
              <li>Clear environments (staging/prod)</li>
              <li>Lightweight monitoring hooks</li>
            </ul>
          </article>

          <article class="card">
            <h3>Novavia Studio</h3>
            <p>
              Templates and components to build landing pages and product
              sections without friction.
            </p>
            <ul>
              <li>Reusable sections</li>
              <li>Conversion-focused layouts</li>
              <li>Fast iteration</li>
            </ul>
          </article>
        </div>

        <div class="cta">
          <div>
            <h2>Want a tailored product page?</h2>
            <p class="muted">Tell us what you’re selling and we’ll shape the copy and sections.</p>
          </div>
          <RouterLink class="button" to="/contact">Contact</RouterLink>
        </div>
      </div>
    </section>
  </main>
</template>

<script setup>
import PageHeader from "../components/PageHeader.vue";
</script>

<style scoped>
.page { padding: 70px 0 90px; }
.hero .container { max-width: 1100px; margin: 0 auto; padding: 0 18px; }
h1 { margin: 0; font-size: 2.4rem; }
.subhead { margin-top: 12px; max-width: 70ch; color: rgba(255,255,255,0.74); }
.grid {
  margin-top: 22px;
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 14px;
}
@media (max-width: 900px) { .grid { grid-template-columns: 1fr; } }
.card{
  padding: 18px;
  border-radius: 16px;
  border: 1px solid rgba(255,255,255,0.12);
  background: rgba(255,255,255,0.05);
}
.card h3 { margin: 0 0 10px; }
.card p { margin: 0 0 12px; color: rgba(255,255,255,0.74); line-height: 1.5; }
.card ul { margin: 0; padding-left: 18px; color: rgba(255,255,255,0.72); }
.cta{
  margin-top: 24px;
  display:flex;
  align-items:center;
  justify-content: space-between;
  gap: 16px;
  padding: 18px;
  border-radius: 18px;
  border: 1px solid rgba(255,255,255,0.14);
  background: linear-gradient(135deg, rgba(124, 92, 255, 0.18), rgba(0, 209, 255, 0.12));
}
@media (max-width: 700px){ .cta{ flex-direction: column; align-items:flex-start; } }
.muted { margin: 8px 0 0; color: rgba(255,255,255,0.72); }
.button{
  display:inline-flex;
  align-items:center;
  justify-content:center;
  padding: 11px 14px;
  border-radius: 12px;
  text-decoration:none;
  font-weight: 700;
  color: rgba(255,255,255,0.95);
  border: 1px solid rgba(255,255,255,0.16);
  background: rgba(255,255,255,0.06);
}
.button:hover{ transform: translateY(-1px); }
</style>
