#!/bin/bash

# E0920 - Fracture Frame, Attached to Bed, Includes Weights
cat > E0920.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0920"
hcpcs_description: "Fracture frame, attached to bed, includes weights"
item_common_name: "Bed-Attached Fracture Frame with Weights"

clinical_indications:
  - "Complex fractures requiring multiple-point traction"
  - "Spinal fractures - vertebral (S32.0xx)"
  - "Pelvic ring fractures (S32.810x)"
  - "Post-surgical orthopedic stabilization requiring weighted traction"

icd10_primary:
  - "S32.0xx - Fracture of lumbar vertebra"
  - "S32.810x - Multiple fractures of pelvis"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered when medically necessary for complex fracture management. Orthopedic surgical note with traction protocol required."

medicaid_nassau:
  covered: true
  prior_auth: "false - direct bill, no PA"
  dvs_authorization: false
  special_notes: "Direct bill, no PA. Documentation: orthopedic surgical note, specific fracture configuration, traction protocol with weight specifications, expected duration."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - direct bill, no PA"
  special_notes: "Same as Nassau. Direct bill."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 271-275)"
  source_verified_fields: ["medicare_covered", "medicaid_direct_bill", "orthopedic_surgical_note", "traction_protocol", "weight_specifications"]
last_updated: "2025-10-30"
---

# E0920 - Bed-Attached Fracture Frame with Weights

## Clinical Overview
Fracture frame attached to bed with included weights for complex multi-point traction. For complex spinal/pelvic fractures and post-surgical stabilization.

**Coverage:** Direct bill both payers - no PA required

## Coverage Details

### Medicare
**Covered:** Yes when medically necessary
**Requirements:** Orthopedic surgical note, traction protocol

### NY Medicaid
**Covered:** Yes - direct bill, no PA
**Requirements:** Orthopedic surgical note, specific fracture configuration, traction protocol with weight specifications, expected duration

## References
- Source: DM20, DM21, DM22.md (lines 271-275)
EOF

# E0930 - Fracture Frame, Freestanding
cat > E0930.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0930"
hcpcs_description: "Fracture frame, free standing"
item_common_name: "Free-Standing Fracture Frame"

clinical_indications:
  - "Complex fractures requiring free-standing configuration"
  - "Spinal fractures - thoracic (S22.xxx), lumbar (S32.xxx)"
  - "Pelvic fractures"
  - "When bed-attached frame not suitable for patient's bed or home setup"

icd10_primary:
  - "S22.xxx - Fracture of thoracic vertebra"
  - "S32.xxx - Fracture of lumbar spine and pelvis"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered when medically necessary. Used when bed-attached frame not suitable due to bed type or home constraints."

medicaid_nassau:
  covered: true
  prior_auth: "false - direct bill, no PA"
  dvs_authorization: false
  special_notes: "Direct bill, no PA. Documentation: orthopedic evaluation, fracture management plan, home assessment for space/safety, caregiver training documentation."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - direct bill, no PA"
  special_notes: "Same as Nassau. Direct bill."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 279-283)"
  source_verified_fields: ["medicare_covered", "medicaid_direct_bill", "home_assessment_space_safety", "caregiver_training"]
last_updated: "2025-10-30"
---

# E0930 - Free-Standing Fracture Frame

## Clinical Overview
Free-standing fracture frame for complex spinal/pelvic fractures when bed-attached not suitable. Requires adequate home space.

**Coverage:** Direct bill both payers - no PA required

## Coverage Details

### Medicare
**Covered:** Yes when medically necessary
**Requirements:** Medical necessity, fracture management plan

### NY Medicaid
**Covered:** Yes - direct bill, no PA
**Requirements:** Orthopedic evaluation, fracture management plan, home assessment (space/safety), caregiver training

## Tips
**Home assessment critical** - ensure adequate space for free-standing unit
**Caregiver training** - proper setup and maintenance required

## References
- Source: DM20, DM21, DM22.md (lines 279-283)
EOF

# E0941 - Gravity Assisted Traction Device
cat > E0941.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0941"
hcpcs_description: "Gravity assisted traction device, any type"
item_common_name: "Gravity/Inversion Traction Device"

clinical_indications:
  - "Chronic back pain with radiculopathy - lumbar (M54.16), cervical (M54.12)"
  - "Disc herniation - lumbar (M51.26), cervical (M50.12x)"
  - "Spinal stenosis (M48.06, M48.07)"
  - "Inversion-type or gravity-based spinal decompression devices"

icd10_primary:
  - "M54.16 - Radiculopathy, lumbar region"
  - "M54.12 - Radiculopathy, cervical region"
  - "M51.26 - Other intervertebral disc displacement, lumbar region"
  - "M50.12x - Cervical disc disorder with radiculopathy"
  - "M48.06 - Spinal stenosis, lumbar region"
  - "M48.07 - Spinal stenosis, lumbosacral region"

medicare:
  covered: "limited - special coverage instructions"
  prior_auth: false
  special_notes: "Special coverage instructions apply. May have LIMITED coverage - non-surgical decompression often NOT covered by Medicare. Verify coverage before ordering."

medicaid_nassau:
  covered: true
  prior_auth: "false - DVS authorization required (changed from PA)"
  dvs_authorization: "true - DVS authorization (#)"
  frequency_code: "F26 - continuous monthly rental"
  frequency_limit: "Continuous monthly rental"
  rental_rate: "$1.73/day"
  special_notes: "DVS authorization required. F26 continuous monthly rental ($1.73/day). Documentation: conservative therapy failure, specific diagnosis, ability to safely use device, contraindications ruled out (cardiovascular, eye conditions)."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - DVS authorization"
  dvs_authorization: true
  frequency_code: "F26 - continuous monthly rental"
  special_notes: "Same as Nassau. F26 frequency."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 287-291)"
  source_verified_fields: ["medicare_limited_coverage", "medicaid_dvs_changed_from_pa", "f26_continuous_monthly", "rental_1.73_day", "conservative_therapy_failure", "contraindications_cardiovascular_eye"]
last_updated: "2025-10-30"
---

# E0941 - Gravity/Inversion Traction Device

## ⚠️ MEDICARE: LIMITED COVERAGE (Verify before ordering)

## Clinical Overview
Gravity-assisted traction device (inversion table, gravity decompression) for chronic back pain with radiculopathy, disc herniation, spinal stenosis.

**Medicare:** LIMITED coverage - often NOT covered
**Medicaid:** DVS authorization, F26 continuous monthly rental

## Coverage Details

### Medicare
**Covered:** LIMITED - special coverage instructions
**WARNING:** Non-surgical decompression often NOT covered by Medicare - **verify coverage before ordering**

### NY Medicaid
**Covered:** Yes with DVS authorization
**F26 frequency:** Continuous monthly rental ($1.73/day)
**Requirements:**
- DVS authorization required (changed from PA)
- Conservative therapy failure documented
- Specific diagnosis
- Ability to safely use device confirmed
- **Contraindications ruled out:** Cardiovascular conditions, eye conditions

## Safety Considerations
**MUST rule out contraindications:**
- Cardiovascular disease
- Eye conditions (glaucoma, retinal detachment risk)
- Pregnancy
- Severe osteoporosis

## References
- Source: DM20, DM21, DM22.md (lines 287-291)
EOF

# E0942 - Cervical Head Harness/Halter
cat > E0942.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0942"
hcpcs_description: "Cervical head harness/halter"
item_common_name: "Cervical Traction Head Harness (Accessory)"

clinical_indications:
  - "Accessory for cervical traction devices (E0840, E0849, E0850, E0855, E0860)"
  - "Cervical disc disorders (M50.1x)"
  - "Cervical radiculopathy (M54.12)"
  - "Replacement or initial issue for cervical traction therapy"

icd10_primary:
  - "M50.1x - Cervical disc disorder with radiculopathy"
  - "M54.12 - Radiculopathy, cervical region"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered as accessory to covered cervical traction device. Requires active cervical traction prescription on file."

medicaid_nassau:
  covered: true
  prior_auth: "false - DVS authorization required"
  dvs_authorization: "true - DVS authorization (#)"
  frequency_code: "F3 - once per 5 years"
  frequency_limit: "Once per 5 years"
  rental_rate: "$0.09/day"
  purchase_price: "$20.57"
  special_notes: "DVS authorization required. F3 frequency (once per 5 years). Rental $0.09/day or purchase $20.57. Documentation: active cervical traction device use, medical necessity for new/replacement harness, proper fitting documented."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - DVS authorization"
  dvs_authorization: true
  frequency_code: "F3 - once per 5 years"
  special_notes: "Same as Nassau. F3 frequency."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 295-299)"
  source_verified_fields: ["accessory_cervical_traction", "medicare_covered_accessory", "medicaid_dvs", "f3_once_per_5years", "rental_0.09_day", "purchase_20.57"]
last_updated: "2025-10-30"
---

# E0942 - Cervical Traction Head Harness (Accessory)

## Clinical Overview
Cervical head harness/halter accessory for use with cervical traction devices. Initial issue or replacement component.

**Coverage:** Covered both payers as accessory to covered cervical traction device
**Medicaid:** DVS authorization, F3 (once per 5 years)

## Coverage Details

### Medicare
**Covered:** Yes as accessory to covered cervical traction device
**Requirements:** Active cervical traction prescription on file

### NY Medicaid
**Covered:** Yes with DVS authorization
**F3 frequency:** Once per 5 years
**Pricing:** Rental $0.09/day or purchase $20.57
**Requirements:** Active cervical traction device use, medical necessity for new/replacement, proper fitting documented

## Prescription Requirements
- [ ] Active cervical traction device documented (E0840, E0849, E0850, E0855, E0860)
- [ ] Medical necessity for new/replacement harness
- [ ] Proper fitting measurements/documentation

## References
- Source: DM20, DM21, DM22.md (lines 295-299)
EOF

# E0944 - Pelvic Belt/Harness/Boot
cat > E0944.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0944"
hcpcs_description: "Pelvic belt/harness/boot"
item_common_name: "Pelvic Traction Belt/Harness (Accessory)"

clinical_indications:
  - "Accessory for pelvic traction (E0890, E0900)"
  - "Pelvic fractures (S32.xxx)"
  - "Hip pathology, lumbar radiculopathy requiring pelvic stabilization"
  - "Component of Buck's or other pelvic traction systems"

icd10_primary:
  - "S32.xxx - Fracture of lumbar spine and pelvis"
  - "S72.0xx - Fracture of head/neck of femur"
  - "M51.16 - Intervertebral disc disorders with radiculopathy, lumbar region"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered as accessory to covered pelvic traction device. Requires active pelvic traction prescription on file."

medicaid_nassau:
  covered: true
  prior_auth: "false - DVS authorization required"
  dvs_authorization: "true - DVS authorization (#)"
  frequency_code: "F3 - once per 5 years"
  frequency_limit: "Once per 5 years"
  rental_rate: "$0.18/day"
  purchase_price: "$54.90"
  special_notes: "DVS authorization required. F3 frequency (once per 5 years). Rental $0.18/day or purchase $54.90. Documentation: active pelvic traction order, size/fit specifications, replacement need if applicable."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - DVS authorization"
  dvs_authorization: true
  frequency_code: "F3 - once per 5 years"
  special_notes: "Same as Nassau. F3 frequency."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 303-307)"
  source_verified_fields: ["accessory_pelvic_traction", "medicare_covered_accessory", "medicaid_dvs", "f3_once_per_5years", "rental_0.18_day", "purchase_54.90"]
last_updated: "2025-10-30"
---

# E0944 - Pelvic Traction Belt/Harness (Accessory)

## Clinical Overview
Pelvic belt/harness/boot accessory for use with pelvic traction devices (Buck's traction, etc.). Component of pelvic traction systems.

**Coverage:** Covered both payers as accessory to covered pelvic traction device
**Medicaid:** DVS authorization, F3 (once per 5 years)

## Coverage Details

### Medicare
**Covered:** Yes as accessory to covered pelvic traction device
**Requirements:** Active pelvic traction prescription on file

### NY Medicaid
**Covered:** Yes with DVS authorization
**F3 frequency:** Once per 5 years
**Pricing:** Rental $0.18/day or purchase $54.90
**Requirements:** Active pelvic traction order, size/fit specifications, replacement need if applicable

## Prescription Requirements
- [ ] Active pelvic traction device documented (E0890, E0900)
- [ ] Size/fit specifications
- [ ] Replacement need if applicable

## References
- Source: DM20, DM21, DM22.md (lines 303-307)
EOF

# E0945 - Extremity Belt/Harness
cat > E0945.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0945"
hcpcs_description: "Extremity belt/harness"
item_common_name: "Extremity Traction Belt/Harness (Accessory)"

clinical_indications:
  - "Accessory for extremity traction (E0870, E0880)"
  - "Lower extremity fractures - femur (S72.xxx), tibia/fibula (S82.xxx)"
  - "Dislocations requiring traction"
  - "Attachment component for extremity traction systems"

icd10_primary:
  - "S72.xxx - Fracture of femur"
  - "S82.xxx - Fracture of lower leg"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered as accessory to covered extremity traction device. Requires active extremity traction prescription on file."

medicaid_nassau:
  covered: true
  prior_auth: "false - DVS authorization required"
  dvs_authorization: "true - DVS authorization (#)"
  frequency_code: "F3 - once per 5 years"
  frequency_limit: "Once per 5 years"
  rental_rate: "$0.15/day"
  purchase_price: "$45.09"
  special_notes: "DVS authorization required. F3 frequency (once per 5 years). Rental $0.15/day or purchase $45.09. Documentation: active extremity traction prescription, anatomical specifications, proper fit/application training documented."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - DVS authorization"
  dvs_authorization: true
  frequency_code: "F3 - once per 5 years"
  special_notes: "Same as Nassau. F3 frequency."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 311-315)"
  source_verified_fields: ["accessory_extremity_traction", "medicare_covered_accessory", "medicaid_dvs", "f3_once_per_5years", "rental_0.15_day", "purchase_45.09"]
last_updated: "2025-10-30"
---

# E0945 - Extremity Traction Belt/Harness (Accessory)

## Clinical Overview
Extremity belt/harness accessory for use with extremity traction devices. Attachment component for lower extremity traction systems.

**Coverage:** Covered both payers as accessory to covered extremity traction device
**Medicaid:** DVS authorization, F3 (once per 5 years)

## Coverage Details

### Medicare
**Covered:** Yes as accessory to covered extremity traction device
**Requirements:** Active extremity traction prescription on file

### NY Medicaid
**Covered:** Yes with DVS authorization
**F3 frequency:** Once per 5 years
**Pricing:** Rental $0.15/day or purchase $45.09
**Requirements:** Active extremity traction prescription, anatomical specifications, proper fit/application training documented

## Prescription Requirements
- [ ] Active extremity traction device documented (E0870, E0880)
- [ ] Anatomical specifications (which extremity, patient measurements)
- [ ] Proper fit and application training documented

## References
- Source: DM20, DM21, DM22.md (lines 311-315)
EOF

echo "All 6 Batch 3 files created successfully"
