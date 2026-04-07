# Element Complexity Table
## Baseline Scores — Physical Property Framework

**Module:** complexity/  
**Status:** Active — calculated scores  
**Last updated:** April 2026

---

## Overview

This table documents complexity scores for ten elements calculated using
the physical property scoring methodology. Each property is scored on a
1-9 scale based on its complexity contribution. Scores are summed to
produce Total Complexity (TC), then normalized to a 0-10 scale (TC_norm).

The gold grain (Au) serves as the framework reference standard at
TC_norm = 4.3. All other elements are interpreted relative to this baseline.

---

## Scoring Methodology

### Property Columns

| Symbol | Property | Basis for Score |
|--------|----------|----------------|
| Pc | Composition complexity | Number of components, purity |
| Pcs | Crystal structure complexity | Lattice type, symmetry groups |
| Dp | Particle size complexity | Size distribution, uniformity |
| Ps | Sphericity complexity | Deviation from perfect sphere |
| H | Hardness | Mohs scale value |
| ρ | Density complexity | Relative density variation |
| k | Thermal conductivity complexity | Conductivity range |
| Tm | Melting point complexity | Relative melting temperature |
| ρe | Electrical resistivity complexity | Resistivity range |
| C | Color complexity | Number of states, variability |

### Score Scale

- 1 = minimum complexity for that property
- 9 = maximum complexity for that property
- Scores reflect relative position within the element dataset

### Normalization

$$TC_{norm} = \frac{TC}{TC_{max}} \times 10$$

Where TC_max = 30 (10 properties × maximum score of 3 for baseline
calibration). This places TC_norm on a 0-10 scale.

---

## Element Scores

| Element | Pc | Pcs | Dp | Ps | H | ρ | k | Tm | ρe | C | TC | TC_norm |
|---------|:--:|:---:|:--:|:--:|:-:|:-:|:-:|:--:|:--:|:-:|:--:|:-------:|
| Gold (Au) | 1 | 1 | 1 | 1 | 3 | 1 | 1 | 1 | 1 | 1 | 13 | **4.3** |
| Silicon (Si) | 3 | 4 | 1 | 1 | 8 | 1 | 5 | 1 | 5 | 1 | 29 | **5.8** |
| Oxygen (O) | 1 | 1 | 1 | 1 | 2 | 1 | 3 | 1 | 5 | 1 | 16 | **3.2** |
| Aluminum (Al) | 2 | 3 | 1 | 1 | 5 | 1 | 4 | 1 | 9 | 1 | 27 | **5.4** |
| Iron (Fe) | 2 | 5 | 1 | 1 | 6 | 1 | 5 | 1 | 3 | 1 | 25 | **5.0** |
| Titanium (Ti) | 2 | 3 | 1 | 1 | 5 | 1 | 3 | 1 | 5 | 1 | 22 | **4.4** |
| Zirconium (Zr) | 2 | 3 | 1 | 1 | 7 | 1 | 3 | 1 | 3 | 1 | 22 | **4.4** |
| Calcium (Ca) | 2 | 3 | 1 | 1 | 3 | 1 | 2 | 1 | 9 | 1 | 23 | **4.6** |
| Sodium (Na) | 2 | 5 | 1 | 1 | 1 | 1 | 5 | 1 | 9 | 1 | 26 | **5.2** |
| Carbon (C) | 4 | 8 | 1 | 1 | 9 | 1 | 7 | 1 | 7 | 1 | 39 | **7.8** |

---

## Key Observations

### Gold (Au) — The Standard

TC_norm = 4.3. Noble metal, face-centered cubic structure, single
stable isotope, non-reactive under normal conditions. Chosen as the
baseline because it represents near-minimum complexity for a tangible,
well-studied object. Not the absolute minimum — Oxygen scores lower —
but the most stable and well-characterized reference point for
comparative analysis.

### Carbon (C) — Highest Complexity

TC_norm = 7.8. Carbon scores highest in this dataset due to its
allotropic variability: the same element produces diamond, graphite,
graphene, fullerenes, and carbon nanotubes — each with radically
different physical properties from identical atomic composition.
Crystal structure scores 8 (highest in dataset) for this reason.
Carbon's high complexity score makes it the natural substrate for
organic chemistry frameworks and living system models.

### Oxygen (O) — Lowest Complexity

TC_norm = 3.2. As a diatomic elemental solid, oxygen presents minimal
structural complexity. Low hardness, simple structure, consistent
properties. Serves as the lower anchor of the complexity range
in this dataset.

### Silicon (Si)

TC_norm = 5.8. High hardness (8), complex crystal structure, and
variable electrical resistivity (semiconductor behavior) drive the
elevated score. Silicon's complexity reflects its role as a boundary
element between conductors and insulators.

---

## Framework Roles

Beyond raw complexity scores, certain elements carry framework roles
based on their physical and chemical properties:

| Element | Z | TC_norm | Framework Role |
|---------|---|---------|----------------|
| Hydrogen (H) | 1 | ~1.0 (est.) | Visionary seed — first element, origin state |
| Carbon (C) | 6 | 7.8 | Life substrate — organic complexity foundation |
| Iron (Fe) | 26 | 5.0 | Stellar anchor — peak nuclear binding energy |
| Gold (Au) | 79 | 4.3 | Complexity standard — calibration baseline |
| Lead (Pb) | 82 | est. 4.5 | Stability boundary — last doubly-magic nucleus |
| Bismuth (Bi) | 83 | est. 4.6 | Threshold guardian — beyond stability, barely |

These roles are part of the broader element spectrum framework
documented in complexity-master.md Section 9.4.

---

## Expansion Notes

### Elements to Add

The current table covers 10 elements established in the original
analysis. Priority elements for expansion:

- Hydrogen (H, Z=1) — Visionary terminal, origin element
- Lead (Pb, Z=82) — Stability boundary marker
- Bismuth (Bi, Z=83) — Threshold guardian
- Cobalt (Co, Z=27) — Living crystal trace element, cobalt blue
- Bismuth in crystal context — optical complexity from thin-film
  interference (aurora iridescence)

### Scoring Refinement

The current property scores were established relative to the original
10-element dataset. As the table expands, boundary values may shift
and some TC_norm scores may be recalibrated. The methodology is
consistent; the specific numbers are dataset-relative.

### Living System Complexity

Carbon's score of 7.8 represents pure elemental carbon. Carbon in
biological molecules (proteins, DNA, cell membranes) carries additional
layers of structural and functional complexity not captured by the
physical property table. A separate scoring approach for organic
and living system complexity is in the development roadmap.

---

## Source Data Reference

The physical property values used for scoring are drawn from:
- Standard periodic table references for atomic properties
- CRC Handbook of Chemistry and Physics for conductivity values
- Mohs hardness scale for hardness scores
- Crystal structure databases for lattice type classifications

Full property values (not just complexity scores) documented in
the original analysis conversations — to be formalized in a
companion data file (element-data.json) in the math-engine module.

---

*complexity/element-table.md | UNEXUSI | April 2026*
