# Clinical Coverage Reference Guide

**Purpose:** Structured reference materials mapping BOC codes → HCPCS codes → Clinical indications → Coverage requirements for Medicare and NY Medicaid (Nassau & Brooklyn)

**End Goal:** Feed these files to Claude Code for HTML catalog generation

---

## Directory Structure

```
clinical-coverage-reference/
├── README.md                    # This file
├── items/                       # Individual HCPCS code reference files
│   ├── DM02/                   # Commodes/Urinals/Bedpans
│   ├── DM05/                   # Blood Glucose Monitors (Non-mail)
│   ├── DM06/                   # Blood Glucose Monitors (Mail)
│   ├── DM08/                   # Heat & Cold Applications
│   ├── M01/                    # Canes & Crutches
│   ├── M05/                    # Walkers
│   ├── M06/                    # Standard Manual Wheelchairs
│   ├── M06A/                   # Manual Wheelchair Accessories
│   ├── M07/                    # Standard Power Wheelchairs
│   ├── M07A/                   # Power Wheelchair Accessories
│   └── [etc]/                  # Other BOC categories
├── _templates/
│   └── item-template.md        # Template for creating new item files
└── _generation-materials/      # Future: Materials for HTML generation
```

---

## File Format

Each item file uses **Markdown with YAML frontmatter**:

- **YAML frontmatter** = Structured, parseable data (for HTML generation)
- **Markdown body** = Human-readable narrative details

### Example Structure

```yaml
---
boc_code: "DM02"
hcpcs_code: "E0163"
medicare:
  covered: true
  prior_auth: false
# ... etc
---

# E0163 - Standard Fixed-Arm Commode

## Clinical Overview
...
```

See `_templates/item-template.md` for complete template.

---

## Workflow

### 1. Choose a BOC Category

Start with one BOC category at a time (e.g., DM02 = Commodes).

Reference the master list in `ApprovedCategoriesAndCodes.csv` to see all HCPCS codes in that category.

### 2. Find Research Documents

Research documents are in the repository root, named by BOC codes:
- `DM02, DM05, DM06.md`
- `M07A.md`
- `S01, S04.md`
- etc.

These contain detailed coverage criteria extracted from:
- Medicare LCDs (Local Coverage Determinations)
- NY Medicaid DME manuals
- NY Medicaid WME (Wheelchair & Mobility Equipment) guidelines

### 3. Create Item Files

For each HCPCS code in the BOC category:

1. Create folder: `items/[BOC_CODE]/`
2. Copy template: `cp _templates/item-template.md items/[BOC_CODE]/[HCPCS].md`
3. Fill in YAML frontmatter with structured data
4. Fill in Markdown sections with narrative details
5. Extract information from research documents

### 4. Validate

Check that each file has:
- [ ] All required YAML fields populated
- [ ] Clinical indications listed
- [ ] ICD-10 codes included
- [ ] Coverage details for all 3 payers
- [ ] Prescription checklist
- [ ] Common denial reasons
- [ ] Tips for approval

---

## Key Fields Explained

### YAML Frontmatter Fields

**Identifying Info:**
- `boc_code` - Business Operations Category (e.g., "DM02")
- `boc_category` - Category description (e.g., "COMMODES/URINALS/BEDPANS")
- `hcpcs_code` - HCPCS billing code (e.g., "E0163")
- `hcpcs_description` - Official CMS description
- `item_common_name` - Marketing/common name for item

**Clinical:**
- `clinical_indications` - List of when to prescribe this item
- `icd10_primary` - List of primary diagnosis codes

**Coverage (per payer):**
- `covered` - Is item covered? (true/false)
- `prior_auth` - Prior authorization required? (true/false)
- `dvs_authorization` - NY Medicaid DVS auth required? (true/false)
- `face_to_face` - F2F visit required? (true/false)
- `documentation_type` - Type of order needed (SWO/DWO/WOPD/Fiscal Order)
- `modifiers` - Billing modifiers required (e.g., ["KX"])
- `frequency_limit` - How often can be ordered
- `quantity_limit` - How many units at once

**Flags (for filtering):**
- `requires_prior_auth_any` - Any payer requires PA?
- `requires_face_to_face_any` - Any payer requires F2F?
- `requires_specialty_eval` - Requires PT/OT evaluation?
- `requires_resna_atp` - Requires RESNA ATP certification?
- `discontinued` - Is code obsolete? (true/false)

**Metadata:**
- `last_updated` - Date last modified (YYYY-MM-DD)
- `source_documents` - List of research docs used
- `reviewed_by` - Your name/initials

---

## Terminology Guide

### Medicare Terms

| Term | Definition |
|------|------------|
| SWO | Standard Written Order - Basic prescription |
| DWO | Detailed Written Order - More specific requirements |
| WOPD | Written Order Prior to Delivery - Must be signed before delivery |
| LCD | Local Coverage Determination - Medicare policy document |
| KX modifier | Billing modifier indicating coverage criteria met |
| F2F | Face-to-face visit within 6 months before order |

### NY Medicaid Terms

| Term | Definition |
|------|------------|
| DVS Authorization | Prior approval through eMedNY system |
| Fiscal Order | NY Medicaid prescription format |
| # code | Item requiring DVS authorization (marked in manuals) |
| F3, F4, F5, etc. | Frequency codes (F3 = once/3 years, F4 = once/3 years, F5 = once/5 years) |
| WME Guidelines | Wheelchair and Mobility Equipment evaluation standards |
| PDSP | Preferred Diabetic Supply Program (pharmacy-only for some CGMs) |

### Clinical Terms

| Term | Definition |
|------|------------|
| ICD-10 | International Classification of Diseases, 10th revision (diagnosis codes) |
| HCPCS | Healthcare Common Procedure Coding System (billing codes) |
| BOC | Business Operations Code (category of DME) |
| MRADL | Mobility-Related Activities of Daily Living |
| RESNA ATP | Rehabilitation Engineering & Assistive Technology Professional |

---

## Tips for Success

### Do:
✅ Work incrementally (one BOC category at a time)
✅ Copy exact wording from research documents for coverage criteria
✅ Include specific ICD-10 codes from research docs
✅ Note when codes are discontinued or replaced
✅ Document differences between Nassau and Brooklyn when they exist
✅ Include practical prescription tips for physicians

### Don't:
❌ Assume all payers have same coverage (always verify each)
❌ Use generic descriptions (be specific)
❌ Skip the YAML frontmatter (critical for HTML generation)
❌ Forget to mark discontinued codes
❌ Mix up frequency codes between Medicare and Medicaid

---

## Progress Tracking

### Completed BOC Categories:
- [ ] DM02 - Commodes/Urinals/Bedpans
- [ ] DM05 - Blood Glucose Monitors (Non-mail)
- [ ] DM06 - Blood Glucose Monitors (Mail)
- [ ] DM08 - Heat & Cold Applications
- [ ] DM11 - Infrared Heating Pads
- [ ] DM12 - External Infusion Pumps
- [ ] DM13 - Insulin Infusion Pumps
- [ ] DM16 - Neuromuscular Electrical Stimulators
- [ ] DM17 - Osteogenesis Stimulators
- [ ] DM18 - Pneumatic Compression Devices
- [ ] DM20 - Pressure Reducing Surfaces
- [ ] DM21 - Traction Equipment
- [ ] DM22 - TENS Units
- [ ] DM24 - External Infusion Pump Supplies
- [ ] DM25 - Insulin Infusion Pump Supplies
- [ ] DM28 - Rehabilitative Therapy Devices
- [ ] DM29 - Urinary Suction Pumps
- [ ] M01 - Canes & Crutches
- [ ] M05 - Walkers
- [ ] M06 - Standard Manual Wheelchairs
- [ ] M06A - Manual Wheelchair Accessories
- [ ] M07 - Standard Power Wheelchairs
- [ ] M07A - Power Wheelchair Accessories
- [ ] M10 - Wheelchair Seating/Cushions
- [ ] OR03 - Orthoses: Off-the-Shelf
- [ ] OR04 - Penile Pumps
- [ ] PD04 - Neurostimulators
- [ ] PD08 - Tracheostomy Supplies
- [ ] PD09 - Urological Supplies
- [ ] PE03 - Enteral Nutrients
- [ ] PE04 - Enteral Equipment & Supplies
- [ ] R07 - Nebulizer Equipment & Supplies
- [ ] S01 - Surgical Dressings
- [ ] S04 - Lymphedema Compression Treatment

---

## Next Steps

### Phase 1: Create Reference Files (Current)
Fill in structured reference files for all HCPCS codes using research documents.

### Phase 2: Validation
Review all files for:
- Completeness
- Accuracy
- Consistency
- Proper YAML formatting

### Phase 3: HTML Generation (Future)
Feed completed reference files to Claude Code for HTML catalog generation with:
- Filterable tables
- Searchable content
- ICD-10 cross-reference
- Payer comparison views
- Printable physician guides

---

## Questions or Issues?

If you need help:

1. Review `HANDOFF_PROMPT.md` in repository root
2. Check the template: `_templates/item-template.md`
3. Review an existing completed file as example
4. Ask Claude Code for clarification on specific coverage criteria

---

**Last Updated:** 2025-10-29
**Status:** Structure created, ready for content population
