---
# STRUCTURED METADATA (For Claude Code HTML Generation)
boc_code: ""
boc_category: ""
hcpcs_code: ""
hcpcs_description: ""
item_common_name: ""

# Clinical Classification
clinical_indications:
  - ""

icd10_primary:
  - ""

# Coverage Requirements - Structured for comparison tables
medicare:
  covered: true  # true/false
  prior_auth: false  # true/false
  face_to_face: false  # true/false/conditional
  documentation_type: ""  # SWO/DWO/WOPD
  modifiers: []  # e.g., ["KX", "KS"]
  frequency_limit: ""
  quantity_limit: ""
  special_notes: ""

medicaid_nassau:
  covered: true
  prior_auth: false
  dvs_authorization: false  # true/false (# code in NY Medicaid)
  face_to_face: false
  documentation_type: ""  # Fiscal Order/Prescription
  frequency_code: ""  # F3, F4, F5, F9, F10, etc.
  frequency_limit: ""
  quantity_limit: ""
  special_notes: ""

medicaid_brooklyn:
  covered: true
  prior_auth: false
  dvs_authorization: false
  face_to_face: false
  documentation_type: ""
  frequency_code: ""
  frequency_limit: ""
  quantity_limit: ""
  special_notes: ""

# Quick flags for filtering/searching
requires_prior_auth_any: false
requires_face_to_face_any: false  # (Under Review) if uncertain
requires_specialty_eval: false  # (Under Review) if uncertain
requires_resna_atp: false  # (Under Review) if uncertain
discontinued: false  # Set to true if code is obsolete

# Data Quality Tracking
# See DATA_INTEGRITY_POLICY.md for tagging guidelines
# Use (Under Review - High Confidence) for Tier 2 (high confidence inferences)
# Use (Under Review) for Tier 3 (educated guesses)
# No tag needed for Tier 1 (direct from source)
data_quality:
  primary_source: "[Document name] (lines X-Y)"
  source_verified_fields: []  # Fields directly from source (Tier 1)
  high_confidence_fields: []  # Fields with (Under Review - High Confidence) tag (Tier 2)
  needs_verification: []  # Fields with (Under Review) tag or blank (Tier 3-4)
  external_searches: []  # List any web searches performed with URLs
  field_notes:
    # Add explanations for tagged fields here
    # Example: icd10_codes: "Logically related to conditions mentioned in source"
    # Example: quantity_limit: "Not explicitly stated; typical pattern for this equipment type"
  last_verified: "2025-10-29"
  verified_by: ""  # Your name or "Claude Code"

# Metadata
last_updated: "2025-10-29"
source_documents: []
reviewed_by: ""  # Your initials or name
---

# [HCPCS Code] - [Item Common Name]

## Clinical Overview

[Brief 1-2 sentence description of what this item is and when it's used]

## Coverage Details

### Medicare Coverage Criteria

**Clinical Requirements:**
- [Requirement 1]
- [Requirement 2]

**Documentation Requirements:**
- [Documentation need 1]
- [Documentation need 2]

**Important Notes:**
- [Special consideration 1]
- [Special consideration 2]

### NY Medicaid (Nassau County)

**Clinical Requirements:**
- [Requirement 1]
- [Requirement 2]

**Documentation Requirements:**
- [Documentation need 1]
- [Documentation need 2]

**Important Notes:**
- [Special consideration 1]
- [Special consideration 2]

### NY Medicaid (Brooklyn)

[If identical to Nassau, state: "Coverage criteria identical to Nassau County"]

[If different, provide full details]

## Prescription Checklist for Physicians

**Required Elements:**
- [ ] ICD-10 diagnosis code(s)
- [ ] Medical necessity statement
- [ ] Physician signature and date
- [ ] NPI number
- [ ] [Other requirements]

**For Medicare:**
- [ ] [Medicare-specific requirement]

**For Medicaid:**
- [ ] [Medicaid-specific requirement]

## Common Denial Reasons

1. **"Denial reason 1"** - Explanation
2. **"Denial reason 2"** - Explanation

## Tips for Approval

**Medicare:**
- Tip 1
- Tip 2

**Medicaid:**
- Tip 1
- Tip 2

## Related Codes

- **[HCPCS]** - [Description and relationship]
- **[HCPCS]** - [Description and relationship]

## References

- [Policy reference 1]
- [Policy reference 2]
