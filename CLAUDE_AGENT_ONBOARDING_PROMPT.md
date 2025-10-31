# Claude Agent Onboarding Prompt Template

Copy-paste this prompt at the start of each new Claude Code session to ensure the agent reads documentation and aligns to standards before working.

---

## Standard Onboarding Prompt (Copy This)

```
I'm working on the Clinical Coverage Reference project for a DME supplier.

CRITICAL: Before doing ANY work, you must read these documents to understand the standards:

1. READ: /home/user/Code-Clinical-Coverage/DATA_INTEGRITY_POLICY.md (v1.4)
   - Focus on the "⭐ E0784 Comprehensive Standard (GOLD STANDARD)" section
   - Understand the four-tier confidence tagging system
   - Note the v1.3 critical requirement: tags IN string values, not YAML comments

2. READ: /home/user/Code-Clinical-Coverage/HANDOFF_PROMPT.md
   - Focus on the "⭐ GOLD STANDARD: E0784 Comprehensive Model" section
   - Understand workflow and batch processing requirements

3. READ: clinical-coverage-reference/items/DM13/E0784.md
   - This is the GOLD STANDARD example
   - All files should meet or exceed this level of detail
   - Note the comprehensive narrative sections (Clinical Overview, Prescription Checklist, Common Denial Reasons, Tips for Approval, Related Codes, References)

4. READ: clinical-coverage-reference/_templates/item-template.md
   - Template structure for all files

After reading these documents, confirm your understanding of:
- [ ] The E0784 Gold Standard requirement
- [ ] When to use Gold Standard vs. Minimum
- [ ] Tag format (v1.3): Tags must be IN string values like "false (Under Review)"
- [ ] Required YAML fields (boc_category, separate medicaid_nassau/medicaid_brooklyn, etc.)
- [ ] Required narrative sections for Gold Standard files
- [ ] data_quality.field_notes requirements with source quotes

THEN proceed with the following task:

[TASK DESCRIPTION - Fill this in for each session:]
Category: [BOC CODE - e.g., M06A, DM13, etc.]
Batch: [BATCH NUMBER and description]
Files to process: [List of HCPCS codes]
Source material: [Source document name and relevant line numbers]

Work Requirements:
- Use E0784 Gold Standard level for [all files / specify which files]
- Create comprehensive narrative sections (not minimal)
- Include Prescription Checklist, Common Denial Reasons, Tips for Approval
- Add detailed field_notes with source quotes
- Commit with clear batch description when complete

Question: Are you ready to proceed after reading the documentation?
```

---

## Example Usage

### Example 1: Starting M06A Work

```
I'm working on the Clinical Coverage Reference project for a DME supplier.

CRITICAL: Before doing ANY work, you must read these documents to understand the standards:

1. READ: /home/user/Code-Clinical-Coverage/DATA_INTEGRITY_POLICY.md (v1.4)
   - Focus on the "⭐ E0784 Comprehensive Standard (GOLD STANDARD)" section
   - Understand the four-tier confidence tagging system
   - Note the v1.3 critical requirement: tags IN string values, not YAML comments

2. READ: /home/user/Code-Clinical-Coverage/HANDOFF_PROMPT.md
   - Focus on the "⭐ GOLD STANDARD: E0784 Comprehensive Model" section
   - Understand workflow and batch processing requirements

3. READ: clinical-coverage-reference/items/DM13/E0784.md
   - This is the GOLD STANDARD example
   - All files should meet or exceed this level of detail
   - Note the comprehensive narrative sections

4. READ: clinical-coverage-reference/_templates/item-template.md
   - Template structure for all files

After reading these documents, confirm your understanding of:
- [ ] The E0784 Gold Standard requirement
- [ ] When to use Gold Standard vs. Minimum
- [ ] Tag format (v1.3): Tags must be IN string values like "false (Under Review)"
- [ ] Required YAML fields (boc_category, separate medicaid_nassau/medicaid_brooklyn, etc.)
- [ ] Required narrative sections for Gold Standard files
- [ ] data_quality.field_notes requirements with source quotes

THEN proceed with the following task:

Category: M06A (Manual Wheelchair Accessories)
Batch: Batch 13 - Positioning Accessories
Files to process: E2300, E2301, E2310, E2311, E2312, E2313, E2321
Source material: M06, M06A, M07.md (lines 400-450)

Work Requirements:
- Use E0784 Gold Standard level for all files (these require PA and have complex criteria)
- Create comprehensive narrative sections with Clinical Overview, Coverage Details, Prescription Checklist, Common Denial Reasons, Tips for Approval, Related Codes, References
- Include detailed field_notes with source quotes
- Commit with clear batch description when complete: "M06A Batch 13 COMPLETE: Positioning Accessories (7/7 codes)"

Question: Are you ready to proceed after reading the documentation?
```

### Example 2: Starting New Category

```
I'm working on the Clinical Coverage Reference project for a DME supplier.

CRITICAL: Before doing ANY work, you must read these documents to understand the standards:

[... same documentation reading instructions ...]

THEN proceed with the following task:

Category: DM18 (Pneumatic Compression Devices)
Batch: Batch 1 - Compression Pumps and Sleeves
Files to process: E0650, E0651, E0652, E0655, E0656, E0657, E0660
Source material: DM16, DM17, DM18.md (lines 50-120)

Work Requirements:
- Use E0784 Gold Standard level for ALL files (high-cost items with PA requirements)
- These are complex DME items - need full comprehensive documentation
- Include lymphedema-specific clinical criteria
- Document Medicare NCD and LCD references
- Commit with: "DM18 Batch 1 COMPLETE: Compression Pumps and Sleeves (7/7 codes)"

Question: Are you ready to proceed after reading the documentation?
```

---

## Quick Reference Card (For Frequent Users)

**Minimal version if Claude agent has worked on project before:**

```
Before starting: Have you read DATA_INTEGRITY_POLICY.md v1.4 and reviewed E0784.md recently?

Task: [CATEGORY] Batch [#] - [Description]
Files: [HCPCS codes]
Source: [Document] (lines X-Y)
Standard: E0784 Gold Standard
Commit as: "[CATEGORY] Batch [#] COMPLETE: [Description] ([#/# codes])"

Proceed when ready.
```

---

## Tips for Using This Prompt

1. **Copy the full prompt** for new agents or agents that haven't worked on the project recently
2. **Use the quick reference** for agents actively working through batches
3. **Always specify:**
   - Category (BOC code)
   - Batch number and description
   - Specific HCPCS codes to process
   - Source material location
   - Whether Gold Standard or Minimum applies
4. **Include commit message template** so agent knows expected format

---

## Customization Guide

Replace these placeholders each time:
- `[BOC CODE]` - e.g., M06A, DM13, M07A
- `[BATCH NUMBER and description]` - e.g., "Batch 5 - Tire Components"
- `[List of HCPCS codes]` - e.g., E2205, E2206, E2207, E2208, E2209, E2210, E2211
- `[Source document name]` - e.g., M06, M06A, M07.md
- `[relevant line numbers]` - e.g., (lines 197-256)
- `[all files / specify which files]` - Specify if only some need Gold Standard
- `[CATEGORY] Batch [#] COMPLETE: [Description] ([#/# codes])` - Commit message template

---

**Last Updated:** 2025-10-30
**Policy Version:** DATA_INTEGRITY_POLICY.md v1.4
