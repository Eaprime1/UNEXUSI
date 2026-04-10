# Complexity Equations
## Formal Mathematical Framework with Context

**Module:** complexity/  
**Status:** Active — verified framework  
**Last updated:** April 2026

---

## Overview

This document presents the mathematical foundation of the complexity framework.
Each equation is shown with its formal expression and a brief explanation of
what it measures and why it works that way. The framework was developed using
a spherical gold grain as the baseline object — chosen for its simplicity and
well-documented physical properties.

---

## 1. Min-Max Normalization

### Equation

$$N(x) = \frac{x - x_{min}}{x_{max} - x_{min}}$$

### What it does

Maps any value to the range [0, 1] by expressing it relative to the minimum
and maximum values in the dataset. At x = x_min the result is 0. At x = x_max
the result is 1. All other values fall proportionally between.

### Why this matters

The complexity framework combines properties that are measured in completely
different units — hardness in Mohs, conductivity in W/mK, density in g/cm³.
Normalization makes them directly comparable by removing units and expressing
each property as a relative position within its own range.

### Note on pseudo-void pockets

In real datasets, values rarely hit exactly 0 or 1. Values that approach but
do not reach the extremes represent edge-state positions in the complexity
landscape — neither minimum nor maximum. These are tracked as meaningful
features, not noise. See complexity-master.md Section 9.5 for current
thinking on their significance.

---

## 2. The Full Complexity Equation

### Equation

$$C(t) = w_1 \cdot N(SACS(t)) + w_2 \cdot N(OPP_{Tex}(t)) + w_3 \cdot N(OPP_{Subj}(t)) + w_4 \cdot N(T(t)) + w_5 \cdot N(K(t))$$

### Variables

| Symbol | Meaning |
|--------|---------|
| C(t) | Overall complexity score at time t |
| N(·) | Min-max normalization (see equation 1) |
| SACS(t) | Standardized Angular Complexity Score — geometric complexity |
| OPP_Tex(t) | Texture complexity |
| OPP_Subj(t) | Subjective complexity as perceived by the observer |
| T(t) | Time factor — how complexity changes as time passes |
| K(t) | Knowledge factor — how understanding accumulates over time |
| w₁ … w₅ | Weights that must sum to 1 |

### What it does

Produces a single complexity score by combining geometric, textural,
subjective, temporal, and knowledge-based factors. Each factor is
normalized before combination so no single measurement scale dominates.
The weights allow context-specific adjustment — a geometric analysis
emphasizes w₁, a time-study emphasizes w₄ and w₅.

### Why the observer is included

Complexity is not purely a property of objects. The same object has
different complexity to different observers depending on what they know,
how they sense it, and what they are trying to understand. The OPP_Subj
and K(t) terms capture this. An expert sees lower complexity in a
familiar system. A first encounter sees higher complexity. Both readings
are real and valid — the equation holds both.

---

## 3. Angular Complexity — SACS

### Equation

$$SACS = \sum_{i} (f_i \cdot w_i \cdot \theta_i)$$

### Variables

| Symbol | Meaning |
|--------|---------|
| f_i | Frequency of angles falling in range i |
| w_i | Weight assigned to that angle range |
| θ_i | Average angle within range i |

### What it does

Measures the geometric complexity of a shape by analyzing the distribution
of angles across its surface or boundary. A perfect sphere has a uniform
angle distribution — low SACS. An irregular fractured surface has high
variance in angle distribution — high SACS.

### Why angle distribution matters

Angles encode shape information more completely than simple perimeter or
surface area measurements. Two shapes can have identical surface areas
with completely different angle distributions — and therefore different
functional and visual complexity. SACS captures what simpler geometric
metrics miss.

---

## 4. Expanded Complexity with Angular Distribution

### Equation

$$C = w_1 \cdot \frac{SACS - SACS_{min}}{SACS_{max} - SACS_{min}} + w_2 \cdot \frac{D - D_{min}}{D_{max} - D_{min}} + w_3 \cdot \frac{M - M_{min}}{M_{max} - M_{min}} + \alpha \cdot \frac{\sum(f_i \cdot w_i \cdot \theta_i) - \Sigma_{min}}{\Sigma_{max} - \Sigma_{min}}$$

### Variables

| Symbol | Meaning |
|--------|---------|
| D | Fractal dimension of the object |
| M | Additional metric (roundness, texture, etc.) |
| α | Tuning constant for the angular distribution contribution |

### What it does

This is the expanded form showing all normalization operations explicitly.
The fractal dimension D captures self-similarity across scales — objects
with complex fractal structure score higher. M is a flexible slot for
domain-specific metrics. The α constant allows the angular distribution
contribution to be tuned independently.

### Gold grain baseline

For the gold grain (the reference object):
- SACS is near minimum — near-perfect sphere, uniform angle distribution
- D approaches 2.0 — smooth surface, minimal fractal dimension  
- TC = 13, TC_norm = 4.3 on a 0-10 scale

Everything else is measured relative to this.

---

## 5. Time Factor

### Equation

$$T(t) = \frac{1}{1 + \log(t + 1)}$$

### What it does

Produces a value that starts at 1 when t = 0 and decreases toward 0 as
time increases. The decrease is fast initially and slows over time —
matching the observation that the largest drop in perceived complexity
happens early in an encounter, then levels off.

### Why complexity decreases with time

Familiarity reduces perceived complexity. The first time encountering an
object or system, everything is novel and must be processed. As time passes,
patterns are recognized, expectations form, and the cognitive load of
processing drops. The object has not changed — the observer's relationship
to it has.

### Properties

- At t = 0: T(0) = 1 (maximum complexity — first encounter)
- As t → ∞: T(t) → 0 (complexity approaches zero — full familiarity)
- Rate: rapid early decrease, slower later

---

## 6. Knowledge Factor

### Equation

$$K(t) = \frac{\log(t + 1)}{1 + \log(t + 1)}$$

### What it does

The complement of T(t). Starts at 0 and increases toward 1 as time passes.
Represents accumulated understanding of the object or system.

### The relationship between T and K

At every point in time: T(t) + K(t) = 1

They sum to 1 always. As knowledge increases, perceived complexity decreases
by exactly the same amount. This is not a coincidence — it reflects the
principle that understanding and complexity are inverse expressions of the
same relationship between an observer and a system.

### The intersection point

Setting T(t) = K(t) and solving:

$$\frac{1}{1 + \log(t^* + 1)} = \frac{\log(t^* + 1)}{1 + \log(t^* + 1)}$$

This gives log(t* + 1) = 1, therefore:

$$t^* = e - 1 \approx 1.718$$

At t ≈ 1.718 time units, knowledge equals complexity. What constitutes
a time unit depends on context — it requires calibration for each
application domain. The point itself is meaningful: it marks the
transition from complexity-dominant to knowledge-dominant processing.

---

## 7. Physical Property Complexity — Element Scoring

### Equation

$$TC = \sum_{j} P_j$$

$$TC_{norm} = \frac{TC}{TC_{max}} \times 10$$

### Variables

| Symbol | Meaning |
|--------|---------|
| P_j | Complexity score for property j (range 1-9) |
| TC | Total complexity (sum of all property scores) |
| TC_max | Maximum possible TC for normalization (50, based on calibration) |
| TC_norm | Normalized score on 0-10 scale |

### What it does

Scores each physical property of an element on a 1-9 complexity scale,
sums them, then normalizes to a 0-10 scale for comparison. The gold grain
scores 13 total (TC_norm = 4.3). Carbon scores 39 (TC_norm = 7.8) — the
highest in the current dataset due to its allotropic variability.

### Properties scored

Crystal structure, composition, particle size, sphericity, hardness,
density, thermal conductivity, melting point, electrical resistivity,
color complexity. Full scoring table in element-table.md.

---

## 8. Complexity-Knowledge Graph

The relationship between T(t) and K(t) over time:

Score
1.0 |
    |\         T(t) falling →
    | \
    |  \
    |   X ← t* ≈ 1.718
    |  /
    | /
    |/    ← K(t) rising
    |  \    X ← t* ≈ 1.718
    |   \  /
    |    \/
    |    /\
    |   /  \
    |  /    ← K(t) rising
0.0 |________________________→ time
    0    1    2    3    4

The intersection at t* ≈ 1.718 is the balance point between complexity
and understanding. Before it: complexity dominates. After it: knowledge
dominates. The system (observer + object) behaves differently on each
side of this threshold.

---

## Implementation Notes

The Python implementations of these equations are in `/math-engine/`:

- `normalize.py` — implements N(x), normalize_vector, denormalize
- `complexity-calc.py` — implements C(t), element scoring

See those files for function signatures. Full implementation is
in progress — function bodies to be completed in the next
development session.

---

*complexity/equations.md | UNEXUSI | April 2026*
