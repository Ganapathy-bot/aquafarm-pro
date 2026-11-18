# Project Vision & Constitution

> **AGENT INSTRUCTION:** Read this file before every iteration. It serves as the project's "Long-Term Memory."

## 1. Core Identity
* **Project Name:** AquaFarm Pro
* **Tagline:** Smart Knowledge. Healthy Fish. Better Harvests.
* **Stitch Project ID:** 16064670208389050663
* **Mission:** A practical Android guide to composite carp culture with Catla, Rohu, and Mrigal for Indian freshwater fish farmers, aquaculture entrepreneurs, fisheries students, and extension professionals.
* **Target Audience:** Freshwater fish farmers and fisheries advisors in India.
* **Voice:** Clear, practical, scientifically careful. Separate farmer-reported observations from recommended practice.

## 2. Visual Language
* **The "Vibe" (Adjectives):**
    * *Primary:* Premium aquaculture technology
    * *Secondary:* Calm freshwater field guide
    * *Tertiary:* Practical farm dashboard

## 3. Architecture & File Structure
* **Root:** `site/public/`
* **Asset Flow:** Stitch generates to `.stitch/designs/` → Validate → Move to `site/public/`
* **Navigation Strategy:** Four linked mobile screens with one persistent bottom bar: Home, Fish & Nursery, Pond Management, Harvest & Records.
* **Device:** MOBILE, 390 × 844.

## 4. Live Sitemap (Current State)
* [x] `home.html` - Freshwater Fish Farming dashboard
* [x] `species-nursery.html` - Species and nursery management
* [x] `pond-management.html` - Feeding, pond, and water quality
* [x] `harvest.html` - Health, harvesting, and farm economics

## 5. The Roadmap (Backlog)
### High Priority
- [x] Generate `home` — Screen 1 dashboard
- [x] Generate `species-nursery` — Screen 2
- [x] Generate `pond-management` — Screen 3
- [x] Generate `harvest` — Screen 4

### Medium Priority
- [ ] Rebuild the four screens as a Flutter app after the Stitch designs exist

## 6. Creative Freedom Guidelines
1. **Stay On-Brand:** Keep the AquaFarm Pro palette, photography, and bottom navigation.
2. **Enhance the Core:** Do not add screens beyond the four specified screens.
3. **Naming Convention:** Use the sitemap filenames.

### Ideas to Explore
None. Do not invent extra pages.

## 7. Rules of Engagement
1. Do not recreate pages already checked in Section 4.
2. Always update `next-prompt.md` before completing an iteration.
3. Preserve scientific names: *Catla catla*, *Labeo rohita*, *Cirrhinus mrigala*.
4. Label farmer-reported figures. Do not present them as verified benchmarks.
5. Device type for every Stitch call is `MOBILE`.
