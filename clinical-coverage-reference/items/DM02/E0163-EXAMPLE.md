---
# STRUCTURED METADATA (For Claude Code HTML Generation)
boc_code: "DM02"
boc_category: "COMMODES/URINALS/BEDPANS"
hcpcs_code: "E0163"
hcpcs_description: "Commode chair, mobile or stationary, with fixed arms"
item_common_name: "Standard Fixed-Arm Commode"

# Clinical Classification
clinical_indications:
  - "Patient confined to single room without toilet facilities"
  - "Patient confined to one level of home without toilet on that level"
  - "Home without toilet facilities"
  - "Severe mobility impairment preventing safe bathroom access"
  - "Post-surgical recovery requiring limited ambulation"
  - "Chronic conditions limiting mobility to bathroom"

icd10_primary:
  - "Z99.3 - Dependence on wheelchair"
  - "R26.2 - Difficulty in walking, not elsewhere classified"
  - "M25.50-M25.579 - Pain in joint"
  - "R26.89 - Other abnormalities of gait and mobility"
  - "G82.20-G82.54 - Paraplegia and tetraplegia"
  - "I69.x - Sequelae of cerebrovascular disease"

# Coverage Requirements - Structured for comparison tables
medicare:
  covered: true
  prior_auth: false
  face_to_face: false
  documentation_type: "DWO"
  modifiers: ["KX"]
  frequency_limit: "Once every 5 years (reasonable useful lifetime)"
  quantity_limit: "1 per patient"
  special_notes: "NOT covered for use as raised toilet seat. KX modifier certifies coverage criteria met. Patient must be physically incapable of using regular toilet."

medicaid_nassau:
  covered: true
  prior_auth: true
  dvs_authorization: true
  face_to_face: false
  documentation_type: "Fiscal Order"
  frequency_code: "F3"
  frequency_limit: "Once every 3 years"
  quantity_limit: "1 per patient"
  special_notes: "DVS authorization MUST be obtained before delivery. Generic orders (just 'commode') will be rejected - must specify E0163."

medicaid_brooklyn:
  covered: true
  prior_auth: true
  dvs_authorization: true
  face_to_face: false
  documentation_type: "Fiscal Order"
  frequency_code: "F3"
  frequency_limit: "Once every 3 years"
  quantity_limit: "1 per patient"
  special_notes: "Same requirements as Nassau County. DVS authorization required before delivery."

# Quick flags for filtering/searching
requires_prior_auth_any: true
requires_face_to_face_any: false
requires_specialty_eval: false
requires_resna_atp: false
discontinued: false

# Metadata
last_updated: "2025-10-29"
source_documents: ["DM02, DM05, DM06.md"]
reviewed_by: "Claude Code"
---

# E0163 - Standard Fixed-Arm Commode

## Clinical Overview

The E0163 is a standard commode chair with fixed (non-detachable) arms, designed for patients who are physically incapable of using regular toilet facilities. It may be mobile (on wheels) or stationary. This is the basic commode model and is appropriate when the patient does not require detachable arms for transfers or bariatric sizing.

## Coverage Details

### Medicare Coverage Criteria

**Clinical Requirements:**
- Patient must be confined to single room OR
- Patient on one level of home without toilet on that level OR
- Home without toilet facilities
- Patient must be physically incapable of using regular toilet

**Documentation Requirements:**
- Detailed Written Order (DWO) required before claim submission
- Document specific confinement status in medical record
- Include diagnosis and medical necessity explanation
- KX modifier on claim certifies coverage criteria are met
- Proof of delivery mandatory

**Important Notes:**
- NOT covered for use as raised toilet seat (use toilet seat riser instead)
- Patient must be truly confined, not just inconvenient to walk to bathroom
- "Physically incapable" means patient cannot safely ambulate to toilet
- 5-year reasonable useful lifetime applies

### NY Medicaid (Nassau County)

**Clinical Requirements:**
- Unable to use regular toilet due to:
  - Confinement to single room/level without toilet
  - Severe mobility impairment
  - Post-surgical recovery requiring activity restriction
  - Chronic conditions limiting safe ambulation to bathroom

**Documentation Requirements:**
- Physician fiscal order with medical necessity statement
- DVS authorization REQUIRED before delivery (item has # code designation)
- Document inability to access standard toilet safely
- Document that alternatives have been ruled out (e.g., bathroom modifications)
- Frequency: F3 (once every 3 years)
- Proof of delivery required

**Important Notes:**
- Must obtain DVS authorization BEFORE delivery or claim will be denied
- Prescription must be specific: "E0163 commode chair with fixed arms" - generic "commode" will be rejected
- Delivery must occur within authorized timeframe (typically 30 days)
- Supplier must maintain documentation for 6 years

### NY Medicaid (Brooklyn)

**Coverage criteria identical to Nassau County.** All requirements, documentation needs, and authorization processes are the same.

## Prescription Checklist for Physicians

**Required Elements:**
- [ ] Patient demographics and Medicaid/Medicare ID
- [ ] Specific code and description: "E0163 - Commode chair with fixed arms"
- [ ] ICD-10 diagnosis code(s) supporting medical necessity
- [ ] Statement of medical necessity explaining why patient cannot use regular toilet
- [ ] Documentation of confinement status
- [ ] Physician signature and date
- [ ] Ordering provider NPI number

**For Medicare:**
- [ ] Document patient is physically incapable of using regular toilet (not just difficult)
- [ ] Specify confinement reason (room-bound, level-bound, or no toilet in home)
- [ ] Ensure not prescribed solely as raised toilet seat

**For Medicaid:**
- [ ] Ensure prescription is specific (not generic "commode")
- [ ] DVS authorization must be obtained by supplier before delivery
- [ ] Include detailed mobility assessment
- [ ] Document alternatives considered and rejected

## Common Denial Reasons

1. **"Not medically necessary"** - Insufficient documentation of why patient cannot use standard toilet. Fix: Include detailed mobility assessment and specific confinement reason.

2. **"Generic description"** - Order says "commode" instead of specific HCPCS code. Fix: Always write "E0163 commode chair with fixed arms."

3. **"DVS authorization not obtained"** (Medicaid) - Item delivered before authorization approved. Fix: Supplier must wait for authorization before delivery.

4. **"Use as toilet seat"** (Medicare) - Prescribed for patient who can walk to bathroom but needs elevation. Fix: This is not covered use; consider toilet seat riser instead.

5. **"Frequency exceeded"** - Ordered too soon after previous commode. Fix: Verify when last commode was provided; must be beyond frequency limit.

6. **"Insufficient documentation"** - Order lacks diagnosis or medical necessity statement. Fix: Include ICD-10 codes and detailed explanation.

## Tips for Approval

**Medicare:**
- Be very specific about confinement status: Is patient room-bound? Level-bound? Or is there no toilet in home?
- Use language "physically incapable" rather than "difficult" or "inconvenient"
- Document safety concerns if patient attempts to walk to bathroom
- Include KX modifier when submitting claim to certify criteria are met
- Clearly state patient is NOT using this as a raised toilet seat

**Medicaid:**
- Always write specific HCPCS code - never just "commode"
- Let supplier know DVS authorization is required (they should handle this)
- Include comprehensive mobility assessment with specific functional limitations
- Document what alternatives were considered (bathroom modifications, grab bars, etc.) and why they are inadequate
- Be clear about frequency - verify patient hasn't received commode within past 3 years

## Related Codes

- **E0165** - Commode chair with detachable arms - Use when patient requires arm removal for side transfers or needs extra width for transfers. Requires additional documentation of transfer needs.

- **E0168** - Extra wide/heavy duty commode - Required for patients weighing ≥300 lbs (Medicare) or >300 lbs (Medicaid). Must document patient weight. If patient <300 lbs, Medicaid will pay based on least costly alternative (E0163).

- **E0167** - Commode pail/pan replacement - For replacing worn or damaged pail on existing commode. Separately billable replacement accessory.

- **E0170/E0171** - Commode with integrated seat lift (electric/non-electric) - Rarely covered; must meet both commode criteria AND seat lift criteria. Often conflicting requirements.

- **E0175** - Footrest for commode - NOT covered by Medicare (GY modifier). May be covered by Medicaid with documentation of medical need for lower extremity support.

## References

- Medicare LCD L33736 (DME & Surgical Dressings)
- NY Medicaid DME Manual (effective 10/1/2025)
- Source document: DM02, DM05, DM06.md (lines 45-56)
