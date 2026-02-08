<template>
  <main class="page">
    <div class="container">
    <PageHeader
    title="Contact"
    subtitle="For now this is a placeholder. Later we can connect a form handler or your email."
    />

      <div class="card">
        <div class="row">
          <div>
            <div class="label">Email</div>
            <div class="value">hello@yourdomain.com</div>
          </div>

          <div>
            <div class="label">Response time</div>
            <div class="value">Within 24–48 hours</div>
          </div>
        </div>

        <div class="divider"></div>

        <form class="form" @submit.prevent="submitted = true">
          <div class="grid">
            <label>
              <span>Name</span>
              <input v-model="name" type="text" placeholder="Your name" />
            </label>

            <label>
              <span>Email</span>
              <input v-model="email" type="email" placeholder="you@example.com" />
            </label>
          </div>

          <label>
            <span>Message</span>
            <textarea v-model="message" rows="5" placeholder="What are you building?"></textarea>
          </label>

          <button class="button" type="submit">Send (demo)</button>

          <p v-if="submitted" class="note">
            Demo only — no message is sent yet.
          </p>
        </form>
      </div>
    </div>
  </main>
</template>

<script setup>
import PageHeader from "../components/PageHeader.vue";
import { ref } from "vue";

const name = ref("");
const email = ref("");
const message = ref("");
const submitted = ref(false);
</script>

<style scoped>
.page { padding: 70px 0 90px; }
.container { max-width: 900px; margin: 0 auto; padding: 0 18px; }
h1 { margin: 0; font-size: 2.4rem; }
.subhead { margin-top: 12px; max-width: 70ch; color: rgba(255,255,255,0.74); }

.card{
  margin-top: 22px;
  padding: 18px;
  border-radius: 16px;
  border: 1px solid rgba(255,255,255,0.12);
  background: rgba(255,255,255,0.05);
}
.row{
  display:grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 14px;
}
@media (max-width: 700px){ .row{ grid-template-columns: 1fr; } }

.label{ font-size: 0.85rem; color: rgba(255,255,255,0.62); }
.value{ margin-top: 6px; font-weight: 700; color: rgba(255,255,255,0.9); }

.divider{
  height: 1px;
  background: rgba(255,255,255,0.10);
  margin: 16px 0;
}

.form{ display:grid; gap: 12px; }
.grid{
  display:grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 12px;
}
@media (max-width: 700px){ .grid{ grid-template-columns: 1fr; } }

label span{
  display:block;
  margin-bottom: 6px;
  font-size: 0.9rem;
  color: rgba(255,255,255,0.78);
}

input, textarea{
  width: 100%;
  padding: 11px 12px;
  border-radius: 12px;
  border: 1px solid rgba(255,255,255,0.14);
  background: rgba(0,0,0,0.18);
  color: rgba(255,255,255,0.92);
  outline: none;
}
input:focus, textarea:focus{
  border-color: rgba(124,92,255,0.45);
}

.button{
  justify-self: start;
  display:inline-flex;
  align-items:center;
  justify-content:center;
  padding: 11px 14px;
  border-radius: 12px;
  text-decoration:none;
  font-weight: 800;
  color: rgba(255,255,255,0.95);
  border: 1px solid rgba(255,255,255,0.16);
  background: linear-gradient(135deg, rgba(124, 92, 255, 0.35), rgba(0, 209, 255, 0.22));
}
.button:hover{ transform: translateY(-1px); }

.note{
  margin: 0;
  color: rgba(255,255,255,0.62);
  font-size: 0.95rem;
}
</style>
