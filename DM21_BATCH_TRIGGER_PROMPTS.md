# DM21 Enhancement: Batch Trigger Prompts

**Purpose:** Ready-to-use prompts for enhancing DM21 files from Minimum → Gold Standard compliance

**How to Use:**
1. Copy the prompt for the batch you want to work on
2. Paste into new Claude Code session
3. Claude will read all documentation, then enhance that batch's files
4. Review and commit the changes

---

## Batch 1: Ambulatory & Cervical Traction (High Priority)

**Files:** 7 files | **Estimated Time:** 14 hours | **Priority:** HIGH

```
CRITICAL: Before doing ANY work, you must read these documents to understand the standards:

1. READ: /home/user/Code-Clinical-Coverage/DATA_INTEGRITY_POLICY.md (v1.4)
   - Focus on the "⭐ E0784 Comprehensive Standard (GOLD STANDARD)" section

2. READ: /home/user/Code-Clinical-Coverage/HANDOFF_PROMPT.md

3. READ: clinical-coverage-reference/items/DM13/E0784.md
   - This is the PRIMARY GOLD STANDARD example

4. READ: clinical-coverage-reference/items/M06/K0006.md
   - Use this for items with multiple coverage pathways

After reading, confirm you understand the E0784 Gold Standard requirement.

---

TASK: Enhance DM21 Batch 1 - Ambulatory & Cervical Traction (7 files)

**Files to Process:**
- clinical-coverage-reference/items/DM21/E0830.md
- clinical-coverage-reference/items/DM21/E0840.md
- clinical-coverage-reference/items/DM21/E0849.md
- clinical-coverage-reference/items/DM21/E0850.md
- clinical-coverage-reference/items/DM21/E0855.md
- clinical-coverage-reference/items/DM21/E0856.md
- clinical-coverage-reference/items/DM21/E0860.md

**Source Material:** DM20, DM21, DM22.md (lines 179-218)

**Complexity:** HIGH - DVS authorization, trial/demonstration documentation, multiple device types

**Template to Adapt:** E0784.md (complex PA devices) and K0006.md (multiple pathways)

**Current State:**
- ✅ Complete YAML frontmatter (v1.3 compliant)
- ✅ Clinical Overview section (adequate)
- ✅ Coverage Details section
- ✅ Prescription Checklist section
- ✅ References section
- ❌ **MISSING:** Common Denial Reasons
- ❌ **MISSING:** Tips for Approval
- ❌ **MISSING:** Related Codes

**Enhancement Requirements (ADD these 3 sections to each file):**

### **Common Denial Reasons** (Add 3-5 denials with fixes):
- "DVS authorization not obtained" - Fix solution
- "Trial/demonstration not documented" - Fix solution
- "Medical necessity not established for home traction" - Fix solution
- "Free-standing vs attached frame not justified" - Fix solution
- Other denials specific to that device type

### **Tips for Approval** (Organize by payer):
**Medicare:**
- Document ongoing traction therapy need
- Document trial results showing benefit
- Document safe home use capability
- Medical necessity for home vs clinical traction

**NY Medicaid:**
- DVS authorization process and timing
- F4 frequency (once per 3 years) documentation
- Purchase justification (not rental)
- Trial/demonstration documentation
- Home assessment requirements

### **Related Codes** (Cross-reference within DM21):
- Progressive complexity: E0856 (collar) → E0855 (equipment) → E0850 (stand) → E0849 (frame)
- Attached vs free-standing alternatives
- E0942 (cervical harness) compatibility
- E0948 (cervical frame attachments) compatibility

**Key Coverage Points for This Batch:**
- E0830 (Ambulatory) - Portable/mobile traction, ongoing therapy outside home
- E0840-E0860 - Cervical traction equipment progression
- DVS authorization (#) required for all
- F4 frequency (once per 3 years) standard
- Purchase only (not rental) for most items

**Enhancement Checklist (per file):**
- [ ] Add Common Denial Reasons section (minimum 3 with "Fix:" solutions)
- [ ] Add Tips for Approval section (organized by Medicare/Medicaid)
- [ ] Add Related Codes section (with descriptions and relationships)
- [ ] Enhance Clinical Overview if too brief (2-3 detailed paragraphs)
- [ ] Enhance Prescription Checklist if missing key items
- [ ] Maintain existing YAML (no changes to frontmatter)

**Commit Message Template:**
```
DM21 Batch 1 COMPLETE: Ambulatory & Cervical Traction (7/7 codes)

Enhanced E0830, E0840, E0849, E0850, E0855, E0856, E0860 to E0784 Gold Standard:
- Added Common Denial Reasons (3+ per file with fixes)
- Added Tips for Approval (Medicare/Medicaid organized)
- Added Related Codes with descriptions
- Enhanced Clinical Overview where needed
- Maintained YAML compliance (v1.3)

High priority: DVS authorization, trial/demo documentation, multiple device types
Source: DM20, DM21, DM22.md (lines 179-218)
```
```

---

## Batch 2: Traction Frames & Equipment (High Priority)

**Files:** 7 files | **Estimated Time:** 14 hours | **Priority:** HIGH

```
CRITICAL: Before doing ANY work, you must read these documents to understand the standards:

1. READ: /home/user/Code-Clinical-Coverage/DATA_INTEGRITY_POLICY.md (v1.4)
   - Focus on the "⭐ E0784 Comprehensive Standard (GOLD STANDARD)" section

2. READ: /home/user/Code-Clinical-Coverage/HANDOFF_PROMPT.md

3. READ: clinical-coverage-reference/items/DM13/E0784.md
   - This is the PRIMARY GOLD STANDARD example

4. READ: clinical-coverage-reference/items/M06/K0006.md
   - Use this for items with alternative options (attached vs free-standing)

After reading, confirm you understand the E0784 Gold Standard requirement.

---

TASK: Enhance DM21 Batch 2 - Traction Frames & Equipment (7 files)

**Files to Process:**
- clinical-coverage-reference/items/DM21/E0870.md
- clinical-coverage-reference/items/DM21/E0880.md
- clinical-coverage-reference/items/DM21/E0890.md
- clinical-coverage-reference/items/DM21/E0900.md
- clinical-coverage-reference/items/DM21/E0920.md
- clinical-coverage-reference/items/DM21/E0930.md
- clinical-coverage-reference/items/DM21/E0941.md

**Source Material:** DM20, DM21, DM22.md (lines 219-255)

**Complexity:** HIGH - Specialized frames, attached vs free-standing justification, E0941 may be miscategorized

**Template to Adapt:** E0784.md and K0006.md (alternative coverage options)

**Current State:**
- ✅ Complete YAML frontmatter (v1.3 compliant)
- ✅ Clinical Overview section (adequate)
- ✅ Coverage Details section
- ✅ Prescription Checklist section
- ✅ References section
- ❌ **MISSING:** Common Denial Reasons
- ❌ **MISSING:** Tips for Approval
- ❌ **MISSING:** Related Codes

**Enhancement Requirements (ADD these 3 sections to each file):**

### **Common Denial Reasons** (Add 3-5 denials with fixes):
- "Rental requested but purchase required" - Fix solution
- "Frame type not justified (attached vs free-standing)" - Fix solution
- "Alternative less expensive option available" - Fix solution
- "Medical necessity for specific frame type not documented" - Fix solution
- "DVS authorization not obtained" - Fix solution

### **Tips for Approval** (Organize by payer):
**Medicare:**
- Document why specific frame type needed
- Justify attached vs free-standing selection
- Document medical necessity for frame complexity
- Alternative options considered and rejected

**NY Medicaid:**
- DVS authorization process and timing
- Justify purchase vs rental (if applicable)
- F4 frequency (once per 3 years) documentation
- Document home setup and space requirements
- Frame stability and safety considerations

### **Related Codes** (Cross-reference within DM21):
- Extremity traction: E0870 (attached to footboard) vs E0880 (free-standing)
- Pelvic traction: E0890 (attached to footboard) vs E0900 (free-standing)
- Fracture frames: E0920 (attached to bed) vs E0930 (free-standing)
- E0941 (one-arm drive) - Note relationship to M06A wheelchair accessories
- Compatible harnesses: E0944 (pelvic), E0945 (extremity)
- Complex attachments: E0947 (pelvic), E0948 (cervical)

**Special Note:**
- **E0941** (Manual wheelchair one-arm drive) may be miscategorized in DM21
- Check if this should be in M06A with other manual wheelchair accessories
- Document relationship to M06A category in Related Codes

**Enhancement Checklist (per file):**
- [ ] Add Common Denial Reasons section (minimum 3 with "Fix:" solutions)
- [ ] Add Tips for Approval section (organized by Medicare/Medicaid)
- [ ] Add Related Codes section (with descriptions and relationships)
- [ ] For E0941: Note potential M06A relationship
- [ ] Document attached vs free-standing selection criteria
- [ ] Maintain existing YAML (no changes to frontmatter)

**Commit Message Template:**
```
DM21 Batch 2 COMPLETE: Traction Frames & Equipment (7/7 codes)

Enhanced E0870, E0880, E0890, E0900, E0920, E0930, E0941 to E0784 Gold Standard:
- Added Common Denial Reasons (3+ per file with fixes)
- Added Tips for Approval (Medicare/Medicaid organized)
- Added Related Codes with descriptions and attached vs free-standing alternatives
- Documented E0941 relationship to M06A wheelchair accessories
- Maintained YAML compliance (v1.3)

High priority: Specialized frames, attached vs free-standing justification
Source: DM20, DM21, DM22.md (lines 219-255)
```
```

---

## Batch 3: Traction Accessories & Components (Medium Priority)

**Files:** 6 files | **Estimated Time:** 9 hours | **Priority:** MEDIUM

```
CRITICAL: Before doing ANY work, you must read these documents to understand the standards:

1. READ: /home/user/Code-Clinical-Coverage/DATA_INTEGRITY_POLICY.md (v1.4)
   - Focus on the "⭐ E0784 Comprehensive Standard (GOLD STANDARD)" section

2. READ: /home/user/Code-Clinical-Coverage/HANDOFF_PROMPT.md

3. READ: clinical-coverage-reference/items/DM13/E0784.md
   - This is the PRIMARY GOLD STANDARD example

After reading, confirm you understand the E0784 Gold Standard requirement.

---

TASK: Enhance DM21 Batch 3 - Traction Accessories & Components (6 files)

**Files to Process:**
- clinical-coverage-reference/items/DM21/E0942.md
- clinical-coverage-reference/items/DM21/E0944.md
- clinical-coverage-reference/items/DM21/E0945.md
- clinical-coverage-reference/items/DM21/E0946.md
- clinical-coverage-reference/items/DM21/E0947.md
- clinical-coverage-reference/items/DM21/E0948.md

**Source Material:** DM20, DM21, DM22.md (lines 256-282)

**Complexity:** MEDIUM - Accessories and complex attachments

**Template to Adapt:** E0784.md (streamlined for accessories)

**Current State:**
- ✅ Complete YAML frontmatter (v1.3 compliant)
- ✅ Clinical Overview section (adequate)
- ✅ Coverage Details section
- ✅ Prescription Checklist section
- ✅ References section
- ❌ **MISSING:** Common Denial Reasons
- ❌ **MISSING:** Tips for Approval
- ❌ **MISSING:** Related Codes

**Enhancement Requirements (ADD these 3 sections to each file):**

### **Common Denial Reasons** (Add 3-5 denials with fixes):
- "Accessory not billed with appropriate traction equipment" - Fix solution
- "Replacement not medically necessary (within RUL)" - Fix solution
- "DVS authorization not obtained" - Fix solution
- "Documentation insufficient for complex attachments" - Fix solution
- "Harness/boot type not justified" - Fix solution

### **Tips for Approval** (Organize by payer):
**Medicare:**
- Document traction equipment code being used with accessory
- Justify harness/boot selection for patient's condition
- Document replacement need if within RUL
- Medical necessity for complex attachments

**NY Medicaid:**
- DVS authorization for complex attachments (E0946-E0948)
- F4 frequency considerations for replacements
- Document compatibility with existing traction equipment
- Justify dual bar frames or complex attachments

### **Related Codes** (Cross-reference within DM21):
- **E0942 (Cervical harness)** → Use with cervical traction equipment (E0840-E0860)
- **E0944 (Pelvic harness)** → Use with pelvic traction equipment (E0890, E0900)
- **E0945 (Extremity harness)** → Use with extremity traction equipment (E0870, E0880)
- **E0946 (Dual crossbar frame)** → Complex pelvic traction setup
- **E0947 (Pelvic attachments)** → Use with pelvic frames (E0890, E0900)
- **E0948 (Cervical attachments)** → Use with cervical frames (E0840-E0849)

**Key Coverage Points for This Batch:**
- E0942, E0944, E0945 - Harnesses/boots (accessories)
- E0946, E0947, E0948 - Complex frame attachments requiring DVS authorization
- Must be billed with appropriate traction equipment
- Replacement criteria important for harnesses/boots
- DVS authorization critical for complex attachments

**Enhancement Checklist (per file):**
- [ ] Add Common Denial Reasons section (minimum 3 with "Fix:" solutions)
- [ ] Add Tips for Approval section (organized by Medicare/Medicaid)
- [ ] Add Related Codes section (document traction equipment compatibility)
- [ ] Document which traction codes this accessory pairs with
- [ ] For complex attachments: Emphasize DVS authorization
- [ ] Maintain existing YAML (no changes to frontmatter)

**Commit Message Template:**
```
DM21 Batch 3 COMPLETE: Traction Accessories & Components (6/6 codes)

Enhanced E0942, E0944, E0945, E0946, E0947, E0948 to E0784 Gold Standard:
- Added Common Denial Reasons (3+ per file with fixes)
- Added Tips for Approval (Medicare/Medicaid organized)
- Added Related Codes documenting traction equipment compatibility
- Documented harness/boot selection criteria
- Emphasized DVS authorization for complex attachments
- Maintained YAML compliance (v1.3)

Medium priority: Accessories and complex attachments, compatibility documentation
Source: DM20, DM21, DM22.md (lines 256-282)

🎉 DM21 CATEGORY COMPLETE - All 20 files enhanced to Gold Standard!
```
```

---

## Progress Tracking

**DM21 Traction Equipment (20 files, ~37 hours)**
- [ ] Batch 1: Ambulatory & Cervical Traction (7 files) - HIGH PRIORITY
- [ ] Batch 2: Traction Frames & Equipment (7 files) - HIGH PRIORITY
- [ ] Batch 3: Traction Accessories & Components (6 files) - MEDIUM PRIORITY

---

**Created:** 2025-10-31
**Total Batches:** 3
**Total Files:** 20
**Total Estimated Time:** 37 hours (~1 week)

**Usage:** Copy the appropriate batch prompt and paste into a new Claude Code session to begin enhancement work for that batch.
