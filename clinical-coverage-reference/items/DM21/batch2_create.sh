#!/bin/bash

# E0870 - Traction Frame, Attached to Footboard, Extremity
cat > E0870.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0870"
hcpcs_description: "Traction frame, attached to footboard, extremity traction (e.g., Buck's)"
item_common_name: "Bed-Attached Extremity Traction Frame"

clinical_indications:
  - "Lower extremity fractures - femur (S72.xxx), tibia/fibula (S82.xxx)"
  - "Hip fractures (S72.0xx)"
  - "Post-surgical orthopedic stabilization"
  - "Pre-operative fracture management requiring immobilization"

icd10_primary:
  - "S72.xxx - Fracture of femur"
  - "S82.xxx - Fracture of lower leg (tibia/fibula)"
  - "S72.0xx - Fracture of head/neck of femur"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered as DME when medically necessary for home fracture management. Orthopedic evaluation and treatment plan required. Typically short-term use."

medicaid_nassau:
  covered: true
  prior_auth: "false - direct bill, no PA"
  dvs_authorization: false
  special_notes: "Direct bill, no PA. Documentation: orthopedic evaluation, fracture type/location, treatment plan, expected duration. Typically short-term use."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - direct bill, no PA"
  special_notes: "Same as Nassau. Direct bill."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 237-241)"
  source_verified_fields: ["medicare_covered_dme", "medicaid_direct_bill_no_pa", "orthopedic_evaluation", "fracture_type_location", "typically_short_term"]
last_updated: "2025-10-30"
---

# E0870 - Bed-Attached Extremity Traction Frame

## Clinical Overview
Traction frame attached to footboard for extremity traction (e.g., Buck's traction). For lower extremity fractures requiring home immobilization/stabilization.

**Coverage:** Direct bill both Medicare and Medicaid - no PA required
**Typical use:** Short-term post-fracture or post-surgical

## Coverage Details

### Medicare
**Covered:** Yes as DME when medically necessary
**Requirements:** Orthopedic evaluation, treatment plan

### NY Medicaid
**Covered:** Yes - direct bill, no PA
**Requirements:** Orthopedic evaluation, fracture type/location, treatment plan, expected duration

## References
- Source: DM20, DM21, DM22.md (lines 237-241)
EOF

# E0880 - Traction Stand, Free Standing, Extremity
cat > E0880.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0880"
hcpcs_description: "Traction stand, free standing, extremity traction (e.g., Buck's)"
item_common_name: "Free-Standing Extremity Traction Stand"

clinical_indications:
  - "Lower extremity fractures - femur (S72.xxx), tibia/fibula (S82.xxx)"
  - "Hip fractures (S72.0xx)"
  - "Dislocations requiring continuous traction"
  - "For patients unable to use bed-attached systems due to home setup"

icd10_primary:
  - "S72.xxx - Fracture of femur"
  - "S82.xxx - Fracture of lower leg"
  - "S72.0xx - Fracture of head/neck of femur"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered when medically necessary. Used when bed-attached frame not feasible due to home setup limitations."

medicaid_nassau:
  covered: true
  prior_auth: "false - direct bill, no PA"
  dvs_authorization: false
  frequency_code: "F3 - once per 5 years"
  frequency_limit: "Once per 5 years"
  special_notes: "Direct bill, no PA. F3 frequency (once per 5 years). Documentation: orthopedic order, fracture classification, home assessment confirming adequate space, caregiver training."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - direct bill, no PA"
  frequency_code: "F3 - once per 5 years"
  special_notes: "Same as Nassau. F3 frequency."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 245-249)"
  source_verified_fields: ["medicare_covered", "medicaid_direct_bill", "f3_once_per_5years", "home_assessment", "caregiver_training", "adequate_space"]
last_updated: "2025-10-30"
---

# E0880 - Free-Standing Extremity Traction Stand

## Clinical Overview
Free-standing traction stand for extremity traction. For patients unable to use bed-attached systems due to home setup constraints.

**Coverage:** Direct bill both payers - no PA required
**Medicaid F3 frequency:** Once per 5 years

## Coverage Details

### Medicare
**Covered:** Yes when medically necessary
**Requirements:** Medical necessity documentation

### NY Medicaid
**Covered:** Yes - direct bill, no PA
**F3 frequency:** Once per 5 years
**Requirements:** Orthopedic order, fracture classification, home assessment (adequate space), caregiver training

## Tips
**Home assessment critical** - document adequate space for free-standing unit
**Caregiver training** - required for safe operation

## References
- Source: DM20, DM21, DM22.md (lines 245-249)
EOF

# E0890 - Traction Frame, Attached to Footboard, Pelvic
cat > E0890.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0890"
hcpcs_description: "Traction frame, attached to footboard, pelvic traction"
item_common_name: "Bed-Attached Pelvic Traction Frame (Buck's, Russell's)"

clinical_indications:
  - "Pelvic fractures (S32.xxx)"
  - "Hip fractures (S72.0xx), femur fractures (S72.xxx)"
  - "Lower back conditions requiring pelvic traction"
  - "Pre-operative stabilization"
  - "Buck's traction for hip pathology"

icd10_primary:
  - "S32.xxx - Fracture of lumbar spine and pelvis"
  - "S72.0xx - Fracture of head/neck of femur"
  - "S72.xxx - Fracture of femur"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered for medically necessary home pelvic traction. Must document specific traction type (Buck's, Russell's) and treatment protocol."

medicaid_nassau:
  covered: true
  prior_auth: "false - direct bill, no PA"
  dvs_authorization: false
  frequency_code: "F3 - once per 5 years"
  frequency_limit: "Once per 5 years"
  special_notes: "Direct bill, no PA. F3 frequency (once per 5 years). Documentation: orthopedic/physiatry order, specific traction type (Buck's, Russell's), weight specifications, caregiver availability."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - direct bill, no PA"
  frequency_code: "F3 - once per 5 years"
  special_notes: "Same as Nassau. F3 frequency."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 253-257)"
  source_verified_fields: ["medicare_covered_pelvic_traction", "medicaid_direct_bill", "f3_once_per_5years", "specific_traction_type", "weight_specifications", "caregiver_availability"]
last_updated: "2025-10-30"
---

# E0890 - Bed-Attached Pelvic Traction Frame

## Clinical Overview
Traction frame attached to footboard for pelvic traction (Buck's, Russell's). For pelvic/hip fractures and lower back conditions requiring home traction.

**Coverage:** Direct bill both payers - no PA required
**Medicaid F3 frequency:** Once per 5 years

## Coverage Details

### Medicare
**Covered:** Yes for medically necessary home pelvic traction
**Requirements:** Specific traction type (Buck's, Russell's), treatment protocol

### NY Medicaid
**Covered:** Yes - direct bill, no PA
**F3 frequency:** Once per 5 years
**Requirements:** Orthopedic/physiatry order, specific traction type, weight specifications, caregiver availability

## Prescription Checklist
- [ ] Specific traction type documented (Buck's, Russell's, etc.)
- [ ] Weight specifications for traction force
- [ ] Caregiver availability confirmed
- [ ] Treatment duration estimated

## References
- Source: DM20, DM21, DM22.md (lines 253-257)
EOF

# E0900 - Traction Stand, Free Standing, Pelvic
cat > E0900.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0900"
hcpcs_description: "Traction stand, free standing, pelvic traction (e.g., Buck's)"
item_common_name: "Free-Standing Pelvic Traction Stand (Buck's)"

clinical_indications:
  - "Pelvic fractures (S32.810A, S32.89XA)"
  - "Hip fractures (S72.0xxA)"
  - "Femur fractures (S72.xxx)"
  - "Lumbar disc disorders with radiculopathy (M51.16)"
  - "Free-standing Buck's traction when bed attachment not feasible"

icd10_primary:
  - "S32.810A - Multiple fractures of pelvis"
  - "S32.89XA - Fracture of other parts of pelvis"
  - "S72.0xxA - Fracture of head/neck of femur"
  - "S72.xxx - Fracture of femur"
  - "M51.16 - Intervertebral disc disorders with radiculopathy, lumbar region"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered when medically necessary. Used when bed-attached frame not suitable for patient's bed or home setup."

medicaid_nassau:
  covered: true
  prior_auth: "false - direct bill, no PA"
  dvs_authorization: false
  frequency_code: "F3 - once per 5 years"
  frequency_limit: "Once per 5 years"
  special_notes: "Direct bill, no PA. F3 frequency (once per 5 years). Documentation: orthopedic evaluation, specific traction protocol, weight/force specifications, home setup verification."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - direct bill, no PA"
  frequency_code: "F3 - once per 5 years"
  special_notes: "Same as Nassau. F3 frequency."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 261-265)"
  source_verified_fields: ["medicare_covered", "medicaid_direct_bill", "f3_once_per_5years", "specific_traction_protocol", "weight_force_specifications", "home_setup_verification"]
last_updated: "2025-10-30"
---

# E0900 - Free-Standing Pelvic Traction Stand (Buck's)

## Clinical Overview
Free-standing traction stand for pelvic traction (e.g., Buck's traction). For pelvic/hip/femur fractures and lumbar radiculopathy when bed-attached frame not suitable.

**Coverage:** Direct bill both payers - no PA required
**Medicaid F3 frequency:** Once per 5 years

## Coverage Details

### Medicare
**Covered:** Yes when medically necessary
**Requirements:** Medical necessity documentation, traction protocol

### NY Medicaid
**Covered:** Yes - direct bill, no PA
**F3 frequency:** Once per 5 years
**Requirements:** Orthopedic evaluation, specific traction protocol, weight/force specifications, home setup verification

## Prescription Checklist
- [ ] Specific traction protocol (Buck's, etc.)
- [ ] Weight/force specifications
- [ ] Home setup verification (space for free-standing unit)
- [ ] Why bed-attached frame not suitable

## References
- Source: DM20, DM21, DM22.md (lines 261-265)
EOF

echo "All 4 Batch 2 files created successfully"
