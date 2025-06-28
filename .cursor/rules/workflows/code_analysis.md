<workflow>

# Code Analysis

Conduct code analysis with multiple inspection options.

## Input Requirement

Before conducting code analysis, the user specify the target git repository.

If needed, AI agent can clone (download) codebase in tmp/ directory as needed.

## Aanalysis Options:

## 1. Software architecture

- Map relationships between layers
- Visualize dependencies
- Identify architectural patterns
- Clarify the role of each layer

## 2. Feature list

- The key features that the product offers for users
- Please distinguish between existing features and possible new features.

## 3. High level architecture

- Visualize high level architecture
- Map relationships between external actors like DB, external APIs, and object storage, .etc
- Identify high level architecture patterns
- If there are some useful diagram in the github repository, please tell me the link of this.

## 3. Key Requirements

- Based on existing codebase, imagine the key requirements
- Please include both functional and non-functional requirements
- And explain the specification of each requirement

## 4. DB tables

- Visualize dependencies and relationships between each table
- Explain the role of each table
- If possible, save diagram as .drwio or .png or .svg in tmp directory
  - Please output the summary and details

### 5. Test Coverage Analysis

- Test coverage percentages
- Untested code
- Assess test quality
- Missing edge case such as boundary values

### 6. Security Review

- Vulnerability checking
- Input validation checks
- Sensitive data handling like masking

## Process:

1. Select analysis option based on user input
2. Run appropriate inspections
3. Generate report


## Output Format:

- Summary
- Detailed findings
- Room for improvement
- Corresponding Code examples
- Provide actionable countermeasures and action plan with sub-tasks

</workflow>
