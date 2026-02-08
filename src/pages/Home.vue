<template>
  <main class="home">
    <section class="hero">
      <div class="container hero-grid">
        <div class="hero-copy glow">
          <p class="pill">Modern products. Clean execution.</p>
          <h1>Build faster with a brand that feels future-ready.</h1>
          <p class="subhead">
            Novavia is a modern product company focused on practical solutions—designed with clarity, speed, and
            reliability in mind.
          </p>

          <div class="actions">
            <RouterLink class="primary" to="/products">Explore products</RouterLink>
            <RouterLink class="secondary" to="/contact">Talk to us</RouterLink>
          </div>

          <div class="micro">
            <div class="micro-item">
              <div class="micro-kpi">Fast</div>
              <div class="micro-label">Simple setup</div>
            </div>
            <div class="micro-item">
              <div class="micro-kpi">Secure</div>
              <div class="micro-label">Best practices</div>
            </div>
            <div class="micro-item">
              <div class="micro-kpi">Scalable</div>
              <div class="micro-label">Grows with you</div>
            </div>
          </div>
        </div>

        <div class="hero-card">
          <div class="card">
            <div class="card-top">
              <span class="dot"></span><span class="dot"></span><span class="dot"></span>
            </div>
            <div class="card-body">
              <div class="spark"></div>
              <div class="lines">
                <div class="line w90"></div>
                <div class="line w70"></div>
                <div class="line w80"></div>
                <div class="line w60"></div>
              </div>

              <div class="tiles">
                <div class="tile">
                  <div class="tile-title">Product</div>
                  <div class="tile-text">Clear, modern design</div>
                </div>
                <div class="tile">
                  <div class="tile-title">Service</div>
                  <div class="tile-text">Reliable support</div>
                </div>
                <div class="tile">
                  <div class="tile-title">Delivery</div>
                  <div class="tile-text">Fast iteration</div>
                </div>
              </div>
            </div>
          </div>

          <p class="hint">This is a starter landing page. We’ll tailor copy once products are defined.</p>
        </div>
      </div>
    </section>

    <section class="features">
      <div class="container">
        <h2>Designed for speed and clarity</h2>
        <p class="muted">
          A modern tech startup look—clean typography, tight layout, and clear conversion paths.
        </p>

        <div class="feature-grid">
          <article class="feature">
            <h3>Modern UX</h3>
            <p>Responsive layout, clear spacing, and a design system we can scale as pages grow.</p>
          </article>
          <article class="feature">
            <h3>Fast to iterate</h3>
            <p>Vue + Vite development workflow so changes ship quickly and safely.</p>
          </article>
          <article class="feature">
            <h3>Production-ready</h3>
            <p>Structured routing, reusable components, and clean commits for a portfolio-quality repo.</p>
          </article>
        </div>

        <div class="cta-band">
          <div>
            <h3>Ready to define the products?</h3>
            <p class="muted">Once you confirm product categories, we’ll tailor the pages and copy.</p>
          </div>
          <RouterLink class="primary" to="/contact">Contact</RouterLink>
        </div>
      </div>
    </section>
  </main>
</template>

<style scoped>
.home {
  padding-bottom: 80px;
}

.hero {
  padding-top: 80px;
  padding-bottom: 60px;
}

@media (max-width: 768px) {
  .hero {
    padding-top: 60px;
  }
}

.hero h1 {
  max-width: 650px;
}

.hero-grid {
  display: grid;
  grid-template-columns: 1.15fr 0.85fr;
  gap: 28px;
  align-items: start;
}

@media (max-width: 900px) {
  .hero-grid {
    grid-template-columns: 1fr;
  }
}

.pill {
  display: inline-block;
  font-size: 0.85rem;
  padding: 8px 12px;
  border: 1px solid rgba(255, 255, 255, 0.16);
  background: rgba(255, 255, 255, 0.06);
  border-radius: 999px;
  color: rgba(255, 255, 255, 0.82);
  margin: 0 0 14px;
}

h1 {
  margin: 0;
  font-size: 3rem;
  line-height: 1.05;
}

@media (max-width: 900px) {
  h1 {
    font-size: 2.4rem;
  }
}

.subhead {
  margin-top: 16px;
  margin-bottom: 24px;
  font-size: 1.05rem;
  color: rgba(255, 255, 255, 0.74);
  max-width: 52ch;
}

.actions {
  display: flex;
  gap: 12px;
  flex-wrap: wrap;
}

.primary,
.secondary {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 11px 14px;
  border-radius: 12px;
  text-decoration: none;
  font-weight: 600;
  border: 1px solid rgba(255, 255, 255, 0.16);
  transition: transform 0.18s ease, box-shadow 0.18s ease;
}

.primary {
  color: rgba(255, 255, 255, 0.95);
  background: linear-gradient(135deg, rgba(124, 92, 255, 0.35), rgba(0, 209, 255, 0.22));
}

.secondary {
  color: rgba(255, 255, 255, 0.82);
  background: rgba(255, 255, 255, 0.06);
}

.primary:hover,
.secondary:hover {
  transform: translateY(-1px);
}

.primary:hover {
  box-shadow: 0 12px 26px rgba(0, 0, 0, 0.35), 0 0 18px rgba(0, 209, 255, 0.16);
}

.secondary:hover {
  box-shadow: 0 12px 26px rgba(0, 0, 0, 0.25);
}

.micro {
  margin-top: 26px;
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 12px;
  max-width: 520px;
}

@media (max-width: 520px) {
  .micro {
    grid-template-columns: 1fr;
  }
}

.micro-item {
  padding: 12px 14px;
  border: 1px solid rgba(255, 255, 255, 0.12);
  background: rgba(255, 255, 255, 0.05);
  border-radius: 14px;
}

.micro-kpi {
  font-weight: 800;
  letter-spacing: 0.2px;
}

.micro-label {
  color: rgba(255, 255, 255, 0.72);
  font-size: 0.9rem;
  margin-top: 4px;
}

.hero-card .card {
  border: 1px solid rgba(255, 255, 255, 0.14);
  background: rgba(255, 255, 255, 0.06);
  border-radius: 18px;
  overflow: hidden;
  box-shadow: 0 20px 80px rgba(0, 0, 0, 0.25);
}

.card-top {
  display: flex;
  gap: 8px;
  padding: 12px 14px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.10);
}

.dot {
  width: 9px;
  height: 9px;
  border-radius: 999px;
  background: rgba(255, 255, 255, 0.18);
}

.card-body {
  padding: 18px;
}

.spark {
  height: 14px;
  border-radius: 999px;
  background: linear-gradient(90deg, rgba(124, 92, 255, 0.0), rgba(124, 92, 255, 0.55), rgba(0, 209, 255, 0.55), rgba(0, 209, 255, 0.0));
  margin-bottom: 18px;
}

.lines {
  display: grid;
  gap: 10px;
}

.line {
  height: 10px;
  border-radius: 10px;
  background: rgba(255, 255, 255, 0.09);
  border: 1px solid rgba(255, 255, 255, 0.06);
}

.w90 { width: 90%; }
.w80 { width: 80%; }
.w70 { width: 70%; }
.w60 { width: 60%; }

.tiles {
  margin-top: 18px;
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 10px;
}

@media (max-width: 900px) {
  .tiles {
    grid-template-columns: 1fr;
  }
}

.tile {
  padding: 12px;
  border-radius: 14px;
  border: 1px solid rgba(255, 255, 255, 0.12);
  background: rgba(255, 255, 255, 0.05);
}

.tile-title {
  font-weight: 700;
}

.tile-text {
  margin-top: 6px;
  color: rgba(255, 255, 255, 0.72);
  font-size: 0.9rem;
}

.hint {
  margin: 10px 6px 0;
  color: rgba(255, 255, 255, 0.62);
  font-size: 0.9rem;
}

.features {
  padding: 40px 0 0;
}

h2 {
  margin: 0;
  font-size: 1.8rem;
}

.muted {
  color: rgba(255, 255, 255, 0.72);
  margin-top: 10px;
  max-width: 70ch;
}

.feature-grid {
  margin-top: 20px;
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 14px;
}

@media (max-width: 900px) {
  .feature-grid {
    grid-template-columns: 1fr;
  }
}

.feature {
  padding: 16px;
  border-radius: 16px;
  border: 1px solid rgba(255, 255, 255, 0.12);
  background: rgba(255, 255, 255, 0.05);
}

.feature h3 {
  margin: 0 0 8px;
}

.feature p {
  margin: 0;
  color: rgba(255, 255, 255, 0.74);
  line-height: 1.5;
}

.cta-band {
  margin-top: 24px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 16px;
  padding: 18px;
  border-radius: 18px;
  border: 1px solid rgba(255, 255, 255, 0.14);
  background: linear-gradient(135deg, rgba(124, 92, 255, 0.18), rgba(0, 209, 255, 0.12));
}

@media (max-width: 700px) {
  .cta-band {
    flex-direction: column;
    align-items: flex-start;
  }
}

.hero-copy {
  position: relative;
}

.hero-copy.glow::before {
  content: "";
  position: absolute;
  inset: -40px -30px -40px -30px;
  background:
    radial-gradient(600px 300px at 20% 20%, rgba(124, 92, 255, 0.35), transparent 60%),
    radial-gradient(500px 260px at 60% 10%, rgba(0, 209, 255, 0.25), transparent 55%),
    radial-gradient(520px 320px at 40% 70%, rgba(124, 92, 255, 0.18), transparent 60%);
  filter: blur(18px);
  opacity: 1.0;
  z-index: -1;
  pointer-events: none;
}

/* Card hover lift + glow (micro + features + tiles) */
.micro-item,
.feature,
.tile {
  transition: transform 0.22s ease, box-shadow 0.22s ease, border-color 0.22s ease;
  will-change: transform;
}

.micro-item:hover,
.feature:hover,
.tile:hover {
  transform: translateY(-6px);
  border-color: rgba(255, 255, 255, 0.18);
  box-shadow:
    0 14px 34px rgba(0, 0, 0, 0.35),
    0 0 18px rgba(124, 92, 255, 0.14);
}



</style>
