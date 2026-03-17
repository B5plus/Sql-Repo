/* ============================================================
   B5 PLUS GLASSMORPHISM · Page 101 · NO FONT CHANGES
   ============================================================ */

:root {
  --g-bg: rgba(255,255,255,0.12);
  --g-border: rgba(255,255,255,0.22);
  --g-blur: 28px;
  --ink: #ffffff;
  --ink2: rgba(255,255,255,0.82);
  --ink3: rgba(255,255,255,0.58);
  --accent: #6C63FF;
  --accent2: #00D4AA;
  --r1: 24px;
  --r2: 14px;
  --shadow1: 0 32px 80px rgba(0,0,0,0.35), 0 0 0 0.5px rgba(255,255,255,0.10);
  --shadow-in: inset 0 2px 6px rgba(0,0,0,0.12);
}

/* 1. DARK BACKGROUND */
html,
body.t-PageBody--login {
  background: #0a0a1a !important;
  min-height: 100vh !important;
}

body.t-PageBody--login {
  background:
    radial-gradient(1400px 900px at 15% 15%, rgba(108,99,255,0.35), transparent 55%),
    radial-gradient(1000px 800px at 85% 25%, rgba(0,212,170,0.25), transparent 55%),
    radial-gradient(800px 600px at 50% 90%, rgba(255,107,107,0.18), transparent 50%),
    linear-gradient(145deg, #0a0a1a 0%, #0d1025 30%, #0f0a20 60%, #0a0a1a 100%) !important;
  background-attachment: fixed !important;
}

/* NUKE every wrapper between body and card */
body.t-PageBody--login .t-Login-container,
body.t-PageBody--login .t-Login-containerBody,
body.t-PageBody--login .t-Login-containerHeader,
body.t-PageBody--login .t-Login-containerFooter,
body.t-PageBody--login .container,
body.t-PageBody--login .row,
body.t-PageBody--login .row > [class*="col"],
body.t-PageBody--login .col,
body.t-PageBody--login .col-1, body.t-PageBody--login .col-2,
body.t-PageBody--login .col-3, body.t-PageBody--login .col-4,
body.t-PageBody--login .col-5, body.t-PageBody--login .col-6,
body.t-PageBody--login .col-7, body.t-PageBody--login .col-8,
body.t-PageBody--login .col-9, body.t-PageBody--login .col-10,
body.t-PageBody--login .col-11, body.t-PageBody--login .col-12,
body.t-PageBody--login #main {
  background: transparent !important;
  background-color: transparent !important;
  background-image: none !important;
  border: none !important;
  box-shadow: none !important;
}

/* Dot grid */
body.t-PageBody--login::before {
  content: "";
  position: fixed; inset: 0;
  background-image: radial-gradient(circle at 1px 1px, rgba(255,255,255,0.035) 1px, transparent 0);
  background-size: 48px 48px;
  pointer-events: none; z-index: 0;
}

/* Floating orb */
body.t-PageBody--login::after {
  content: "";
  position: fixed;
  width: 600px; height: 600px;
  top: -120px; right: -180px;
  background: radial-gradient(circle, rgba(0,212,170,0.12), transparent 65%);
  border-radius: 50%;
  pointer-events: none; z-index: 0;
  animation: orbFloat 18s ease-in-out infinite alternate;
}
@keyframes orbFloat {
  0%   { transform: translate(0,0) scale(1); }
  50%  { transform: translate(-60px,40px) scale(1.08); }
  100% { transform: translate(20px,-30px) scale(0.95); }
}

/* 2. HIDE CHROME */
body.t-PageBody--login .t-Login-containerHeader,
body.t-PageBody--login .t-Login-containerFooter {
  display: none !important;
}

/* 3. CENTER THE CARD */
body.t-PageBody--login .t-Login-container {
  min-height: 100vh !important;
  display: flex !important;
  justify-content: center !important;
  align-items: center !important;
  padding: 20px !important;
}

body.t-PageBody--login .t-Login-containerBody {
  display: flex !important;
  justify-content: center !important;
  align-items: center !important;
  width: 100% !important;
  padding: 0 !important;
}

body.t-PageBody--login .container {
  max-width: 100% !important;
  width: 100% !important;
  display: flex !important;
  justify-content: center !important;
  padding: 0 !important;
}

body.t-PageBody--login .row {
  width: 100% !important;
  display: flex !important;
  justify-content: center !important;
  margin: 0 !important;
}

body.t-PageBody--login .row > [class*="col"] {
  float: none !important;
  width: auto !important;
  display: flex !important;
  justify-content: center !important;
  padding: 0 !important;
}

/* 4. GLASS CARD */
body.t-PageBody--login #login_glass_card {
  position: relative !important;
  z-index: 2 !important;
  width: 480px !important;
  max-width: 92vw !important;
  margin: 0 !important;
  padding: 0 !important;
  background: var(--g-bg) !important;
  backdrop-filter: blur(var(--g-blur)) saturate(1.6) !important;
  -webkit-backdrop-filter: blur(var(--g-blur)) saturate(1.6) !important;
  border-radius: var(--r1) !important;
  border: 1px solid var(--g-border) !important;
  box-shadow: var(--shadow1) !important;
  overflow: hidden !important;
}

body.t-PageBody--login #login_glass_card::before {
  content: "" !important;
  position: absolute !important;
  top: 0; left: 0; right: 0; bottom: 0;
  background:
    radial-gradient(400px 180px at 20% -10%, rgba(108,99,255,0.18), transparent 60%),
    radial-gradient(300px 160px at 85% 0%, rgba(0,212,170,0.12), transparent 60%),
    linear-gradient(180deg, rgba(255,255,255,0.06), transparent 40%) !important;
  pointer-events: none !important;
  border-radius: var(--r1);
  z-index: 0;
}

/* 5. STRIP REGION CHROME */
body.t-PageBody--login #login_glass_card > .t-Region-header {
  display: none !important;
}

body.t-PageBody--login #login_glass_card,
body.t-PageBody--login #login_glass_card > .t-Region-bodyWrap,
body.t-PageBody--login #login_glass_card > .t-Region-bodyWrap > .t-Region-buttons,
body.t-PageBody--login #login_glass_card > .t-Region-bodyWrap > .t-Region-body {
  background: transparent !important;
  background-color: transparent !important;
}

body.t-PageBody--login #login_glass_card > .t-Region-bodyWrap {
  border: none !important;
  box-shadow: none !important;
  padding: 0 !important;
  margin: 0 !important;
  border-radius: 0 !important;
}

body.t-PageBody--login #login_glass_card > .t-Region-bodyWrap > .t-Region-body {
  padding: 40px 36px 36px !important;
  position: relative !important;
  z-index: 1 !important;
  border: none !important;
  box-shadow: none !important;
}

body.t-PageBody--login #login_glass_card .container,
body.t-PageBody--login #login_glass_card .row,
body.t-PageBody--login #login_glass_card [class*="col"] {
  background: transparent !important;
  border: none !important;
  box-shadow: none !important;
}

/* 6. HEADER */
.b5-login-head {
  text-align: center;
  margin-bottom: 28px;
  position: relative;
  z-index: 1;
}

.b5-logo {
  display: flex;
  justify-content: center;
  margin-bottom: 16px;
}

.b5-logo img {
  width: 72px; height: 72px;
  border-radius: 20px;
  object-fit: contain;
  background: rgba(255,255,255,0.10);
  border: 1px solid rgba(255,255,255,0.18);
  backdrop-filter: blur(12px);
  box-shadow: 0 12px 40px rgba(0,0,0,0.25), inset 0 1px 1px rgba(255,255,255,0.15);
  padding: 12px;
}

.b5-title {
  font-size: 22px;
  font-weight: 800;
  color: var(--ink) !important;
}

.b5-sub {
  font-size: 13.5px;
  color: var(--ink3) !important;
  margin-top: 6px;
}

/* 7. LABELS */
body.t-PageBody--login #login_glass_card .t-Form-fieldContainer {
  margin-bottom: 18px !important;
  position: relative;
  z-index: 1;
}

body.t-PageBody--login #login_glass_card .t-Form-label,
body.t-PageBody--login #login_glass_card label {
  display: block !important;
  margin-bottom: 8px !important;
  font-size: 12.5px !important;
  font-weight: 700 !important;
  letter-spacing: 0.06em !important;
  text-transform: uppercase !important;
  color: var(--ink2) !important;
  position: relative !important;
  top: 0 !important;
}

/* 8. INPUTS */
body.t-PageBody--login #P101_USERNAME,
body.t-PageBody--login #P101_PASSWORD,
body.t-PageBody--login #login_glass_card input[type="text"],
body.t-PageBody--login #login_glass_card input[type="password"],
body.t-PageBody--login #login_glass_card input[type="email"] {
  width: 100% !important;
  padding: 15px 18px !important;
  font-size: 15px !important;
  color: var(--ink) !important;
  background: rgba(255,255,255,0.06) !important;
  border: 1px solid rgba(255,255,255,0.12) !important;
  border-radius: var(--r2) !important;
  box-shadow: var(--shadow-in) !important;
  outline: none !important;
  transition: border-color 0.25s, background 0.25s, box-shadow 0.25s !important;
  -webkit-appearance: none !important;
}

body.t-PageBody--login #P101_USERNAME:focus,
body.t-PageBody--login #P101_PASSWORD:focus {
  background: rgba(255,255,255,0.10) !important;
  border-color: var(--accent) !important;
  box-shadow: var(--shadow-in), 0 0 0 3px rgba(108,99,255,0.20), 0 0 24px rgba(108,99,255,0.10) !important;
}

body.t-PageBody--login #P101_USERNAME::placeholder,
body.t-PageBody--login #P101_PASSWORD::placeholder {
  color: rgba(255,255,255,0.30) !important;
}

body.t-PageBody--login #login_glass_card .apex-item-icon,
body.t-PageBody--login #login_glass_card .t-Form-itemWrapper .t-Icon {
  color: var(--ink3) !important;
}

/* 9. PASSWORD TOGGLE */
body.t-PageBody--login #P101_PASSWORD {
  padding-right: 48px !important;
}

body.t-PageBody--login #togglePwd101 {
  position: absolute !important;
  right: 14px !important;
  top: 50% !important;
  transform: translateY(-50%) !important;
  border: none !important;
  background: transparent !important;
  cursor: pointer !important;
  padding: 6px !important;
  color: var(--ink3) !important;
}
body.t-PageBody--login #togglePwd101:hover {
  color: var(--ink) !important;
}

/* 10. BUTTON */
body.t-PageBody--login #login_glass_card .t-Button,
body.t-PageBody--login #login_glass_card .t-Button--hot,
body.t-PageBody--login #login_glass_card button[type="submit"] {
  width: 100% !important;
  padding: 16px 20px !important;
  font-size: 14.5px !important;
  font-weight: 800 !important;
  letter-spacing: 0.04em !important;
  color: #ffffff !important;
  border: none !important;
  border-radius: var(--r2) !important;
  cursor: pointer !important;
  background: linear-gradient(135deg, var(--accent) 0%, #8B5CF6 50%, var(--accent) 100%) !important;
  background-size: 200% 200% !important;
  box-shadow: 0 8px 32px rgba(108,99,255,0.35), 0 2px 8px rgba(108,99,255,0.20), inset 0 1px 1px rgba(255,255,255,0.20) !important;
  animation: btnShimmer 4s ease infinite !important;
  transition: transform 0.2s, box-shadow 0.2s, filter 0.2s !important;
}

@keyframes btnShimmer {
  0%   { background-position: 0% 50%; }
  50%  { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}

body.t-PageBody--login #login_glass_card .t-Button:hover {
  transform: translateY(-2px) !important;
  box-shadow: 0 14px 44px rgba(108,99,255,0.45), 0 4px 12px rgba(108,99,255,0.25) !important;
}

body.t-PageBody--login #login_glass_card .t-Button:active {
  transform: translateY(0) scale(0.985) !important;
  filter: brightness(0.95) !important;
}

/* 11. EXTRAS */
.glass-trust {
  display: flex; justify-content: center; gap: 24px;
  margin-top: 20px; position: relative; z-index: 1;
}
.glass-trust__item {
  display: flex; align-items: center; gap: 6px;
  font-size: 11.5px; color: var(--ink3) !important; font-weight: 600;
}
.glass-trust__item i { font-size: 13px; color: var(--accent2) !important; }

.glass-footer {
  text-align: center; font-size: 12px;
  color: rgba(255,255,255,0.30) !important;
  margin-top: 24px; position: relative; z-index: 1;
}

.b5-resend {
  text-align: center; margin-top: 20px;
  font-size: 13px; color: var(--ink3) !important;
  position: relative; z-index: 1;
}
.b5-resend a { color: var(--accent2) !important; text-decoration: none; font-weight: 700; }
.b5-resend a:hover { color: #fff !important; }

/* 12. ERROR MESSAGES */
body.t-PageBody--login .t-Body-alert .t-Alert {
  background: rgba(255,60,60,0.12) !important;
  backdrop-filter: blur(12px) !important;
  border: 1px solid rgba(255,60,60,0.25) !important;
  border-radius: 14px !important;
  margin: 12px auto !important;
  max-width: 480px;
}
body.t-PageBody--login .t-Body-alert .t-Alert-body,
body.t-PageBody--login .t-Body-alert .t-Alert-title {
  color: #ff9999 !important;
}

/* 13. ANIMATIONS */
.glassFade {
  opacity: 0; transform: translateY(16px);
  animation: glassFadeIn 0.6s cubic-bezier(0.22,1,0.36,1) forwards;
}
@keyframes glassFadeIn { to { opacity:1; transform:translateY(0); } }
.glassFade:nth-child(1) { animation-delay: .08s; }
.glassFade:nth-child(2) { animation-delay: .16s; }
.glassFade:nth-child(3) { animation-delay: .24s; }
.glassFade:nth-child(4) { animation-delay: .32s; }
.glassFade:nth-child(5) { animation-delay: .40s; }
.glassFade:nth-child(6) { animation-delay: .48s; }

/* 14. MOBILE */
@media (max-width: 540px) {
  body.t-PageBody--login #login_glass_card {
    width: 96vw !important;
    border-radius: 20px !important;
  }
  body.t-PageBody--login #login_glass_card > .t-Region-bodyWrap > .t-Region-body {
    padding: 32px 24px 28px !important;
  }
  .glass-trust { gap: 16px; flex-wrap: wrap; }
}
