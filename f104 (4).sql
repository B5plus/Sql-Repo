/* ============================================================
   B5 PLUS – GLASSMORPHISM LOGIN · APEX Page 101
   ============================================================
   
   YOUR PAGE STRUCTURE:
   body.t-PageBody--login
     └─ .t-Login-container
         └─ .t-Login-containerBody
             └─ .container > .row > .col
                 └─ #login_glass_card.t-Region.login-glass-page
                     └─ .t-Region-header  (we hide this)
                     └─ .t-Region-bodyWrap
                         └─ .t-Region-body  (inputs + button)
   ============================================================ */

:root {
  --glass-bg: rgba(255,255,255,0.12);
  --glass-border: rgba(255,255,255,0.22);
  --glass-blur: 28px;
  --ink: #ffffff;
  --ink2: rgba(255,255,255,0.82);
  --ink3: rgba(255,255,255,0.58);
  --accent: #6C63FF;
  --accent2: #00D4AA;
  --radius: 24px;
  --radius3: 14px;
  --shadow-card: 0 32px 80px rgba(0,0,0,0.35), 0 0 0 0.5px rgba(255,255,255,0.10);
  --shadow-input: inset 0 2px 6px rgba(0,0,0,0.12);
  --font: 'DM Sans', system-ui, -apple-system, 'Segoe UI', sans-serif;
}


/* ══════════════════════════════════════════════════════════
   1. DARK BACKGROUND — every wrapper, no exceptions
   ══════════════════════════════════════════════════════════ */
html {
  background-color: #0a0a1a !important;
}

html,
body,
body.t-PageBody--login,
.t-PageBody--login,
.t-Login-container,
.t-Login-containerBody,
.t-Login-containerHeader,
.t-Login-containerFooter {
  background:
    radial-gradient(1400px 900px at 15% 15%, rgba(108,99,255,0.35), transparent 55%),
    radial-gradient(1000px 800px at 85% 25%, rgba(0,212,170,0.25), transparent 55%),
    radial-gradient(800px 600px at 50% 90%, rgba(255,107,107,0.18), transparent 50%),
    linear-gradient(145deg, #0a0a1a 0%, #0d1025 30%, #0f0a20 60%, #0a0a1a 100%) !important;
  background-color: #0a0a1a !important;
  background-attachment: fixed !important;
  min-height: 100vh !important;
  font-family: var(--font) !important;
}

/* Grid wrappers MUST be transparent so the dark BG shows through */
.t-Login-containerBody .container,
.t-Login-containerBody .row,
.t-Login-containerBody .col,
.t-Login-containerBody [class^="col-"],
.t-Login-containerBody [class*=" col-"] {
  background: transparent !important;
  background-color: transparent !important;
  background-image: none !important;
}

/* Dot grid overlay */
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
  0%   { transform: translate(0, 0) scale(1); }
  50%  { transform: translate(-60px, 40px) scale(1.08); }
  100% { transform: translate(20px, -30px) scale(0.95); }
}


/* ══════════════════════════════════════════════════════════
   2. HIDE CHROME
   ══════════════════════════════════════════════════════════ */
.t-Header,
.t-Login-containerHeader,
.t-Login-containerFooter {
  display: none !important;
}


/* ══════════════════════════════════════════════════════════
   3. CENTER THE CARD
   ══════════════════════════════════════════════════════════ */
.t-Login-container {
  min-height: 100vh !important;
  display: flex !important;
  flex-direction: column !important;
  justify-content: center !important;
  align-items: center !important;
  padding: 0 !important;
}

.t-Login-containerBody {
  display: flex !important;
  justify-content: center !important;
  align-items: center !important;
  width: 100% !important;
  flex: 1;
  padding: 0 !important;
}

.t-Login-containerBody .container {
  display: flex !important;
  justify-content: center !important;
  align-items: center !important;
  max-width: 100% !important;
  padding: 0 !important;
}

.t-Login-containerBody .row {
  display: flex !important;
  justify-content: center !important;
  width: 100% !important;
  margin: 0 !important;
}

.t-Login-containerBody .col,
.t-Login-containerBody [class^="col-"],
.t-Login-containerBody [class*=" col-"] {
  display: flex !important;
  justify-content: center !important;
  float: none !important;
  width: auto !important;
  padding: 0 !important;
}


/* ══════════════════════════════════════════════════════════
   4. GLASS CARD  — targets #login_glass_card
      (your region's Static ID)
   ══════════════════════════════════════════════════════════ */
#login_glass_card {
  position: relative !important;
  z-index: 2 !important;
  width: min(480px, 92vw) !important;
  max-width: 480px !important;
  margin: 0 auto !important;
  padding: 0 !important;
  background: var(--glass-bg) !important;
  backdrop-filter: blur(var(--glass-blur)) saturate(1.6) !important;
  -webkit-backdrop-filter: blur(var(--glass-blur)) saturate(1.6) !important;
  border-radius: var(--radius) !important;
  border: 1px solid var(--glass-border) !important;
  box-shadow: var(--shadow-card) !important;
  overflow: hidden !important;
}

/* Inner glow sweep */
#login_glass_card::before {
  content: "" !important;
  position: absolute !important; inset: 0;
  background:
    radial-gradient(400px 180px at 20% -10%, rgba(108,99,255,0.18), transparent 60%),
    radial-gradient(300px 160px at 85% 0%, rgba(0,212,170,0.12), transparent 60%),
    linear-gradient(180deg, rgba(255,255,255,0.06), transparent 40%) !important;
  pointer-events: none;
  border-radius: var(--radius); z-index: 0;
}


/* ══════════════════════════════════════════════════════════
   5. STRIP REGION CHROME inside the card
   ══════════════════════════════════════════════════════════ */
#login_glass_card.t-Region,
#login_glass_card .t-Region-header,
#login_glass_card .t-Region-bodyWrap,
#login_glass_card .t-Region-buttons {
  background: transparent !important;
  background-color: transparent !important;
  border: none !important;
  box-shadow: none !important;
}

#login_glass_card .t-Region-header {
  display: none !important;
}

#login_glass_card .t-Region-bodyWrap {
  border-radius: 0 !important;
  padding: 0 !important;
}

#login_glass_card .t-Region-body {
  background: transparent !important;
  padding: 40px 36px 36px !important;
  position: relative;
  z-index: 1;
}


/* ══════════════════════════════════════════════════════════
   6. LOGO / HEADER
   ══════════════════════════════════════════════════════════ */
.b5-login-head {
  text-align: center;
  margin-bottom: 28px;
  position: relative; z-index: 1;
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
  letter-spacing: -0.02em;
}

.b5-sub {
  font-size: 13.5px;
  color: var(--ink3) !important;
  margin-top: 6px;
  line-height: 1.5;
}


/* ══════════════════════════════════════════════════════════
   7. FORM LABELS
   ══════════════════════════════════════════════════════════ */
#login_glass_card .t-Form-fieldContainer {
  margin-bottom: 18px !important;
  position: relative; z-index: 1;
}

#login_glass_card .t-Form-label,
#login_glass_card label {
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


/* ══════════════════════════════════════════════════════════
   8. ALL INPUTS
   ══════════════════════════════════════════════════════════ */
#login_glass_card input[type="text"],
#login_glass_card input[type="password"],
#login_glass_card input[type="email"],
#login_glass_card .text_field,
#login_glass_card .password,
#P101_USERNAME,
#P101_PASSWORD {
  width: 100% !important;
  padding: 15px 18px !important;
  font-size: 15px !important;
  font-family: var(--font) !important;
  color: var(--ink) !important;
  background: rgba(255,255,255,0.06) !important;
  border: 1px solid rgba(255,255,255,0.12) !important;
  border-radius: var(--radius3) !important;
  box-shadow: var(--shadow-input) !important;
  outline: none !important;
  transition: border-color 0.25s, background 0.25s, box-shadow 0.25s !important;
  -webkit-appearance: none !important;
}

#login_glass_card input:focus,
#P101_USERNAME:focus,
#P101_PASSWORD:focus {
  background: rgba(255,255,255,0.10) !important;
  border-color: var(--accent) !important;
  box-shadow: var(--shadow-input), 0 0 0 3px rgba(108,99,255,0.20), 0 0 24px rgba(108,99,255,0.10) !important;
}

#login_glass_card input::placeholder {
  color: rgba(255,255,255,0.30) !important;
}

/* Icon color */
#login_glass_card .t-Form-itemWrapper .t-Icon,
#login_glass_card .apex-item-icon {
  color: var(--ink3) !important;
}


/* ══════════════════════════════════════════════════════════
   9. PASSWORD TOGGLE
   ══════════════════════════════════════════════════════════ */
#login_glass_card #P101_PASSWORD_CONTAINER .t-Form-inputContainer {
  position: relative;
}

#P101_PASSWORD {
  padding-right: 48px !important;
}

#togglePwd101 {
  position: absolute !important;
  right: 14px !important; top: 50% !important;
  transform: translateY(-50%) !important;
  border: none !important; background: transparent !important;
  cursor: pointer !important; padding: 6px !important;
  color: var(--ink3) !important; transition: color 0.2s !important;
}
#togglePwd101:hover { color: var(--ink) !important; }


/* ══════════════════════════════════════════════════════════
   10. BUTTON
   ══════════════════════════════════════════════════════════ */
#login_glass_card .t-Button,
#login_glass_card button[type="submit"],
#login_glass_card .t-Button--hot {
  width: 100% !important;
  padding: 16px 20px !important;
  font-size: 14.5px !important;
  font-weight: 800 !important;
  font-family: var(--font) !important;
  letter-spacing: 0.04em !important;
  color: #ffffff !important;
  border: none !important;
  border-radius: var(--radius3) !important;
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

#login_glass_card .t-Button:hover {
  transform: translateY(-2px) !important;
  box-shadow: 0 14px 44px rgba(108,99,255,0.45), 0 4px 12px rgba(108,99,255,0.25), inset 0 1px 1px rgba(255,255,255,0.25) !important;
}

#login_glass_card .t-Button:active {
  transform: translateY(0) scale(0.985) !important;
  filter: brightness(0.95) !important;
}


/* ══════════════════════════════════════════════════════════
   11. TRUST BADGES / FOOTER / RESEND
   ══════════════════════════════════════════════════════════ */
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
.b5-resend a:hover { color: #fff !important; text-decoration: underline; }


/* ══════════════════════════════════════════════════════════
   12. NOTIFICATION / ERROR MESSAGES
   ══════════════════════════════════════════════════════════ */
.t-Body-alert {
  position: relative;
  z-index: 10;
}

.t-Body-alert .t-Alert {
  background: rgba(255,60,60,0.12) !important;
  backdrop-filter: blur(12px) !important;
  border: 1px solid rgba(255,60,60,0.25) !important;
  border-radius: 14px !important;
  margin: 12px auto !important;
  max-width: 480px;
}

.t-Body-alert .t-Alert .t-Alert-body,
.t-Body-alert .t-Alert .t-Alert-title {
  color: #ff9999 !important;
}

/* Inline notification inside card */
#login_glass_card .t-Alert,
#login_glass_card .apex-page-error {
  background: rgba(255,60,60,0.12) !important;
  border: 1px solid rgba(255,60,60,0.25) !important;
  border-radius: 12px !important;
  color: #ff9999 !important;
}


/* ══════════════════════════════════════════════════════════
   13. FADE-IN ANIMATIONS
   ══════════════════════════════════════════════════════════ */
.glassFade {
  opacity: 0; transform: translateY(16px);
  animation: glassFadeIn 0.6s cubic-bezier(0.22, 1, 0.36, 1) forwards;
}
@keyframes glassFadeIn { to { opacity: 1; transform: translateY(0); } }
.glassFade:nth-child(1) { animation-delay: 0.08s; }
.glassFade:nth-child(2) { animation-delay: 0.16s; }
.glassFade:nth-child(3) { animation-delay: 0.24s; }
.glassFade:nth-child(4) { animation-delay: 0.32s; }
.glassFade:nth-child(5) { animation-delay: 0.40s; }
.glassFade:nth-child(6) { animation-delay: 0.48s; }


/* ══════════════════════════════════════════════════════════
   14. MOBILE
   ══════════════════════════════════════════════════════════ */
@media (max-width: 540px) {
  #login_glass_card {
    width: 96vw !important;
    border-radius: 20px !important;
  }
  #login_glass_card .t-Region-body {
    padding: 32px 24px 28px !important;
  }
  .glass-trust { gap: 16px; flex-wrap: wrap; }
}
