#!/bin/bash

# E0946 - Fracture Frame, Dual with Cross Bars
cat > E0946.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0946"
hcpcs_description: "Fracture frame, dual with cross bars, attached to bed (includes Balkan, four poster)"
item_common_name: "Dual Fracture Frame with Cross Bars (Balkan/Four Poster)"

clinical_indications:
  - "Complex fractures requiring multi-directional traction"
  - "Spinal fractures - thoracic (S22.xxx), lumbar (S32.xxx)"
  - "Multiple trauma with fractures"
  - "Post-spinal surgery stabilization"
  - "Balkan frame or Four Poster configuration"

icd10_primary:
  - "S22.xxx - Fracture of rib(s), sternum and thoracic spine"
  - "S32.xxx - Fracture of lumbar spine and pelvis"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered when medically necessary for complex multi-directional traction. More complex than standard fracture frames."

medicaid_nassau:
  covered: true
  prior_auth: "true - prior approval required"
  dvs_authorization: false
  frequency_code: "F3 - once per 5 years rental"
  frequency_limit: "Once per 5 years rental"
  special_notes: "PRIOR APPROVAL REQUIRED. F3 frequency (once per 5 years rental). Documentation: surgical/orthopedic note detailing fracture complexity, specific frame configuration needed (Balkan vs Four Poster), traction protocol, home setup feasibility."

medicaid_brooklyn:
  covered: true
  prior_auth: "true - prior approval required"
  frequency_code: "F3 - once per 5 years rental"
  special_notes: "Same as Nassau. PA required."

requires_prior_auth_any: "true for Medicaid"
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 319-323)"
  source_verified_fields: ["medicaid_pa_required", "f3_once_per_5years", "fracture_complexity", "specific_frame_configuration", "traction_protocol", "home_setup_feasibility"]
last_updated: "2025-10-30"
---

# E0946 - Dual Fracture Frame with Cross Bars (Balkan/Four Poster)

## 🚨 MEDICAID: PRIOR APPROVAL REQUIRED

## Clinical Overview
Dual fracture frame with cross bars (Balkan or Four Poster configuration) for complex fractures requiring multi-directional traction. More complex than standard frames.

**Medicaid:** **PA REQUIRED**, F3 (once per 5 years rental)

## Coverage Details

### Medicare
**Covered:** Yes when medically necessary
**Requirements:** Medical necessity, complex fracture documentation

### NY Medicaid
**Covered:** Yes with PA
**Requirements:**
- **PRIOR APPROVAL REQUIRED**
- **F3 frequency:** Once per 5 years rental
- Surgical/orthopedic note detailing fracture complexity
- Specific frame configuration needed (Balkan vs Four Poster)
- Traction protocol
- Home setup feasibility assessment

## Prescription Checklist
- [ ] **Complex fracture classification documented**
- [ ] **Specific frame configuration specified** (Balkan or Four Poster)
- [ ] Traction protocol with multi-directional requirements
- [ ] Home setup feasibility (space, caregiver availability)
- [ ] Why simpler fracture frame (E0920, E0930) inadequate

## References
- Source: DM20, DM21, DM22.md (lines 319-323)
EOF

# E0947 - Fracture Frame Attachment for Complex Pelvic Traction
cat > E0947.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0947"
hcpcs_description: "Fracture frame attachment for complex pelvic traction"
item_common_name: "Complex Pelvic Traction Attachment (Accessory)"

clinical_indications:
  - "Complex pelvic fractures - multiple pelvic fractures (S32.810x)"
  - "Acetabulum fractures (S32.82xx)"
  - "Unstable pelvic ring injuries"
  - "Specialized attachment for multi-point pelvic stabilization"

icd10_primary:
  - "S32.810x - Multiple fractures of pelvis with disruption of pelvic ring"
  - "S32.82xx - Fracture of acetabulum"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered as accessory to fracture frame when medically necessary. Requires fracture frame on file (E0920, E0930, E0946)."

medicaid_nassau:
  covered: true
  prior_auth: "true - prior approval required (underlined)"
  dvs_authorization: false
  frequency_code: "F3 - once per 5 years"
  frequency_limit: "Once per 5 years"
  special_notes: "PRIOR APPROVAL REQUIRED. F3 frequency (once per 5 years). Documentation: complex pelvic fracture classification, orthopedic surgical plan, specific attachment specifications, weight/force requirements."

medicaid_brooklyn:
  covered: true
  prior_auth: "true - prior approval required"
  frequency_code: "F3 - once per 5 years"
  special_notes: "Same as Nassau. PA required."

requires_prior_auth_any: "true for Medicaid"
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 327-331)"
  source_verified_fields: ["medicaid_pa_required_underlined", "accessory_fracture_frame", "f3_once_per_5years", "complex_pelvic_fracture_classification", "weight_force_requirements"]
last_updated: "2025-10-30"
---

# E0947 - Complex Pelvic Traction Attachment (Accessory)

## 🚨 MEDICAID: PRIOR APPROVAL REQUIRED

## Clinical Overview
Specialized attachment for complex pelvic traction - multi-point pelvic stabilization for unstable pelvic ring injuries and acetabular fractures.

**Accessory:** Requires fracture frame on file (E0920, E0930, E0946)
**Medicaid:** **PA REQUIRED**, F3 (once per 5 years)

## Coverage Details

### Medicare
**Covered:** Yes as accessory to fracture frame when medically necessary
**Requirements:** Fracture frame on file, medical necessity

### NY Medicaid
**Covered:** Yes with PA
**Requirements:**
- **PRIOR APPROVAL REQUIRED**
- **F3 frequency:** Once per 5 years
- Complex pelvic fracture classification (Young-Burgess, Tile, etc.)
- Orthopedic surgical plan
- Specific attachment specifications
- Weight/force requirements

## Prescription Checklist
- [ ] **Active fracture frame documented** (E0920, E0930, or E0946)
- [ ] **Complex pelvic fracture classification**
- [ ] Unstable pelvic ring or acetabular fracture documented
- [ ] Orthopedic surgical plan with traction specifications
- [ ] Multi-point stabilization requirements
- [ ] Weight/force specifications for each traction point

## References
- Source: DM20, DM21, DM22.md (lines 327-331)
EOF

# E0948 - Fracture Frame Attachment for Complex Cervical Traction
cat > E0948.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0948"
hcpcs_description: "Fracture frame attachment for complex cervical traction"
item_common_name: "Complex Cervical Traction Attachment (Accessory)"

clinical_indications:
  - "Complex cervical fractures (S12.xxx cervical vertebral fractures)"
  - "Cervical spine trauma requiring halo fixation preparation"
  - "Unstable cervical injuries"
  - "Specialized cervical traction attachment for fracture frames"

icd10_primary:
  - "S12.xxx - Fracture of cervical vertebra and other parts of neck"
  - "S12.000A - Unspecified displaced fracture of first cervical vertebra"
  - "S12.100A - Unspecified displaced fracture of second cervical vertebra"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered as accessory to fracture frame when medically necessary. Requires fracture frame on file (E0920, E0930, E0946)."

medicaid_nassau:
  covered: true
  prior_auth: "true - prior approval required (underlined)"
  dvs_authorization: false
  frequency_code: "F3 - once per 5 years"
  frequency_limit: "Once per 5 years"
  special_notes: "PRIOR APPROVAL REQUIRED. F3 frequency (once per 5 years). Documentation: cervical fracture imaging (X-ray, CT, MRI), neurosurgical/orthopedic evaluation, stability assessment, treatment plan with traction specifications."

medicaid_brooklyn:
  covered: true
  prior_auth: "true - prior approval required"
  frequency_code: "F3 - once per 5 years"
  special_notes: "Same as Nassau. PA required."

requires_prior_auth_any: "true for Medicaid"
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 335-339)"
  source_verified_fields: ["medicaid_pa_required_underlined", "accessory_fracture_frame", "f3_once_per_5years", "cervical_fracture_imaging", "stability_assessment", "halo_fixation_preparation"]
last_updated: "2025-10-30"
---

# E0948 - Complex Cervical Traction Attachment (Accessory)

## 🚨 MEDICAID: PRIOR APPROVAL REQUIRED

## Clinical Overview
Specialized attachment for complex cervical traction - for cervical fractures, spine trauma, halo fixation preparation. More complex than standard cervical traction.

**Accessory:** Requires fracture frame on file (E0920, E0930, E0946)
**Medicaid:** **PA REQUIRED**, F3 (once per 5 years)

## Coverage Details

### Medicare
**Covered:** Yes as accessory to fracture frame when medically necessary
**Requirements:** Fracture frame on file, medical necessity

### NY Medicaid
**Covered:** Yes with PA
**Requirements:**
- **PRIOR APPROVAL REQUIRED**
- **F3 frequency:** Once per 5 years
- Cervical fracture imaging (X-ray, CT, MRI)
- Neurosurgical/orthopedic evaluation
- Stability assessment
- Treatment plan with traction specifications

## Prescription Checklist
- [ ] **Active fracture frame documented** (E0920, E0930, or E0946)
- [ ] **Cervical fracture imaging** (X-ray, CT, MRI) with radiologist report
- [ ] Fracture classification (Denis, AO/ASIF, etc.)
- [ ] Neurosurgical or orthopedic spine specialist evaluation
- [ ] Stability assessment (stable vs unstable fracture pattern)
- [ ] Treatment plan: pre-halo traction, definitive traction, etc.
- [ ] Traction force/weight specifications

## Safety Considerations
**Cervical spine trauma** - requires specialist evaluation
**Monitoring:** Neurological status, pain, alignment

## References
- Source: DM20, DM21, DM22.md (lines 335-339)
EOF

echo "All 3 Batch 4 files created successfully"
