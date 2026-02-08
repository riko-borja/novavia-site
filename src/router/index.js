import { createRouter, createWebHistory } from "vue-router";

import Home from "../pages/Home.vue";
import Products from "../pages/Products.vue";
import Services from "../pages/Services.vue";
import About from "../pages/About.vue";
import Contact from "../pages/Contact.vue";

const routes = [
  { path: "/", name: "home", component: Home },
  { path: "/products", name: "products", component: Products },
  { path: "/services", name: "services", component: Services },
  { path: "/about", name: "about", component: About },
  { path: "/contact", name: "contact", component: Contact },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
