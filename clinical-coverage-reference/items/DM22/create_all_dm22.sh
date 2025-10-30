#!/bin/bash

# E0720 - TENS Device, 2 Lead
cat > E0720.md << 'EOF'
---
boc_code: "DM22"
boc_category: "TRANSCUTANEOUS ELECTRICAL NERVE STIMULATORS (TENS)"
hcpcs_code: "E0720"
hcpcs_description: "Transcutaneous electrical nerve stimulation (TENS) device, 2 lead, localized stimulation"
item_common_name: "TENS Device, 2-Lead (RESTRICTIVE COVERAGE)"

clinical_indications:
  - "Chronic intractable pain >3 months (EXCEPT chronic low back pain - NOT covered Medicare)"
  - "Acute post-operative pain (30 days from surgery only)"
  - "ICD-10: M25.561-M25.562 (knee pain), G89.29 (chronic pain NEC), M79.3 (panniculitis), M79.1 (myalgia), G89.18 (post-op pain acute)"
  - "NY Medicaid ONLY: M17.0-M17.9 (knee osteoarthritis)"
  - "NOT for: M54.5 (low back pain), G43.x (headache), R10.x (abdominal), N94.x (pelvic), M26.62 (TMJ)"

icd10_primary:
  - "M25.561-M25.562 - Pain in knee"
  - "M17.0-M17.9 - Osteoarthritis of knee (NY Medicaid ONLY covered diagnosis)"
  - "G89.29 - Other chronic pain"
  - "M79.3 - Panniculitis, unspecified"
  - "M79.1 - Myalgia"
  - "G89.18 - Other acute postoperative pain"

icd10_excluded:
  - "M54.5 - Low back pain (Medicare NOT covered per NCD 160.27)"
  - "G43.x - Migraine and headache"
  - "R10.x - Abdominal and pelvic pain"
  - "N94.x - Pain and other conditions associated with female genital organs"
  - "M26.62 - Temporomandibular joint arthralgia"

medicare:
  covered: "true - EXCEPT chronic low back pain (CLBP)"
  prior_auth: false
  trial_period_required: true
  trial_period_duration: "30-60 days rental with RR modifier"
  special_notes: "TENS NOT COVERED for chronic low back pain (CLBP) per NCD 160.27 effective 11/20/2021. Trial period REQUIRED: 30 days minimum, max 60 days rental. Post-op use: 30 days only from surgery date. Documentation: pain ≥3 months, failed conservative treatment (PT, meds, rest), moderate-severe ADL impairment, physician assessment of trial effectiveness before purchase. CMN required for purchase (not rental)."

medicaid_nassau:
  covered: "true - ONLY for knee osteoarthritis (M17.0-M17.9)"
  prior_auth: "false - written order required"
  dvs_authorization: false
  diagnosis_restriction: "ONLY M17.0-M17.9 (knee OA) - all other diagnoses NOT covered"
  special_notes: "TENS ONLY COVERED for knee osteoarthritis pain (ICD-10 M17.0-M17.9) effective 11/1/2013. ALL other diagnoses NOT covered by NY Medicaid. Trial period same as Medicare (30-60 days). Written order/prescription required."

medicaid_brooklyn:
  covered: "true - ONLY for knee osteoarthritis (M17.0-M17.9)"
  prior_auth: "false - written order required"
  diagnosis_restriction: "ONLY M17.0-M17.9 (knee OA)"
  special_notes: "Same as Nassau. ONLY knee OA covered."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 352-356)"
  source_verified_fields: ["medicare_not_clbp_ncd_160.27", "medicaid_only_knee_oa_m17", "trial_30to60days", "failed_conservative", "cmn_purchase_not_rental"]
last_updated: "2025-10-30"
---

# E0720 - TENS Device, 2-Lead

## 🚨 CRITICAL COVERAGE RESTRICTIONS

### Medicare:
- **NOT COVERED** for chronic low back pain (CLBP) per NCD 160.27 (11/20/2021)
- **Trial period REQUIRED:** 30-60 days rental before purchase

### NY Medicaid:
- **ONLY COVERED** for knee osteoarthritis (M17.0-M17.9) - effective 11/1/2013
- **ALL OTHER DIAGNOSES NOT COVERED**

## Clinical Overview
2-lead TENS device for localized pain stimulation. Chronic intractable pain >3 months or acute post-op pain (30 days only).

## Coverage Details

### Medicare
**Covered:** Yes (EXCEPT chronic low back pain)
**Excluded Diagnoses:** M54.5 (low back pain), G43.x (headache), R10.x (abdominal), N94.x (pelvic), M26.62 (TMJ)
**Trial Period:** 30-60 days rental with RR modifier REQUIRED before purchase
**Requirements:**
- Pain present ≥3 months
- Failed conservative treatment (PT, medications, rest)
- Moderate-severe ADL impairment
- Physician assessment of trial effectiveness before purchase
- CMN for purchase (not rental)
- Post-op use: 30 days only from surgery date

### NY Medicaid
**Covered:** ONLY for M17.0-M17.9 (knee osteoarthritis)
**NOT Covered:** All other diagnoses
**Trial Period:** 30-60 days rental before purchase
**Requirements:** Written order/prescription, same trial documentation as Medicare

## Prescribing Tips
**Medicare:** Verify diagnosis NOT chronic low back pain
**NY Medicaid:** **ONLY order for knee OA** (M17.0-M17.9) - all other diagnoses will be denied
**Trial:** Document trial effectiveness before authorizing purchase

## References
- Source: DM20, DM21, DM22.md (lines 352-356)
- Medicare NCD 160.27 (effective 11/20/2021) - TENS not covered for CLBP
- NY Medicaid policy (effective 11/1/2013) - TENS only for knee OA
EOF

# E0730 - TENS Device, 4+ Leads
cat > E0730.md << 'EOF'
---
boc_code: "DM22"
boc_category: "TRANSCUTANEOUS ELECTRICAL NERVE STIMULATORS (TENS)"
hcpcs_code: "E0730"
hcpcs_description: "Transcutaneous electrical nerve stimulation (TENS) device, 4 or more leads, for multiple nerve stimulation"
item_common_name: "TENS Device, 4+ Lead (RESTRICTIVE COVERAGE)"

clinical_indications:
  - "Same as E0720 - used when pain affects multiple sites/large area requiring 4-lead stimulation"
  - "Multiple pain sites, bilateral pain, large surface area"
  - "NY Medicaid ONLY: M17.0-M17.9 (knee OA)"
  - "Must justify why 2 leads insufficient"

icd10_primary:
  - "Same as E0720 plus documentation justifying 4 leads vs 2 leads"
  - "M17.0-M17.9 - Osteoarthritis of knee (NY Medicaid ONLY covered)"

icd10_excluded:
  - "M54.5 - Low back pain (Medicare NOT covered)"
  - "Same exclusions as E0720"

medicare:
  covered: "true - EXCEPT chronic low back pain (CLBP)"
  prior_auth: false
  trial_period_required: true
  trial_period_duration: "30-60 days rental with RR modifier"
  special_notes: "Same coverage restrictions as E0720. Medical record must specifically document why 2 leads insufficient (multiple pain locations, bilateral pain, large surface area). First month purchase includes lead wires + 1-month supplies. Rental: RR modifier; Purchase: NU modifier after successful trial."

medicaid_nassau:
  covered: "true - ONLY for knee osteoarthritis (M17.0-M17.9)"
  prior_auth: "false - written order required"
  dvs_authorization: false
  diagnosis_restriction: "ONLY M17.0-M17.9 (knee OA)"
  special_notes: "TENS ONLY COVERED for knee OA. Must justify 4 leads vs 2 leads. Trial period same as Medicare."

medicaid_brooklyn:
  covered: "true - ONLY for knee osteoarthritis (M17.0-M17.9)"
  prior_auth: "false - written order required"
  diagnosis_restriction: "ONLY M17.0-M17.9 (knee OA)"
  special_notes: "Same as Nassau."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 360-364)"
  source_verified_fields: ["same_restrictions_e0720", "must_justify_4leads", "medicaid_only_knee_oa", "first_month_includes_supplies"]
last_updated: "2025-10-30"
---

# E0730 - TENS Device, 4+ Lead

## 🚨 CRITICAL COVERAGE RESTRICTIONS (Same as E0720)

### Medicare:
- **NOT COVERED** for chronic low back pain (CLBP)
- **Must justify why 2 leads (E0720) insufficient**

### NY Medicaid:
- **ONLY COVERED** for knee osteoarthritis (M17.0-M17.9)
- **Must document need for 4 leads over 2 leads**

## Clinical Overview
4+ lead TENS device for multiple nerve stimulation. Used when pain affects multiple sites, bilateral locations, or large surface area.

**Key Requirement:** Must document why 2-lead device (E0720) insufficient

## Coverage Details

### Medicare
**Covered:** Yes (EXCEPT chronic low back pain)
**Same restrictions as E0720** plus additional requirement:
- **Must document:** Multiple pain locations, bilateral pain, OR large surface area requiring 4 leads
- Trial: RR modifier during trial period
- Purchase: NU modifier after successful trial
- First month purchase includes lead wires + 1-month supplies

### NY Medicaid
**Covered:** ONLY for M17.0-M17.9 (knee osteoarthritis)
**Additional documentation:** Why 2 leads insufficient (e.g., bilateral knee OA)

## Prescribing Checklist
- [ ] **Justify 4 leads vs 2 leads** (multiple sites, bilateral, large area)
- [ ] Same trial and documentation requirements as E0720
- [ ] For Medicaid: diagnosis MUST be knee OA (M17.0-M17.9)

## References
- Source: DM20, DM21, DM22.md (lines 360-364)
EOF

# E0731 - Form-Fitting Conductive Garment
cat > E0731.md << 'EOF'
---
boc_code: "DM22"
boc_category: "TRANSCUTANEOUS ELECTRICAL NERVE STIMULATORS (TENS)"
hcpcs_code: "E0731"
hcpcs_description: "Form-fitting conductive garment for delivery of TENS or NMES (with conductive fibers which are separated from the skin by layers)"
item_common_name: "Form-Fitting TENS/NMES Garment (RARELY Medically Necessary)"

clinical_indications:
  - "RARELY medically necessary - alternative to conventional electrodes when standard application not feasible"
  - "Skin problems preventing electrode adhesion"
  - "Large/multiple stimulation sites requiring frequent application"
  - "Inaccessible treatment sites (e.g., back)"

icd10_primary:
  - "Same covered diagnoses as E0720/E0730"
  - "Plus skin condition contraindicating standard electrodes (dermatitis, adhesive allergy)"

medicare:
  covered: "true - RARELY medically necessary"
  prior_auth: false
  special_notes: "RARELY medically necessary. Must document one of: (1) large area/multiple sites requiring frequent stimulation making electrodes infeasible; (2) sites inaccessible with conventional electrodes; (3) skin condition contraindicating standard electrodes (dermatitis, adhesive allergy). Requires physician prescription for covered TENS treatment. Submit brand/model with claim. DENIED if criteria not met."

medicaid_nassau:
  covered: "true - ONLY for knee OA (M17.0-M17.9) with additional justification"
  prior_auth: "false - written order required"
  dvs_authorization: false
  diagnosis_restriction: "ONLY M17.0-M17.9 (knee OA) - same as E0720/E0730"
  special_notes: "RARELY approved. Must meet Medicare criteria PLUS knee OA diagnosis requirement. Expect scrutiny."

medicaid_brooklyn:
  covered: "true - ONLY for knee OA with justification"
  prior_auth: "false - written order required"
  diagnosis_restriction: "ONLY M17.0-M17.9 (knee OA)"
  special_notes: "Same as Nassau."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 368-372)"
  source_verified_fields: ["rarely_medically_necessary", "skin_condition_contraindication", "inaccessible_sites", "large_multiple_sites", "submit_brand_model"]
last_updated: "2025-10-30"
---

# E0731 - Form-Fitting TENS/NMES Garment

## ⚠️ RARELY MEDICALLY NECESSARY - High Documentation Bar

## Clinical Overview
Form-fitting conductive garment for TENS/NMES delivery. Alternative to conventional electrodes when standard application not feasible.

**Coverage:** RARELY approved - requires strong justification

## Coverage Details

### Medicare
**Covered:** Yes - RARELY medically necessary
**Requirements - Must document ONE of:**
1. Large area/multiple sites requiring frequent stimulation making standard electrodes infeasible
2. Sites inaccessible with conventional electrodes (e.g., back, hard-to-reach areas)
3. Skin condition contraindicating standard electrodes (contact dermatitis, adhesive allergy)

**Additional Requirements:**
- Physician prescription for covered TENS treatment
- Submit brand/model with claim
- **DENIED if criteria not met**

### NY Medicaid
**Covered:** Yes - ONLY for knee OA (M17.0-M17.9) with strong justification
**Requirements:** Medicare criteria + knee OA diagnosis restriction
**Expect:** High level of scrutiny, likely to be challenged

## Prescribing Checklist
- [ ] **Document specific reason conventional electrodes inadequate**
- [ ] Skin condition diagnosis if applicable (L23.x, L24.x for dermatitis)
- [ ] Brand/model of garment specified
- [ ] Active covered TENS prescription on file
- [ ] For Medicaid: knee OA (M17.0-M17.9) diagnosis

## Tips
**Consider:** Standard electrodes first - garment only when truly necessary
**Documentation:** Photos of skin condition or detailed anatomical justification helpful

## References
- Source: DM20, DM21, DM22.md (lines 368-372)
EOF

# A4556 - Electrodes, Per Pair (NOT for TENS)
cat > A4556.md << 'EOF'
---
boc_code: "DM22"
boc_category: "TRANSCUTANEOUS ELECTRICAL NERVE STIMULATORS (TENS)"
hcpcs_code: "A4556"
hcpcs_description: "Electrodes (e.g., apnea monitor), per pair"
item_common_name: "Electrodes, Per Pair (NOT VALID for TENS)"

clinical_indications:
  - "NOT VALID for separate TENS billing"
  - "This code is for apnea monitors, NOT TENS units"
  - "Electrodes for TENS included in A4595 supply allowance"

icd10_primary:
  - "N/A - not valid for TENS"

medicare:
  covered: "false - NOT valid for TENS billing"
  prior_auth: "N/A"
  special_notes: "Claims will be DENIED if submitted for TENS. Use A4595 instead for all TENS electrodes. Medicare/Medicaid will not separately reimburse. Provider cannot bill patient for denied service."

medicaid_nassau:
  covered: "false - NOT valid for TENS billing"
  prior_auth: "N/A"
  special_notes: "NOT valid for TENS. Use A4595 for all TENS supplies including electrodes."

medicaid_brooklyn:
  covered: "false - NOT valid for TENS billing"
  prior_auth: "N/A"
  special_notes: "Same as Nassau."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 378-382)"
  source_verified_fields: ["not_valid_tens", "apnea_monitor_code", "use_a4595_instead", "claims_denied"]
last_updated: "2025-10-30"
---

# A4556 - Electrodes, Per Pair

## 🚨 NOT VALID FOR TENS BILLING - USE A4595 INSTEAD

## Important Notice
**This code is for APNEA MONITORS, NOT TENS units.**

**For TENS electrodes:** Use **A4595** (Electrical Stimulator Supplies)

## Coverage Details

### Medicare & NY Medicaid
**NOT VALID for TENS billing**
- Claims will be **DENIED** if submitted for TENS
- Use **A4595** instead for all TENS electrodes
- Medicare/Medicaid will not separately reimburse
- **Provider cannot bill patient** for denied service

## Correct Billing
**For TENS electrodes and supplies:** Use **A4595**
- Includes: All electrodes (any type), conductive gel, tape, batteries
- 2-lead TENS: 1 unit A4595 per month
- 4-lead TENS: 2 units A4595 per month

## References
- Source: DM20, DM21, DM22.md (lines 378-382)
EOF

# A4557 - Lead Wires, Per Pair
cat > A4557.md << 'EOF'
---
boc_code: "DM22"
boc_category: "TRANSCUTANEOUS ELECTRICAL NERVE STIMULATORS (TENS)"
hcpcs_code: "A4557"
hcpcs_description: "Lead wires, (e.g., apnea monitor), per pair"
item_common_name: "TENS Lead Wires, Per Pair (Replacement)"

clinical_indications:
  - "Replacement lead wires for patient-owned TENS unit"
  - "1 unit = lead wires for 2 electrodes (2-lead system)"
  - "2 units = lead wires for 4 electrodes (4-lead system)"
  - "Used when lead wires damaged/worn (typically lasts 12 months)"

icd10_primary:
  - "Same as active TENS unit (E0720 or E0730)"

medicare:
  covered: true
  prior_auth: false
  quantity_limits: "2-lead: 1 unit per 12 months; 4-lead: 2 units per 12 months"
  special_notes: "Quantity limits: 2-lead system (1 unit per 12 months), 4-lead system (2 units per 12 months). Replacement more frequent than annually 'rarely medically necessary' - requires documentation. NOT separately allowed during first 30 days after TENS purchase (included in initial allowance). Requires covered TENS unit on file."

medicaid_nassau:
  covered: "true - ONLY if active TENS for knee OA (M17.0-M17.9)"
  prior_auth: false
  dvs_authorization: false
  quantity_limits: "Same as Medicare"
  diagnosis_restriction: "ONLY M17.0-M17.9 (knee OA)"
  special_notes: "Covered only if active TENS unit for knee OA on file. Same quantity limits as Medicare."

medicaid_brooklyn:
  covered: "true - ONLY if active TENS for knee OA"
  prior_auth: false
  quantity_limits: "Same as Medicare"
  diagnosis_restriction: "ONLY M17.0-M17.9 (knee OA)"
  special_notes: "Same as Nassau."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 386-390)"
  source_verified_fields: ["quantity_1unit_12months_2lead", "quantity_2units_12months_4lead", "not_first_30days", "requires_covered_tens_on_file"]
last_updated: "2025-10-30"
---

# A4557 - TENS Lead Wires, Per Pair (Replacement)

## Clinical Overview
Replacement lead wires for patient-owned TENS unit. Typically lasts 12 months.

**Quantity:** 1 unit = 2-lead system, 2 units = 4-lead system

## Coverage Details

### Medicare
**Covered:** Yes (requires covered TENS unit on file)
**Quantity Limits:**
- **2-lead system:** 1 unit per 12 months
- **4-lead system:** 2 units per 12 months
**Requirements:**
- NOT separately allowed during first 30 days after TENS purchase (included with device)
- Replacement more frequent than annually "rarely medically necessary" - requires documentation

### NY Medicaid
**Covered:** Yes - ONLY if active TENS for knee OA (M17.0-M17.9) on file
**Quantity Limits:** Same as Medicare
**Requirements:** Covered TENS unit for knee OA must be on file

## Prescribing Tips
**Timing:** Wait 30 days after TENS purchase before ordering separately
**Frequency:** Standard replacement is 12 months - more frequent requires justification
**Documentation:** Patient-owned TENS unit must be on file

## References
- Source: DM20, DM21, DM22.md (lines 386-390)
EOF

# A4558 - Conductive Paste or Gel (NOT for TENS)
cat > A4558.md << 'EOF'
---
boc_code: "DM22"
boc_category: "TRANSCUTANEOUS ELECTRICAL NERVE STIMULATORS (TENS)"
hcpcs_code: "A4558"
hcpcs_description: "Conductive paste or gel, per oz"
item_common_name: "Conductive Gel, Per Oz (NOT VALID for TENS)"

clinical_indications:
  - "NOT VALID for separate TENS billing"
  - "This code is for other electrical devices, NOT TENS"
  - "Conductive gel for TENS included in A4595 supply allowance"

icd10_primary:
  - "N/A - not valid for TENS"

medicare:
  covered: "false - NOT valid for TENS billing"
  prior_auth: "N/A"
  special_notes: "Claims will be DENIED if submitted for TENS. Use A4595 instead for all TENS conductive gel. Medicare/Medicaid will not separately reimburse. Included in A4595 bundled supply code."

medicaid_nassau:
  covered: "false - NOT valid for TENS billing"
  prior_auth: "N/A"
  special_notes: "NOT valid for TENS. Use A4595 for all TENS supplies including conductive gel."

medicaid_brooklyn:
  covered: "false - NOT valid for TENS billing"
  prior_auth: "N/A"
  special_notes: "Same as Nassau."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 394-398)"
  source_verified_fields: ["not_valid_tens", "other_electrical_devices", "use_a4595_instead", "included_bundled"]
last_updated: "2025-10-30"
---

# A4558 - Conductive Gel, Per Oz

## 🚨 NOT VALID FOR TENS BILLING - USE A4595 INSTEAD

## Important Notice
**This code is for OTHER ELECTRICAL DEVICES, NOT TENS units.**

**For TENS conductive gel:** Use **A4595** (Electrical Stimulator Supplies)

## Coverage Details

### Medicare & NY Medicaid
**NOT VALID for TENS billing**
- Claims will be **DENIED** if submitted for TENS
- Use **A4595** instead for all TENS conductive gel
- Conductive gel included in A4595 bundled supply code
- Medicare/Medicaid will not separately reimburse

## Correct Billing
**For TENS conductive gel:** Use **A4595**
- Includes: Conductive paste/gel, electrodes, tape, batteries, etc.
- Bundled monthly supply allowance

## References
- Source: DM20, DM21, DM22.md (lines 394-398)
EOF

# A4595 - Electrical Stimulator Supplies (MAIN SUPPLY CODE)
cat > A4595.md << 'EOF'
---
boc_code: "DM22"
boc_category: "TRANSCUTANEOUS ELECTRICAL NERVE STIMULATORS (TENS)"
hcpcs_code: "A4595"
hcpcs_description: "Electrical stimulator supplies, 2 lead, per month (e.g., TENS, NMES)"
item_common_name: "TENS Monthly Supply Allowance (MAIN SUPPLY CODE)"

clinical_indications:
  - "Monthly supply allowance for patient-owned or rented TENS unit"
  - "Includes: all electrodes (any type), conductive paste/gel, tape/adhesive, adhesive remover, skin prep, batteries (9V or AA), battery charger"
  - "Must have covered diagnosis and active TENS use"

icd10_primary:
  - "Same as active TENS unit (E0720 or E0730)"
  - "NY Medicaid: ONLY M17.0-M17.9 (knee OA)"

medicare:
  covered: true
  prior_auth: false
  quantity_limits: "2-lead TENS: max 1 unit/month; 4-lead TENS: max 2 units/month"
  special_notes: "Quantity limits: 2-lead TENS (max 1 unit per month), 4-lead TENS (max 2 units per month). If TENS used less than daily, reduce billing frequency proportionally. NOT separately billable during first 30 days of TENS purchase (included with device). Requires active covered TENS unit on file."

medicaid_nassau:
  covered: "true - ONLY if active TENS for knee OA (M17.0-M17.9)"
  prior_auth: false
  dvs_authorization: false
  quantity_limits: "Same as Medicare"
  diagnosis_restriction: "ONLY M17.0-M17.9 (knee OA)"
  special_notes: "ONLY covered for knee OA (M17.0-M17.9). Same quantity limits as Medicare. NOT billable first 30 days of TENS purchase."

medicaid_brooklyn:
  covered: "true - ONLY if active TENS for knee OA"
  prior_auth: false
  quantity_limits: "Same as Medicare"
  diagnosis_restriction: "ONLY M17.0-M17.9 (knee OA)"
  special_notes: "Same as Nassau."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 402-406)"
  source_verified_fields: ["main_supply_code", "includes_all_electrodes_gel_batteries", "quantity_1unit_2lead", "quantity_2units_4lead", "not_first_30days", "medicaid_only_knee_oa"]
last_updated: "2025-10-30"
---

# A4595 - TENS Monthly Supply Allowance

## PRIMARY SUPPLY CODE FOR ALL TENS SUPPLIES

## Clinical Overview
Monthly bundled supply allowance for patient-owned or rented TENS unit.

**Includes:**
- All electrodes (any type)
- Conductive paste/gel
- Tape/adhesive
- Adhesive remover
- Skin prep materials
- Batteries (9V or AA)
- Battery charger

## Coverage Details

### Medicare
**Covered:** Yes (requires active covered TENS unit on file)
**Quantity Limits:**
- **2-lead TENS (E0720):** Maximum 1 unit per month
- **4-lead TENS (E0730):** Maximum 2 units per month
- If TENS used less than daily, reduce billing frequency proportionally

**Requirements:**
- NOT separately billable during first 30 days of TENS purchase (included with device)
- Active covered TENS unit must be on file

### NY Medicaid
**Covered:** Yes - ONLY if active TENS for knee OA (M17.0-M17.9) on file
**Quantity Limits:** Same as Medicare
**Requirements:** TENS unit for knee OA must be active and on file

## Billing Guidance
**Timing:** Wait 30 days after TENS purchase before billing separately
**Frequency:**
- Daily TENS use: Bill monthly
- Less than daily: Reduce frequency (e.g., every 2 months for every-other-day use)

**Bundled Items:** Do NOT separately bill:
- A4556 (electrodes) - DENIED
- A4558 (conductive gel) - DENIED
- A4630 (batteries) - DENIED

## References
- Source: DM20, DM21, DM22.md (lines 402-406)
EOF

# A4630 - Replacement Batteries (NOT for TENS)
cat > A4630.md << 'EOF'
---
boc_code: "DM22"
boc_category: "TRANSCUTANEOUS ELECTRICAL NERVE STIMULATORS (TENS)"
hcpcs_code: "A4630"
hcpcs_description: "Replacement batteries, medically necessary, transcutaneous electrical stimulator, owned by patient"
item_common_name: "TENS Replacement Batteries (NOT VALID for Separate Billing)"

clinical_indications:
  - "NOT VALID for separate TENS billing"
  - "Batteries included in A4595 supply allowance"
  - "This code cannot be used for TENS units"

icd10_primary:
  - "N/A - not valid for TENS"

medicare:
  covered: "false - NOT valid for separate TENS billing"
  prior_auth: "N/A"
  special_notes: "Claims will be DENIED if submitted for TENS. Use A4595 instead for all TENS batteries. Medicare/Medicaid will not separately reimburse. A4595 includes single-use and rechargeable batteries plus charger."

medicaid_nassau:
  covered: "false - NOT valid for separate TENS billing"
  prior_auth: "N/A"
  special_notes: "NOT valid for TENS. Use A4595 for all TENS supplies including batteries."

medicaid_brooklyn:
  covered: "false - NOT valid for separate TENS billing"
  prior_auth: "N/A"
  special_notes: "Same as Nassau."

requires_prior_auth_any: false
data_quality:
  primary_source: "DM20, DM21, DM22.md (lines 410-414)"
  source_verified_fields: ["not_valid_tens", "use_a4595_instead", "included_in_a4595", "single_use_rechargeable"]
last_updated: "2025-10-30"
---

# A4630 - TENS Replacement Batteries

## 🚨 NOT VALID FOR SEPARATE TENS BILLING - USE A4595 INSTEAD

## Important Notice
**Batteries for TENS are included in A4595 supply allowance.**

**For TENS batteries:** Use **A4595** (Electrical Stimulator Supplies)

## Coverage Details

### Medicare & NY Medicaid
**NOT VALID for separate TENS billing**
- Claims will be **DENIED** if submitted for TENS
- Use **A4595** instead for all TENS batteries
- A4595 includes:
  - Single-use batteries (9V, AA)
  - Rechargeable batteries
  - Battery charger
- Medicare/Medicaid will not separately reimburse

## Correct Billing
**For TENS batteries:** Use **A4595**
- Bundled monthly supply allowance includes all batteries and charger
- 2-lead TENS: 1 unit A4595 per month
- 4-lead TENS: 2 units A4595 per month

## References
- Source: DM20, DM21, DM22.md (lines 410-414)
EOF

echo "All 8 DM22 files created successfully"
