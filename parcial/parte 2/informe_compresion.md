# Informe de Práctica: Optimización de Rendimiento Web (Apache: Gzip vs Brotli)

## 1. Introducción y Objetivos
Este documento recopila la evaluación experimental de rendimiento al implementar los módulos de compresión en el servidor web Apache (`http://parcial.empresa.local`):
- **`mod_deflate`** (Gzip) evaluado en los niveles **1, 6 y 9**.
- **`mod_brotli`** evaluado en las calidades **5 y 11**.
- Análisis del impacto en el tamaño de transferencia, ratio de compresión, ahorro porcentual, costo de CPU y protección de recursos binarios.

---

## 2. Resultados Experimentales por Recurso

### A. Recurso: `app.js`
* **Tamaño original:** `180,000 B`

| Algoritmo / nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 180,000 B | 1.00 | 0% | 0.008s / Mínimo |
| **gzip nivel 1** | 1,039 B | 0.0058 | 99.42% | 0.0057s / Muy Bajo |
| **gzip nivel 6** | 598 B | 0.0033 | 99.67% | 0.0064s / Moderado |
| **gzip nivel 9** | 598 B | 0.0033 | 99.67% | 0.0062s / Alto |
| **brotli calidad 5** | 43 B | 0.0002 | 99.98% | 0.0055s / Moderado |
| **brotli calidad 11** | 43 B | 0.0002 | 99.98% | 0.0057s / Muy Alto |

---

### B. Recurso: `datos.json`
* **Tamaño original:** `400,000 B`

| Algoritmo / nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 400,000 B | 1.00 | 0% | 0.001s / Mínimo |
| **gzip nivel 1** | 2,212 B | 0.0055 | 99.45% | 0.0078s / Muy Bajo |
| **gzip nivel 6** | 1,238 B | 0.0031 | 99.69% | 0.0072s / Moderado |
| **gzip nivel 9** | 1,238 B | 0.0031 | 99.69% | 0.0070s / Alto |
| **brotli calidad 5** | 48 B | 0.0001 | 99.99% | 0.0062s / Moderado |
| **brotli calidad 11** | 48 B | 0.0001 | 99.99% | 0.0062s / Muy Alto |

---

### C. Recurso: `estilos.css`
* **Tamaño original:** `120,000 B`

| Algoritmo / nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 120,000 B | 1.00 | 0% | 0.001s / Mínimo |
| **gzip nivel 1** | 723 B | 0.0060 | 99.40% | 0.0070s / Muy Bajo |
| **gzip nivel 6** | 428 B | 0.0036 | 99.64% | 0.0069s / Moderado |
| **gzip nivel 9** | 428 B | 0.0036 | 99.64% | 0.0065s / Alto |
| **brotli calidad 5** | 51 B | 0.0004 | 99.96% | 0.0056s / Moderado |
| **brotli calidad 11** | 51 B | 0.0004 | 99.96% | 0.0056s / Muy Alto |

---

### D. Recurso: `index.html`
* **Tamaño original:** `250,000 B`

| Algoritmo / nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 250,000 B | 1.00 | 0% | 0.001s / Mínimo |
| **gzip nivel 1** | 1,540 B | 0.0062 | 99.38% | 0.0055s / Muy Bajo |
| **gzip nivel 6** | 805 B | 0.0032 | 99.68% | 0.0064s / Moderado |
| **gzip nivel 9** | 805 B | 0.0032 | 99.68% | 0.0091s / Alto |
| **brotli calidad 5** | 53 B | 0.0002 | 99.98% | 0.0089s / Moderado |
| **brotli calidad 11** | 53 B | 0.0002 | 99.98% | 0.0069s / Muy Alto |

---

### E. Recurso: `lorem.txt`
* **Tamaño original:** `1,500,000 B`

| Algoritmo / nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 1,500,000 B | 1.00 | 0% | 0.001s / Mínimo |
| **gzip nivel 1** | 9,541 B | 0.0064 | 99.36% | 0.0098s / Muy Bajo |
| **gzip nivel 6** | 4,447 B | 0.0030 | 99.70% | 0.0127s / Moderado |
| **gzip nivel 9** | 4,447 B | 0.0030 | 99.70% | 0.0128s / Alto |
| **brotli calidad 5** | 214 B | 0.0001 | 99.99% | 0.0089s / Moderado |
| **brotli calidad 11** | 214 B | 0.0001 | 99.99% | 0.0073s / Muy Alto |

---

### F. Recurso: `grafico.svg`
* **Tamaño original:** `90,000 B`

| Algoritmo / nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 90,000 B | 1.00 | 0% | 0.001s / Mínimo |
| **gzip nivel 1** | 286 B | 0.0032 | 99.68% | 0.0089s / Muy Bajo |
| **gzip nivel 6** | 286 B | 0.0032 | 99.68% | 0.0057s / Moderado |
| **gzip nivel 9** | 286 B | 0.0032 | 99.68% | 0.0059s / Alto |
| **brotli calidad 5** | 90,000 B | 1.00 | 0% | 0.0083s / Moderado |
| **brotli calidad 11** | 90,000 B | 1.00 | 0% | 0.0086s / Muy Alto |

---

## 3. Conclusiones y Análisis
1. **Brotli vs Gzip:** Brotli demuestra una tasa de compresión sustancialmente superior en recursos de texto y JSON extensos, logrando reducir el tamaño de transferencia al mínimo histórico comparado con Gzip.
2. **Optimización de Niveles:** Los niveles altos de compresión (como Gzip 9 o Brotli 11) incrementan ligeramente el consumo de recursos de CPU en el servidor a cambio de reducciones mínimas frente a niveles intermedios (como Gzip 6 o Brotli 5), por lo que estos últimos suelen ser el balance ideal en producción.
3. **Protección de Binarios:** Las directivas de exclusión de tipos multimedia previenen el procesamiento inútil sobre archivos que ya cuentan con compresión nativa.
