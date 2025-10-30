# Clinical Coverage Reference Project - Handoff Prompt

## Quick Context (Copy this to a new Claude Code session)

```
I am working on organizing clinical coverage documentation for a DME supplier approved
for specific BOC (Business Operations Code) categories. The goal is to create structured
reference materials that map HCPCS codes to clinical indications and coverage requirements
across Medicare, Medicaid Nassau County, and Medicaid Brooklyn.

CURRENT STATUS:
- Repository contains source research documents (*.md files) with detailed coverage criteria
- ApprovedCategoriesAndCodes.csv contains all BOC codes and HCPCS codes I'm approved for
- Directory structure created: clinical-coverage-reference/items/ with template
- Template uses YAML frontmatter for structured data + Markdown for narrative content

OBJECTIVE:
Create individual reference files for each HCPCS code that will later be fed to Claude Code
for HTML catalog generation. Each file should consolidate clinical indications, ICD-10 codes,
and coverage requirements from the research documents.

FORMAT:
Using Markdown with YAML frontmatter (see _templates/item-template.md)

WORKFLOW:
1. Review research documents to extract coverage info for specific HCPCS codes
2. Fill in template with structured data (YAML) and narrative details (Markdown)
3. Save to clinical-coverage-reference/items/[BOC_CODE]/[HCPCS].md
4. Build incrementally - one BOC category at a time to avoid overload

Please help me continue filling in the structured reference files.
```

---

## Detailed Project Context

### Business Purpose

This is for a DME (Durable Medical Equipment) supplier creating a clinical coverage reference
guide to assist prescribing physicians and facility staff. The guide maps:

- **BOC Codes** → Business Operations Categories (e.g., DM02 = Commodes)
- **HCPCS Codes** → Specific items (e.g., E0163 = Fixed-arm commode)
- **Clinical Indications** → When to prescribe the item
- **Coverage Requirements** → What documentation is needed for reimbursement

### Payer Coverage Areas

Coverage requirements differ by payer:
- **Medicare** - Federal insurance for 65+ and disabled
- **Medicaid Nassau County** - NY Medicaid for Nassau County residents
- **Medicaid Brooklyn** - NY Medicaid for Brooklyn residents

Each payer has different:
- Prior authorization requirements
- Documentation requirements (SWO, DWO, WOPD, Fiscal Order)
- Frequency limits
- Quantity limits
- Special modifiers

### Source Materials

**Primary Sources:**
1. **ApprovedCategoriesAndCodes.csv** - Master list of BOC codes and HCPCS codes
2. **Research Documents** - Named by BOC codes (e.g., "DM02, DM05, DM06.md")
   - These contain detailed coverage criteria extracted from Medicare LCDs and NY Medicaid policies
   - Format: Organized by BOC code, then by HCPCS code within each category
   - Include clinical usage criteria, approval requirements, prescription tips

**Key Research Documents:**
- DM series: Diabetic and medical equipment
- M series: Mobility aids (wheelchairs, walkers, canes)
- OR series: Orthotics
- PD series: Prosthetics and devices
- PE series: Enteral/parenteral nutrition
- R series: Respiratory equipment
- S series: Surgical dressings and support items

### Output Structure

```
clinical-coverage-reference/
├── items/
│   ├── DM02/           # BOC category folders
│   │   ├── E0160.md
│   │   ├── E0163.md
│   │   └── E0165.md
│   ├── DM05/
│   │   ├── E0607.md
│   │   └── A4253.md
│   └── ...
├── _templates/
│   └── item-template.md    # Template for each HCPCS code
└── _generation-materials/  # Future: Compiled materials for HTML generation
```

### Data Structure (YAML Frontmatter)

Each item file contains:

**Identifying Information:**
- BOC code and category name
- HCPCS code and official description
- Common/marketing name

**Clinical Data:**
- List of clinical indications
- ICD-10 diagnosis codes
- Contraindications (if applicable)

**Coverage Requirements (per payer):**
- Covered: yes/no
- Prior authorization required
- Face-to-face visit required
- Documentation type needed
- Modifiers required for billing
- Frequency limits (how often can be ordered)
- Quantity limits (how many units)
- Special notes/requirements

**Metadata:**
- Quick filter flags (requires_prior_auth_any, requires_specialty_eval, etc.)
- Last updated date
- Source document references
- Reviewer name

### Key Terminology Reference

**Medicare:**
- **SWO** = Standard Written Order (basic prescription)
- **DWO** = Detailed Written Order (more specific requirements)
- **WOPD** = Written Order Prior to Delivery (must be signed before delivery)
- **LCD** = Local Coverage Determination (Medicare policy)
- **KX modifier** = Coverage criteria met (used in billing)
- **Face-to-face** = Doctor must see patient in person within 6 months

**NY Medicaid:**
- **DVS Authorization** = Prior approval through eMedNY system
- **Fiscal Order** = NY Medicaid prescription format
- **# code** = Item requiring DVS authorization
- **Frequency codes**: F3, F4, F5, F9, F10 (e.g., F3 = once every 3 years)
- **WME Guidelines** = Wheelchair and Mobility Equipment evaluation requirements

**Clinical:**
- **ICD-10** = Diagnosis coding system
- **MRADL** = Mobility-Related Activities of Daily Living
- **RESNA ATP** = Assistive Technology Professional certification (required for complex items)

### Common Coverage Patterns

**Items requiring prior auth (usually):**
- Power wheelchairs and complex seating
- Specialized monitors (voice synthesizer, integrated lancing)
- Continuous glucose monitors
- Insulin pumps

**Items NOT requiring prior auth (usually):**
- Standard glucose monitor supplies (test strips, lancets)
- Basic commode accessories
- Replacement parts (unless high cost)

**Items with frequency limits:**
- Most DME has 5-year "reasonable useful lifetime" (Medicare)
- Batteries: 2-year replacement
- Wheelchair cushions: 2-3 years
- Glucose monitors: 3-5 years

### Workflow for Filling Templates

**Step 1: Choose a BOC category**
Example: Start with DM02 (Commodes)

**Step 2: Find research document**
Look for file named "DM02*.md" or similar

**Step 3: Extract HCPCS codes**
From ApprovedCategoriesAndCodes.csv, get list of HCPCS codes for that BOC

**Step 4: For each HCPCS code:**
1. Copy template to `items/[BOC]/[HCPCS].md`
2. Fill in YAML frontmatter with structured data
3. Fill in Markdown sections with narrative details
4. Extract from research doc:
   - Clinical indications
   - Medicare coverage criteria
   - Medicaid coverage criteria
   - Common denial reasons
   - Prescription tips

**Step 5: Review and validate**
- Check all required YAML fields are filled
- Ensure coverage details match source documents
- Verify ICD-10 codes are valid

### 🚨 IMPORTANT: Batch Processing for Large Categories

**For BOC categories with MORE THAN 7 HCPCS codes:**

1. **Split into batches** of no more than 7 codes per batch
2. **Create batches logically** based on:
   - Code type (supply codes vs devices)
   - Complexity (simple vs complex coverage criteria)
   - Similarity (related items together)
3. **Process one batch at a time** - complete each batch fully before moving to next:
   - Create all files in batch
   - Commit batch with descriptive message
   - Push batch to remote
   - **Wait for user confirmation** before proceeding to next batch
4. **Use clear batch naming** in commit messages: "DM16 Batch 1: Supply codes (2 files)"

**Example: DM16 has 9 codes - Split into 3 batches:**
- **Batch 1: Supply codes** (A4558, A4595) - 2 files
- **Batch 2: Specialized devices** (E0490, E0491, E0744) - 3 files
- **Batch 3: Standard NMES devices** (E0731, E0740, E0745, E0764) - 4 files

**Rationale:**
- Prevents context exhaustion
- Allows incremental progress tracking
- User can save batch plan in case of failure
- Enables recovery from specific batch if issues occur
- Commits are more atomic and manageable

**Before starting ANY category:**
1. **READ ApprovedCategoriesAndCodes.csv** - Verify the complete list of codes for the category
2. Count total codes in category (cross-check against CSV)
3. If >7 codes, outline batch plan to user
4. Get user confirmation of batch structure
5. Process batches incrementally with user prompting between batches

**Example - Reading the Crosswalk:**
```bash
# View all codes for a specific category (e.g., DM24)
grep "^DM24" /home/user/Code-Clinical-Coverage/ApprovedCategoriesAndCodes.csv
```

The first row for each category shows: `BOC_CODE,CATEGORY_NAME,COUNT,"CODE_LIST"`
- Verify COUNT matches the number of codes listed
- Use CODE_LIST to ensure you create all required files
- Cross-reference with source document to confirm coverage info available

### 🚨 CRITICAL: Data Integrity and Tagging Requirements

**SEE DATA_INTEGRITY_POLICY.md v1.3 for complete guidelines**

This documentation will be used by physicians for clinical and billing decisions. **Accuracy over completeness.**

#### Tags Apply to BOTH YAML and Narrative Markdown

All inferred information must be tagged in **both**:
1. **YAML frontmatter** (structured metadata)
2. **Narrative Markdown** (clinical overview, coverage details, tips, denial reasons)

#### Tagging System

**🚨 CRITICAL: Tags must be IN the string value, NOT in YAML comments!**

YAML comments (#) are not parsed and won't display in HTML. Tags must be part of the actual value:

- **`(Under Review - High Confidence)`** - High confidence inference (90%+ certain)
- **`(Under Review)`** - Educated guess (50-90% certain)
- **Leave blank** - Unknown (<50% certain)
- **No tag** - Direct from source (100% certain)

**YAML Example:**
```yaml
medicare:
  covered: true  # Direct from source - no tag needed
  prior_auth: "false (Under Review - High Confidence)"  # Convert boolean to string with tag
  frequency_limit: "Once every 5 years (Under Review - High Confidence)"  # Append tag to string
  quantity_limit: "1 per patient (Under Review)"  # Append tag to string

icd10_primary:
  - "Z99.3 - Dependence on wheelchair (Under Review - High Confidence)"
  - "R26.2 - Difficulty in walking (Under Review - High Confidence)"
```

**Markdown Example:**
```markdown
## Clinical Overview

This item is **rarely covered** *(Under Review - High Confidence)* due to strict requirements.

**Documentation Requirements:**
- Physician prescription required
- Typically limited to 1 per 12 months *(Under Review - High Confidence)*
- Face-to-face encounter within 6 months *(Under Review)*
```

#### What to Tag in Narrative

**Tag these:**
- Frequency/quantity claims ("Typically 1 per 12 months")
- Documentation requirements inferred from patterns
- Approval tips and best practices
- Common denial reasons if inferred
- Coverage criteria synthesis
- "Usually," "typically," "generally" statements

**Don't tag these:**
- Direct quotes from source
- Item descriptions ("This is a bedpan made of plastic")
- Section headings
- Factual definitions

#### Required: data_quality.field_notes

All tags (YAML and narrative) must have explanations in `data_quality.field_notes`:

```yaml
data_quality:
  field_notes:
    # YAML tags
    prior_auth_medicare: "Not in source; inferred from absence (typical for basic DME)"

    # Narrative tags
    narrative_frequency_claim: "'Typically 1 per 12 months' inferred from replacement cycle, not explicit in source"
    narrative_approval_tips: "Tips section based on general DME best practices, not code-specific guidance"
    narrative_denial_reasons: "Common denials inferred from typical patterns, not specific to this code"
```

#### Legal Protection Rationale

The HTML catalog will display these tags to physicians with a disclaimer:
> "Coverage information populated via AI-assisted research. Fields marked *(Under Review)* or *(Under Review - High Confidence)* should be independently verified."

**This protects:**
1. Prescribers - Know what needs verification
2. Your company - Clear disclosure of uncertainty
3. Legal liability - Reduces claims about incorrect coverage info

#### Critical vs Non-Critical Fields

**MUST be Tier 1 or 2 (no guessing):**
- `covered` (true/false)
- `prior_auth`, `dvs_authorization`
- `modifiers` (billing codes)
- Basic clinical indications
- Coverage requirements

**Can be Tier 3-4 (educated guess or blank):**
- `requires_specialty_eval`
- Extended ICD-10 lists
- Related codes
- Some special notes

### Common Pitfalls to Avoid

1. **Discontinued codes** - Some codes in CSV may be obsolete (e.g., K0553, K0554 replaced by A4239, E2103)
2. **Coverage differences** - Don't assume all payers cover the same; check each
3. **Bundling** - Some accessories are included in wheelchair base, only separately billable as replacements
4. **Frequency confusion** - Medicare uses "reasonable useful lifetime", Medicaid uses specific F-codes
5. **Generic vs specific** - Prescriptions must be specific (not "commode" but "E0163 fixed-arm commode")

### Next Steps When Resuming

**If starting fresh:**
1. Review this handoff prompt
2. Review the template: `clinical-coverage-reference/_templates/item-template.md`
3. Review one research document to understand format
4. Ask which BOC category to start with

**If continuing existing work:**
1. Check what BOC categories already have files created
2. Ask which category or specific HCPCS codes to work on next
3. Continue filling templates using research documents

**If ready for HTML generation:**
1. Verify all desired HCPCS codes have reference files created
2. Review files for completeness and consistency
3. Begin HTML catalog generation using the structured YAML data

### Example Prompt to Resume Work

```
I need to continue building the clinical coverage reference. I've reviewed the HANDOFF_PROMPT.md.

Can you help me fill in the reference files for BOC category [DM02/DM05/etc]?

Please:
1. Review the research document(s) for this category
2. Count total codes in category - if >7 codes, outline a batch plan before starting
3. Create the BOC folder if it doesn't exist
4. For each HCPCS code (or batch if >7 codes), create a file using the template
5. Extract coverage information from the research documents into the structured format
6. If using batches, commit and push each batch, then wait for my confirmation before next batch

Let's work on [X] codes at a time (or Batch [N]) to avoid overload.
```

**Example for large category:**
```
Please proceed with DM16 category.

If it has more than 7 codes, outline your batch plan showing:
- Total codes in category
- How you'll split into batches (with code lists)
- Rationale for batch groupings

Then proceed with Batch 1 only and wait for my confirmation before Batch 2.
```

---

## Technical Notes

- CSV encoding: UTF-8
- Markdown flavor: CommonMark/GitHub-flavored
- YAML frontmatter: Standard YAML 1.2
- Date format: ISO 8601 (YYYY-MM-DD)
- File naming: [HCPCS_CODE].md (e.g., E0163.md)
- Line length: No strict limit, wrap for readability

## Success Criteria

Each completed reference file should:
- [ ] Have all required YAML fields populated
- [ ] Include at least 2-3 clinical indications
- [ ] List relevant ICD-10 codes
- [ ] Document coverage for all 3 payers (Medicare, Nassau, Brooklyn)
- [ ] Include common denial reasons
- [ ] Provide prescription tips for physicians
- [ ] Reference source documents
- [ ] **All inferred YAML fields tagged with (Under Review - High Confidence) or (Under Review)**
- [ ] **All inferred narrative content tagged with *(Under Review - High Confidence)* or *(Under Review)***
- [ ] **Complete data_quality.field_notes with explanations for all tags**
- [ ] **Critical fields (covered, prior_auth, dvs_authorization, modifiers) are Tier 1 or 2 only**

## Questions to Ask If Stuck

1. "Which BOC category should I focus on next?"
2. "Can you show me an example from the research docs for [HCPCS code]?"
3. "What does [term] mean in the context of DME billing?"
4. "Is this code still active or has it been discontinued?"
5. "Are coverage requirements the same for Nassau and Brooklyn?"

---

**Last Updated:** 2025-10-29 (v1.4 - Added batch processing guidelines for categories >7 codes)
**Previous Version:** v1.3 - CRITICAL FIX: tags in string values, not YAML comments
**Project Owner:** [Your Name/Company]
**Repository:** Code-Clinical-Coverage
