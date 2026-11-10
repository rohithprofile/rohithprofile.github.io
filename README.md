# Maheshwaram Rohith — AI/ML Engineer Portfolio

[![Live Site](https://img.shields.io/badge/Live%20Site-rohithprofile.github.io-2ea44f?style=flat-square&logo=github)](https://rohithprofile.github.io/)
[![GitHub Pages](https://img.shields.io/badge/Deployment-GitHub%20Pages-blue?style=flat-square&logo=github)](https://rohithprofile.github.io/)
[![Zero Build](https://img.shields.io/badge/Architecture-Zero--Build%20Static-informational?style=flat-square)](https://github.com/rohithprofile/rohithprofile.github.io)
[![License](https://img.shields.io/badge/License-MIT-lightgrey?style=flat-square)](LICENSE)

An interactive, zero-build personal engineering portfolio featuring an ASCII marine life physics simulation, client-side automated job-fit analysis, live in-browser WCAG accessibility audits, and real-time GitHub repository telemetry.

---

## 🌐 Live Deployments

- **Official Portfolio**: [https://rohithprofile.github.io/](https://rohithprofile.github.io/)
- **GitHub Repository**: [github.com/rohithprofile/rohithprofile.github.io](https://github.com/rohithprofile/rohithprofile.github.io)
- **Personal Account Mirror**: [https://rohith2157.github.io/](https://rohith2157.github.io/)

---

## ⚡ Key Highlights

### 1. ASCII Ocean Physics Simulation (`ocean.js`)
- **Boids Flocking Algorithm**: Realistic schooling fish that exhibit separation, alignment, and cohesion.
- **Predator-Prey Mechanics**: Hammerhead sharks dynamically hunt nearby fish, triggering evasive scattering.
- **Interactive Water Physics**: Direct mouse clicks generate outward splash shockwaves that disrupt schools.
- **Hardware-Friendly Performance**: Optimized ASCII canvas renderer running 60 FPS with minimal memory overhead and motion-reduction preference detection (`prefers-reduced-motion`).

### 2. Client-Side Job-Fit Analyzer (`proof.js`)
- Paste any engineering job description directly into the browser.
- Automatically parses and cross-references requirements against shipped code, quantifiable production metrics, and identified gaps with zero server roundtrips.

### 3. Live Self-Audit Terminal (`proof.js`)
- An in-browser adaptation of the [BugZero](https://github.com/rohith2157/BUGZERO) testing suite.
- Audits the live DOM for WCAG 2.1 AA color contrast, ARIA landmarks, heading depth, touch target dimensions, keyboard accessibility, and Core Web Vitals.
- Demonstrates self-healing CSS selectors directly in an interactive simulated console.

### 4. Dynamic GitHub Telemetry (`main.js`)
- Real-time stars, primary languages, and commit timestamps fetched dynamically from the public GitHub REST API.
- In-memory 1-hour cache layer with graceful static fallbacks embedded in `index.html`.

---

## 🛠️ Architecture & File Tour

This portfolio follows a strict **zero-build** philosophy. No Webpack, no Vite, no dependencies to install, and zero compile latency.

```
portno169/
├── index.html                           # Semantic HTML5 content & metadata
├── style.css                            # Design tokens, typography & themes (light/dark)
├── main.js                              # Theme switching, section routing & GitHub API cache
├── ocean.js                             # ASCII canvas simulation (flocking boids & predators)
├── proof.js                             # In-browser job-fit evaluator & live DOM audit
├── geist-mono-latin.woff2               # Self-hosted monospace font
└── assets/
    └── Maheshwaram_Rohith_Resume.pdf    # Full engineering résumé
```

---

## 🚀 Local Development

Since there is no build step or node package requirements, you can preview the site immediately with any lightweight local web server:

### Using Python:
```bash
python -m http.server 5173
```

### Using Node / npx:
```bash
npx serve . -l 5173
```

Open [http://localhost:5173](http://localhost:5173) in your browser.

---

## 👤 About the Author

**Maheshwaram Rohith**  
*AI/ML Engineer · LLMs, RAG, Multi-Agent Systems & Full-Stack*  
- **GitHub**: [@rohith2157](https://github.com/rohith2157)  
- **LinkedIn**: [Maheshwaram Rohith](https://www.linkedin.com/in/rohith-maheshwaram-b2777531a)  
- **Email**: [maheshwaramrohith2157@gmail.com](mailto:maheshwaramrohith2157@gmail.com)  
- **Location**: Hyderabad, India
