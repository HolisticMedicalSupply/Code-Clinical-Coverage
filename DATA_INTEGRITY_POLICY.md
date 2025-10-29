# Data Integrity Policy for Clinical Coverage Reference

**Version:** 1.3
**Effective Date:** 2025-10-29
**Last Updated:** 2025-10-29 (CRITICAL FIX: tags must be in string values, not YAML comments)
**Purpose:** Ensure accuracy and reliability of clinical coverage documentation for medical prescribers

**🚨 CRITICAL CHANGE IN v1.3:**
- Tags must be **part of the string value**, NOT in YAML comments (#)
- Comments are not parsed and won't display in HTML
- For boolean fields needing tags, convert to string: `"false (Under Review)"`
- For string fields, append tag: `"Once every 5 years (Under Review - High Confidence)"`

---

## 🎯 Core Principle

**Accuracy over completeness.** This documentation will be used by physicians and prescribing facilities to make clinical and billing decisions. Incorrect information is worse than missing information.

---

## 📊 Four-Tier Confidence System

All data entered into reference files must be classified by confidence level and tagged accordingly.

### Tier 1: Direct from Source (100% Confidence)

**Definition:** Information explicitly stated in source documents (research docs, CSV, official policies).

**Action:** Include as-is, no tags needed.

**Examples:**
```yaml
medicare:
  covered: true  # Source doc states "Medicare - Clinical Usage: ..."
  prior_auth: false  # Source doc states "NO PA"
  documentation_type: "DWO"  # Source explicitly says "Detailed Written Order (DWO)"
```

```markdown
**Medicare - Clinical Usage:** Perineal injury or infection as part of prescribed treatment regimen for home use.
```

**Quality Check:** Can you point to the exact line in source document?
- ✅ Yes → Tier 1
- ❌ No → Lower tier

---

### Tier 2: High Confidence Inference (90%+ Confidence)

**Definition:** Logical extension or synthesis of explicit source data. The inference is almost certain based on clear patterns or medical/policy logic.

**Action:** Include `(Under Review - High Confidence)` tag **as part of the string value** in YAML, or inline in markdown. Add detailed reasoning to `data_quality.field_notes` section.

**CRITICAL:** Tags must be part of the value, NOT in YAML comments. Comments are not parsed and won't display in HTML.

**When to use:**
- Combining related statements from source into single field
- Standard Medicare/Medicaid patterns consistently applied
- Medical logic clearly supporting the inference

**Examples:**
```yaml
# For string fields, append tag to the string value:
frequency_limit: "Once every 5 years (reasonable useful lifetime) (Under Review - High Confidence)"
special_notes: "Patient must be confined (Under Review - High Confidence)"

# For boolean fields needing tags, convert to string with tag:
prior_auth: "false (Under Review - High Confidence)"
face_to_face: "false (Under Review)"

# For lists, append tag to each inferred item:
icd10_primary:
  - "Z99.3 - Dependence on wheelchair"  # Explicitly in source - no tag
  - "R26.2 - Difficulty in walking (Under Review - High Confidence)"
  - "M62.81 - Muscle weakness (Under Review - High Confidence)"

# Verified fields stay as native types (boolean, etc.):
covered: true  # Direct from source
dvs_authorization: true  # Direct from source

# Detailed explanations go in data_quality section
data_quality:
  field_notes:
    frequency_limit: "Source says '5-year reasonable useful lifetime' - inferred standard frequency wording"
    prior_auth: "Not mentioned in source; inferred from absence (typical for standard DME)"
    icd10_r26_2: "Logically related to mobility issues mentioned in source; standard code for difficulty walking"
```

```markdown
**Important Notes:**
- Must meet E0163 criteria first (Under Review - High Confidence)
```

**Quality Check:** Would a medical professional reading the source reach the same conclusion?
- ✅ Almost certainly → Tier 2 with (Under Review - High Confidence) tag
- ❌ Maybe, maybe not → Tier 3

---

### Tier 3: Educated Guess (50-90% Confidence)

**Definition:** Reasonable assumption based on partial information, industry standards, or comparison to similar codes, but not directly verifiable from source.

**Action:** Include `(Under Review)` tag **as part of the string value**. Add detailed reasoning to `data_quality.field_notes` section.

**When to use:**
- Field likely true but not explicitly stated
- Assumption based on similar codes
- Standard practice but not confirmed in this specific case

**Examples:**
```yaml
# For boolean fields needing tags, convert to string:
requires_specialty_eval: "false (Under Review)"
face_to_face: "false (Under Review)"

# For string fields, append tag:
quantity_limit: "1 per patient (Under Review)"

# Detailed explanations go in data_quality section
data_quality:
  field_notes:
    requires_specialty_eval: "Not mentioned in source document; typical for standard DME items"
    quantity_limit: "Not explicitly stated in source; typical pattern for this type of equipment"
    face_to_face: "Not specified in source; typical for accessories but requires verification"
```

```markdown
**Documentation Requirements:**
- Standard written order required (Under Review)
```

**Quality Check:** Is this a guess or semi-certain?
- ✅ Reasonably certain but can't prove → Tier 3 with (Under Review) tag
- ❌ Just guessing → Tier 4

---

### Tier 4: Unknown (<50% Confidence)

**Definition:** No reliable basis for filling in this field from available sources.

**Action:** Leave blank or use explicit "Unknown" placeholder.

**When to use:**
- Source document doesn't mention this aspect
- No similar codes to reference
- Conflicting or unclear information

**Examples:**
```yaml
frequency_limit: ""  # Unknown - verify with payer
quantity_limit: ""  # Not specified in source documentation
special_notes: "Coverage details require verification with payer"
```

```markdown
**NY Medicaid Requirements:**
*Coverage criteria not found in source documentation. Verify with NYRx (518) 486-3209 before prescribing.*
```

**Quality Check:** Do I have any reliable basis for this?
- ✅ No → Leave blank or mark Unknown
- ❌ I could guess → Still Tier 4, don't guess

---

## 📝 Tagging Narrative Markdown Content

**IMPORTANT:** Data integrity tags apply to **both YAML frontmatter AND narrative Markdown sections**. All information in the file will be displayed to physicians in the HTML catalog and must be tagged for legal protection and accuracy.

### Where to Apply Tags in Narrative

Tags should be applied to **specific claims, requirements, or statements** in these sections:

1. **Clinical Overview** - Coverage criteria, typical use cases
2. **Coverage Details** (Medicare/Medicaid sections) - Requirements, documentation needs, frequency
3. **Documentation Requirements** - Specific prescription elements
4. **Common Denial Reasons** - Specific reasons and fixes
5. **Tips for Approval** - Suggested strategies or requirements
6. **Important Notes** - Any coverage claims or requirements

### What to Tag

**Tag these types of statements:**
- Specific requirements not explicit in source ("Typically requires..." "Generally limited to...")
- Documentation needs inferred from patterns ("Standard written order required")
- Frequency/quantity claims ("Typically limited to 1 per 12 months")
- Coverage criteria synthesis ("Patient must meet E0163 criteria first")
- Approval tips based on inference ("Best practice is...")
- Common denial reasons if inferred ("May be denied if...")

**Don't tag these:**
- Direct quotes from source documents
- Factual descriptions ("This is a bedpan made of plastic")
- Item names and basic definitions
- Structural headings
- References to other sections ("See E0163 for details")

### How to Apply Tags

**Use inline parenthetical tags immediately after the statement:**

```markdown
**Documentation Requirements:**
- Physician prescription required *(Under Review - High Confidence)*
- Document bed-confined status in medical record
- Standard Written Order (SWO) required
- Proof of delivery required
- Typically limited to 1 per 12 months *(Under Review - High Confidence)*
```

**Or after full sentences:**

```markdown
Medicare considers footrests as not primarily medical in nature. *(Under Review - High Confidence)* Considered convenience/comfort item. *(Under Review - High Confidence)* No reimbursement available under Medicare.
```

**Or inline within sentences for specific claims:**

```markdown
Patient must be bed-confined or room-confined *(Under Review - High Confidence)* and physically unable to utilize commode or regular toilet facilities.
```

### Markdown Tagging Examples by Section

#### Clinical Overview:
```markdown
## Clinical Overview

A standard commode is for patients confined to a single room or level without toilet facilities. This is **rarely covered** *(Under Review - High Confidence)* due to strict confinement requirements. Patients who can ambulate to bathroom should use regular toilet facilities.
```

#### Coverage Details:
```markdown
### Medicare Coverage Criteria

**Clinical Requirements:**
- Patient is confined to room, level, or home without toilet facilities
- Physically incapable of using regular toilet
- Medical necessity for toileting equipment *(Under Review - High Confidence)*

**Documentation Requirements:**
- Detailed Written Order (DWO) required
- Must document confinement status *(Under Review - High Confidence)*
- Face-to-face encounter within 6 months *(Under Review)*
- Proof of delivery required
```

#### Tips for Approval:
```markdown
## Tips for Approval

**Medicare:**
- Be very specific about confinement *(Under Review - High Confidence)*
- Best case scenario for approval: *(Under Review)*
  - Patient confined to one level (upstairs bedroom) without toilet on that level
  - Patient has severe arthritis preventing stair climbing
- Include detailed explanation of living situation *(Under Review - High Confidence)*
```

#### Common Denial Reasons:
```markdown
## Common Denial Reasons

1. **"Not medically necessary"** - Patient not sufficiently confined. Fix: Document specific confinement with medical reason. *(Under Review - High Confidence)*

2. **"Patient ambulatory"** - Patient can walk to bathroom. Fix: Explain why distance/stairs/barriers prevent toilet access even though patient can walk short distances. *(Under Review)*
```

### Comprehensive Field Notes for Narrative

All narrative tags must have corresponding entries in `data_quality.field_notes`:

```yaml
data_quality:
  field_notes:
    # YAML frontmatter notes
    prior_auth_medicare: "Not mentioned in source; inferred from absence (typical for standard DME)"

    # Narrative section notes
    narrative_frequency_claim: "Clinical Overview states 'typically 1 per 12 months' - inferred from standard replacement cycle, not explicit in source"
    narrative_confinement_requirement: "Coverage Details emphasize confinement requirement - synthesized from multiple source statements about room/level confinement"
    narrative_denial_reasons: "Common denial reasons section based on typical denial patterns for DME, not specific to this code in source"
    narrative_approval_tips: "Tips for Approval section based on general DME approval best practices, not code-specific guidance from source"
    narrative_best_practices: "Best practice recommendations inferred from typical clinical documentation requirements"
```

### Legal Protection Rationale

The catalog will include a disclaimer stating:
> "Coverage information populated via AI-assisted research and may contain inaccuracies. Fields marked *(Under Review)* or *(Under Review - High Confidence)* indicate inferred information that should be independently verified before prescribing."

**By tagging narrative content, we:**
1. Clearly disclose what's known vs. inferred
2. Protect prescribers by showing uncertainty
3. Reduce legal liability for incorrect coverage claims
4. Encourage independent verification of critical details

---

## 🚫 Never Acceptable

The following practices are **strictly prohibited**:

1. **Making up data** - Never fabricate coverage criteria, diagnosis codes, or requirements
2. **Guessing at critical fields** without tagging:
   - Coverage (covered: true/false)
   - Prior authorization requirements
   - Billing modifiers
   - Frequency/quantity limits
3. **Copying from different codes** without verification (codes may differ)
4. **Removing uncertainty** - If unsure, mark it; don't hide uncertainty
5. **Mixing jurisdictions** - Don't assume Nassau = Brooklyn or Medicare = Medicaid

---

## 🔍 When to Search External Sources

**Use WebSearch/WebFetch selectively for:**

### ✅ Appropriate Searches:
- **Verify discontinued codes**: "Is HCPCS code K0553 still active 2025?"
- **Confirm replacements**: "What replaced K0553 effective 2023?"
- **Check ICD-10 validity**: "Is R26.2 a valid ICD-10 code?"
- **Verify policy numbers**: "Medicare LCD L33736"
- **Confirm specific dates**: "When did NY Medicaid CGM policy change?"

### ❌ Avoid Searching For:
- Coverage criteria (too jurisdiction-specific, use source docs)
- Frequency limits (payer-specific, use source docs)
- Clinical indications (should be in research docs)
- Documentation requirements (complex, use source docs)
- "Filling gaps" in missing data (leads to mixed-source confusion)

### 🎯 Search Protocol:
1. Search only for specific factual questions
2. Limit to 1-2 searches per code to avoid overload
3. Document search results in `source_documents` if used
4. Still apply 4-tier confidence system to searched data

---

## 📋 Required Quality Metadata

Each file must include a `data_quality` section in YAML frontmatter:

```yaml
# Data Quality Tracking
data_quality:
  primary_source: "DM02, DM05, DM06.md (lines 47-56)"
  source_verified_fields: ["clinical_indications", "medicare.covered", "medicaid_nassau.covered", "prior_auth", "dvs_authorization"]
  high_confidence_fields: ["some_icd10_codes", "frequency_limit_wording"]
  needs_verification: ["quantity_limit", "requires_specialty_eval", "face_to_face"]
  external_searches: []  # List any web searches performed
  field_notes:
    icd10_r26_2: "Logically related to mobility issues mentioned in source; standard code for difficulty walking"
    frequency_limit: "Source says '5-year reasonable useful lifetime' - inferred standard frequency wording"
    quantity_limit: "Not explicitly stated in source; typical pattern for this type of equipment"
    face_to_face: "Not specified in source document; requires payer verification"
  last_verified: "2025-10-29"
  verified_by: "Claude Code"
```

**Field Definitions:**

- `primary_source`: Main research document(s) used, with specific line numbers
- `source_verified_fields`: Fields directly from source (Tier 1 - no tags)
- `high_confidence_fields`: Fields using (Under Review - High Confidence) tag (Tier 2)
- `needs_verification`: Fields using (Under Review) tag (Tier 3) or blank (Tier 4)
- `external_searches`: Any web searches conducted, with URLs
- `field_notes`: Detailed explanations for tagged fields - why inferred, what's uncertain, etc.
- `last_verified`: Date of last review
- `verified_by`: Who verified (human name or "Claude Code")

---

## 🔄 Review Process

### Initial Creation:
1. Read source document(s) thoroughly
2. Extract Tier 1 data (direct statements)
3. Identify Tier 2 data (clear inferences) and tag
4. Mark Tier 3 data (guesses) with (Under Review)
5. Leave Tier 4 data (unknown) blank
6. Complete `data_quality` section

### Before Committing:
- [ ] All critical fields (covered, prior_auth) are Tier 1 or 2
- [ ] All high confidence inferences tagged with (Under Review - High Confidence)
- [ ] All educated guesses tagged with (Under Review) or left blank
- [ ] `data_quality` section completed with field_notes for tagged fields
- [ ] Source document referenced with line numbers

### Periodic Review (Human):
- Review all (Under Review) fields
- Verify all (Under Review - High Confidence) fields
- Fill blanks with additional research
- Update `last_verified` and `verified_by`

---

## 📝 Tagging Examples

### In YAML Frontmatter:

**CRITICAL: Tags must be IN the value string, not in YAML comments!**

```yaml
medicare:
  covered: true  # Tier 1: No tag needed (explicit in source)
  prior_auth: "false (Under Review - High Confidence)"  # Convert boolean to string with tag
  frequency_limit: "Once every 5 years (reasonable useful lifetime) (Under Review - High Confidence)"
  quantity_limit: "1 per patient (Under Review)"
  special_notes: "KX modifier required when criteria met"  # Tier 1: No tag

icd10_primary:
  - "Z99.3 - Dependence on wheelchair (Under Review - High Confidence)"
  - "R26.2 - Difficulty in walking (Under Review - High Confidence)"

# Explanations go in field_notes
data_quality:
  field_notes:
    prior_auth: "Not mentioned in source document; inferred from absence which is typical for standard DME"
    frequency_limit: "Source says '5-year reasonable useful lifetime' - inferred standard frequency wording"
    quantity_limit: "Not explicitly stated in source; typical pattern for this type of equipment"
    icd10_codes: "Logically related to mobility issues mentioned in source; standard codes for conditions"
```

### In Markdown Narrative:
```markdown
**Clinical Requirements:**
- Patient confined to single room
- Physically incapable of using regular toilet

**Important Notes:**
- Typically limited to 1 per 12 months (Under Review)
```

---

## 🎯 Critical vs. Non-Critical Fields

### Critical Fields (Must be Tier 1 or 2 only):
- `covered` (true/false)
- `prior_auth` (true/false)
- `dvs_authorization` (true/false)
- `modifiers` (billing codes)
- Clinical indications (primary list)
- Coverage requirements (basic criteria)

**Rationale:** These directly affect billing and prescribing decisions. Errors here cause claim denials or compliance issues.

### Non-Critical Fields (Can be Tier 3-4):
- `requires_specialty_eval` (nice to know, not billing-critical)
- `requires_resna_atp` (informational)
- Extended ICD-10 lists beyond primary codes
- Related codes (helpful but not essential)
- Some special notes (context, not requirements)

**Rationale:** These provide helpful context but won't cause billing errors if missing or approximate.

---

## ⚠️ Special Cases

### "Verify Code Availability" Pattern:
When source says "Verify code availability with NY Medicaid":
```yaml
medicaid_nassau:
  covered: "true (Under Review)"  # Convert to string with tag
  special_notes: "VERIFY code availability with NYRx (518) 486-3209 before prescribing"

data_quality:
  field_notes:
    medicaid_covered: "Source says verify availability - uncertain if code is in active fee schedule"
```

### Discontinued Codes:
```yaml
discontinued: true
special_notes: "CODE DISCONTINUED 1/1/2023 - Replaced by A4239"
medicare:
  covered: false
  special_notes: "Claims submitted after 1/1/2023 denied. Use A4239 instead."
```

### "Same as [CODE]" Pattern:
When source says "Same as E0163":
```yaml
# Reference the other code - append tags to string values
clinical_indications:
  - "Same as E0163 (Under Review - High Confidence)"
special_notes: "See E0163 for base coverage criteria (Under Review - High Confidence)"

data_quality:
  field_notes:
    clinical_indications: "Source states 'same as E0163' - inferred complete criteria from E0163 documentation"
```

But still complete the full details by referencing E0163's data.

---

## 📚 Documentation Standards

### Source Citations:
Always include specific references in files:
```markdown
## References

- Medicare LCD L33736 (DME & Surgical Dressings)
- NY Medicaid DME Manual (effective 10/1/2025)
- Source document: DM02, DM05, DM06.md (lines 45-56)
```

### Uncertainty Language:
Be explicit about uncertainty in narrative sections:
- "Typically limited to..." (indicates pattern, not certainty)
- "Generally requires..." (common but not universal)
- "May require..." (possible, not definite)
- "Verify with payer..." (definitely check before assuming)

---

## 🔄 Version Control

This policy may evolve. When updating:

1. Update version number
2. Document changes in git commit
3. Review existing files for compliance with new standards
4. Update `HANDOFF_PROMPT.md` with policy changes

**Version History:**
- **1.3** (2025-10-29): CRITICAL FIX - Tags must be in string values, not YAML comments (comments aren't parsed for HTML)
- **1.2** (2025-10-29): Added comprehensive narrative Markdown tagging guidance for legal protection
- **1.1** (2025-10-29): Simplified tagging system - only (Under Review - High Confidence) and (Under Review) inline
- **1.0** (2025-10-29): Initial policy

---

## ✅ Pre-Commit Checklist

Before committing new reference files:

**YAML Frontmatter:**
- [ ] Read source document(s) completely
- [ ] All data classified by tier (1-4)
- [ ] Tier 2 fields tagged with (Under Review - High Confidence)
- [ ] Tier 3 fields tagged with (Under Review) or blank
- [ ] Tier 4 fields left blank with verification note
- [ ] Critical fields are Tier 1 or 2 only
- [ ] Tags only contain (Under Review - High Confidence) or (Under Review) - no other inline explanations

**Narrative Markdown Content:**
- [ ] All inferred requirements/claims tagged with *(Under Review - High Confidence)* or *(Under Review)*
- [ ] Clinical Overview tagged for coverage claims
- [ ] Coverage Details sections tagged for requirements
- [ ] Documentation Requirements tagged for inferred needs
- [ ] Common Denial Reasons tagged if inferred
- [ ] Tips for Approval tagged for recommendations
- [ ] Important Notes tagged for coverage claims

**Data Quality Tracking:**
- [ ] `data_quality` section completed with field_notes for all YAML tags
- [ ] `data_quality.field_notes` includes explanations for narrative tags
- [ ] Use descriptive keys like `narrative_frequency_claim`, `narrative_approval_tips`, etc.
- [ ] Source document referenced with line numbers in References section

**Quality Checks:**
- [ ] No fabricated or guessed data in critical fields
- [ ] Uncertainty clearly disclosed through tagging
- [ ] Legal protection through comprehensive tag coverage

---

**Remember:** Doctors and patients depend on this information. When in doubt, mark it for review. Uncertainty is honest; incorrect information is harmful.
