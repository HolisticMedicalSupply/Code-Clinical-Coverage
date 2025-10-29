# DM02 Audit Report - Data Integrity Review

**Date:** 2025-10-29
**Auditor:** Claude Code
**Policy:** DATA_INTEGRITY_POLICY.md v1.0

---

## Summary

Reviewed all 14 DM02 files against source document "DM02, DM05, DM06.md" to classify data by confidence tier.

### Findings:

**Fields Requiring Tags/Corrections:**

1. **ICD-10 Codes** - Added beyond what source explicitly listed (Tier 2 - need Inferred tag)
2. **prior_auth: false** - Inferred from absence in source (Tier 2 - need Inferred tag or change approach)
3. **face_to_face: false** - Not mentioned in source (Tier 3 - need Under Review tag)
4. **quantity_limit** - Often not explicitly stated (Tier 3 - need Under Review or verification)
5. **requires_specialty_eval: false** - Not mentioned (Tier 3 - need Under Review tag)
6. **requires_resna_atp: false** - Not mentioned (Tier 3 - need Under Review tag)
7. **Some special_notes** - Synthesized from narrative (Tier 2 - need Inferred tag where applicable)

---

## Detailed Audit by File

### E0160 - Sitz Bath Portable

**Tier 1 (Direct from Source):**
- ✅ Clinical indications (lines 11-20)
- ✅ Medicare covered: true
- ✅ Medicaid covered: true
- ✅ DVS authorization: true
- ✅ Frequency code F3
- ✅ documentation_type fields

**Tier 2 (Need Inferred Tags):**
- ⚠️ Some ICD-10 codes added beyond source
- ⚠️ prior_auth: false (source doesn't say "NO PA", inferred from absence)
- ⚠️ frequency_limit wording expanded from "F3 (once every 5 years)"

**Tier 3 (Need Under Review or Verify Tags):**
- ⚠️ face_to_face: false (not mentioned in source)
- ⚠️ quantity_limit: "1 per patient" (not explicitly stated)
- ⚠️ requires_specialty_eval: false (not mentioned)
- ⚠️ requires_resna_atp: false (not mentioned)

**Tier 4 (Should be blank):**
- None identified

---

### E0163 - Commode Fixed Arms

**Tier 1 (Direct from Source):**
- ✅ Clinical indications (lines 47-56)
- ✅ Medicare covered: true
- ✅ Medicare DWO requirement
- ✅ Medicare KX modifier
- ✅ Medicaid DVS authorization
- ✅ Frequency F3
- ✅ Special note about NOT for raised toilet seat

**Tier 2 (Need Inferred Tags):**
- ⚠️ ICD-10 codes (Z99.3, R26.2, etc. - added based on clinical indications)
- ⚠️ prior_auth: false for Medicare (inferred from absence)
- ⚠️ frequency_limit detailed wording

**Tier 3 (Need Under Review):**
- ⚠️ face_to_face: false (not mentioned)
- ⚠️ quantity_limit: "1 per patient" (implied but not stated)
- ⚠️ requires_specialty_eval: false
- ⚠️ requires_resna_atp: false

---

### E0175 - Footrest for Commode

**Tier 1 (Direct from Source):**
- ✅ Medicare NOT COVERED (lines 119-123)
- ✅ Medicare GY modifier
- ✅ Medicaid covered: true
- ✅ Medicaid DVS authorization
- ✅ Medicaid frequency F3
- ✅ Clinical indications for Medicaid

**Tier 2 (Need Inferred Tags):**
- ⚠️ Extended ICD-10 codes beyond source
- ⚠️ prior_auth: false for Medicare (N/A since not covered, but stated as false)

**Tier 3 (Need Under Review):**
- ⚠️ Medicaid quantity_limit: "1 or 2 per commode" (source says "can bill quantity 1 or 2" - is this same thing?)
- ⚠️ face_to_face: false
- ⚠️ requires_specialty_eval: false

**Pattern:** This one is actually pretty good since source was very explicit about Medicare non-coverage.

---

## Recommended Corrections

### 1. Add data_quality Section to All Files

Every file needs:
```yaml
# Data Quality Tracking
data_quality:
  primary_source: "DM02, DM05, DM06.md"
  source_verified_fields: ["covered", "dvs_authorization", "documentation_type", "frequency_code", "clinical_indications"]
  inferred_fields: ["icd10_codes_extended", "prior_auth_absence", "frequency_limit_wording"]
  needs_verification: ["face_to_face", "quantity_limit", "requires_specialty_eval", "requires_resna_atp"]
  external_searches: []
  last_verified: "2025-10-29"
  verified_by: "Claude Code"
```

### 2. Tag Inferred Fields

**ICD-10 codes that weren't in source:**
```yaml
icd10_primary:
  - "O70.x - Perineal laceration during delivery"  # Source-based (Inferred from "post-surgical healing - episiotomy")
  - "K64.x - Hemorrhoids and perianal venous thrombosis (Inferred)"
  - "N76.x - Other inflammation of vagina and vulva (Inferred)"
```

**Prior authorization:**
```yaml
medicare:
  prior_auth: false  # (Inferred - not mentioned in source, typical for non-LCD items)
```

**Frequency limits:**
```yaml
medicaid_nassau:
  frequency_limit: "Once every 5 years (Inferred from F3 code)"
```

### 3. Mark Under Review Fields

```yaml
medicare:
  face_to_face: false  # (Under Review - not specified in source)
  quantity_limit: "1 per patient (Under Review)"

medicaid_nassau:
  quantity_limit: "1 per patient (Under Review)"

# Quick flags
requires_specialty_eval: false  # (Under Review)
requires_resna_atp: false  # (Under Review)
```

### 4. Special Cases

**E0275/E0276 Bedpans:**
- Source says "typically limited to 1 per 12 months" for Medicare
- This is Tier 2 (inferred pattern, not absolute rule)
- Should tag: `frequency_limit: "Typically limited to 1 per 12 months (Inferred from source wording)"`

---

## Systematic Approach

For each of 14 files:

1. **Add data_quality section** at end of YAML
2. **Tag ICD-10 codes** not explicitly in source with (Inferred)
3. **Tag prior_auth: false** with comment about inference
4. **Tag face_to_face: false** with (Under Review)
5. **Tag quantity_limit** with (Under Review) if not explicit
6. **Tag requires_specialty_eval and requires_resna_atp** with (Under Review)
7. **Review special_notes** for synthesized content and tag if needed

---

## Priority

**High Priority (Critical Fields):**
- ✅ covered (true/false) - ALL are Tier 1 from source
- ✅ dvs_authorization - ALL are Tier 1 from source
- ⚠️ prior_auth - Currently Tier 2 (inferred), SHOULD BE TAGGED

**Medium Priority (Affects Understanding):**
- ⚠️ ICD-10 codes - Tag extended codes as (Inferred)
- ⚠️ frequency_limit wording - Tag interpretation as (Inferred)

**Low Priority (Non-Critical):**
- ⚠️ face_to_face - Tag as (Under Review)
- ⚠️ quantity_limit - Tag as (Under Review) where not explicit
- ⚠️ requires_specialty_eval - Tag as (Under Review)
- ⚠️ requires_resna_atp - Tag as (Under Review)

---

## Conclusion

The DM02 files contain accurate information based on source, but need **transparency tags** to indicate:
- What was directly from source (Tier 1)
- What was inferred (Tier 2)
- What needs verification (Tier 3)

**Next Step:** Systematically revise all 14 files to add data_quality sections and appropriate tags.
