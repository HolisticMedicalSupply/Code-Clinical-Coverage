#!/bin/bash

# E0840 - Medicare NOT reasonable and necessary
cat > E0840.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0840"
hcpcs_description: "Traction frame, attached to headboard, cervical"
item_common_name: "Cervical Traction Frame (Headboard-Attached)"

clinical_indications:
  - "Musculoskeletal/neurologic impairment requiring cervical traction"
  - "Cervical disc disorders (M50.10-M50.13)"
  - "Cervical radiculopathy (M54.12), cervicalgia (M54.2), cervical spondylosis (M47.812)"

icd10_primary:
  - "M50.10-M50.13 - Cervical disc disorder with/without myelopathy or radiculopathy"
  - "M54.12 - Radiculopathy, cervical region"
  - "M54.2 - Cervicalgia"
  - "M47.812 - Spondylosis without myelopathy, cervical region"

medicare:
  covered: "false - NOT reasonable and necessary"
  prior_auth: "N/A"
  special_notes: "Medicare considers E0840 NOT reasonable and necessary - over-door device E0860 preferred. No proven clinical advantage for E0840 over E0860. Medicare will likely deny claims."

medicaid_nassau:
  covered: true
  prior_auth: "false - direct bill, no PA"
  dvs_authorization: false
  documentation_type: "Fiscal Order"
  frequency_limit: "Based on medical necessity (Under Review - High Confidence)"
  special_notes: "Direct bill, no PA required. Signed fiscal order within 30 days. Documentation: diagnosis, treatment plan, patient education. Patient demonstrates ability to tolerate device."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - direct bill, no PA"
  special_notes: "Same as Nassau County."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 187-192)"
  source_verified_fields: ["medicare_not_reasonable_necessary", "e0860_preferred", "no_proven_advantage", "medicaid_direct_bill_no_pa"]
last_updated: "2025-10-30"
---

# E0840 - Cervical Traction Frame (Headboard-Attached)

## 🚨 MEDICARE: NOT REASONABLE AND NECESSARY (E0860 Preferred)

## Clinical Overview
Cervical traction frame that attaches to headboard. **Medicare considers NOT reasonable and necessary** - over-door device (E0860) preferred due to cost-effectiveness and no proven clinical advantage for E0840.

**Key Issue:** Medicare will likely **deny** E0840 claims - **use E0860 (overdoor) instead**

## Coverage Details

### Medicare Coverage
**NOT COVERED** - Medicare considers NOT reasonable and necessary
- E0860 (overdoor) is preferred device
- No proven clinical advantage for E0840
- Expect denials

### NY Medicaid
**Covered:** Yes - direct bill, no PA
**Requirements:** Fiscal order, diagnosis, treatment plan, patient education

## Tips for Prescribers
**Medicare patients:** **Use E0860 (overdoor device) instead** - cost-effective, covered
**Medicaid patients:** E0840 allowed but E0860 may be better option

## References
- Source: DM20, DM21, DM22.md (lines 187-192)
EOF

# E0849 - Pneumatic cervical traction - Medicaid PA required
cat > E0849.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0849"
hcpcs_description: "Cervical traction equipment, free-standing, pneumatic, applying traction force to other than mandible or maxilla"
item_common_name: "Free-Standing Pneumatic Cervical Traction"

clinical_indications:
  - "Cervical disc herniation with radiculopathy (M50.121-M50.123)"
  - "Severe cervical radiculopathy (M54.12)"
  - "Post-cervical surgery (Z98.1)"
  - "Requires greater traction force with pneumatic controlled application"

icd10_primary:
  - "M50.121-M50.123 - Cervical disc disorder with radiculopathy"
  - "M54.12 - Radiculopathy, cervical region"
  - "Z98.1 - Arthrodesis status"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered with additional criteria beyond standard cervical traction. Specific diagnosis and traction force needs required. More complex than basic cervical traction devices."

medicaid_nassau:
  covered: true
  prior_auth: "true - prior approval required (underlined)"
  dvs_authorization: true
  frequency_code: "F2 - twice per lifetime rental"
  frequency_limit: "Twice per lifetime rental"
  special_notes: "PRIOR APPROVAL REQUIRED. F2 frequency (twice per lifetime rental). Must document failure/inadequacy of simpler devices (E0860). Order with specific force requirements."

medicaid_brooklyn:
  covered: true
  prior_auth: "true - prior approval required"
  frequency_code: "F2 - twice per lifetime rental"
  special_notes: "Same as Nassau. PA required."

requires_prior_auth_any: "true for Medicaid"
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 195-200)"
  source_verified_fields: ["medicaid_pa_required", "f2_twice_lifetime", "failure_simpler_devices_e0860", "specific_force_requirements", "pneumatic_controlled", "greater_traction_force"]
last_updated: "2025-10-30"
---

# E0849 - Free-Standing Pneumatic Cervical Traction

## 🚨 MEDICAID: PRIOR APPROVAL REQUIRED

## Clinical Overview
Free-standing pneumatic cervical traction for severe cases requiring greater traction force with pneumatic control. More complex than standard devices.

**Medicaid:** **PA REQUIRED**, F2 (twice per lifetime rental)

## Coverage Details

### Medicare
**Covered:** Yes with additional criteria
**Requirements:** Specific diagnosis, traction force needs documented

### NY Medicaid
**Covered:** Yes with PA
**Requirements:**
- **PRIOR APPROVAL REQUIRED**
- **F2 frequency:** Twice per lifetime rental
- **Must document failure/inadequacy of simpler devices (E0860)**
- Order with specific force requirements

## Prescription Checklist
- [ ] **Document E0860 (overdoor) trial failure**
- [ ] **Specific traction force requirements**
- [ ] Severe cervical radiculopathy or post-surgical status
- [ ] Why pneumatic control needed

## References
- Source: DM20, DM21, DM22.md (lines 195-200)
EOF

# E0850 - Free standing cervical - Medicare NOT reasonable and necessary
cat > E0850.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0850"
hcpcs_description: "Traction stand, free standing, for cervical traction"
item_common_name: "Free-Standing Cervical Traction Stand"

clinical_indications:
  - "Cervical disc disorders (M50.1x)"
  - "Cervical radiculopathy (M54.12), cervical strain (S13.4)"
  - "Cervical spondylosis without myelopathy (M47.812)"
  - "For patients requiring free-standing unit due to home setup limitations"

icd10_primary:
  - "M50.1x - Cervical disc disorders"
  - "M54.12 - Radiculopathy, cervical region"
  - "S13.4 - Sprain of ligaments of cervical spine"
  - "M47.812 - Spondylosis without myelopathy, cervical region"

medicare:
  covered: "false - NOT reasonable and necessary"
  prior_auth: "N/A"
  special_notes: "Medicare considers E0850 NOT reasonable and necessary - over-door device E0860 preferred. Expect denials."

medicaid_nassau:
  covered: true
  prior_auth: "false - direct bill, no PA"
  dvs_authorization: false
  special_notes: "Direct bill, no PA. Documentation must justify why over-door device (E0860) inadequate. Signed fiscal order. Home assessment may be required."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - direct bill, no PA"
  special_notes: "Same as Nassau."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 203-208)"
  source_verified_fields: ["medicare_not_reasonable_necessary", "e0860_preferred", "medicaid_direct_bill", "justify_why_overdoor_inadequate", "home_assessment_may_required"]
last_updated: "2025-10-30"
---

# E0850 - Free-Standing Cervical Traction Stand

## 🚨 MEDICARE: NOT REASONABLE AND NECESSARY (E0860 Preferred)

## Clinical Overview
Free-standing cervical traction stand. **Medicare considers NOT reasonable and necessary** - E0860 (overdoor) preferred.

**Key Issue:** Medicare will likely **deny** - **use E0860 instead**

## Coverage Details

### Medicare
**NOT COVERED** - NOT reasonable and necessary, E0860 preferred

### NY Medicaid
**Covered:** Yes - direct bill
**Requirements:** Must **justify why overdoor (E0860) inadequate**, fiscal order, home assessment may be required

## Tips
**Medicare:** **Use E0860** instead
**Medicaid:** Document why overdoor inadequate (door frame issues, home setup limitations, etc.)

## References
- Source: DM20, DM21, DM22.md (lines 203-208)
EOF

# E0855 - Portable cervical traction - Medicaid PA required
cat > E0855.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0855"
hcpcs_description: "Cervical traction equipment not requiring additional stand or frame"
item_common_name: "Portable Cervical Traction (No Stand Required)"

clinical_indications:
  - "Cervical radiculopathy (M54.12)"
  - "Cervical disc disorders (M50.1x)"
  - "Cervicalgia (M54.2), cervical muscle spasm (M62.838)"
  - "Portable/home-use cervical traction devices (e.g., inflatable collar-type)"

icd10_primary:
  - "M54.12 - Radiculopathy, cervical region"
  - "M50.1x - Cervical disc disorders"
  - "M54.2 - Cervicalgia"
  - "M62.838 - Other muscle spasm"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Additional medical necessity criteria apply. Special coverage instructions."

medicaid_nassau:
  covered: true
  prior_auth: "true - prior approval required (underlined)"
  dvs_authorization: true
  frequency_code: "F2 - twice per lifetime rental"
  frequency_limit: "Twice per lifetime rental"
  special_notes: "PRIOR APPROVAL REQUIRED. F2 frequency (twice per lifetime rental). Must document specific medical need, tolerance testing, trial with device. Home therapy plan required."

medicaid_brooklyn:
  covered: true
  prior_auth: "true - prior approval required"
  frequency_code: "F2 - twice per lifetime rental"
  special_notes: "Same as Nassau. PA required."

requires_prior_auth_any: "true for Medicaid"
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 211-216)"
  source_verified_fields: ["medicaid_pa_required", "f2_twice_lifetime", "specific_medical_need", "tolerance_testing", "trial_with_device", "home_therapy_plan"]
last_updated: "2025-10-30"
---

# E0855 - Portable Cervical Traction (No Stand Required)

## 🚨 MEDICAID: PRIOR APPROVAL REQUIRED

## Clinical Overview
Portable cervical traction not requiring stand/frame (e.g., inflatable collar-type). Used for home therapy.

**Medicaid:** **PA REQUIRED**, F2 (twice per lifetime rental)

## Coverage Details

### Medicare
**Covered:** Yes with special coverage instructions

### NY Medicaid
**Covered:** Yes with PA
**Requirements:**
- **PRIOR APPROVAL REQUIRED**
- **F2 frequency:** Twice per lifetime rental
- Specific medical need documented
- Tolerance testing
- Trial with device
- Home therapy plan

## References
- Source: DM20, DM21, DM22.md (lines 211-216)
EOF

# E0856 - Inflatable collar - direct bill both payers
cat > E0856.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0856"
hcpcs_description: "Cervical traction device, cervical collar, with inflatable air bladder"
item_common_name: "Inflatable Cervical Collar Traction Device"

clinical_indications:
  - "Mild to moderate cervical radiculopathy (M54.12)"
  - "Cervical strain (S13.4), cervicalgia (M54.2)"
  - "Post-whiplash syndrome (S13.4)"
  - "For intermittent home cervical traction with adjustable pressure"

icd10_primary:
  - "M54.12 - Radiculopathy, cervical region"
  - "S13.4 - Sprain of ligaments of cervical spine"
  - "M54.2 - Cervicalgia"

medicare:
  covered: true
  prior_auth: false
  special_notes: "Covered under cervical traction LCD. Musculoskeletal/neurologic impairment required."

medicaid_nassau:
  covered: true
  prior_auth: "false - direct bill, no PA"
  dvs_authorization: false
  special_notes: "Direct bill, no PA. Documentation: practitioner order, diagnosis, patient education on inflation/use. Typically prescribed after 1 month clinic treatment."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - direct bill, no PA"
  special_notes: "Same as Nassau. Direct bill."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 219-224)"
  source_verified_fields: ["medicare_covered_cervical_traction_lcd", "medicaid_direct_bill_no_pa", "patient_education_inflation_use", "typically_after_1month_clinic_treatment"]
last_updated: "2025-10-30"
---

# E0856 - Inflatable Cervical Collar Traction Device

## Clinical Overview
Cervical collar with inflatable air bladder for intermittent home cervical traction with adjustable pressure. For mild-moderate cervical conditions.

**Coverage:** Direct bill both Medicare and Medicaid - no PA required

## Coverage Details

### Medicare
**Covered:** Yes under cervical traction LCD
**Requirements:** Musculoskeletal/neurologic impairment

### NY Medicaid
**Covered:** Yes - direct bill, no PA
**Requirements:** Practitioner order, diagnosis, patient education on inflation/use
**Typical use:** After 1 month clinic treatment

## References
- Source: DM20, DM21, DM22.md (lines 219-224)
EOF

# E0860 - Overdoor PREFERRED device
cat > E0860.md << 'EOF'
---
boc_code: "DM21"
boc_category: "TRACTION EQUIPMENT"
hcpcs_code: "E0860"
hcpcs_description: "Traction equipment, overdoor, cervical"
item_common_name: "Overdoor Cervical Traction (PREFERRED DEVICE)"

clinical_indications:
  - "Cervical disc herniation with radiculopathy (M50.121-M50.123)"
  - "Cervicalgia (M54.2)"
  - "Cervical spondylosis (M47.812), cervical strain (S13.4)"
  - "PREFERRED device for home cervical traction due to cost-effectiveness"

icd10_primary:
  - "M50.121-M50.123 - Cervical disc disorder with radiculopathy"
  - "M54.2 - Cervicalgia"
  - "M47.812 - Spondylosis without myelopathy, cervical region"
  - "S13.4 - Sprain of ligaments of cervical spine"

medicare:
  covered: true
  prior_auth: false
  special_notes: "COVERED - PREFERRED DEVICE. LCD requires musculoskeletal/neurologic impairment and demonstrated appropriate use. Medicare considers E0860 most cost-effective cervical traction option."

medicaid_nassau:
  covered: true
  prior_auth: "false - direct bill, no PA"
  dvs_authorization: false
  frequency_code: "F3 - once per 5 years"
  frequency_limit: "Once per 5 years"
  special_notes: "Direct bill, no PA. F3 frequency (once per 5 years). Documentation: signed fiscal order, diagnosis code, patient/caregiver training documented. Typically prescribed after conservative therapy trial."

medicaid_brooklyn:
  covered: true
  prior_auth: "false - direct bill, no PA"
  frequency_code: "F3 - once per 5 years"
  special_notes: "Same as Nassau. F3 frequency."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 227-232)"
  source_verified_fields: ["medicare_preferred_device", "cost_effective", "medicaid_direct_bill_no_pa", "f3_once_per_5years", "patient_caregiver_training", "typically_after_conservative_therapy"]
last_updated: "2025-10-30"
---

# E0860 - Overdoor Cervical Traction (PREFERRED DEVICE)

## ✅ PREFERRED DEVICE - Cost-Effective, Well-Covered

## Clinical Overview
Overdoor cervical traction - **PREFERRED device** for home cervical traction. Medicare considers most cost-effective option with no proven clinical advantage for more complex devices.

**Key Advantage:** Well-covered both payers, cost-effective, straightforward

## Coverage Details

### Medicare
**COVERED - PREFERRED DEVICE**
**Requirements:** Musculoskeletal/neurologic impairment, demonstrated appropriate use

### NY Medicaid
**Covered:** Yes - direct bill, no PA
**F3 frequency:** Once per 5 years
**Requirements:** Fiscal order, diagnosis, patient/caregiver training, typically after conservative therapy trial

## Tips for Prescribers
**First-line choice** for cervical traction - Medicare prefers E0860 over E0840, E0850
**Cost-effective and well-covered**
**Simple home setup** - attaches to door

## References
- Source: DM20, DM21, DM22.md (lines 227-232)
EOF

