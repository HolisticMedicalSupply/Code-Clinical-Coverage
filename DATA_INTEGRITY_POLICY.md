# Data Integrity Policy for Clinical Coverage Reference

**Version:** 1.0
**Effective Date:** 2025-10-29
**Purpose:** Ensure accuracy and reliability of clinical coverage documentation for medical prescribers

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

**Action:** Include with `(Inferred)` tag in YAML or markdown.

**When to use:**
- Combining related statements from source into single field
- Standard Medicare/Medicaid patterns consistently applied
- Medical logic clearly supporting the inference

**Examples:**
```yaml
frequency_limit: "Once every 5 years (reasonable useful lifetime - Inferred)"
# Source says "5-year reasonable useful lifetime" - inferred the frequency wording

special_notes: "Patient must be confined (Inferred from E0163 base criteria)"
# Source says E0165 has "same as E0163" - inferred the base requirement

icd10_primary:
  - "Z99.3 - Dependence on wheelchair"  # Explicitly in source
  - "R26.2 - Difficulty in walking (Inferred)"  # Logically related to mobility issues mentioned
```

```markdown
**Important Notes:**
- Must meet E0163 criteria first (Inferred from source stating "same as E0163 PLUS...")
```

**Quality Check:** Would a medical professional reading the source reach the same conclusion?
- ✅ Almost certainly → Tier 2 with (Inferred) tag
- ❌ Maybe, maybe not → Tier 3

---

### Tier 3: Educated Guess (50-90% Confidence)

**Definition:** Reasonable assumption based on partial information, industry standards, or comparison to similar codes, but not directly verifiable from source.

**Action:** Include with `(Under Review)` tag or `(Verify)` tag.

**When to use:**
- Field likely true but not explicitly stated
- Assumption based on similar codes
- Standard practice but not confirmed in this specific case

**Examples:**
```yaml
requires_specialty_eval: false  # (Under Review - not mentioned in source)
quantity_limit: "1 per patient (Verify with payer)"
face_to_face: false  # (Under Review - typical for accessories but not stated)
```

```markdown
**Documentation Requirements:**
- Standard written order required (Verify specific requirements with payer)
```

**Quality Check:** Is this a guess or semi-certain?
- ✅ Reasonably certain but can't prove → Tier 3 with tag
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
  primary_source: "DM02, DM05, DM06.md"
  source_verified_fields: ["clinical_indications", "medicare.covered", "medicaid_nassau.covered", "prior_auth", "dvs_authorization"]
  inferred_fields: ["some_icd10_codes", "related_codes", "special_notes"]
  needs_verification: ["quantity_limit", "requires_specialty_eval"]
  external_searches: []  # List any web searches performed
  last_verified: "2025-10-29"
  verified_by: "Claude Code"
```

**Field Definitions:**

- `primary_source`: Main research document(s) used
- `source_verified_fields`: Fields directly from source (Tier 1)
- `inferred_fields`: Fields using (Inferred) tag (Tier 2)
- `needs_verification`: Fields using (Under Review) or blank (Tier 3-4)
- `external_searches`: Any web searches conducted, with URLs
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
- [ ] All inferences tagged with (Inferred)
- [ ] All guesses tagged with (Under Review) or left blank
- [ ] `data_quality` section completed
- [ ] Source document referenced

### Periodic Review (Human):
- Review all (Under Review) fields
- Verify all (Inferred) fields
- Fill blanks with additional research
- Update `last_verified` and `verified_by`

---

## 📝 Tagging Examples

### In YAML Frontmatter:
```yaml
medicare:
  covered: true  # Tier 1: Explicit in source
  prior_auth: false  # Tier 1: Source says "NO PA"
  frequency_limit: "Once every 5 years (reasonable useful lifetime - Inferred)"  # Tier 2
  quantity_limit: "1 per patient (Under Review)"  # Tier 3
  special_notes: "KX modifier required when criteria met"  # Tier 1
```

### In Markdown Narrative:
```markdown
**Clinical Requirements:**
- Patient confined to single room (Source: lines 45-48)
- Physically incapable of using regular toilet (Inferred from confinement criteria)

**Important Notes:**
- Typically limited to 1 per 12 months (Under Review - verify with MAC)
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
  covered: true  # (Under Review - source says verify availability)
  special_notes: "VERIFY code availability with NYRx (518) 486-3209 before prescribing"
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
# Reference the other code
clinical_indications:
  - "Same as E0163 (Inferred - source states same criteria)"
special_notes: "See E0163 for base coverage criteria (Inferred)"
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

**Current Version:** 1.0 (Initial policy - 2025-10-29)

---

## ✅ Pre-Commit Checklist

Before committing new reference files:

- [ ] Read source document(s) completely
- [ ] All data classified by tier (1-4)
- [ ] Tier 2 fields tagged with (Inferred)
- [ ] Tier 3 fields tagged with (Under Review) or blank
- [ ] Tier 4 fields left blank with verification note
- [ ] `data_quality` section completed
- [ ] Critical fields are Tier 1 or 2 only
- [ ] Source document referenced in References section
- [ ] No fabricated or guessed data in critical fields

---

**Remember:** Doctors and patients depend on this information. When in doubt, mark it for review. Uncertainty is honest; incorrect information is harmful.
