// Toggle mobile nav
document.addEventListener('click', e=>{
  const btn = e.target.closest('[data-burger]');
  if(!btn) return;
  const nav = document.querySelector('.nav');
  if(nav) nav.classList.toggle('open');
});

// Simple localStorage helper for drafts (used by new-application.html)
export const storage = {
  get: (k, fallback=null) => {
    try { return JSON.parse(localStorage.getItem(k)) ?? fallback; } catch { return fallback; }
  },
  set: (k,v) => localStorage.setItem(k, JSON.stringify(v)),
  del: (k) => localStorage.removeItem(k)
};