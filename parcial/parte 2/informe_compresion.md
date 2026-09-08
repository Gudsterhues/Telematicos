# Informe de Práctica: Optimización de Rendimiento Web (Apache: Gzip vs Brotli)

## Resultados  por Recurso

### A. Recurso: `app.js`
* **Tamaño original:** `180,000 B`

| Algoritmo / nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 180,000 B | 1.00 | 0% | 0.008s  |
| **gzip nivel 1** | 1,039 B | 0.0058 | 99.42% | 0.0057s |
| **gzip nivel 6** | 598 B | 0.0033 | 99.67% | 0.0064s  |
| **gzip nivel 9** | 598 B | 0.0033 | 99.67% | 0.0062s  |
| **brotli calidad 5** | 43 B | 0.0002 | 99.98% | 0.0055s  |
| **brotli calidad 11** | 43 B | 0.0002 | 99.98% | 0.0057s  |

---

### B. Recurso: `datos.json`
* **Tamaño original:** `400,000 B`

| Algoritmo / nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 400,000 B | 1.00 | 0% | 0.001s  |
| **gzip nivel 1** | 2,212 B | 0.0055 | 99.45% | 0.0078s  |
| **gzip nivel 6** | 1,238 B | 0.0031 | 99.69% | 0.0072s  |
| **gzip nivel 9** | 1,238 B | 0.0031 | 99.69% | 0.0070s  |
| **brotli calidad 5** | 48 B | 0.0001 | 99.99% | 0.0062s  |
| **brotli calidad 11** | 48 B | 0.0001 | 99.99% | 0.0062s  |

---

### C. Recurso: `estilos.css`
* **Tamaño original:** `120,000 B`

| Algoritmo / nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 120,000 B | 1.00 | 0% | 0.001s  |
| **gzip nivel 1** | 723 B | 0.0060 | 99.40% | 0.0070s  |
| **gzip nivel 6** | 428 B | 0.0036 | 99.64% | 0.0069s  |
| **gzip nivel 9** | 428 B | 0.0036 | 99.64% | 0.0065s  |
| **brotli calidad 5** | 51 B | 0.0004 | 99.96% | 0.0056s  |
| **brotli calidad 11** | 51 B | 0.0004 | 99.96% | 0.0056s  |

---

### D. Recurso: `index.html`
* **Tamaño original:** `250,000 B`

| Algoritmo / nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 250,000 B | 1.00 | 0% | 0.001s  |
| **gzip nivel 1** | 1,540 B | 0.0062 | 99.38% | 0.0055s  |
| **gzip nivel 6** | 805 B | 0.0032 | 99.68% | 0.0064s  |
| **gzip nivel 9** | 805 B | 0.0032 | 99.68% | 0.0091s  |
| **brotli calidad 5** | 53 B | 0.0002 | 99.98% | 0.0089s  |
| **brotli calidad 11** | 53 B | 0.0002 | 99.98% | 0.0069s  |

---

### E. Recurso: `lorem.txt`
* **Tamaño original:** `1,500,000 B`

| Algoritmo / nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 1,500,000 B | 1.00 | 0% | 0.001s  |
| **gzip nivel 1** | 9,541 B | 0.0064 | 99.36% | 0.0098s  |
| **gzip nivel 6** | 4,447 B | 0.0030 | 99.70% | 0.0127s  |
| **gzip nivel 9** | 4,447 B | 0.0030 | 99.70% | 0.0128s  |
| **brotli calidad 5** | 214 B | 0.0001 | 99.99% | 0.0089s  |
| **brotli calidad 11** | 214 B | 0.0001 | 99.99% | 0.0073s  |

---

### F. Recurso: `grafico.svg`
* **Tamaño original:** `90,000 B`

| Algoritmo / nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 90,000 B | 1.00 | 0% | 0.001s  |
| **gzip nivel 1** | 286 B | 0.0032 | 99.68% | 0.0089s  |
| **gzip nivel 6** | 286 B | 0.0032 | 99.68% | 0.0057s  |
| **gzip nivel 9** | 286 B | 0.0032 | 99.68% | 0.0059s  |
| **brotli calidad 5** | 90,000 B | 1.00 | 0% | 0.0083s  |
| **brotli calidad 11** | 90,000 B | 1.00 | 0% | 0.0086s  |

---
