# StudyHub Blueprint v1.0

## Purpose
StudyHub is a medical learning system for textbook content, chapter notes, lecture material, study maps, remediation, uploads, and searchable medical knowledge.

## Core principle
StudyHub is relationship-first, not folder-first.

## Main elements

### 1. Library
Stores source material:
- Textbooks
- Lecture slides
- PDFs
- Kaplan documents
- Lecture notes
- Diagrams/images

A textbook can contain:
Textbook → Units → Chapters → Topics → Subtopics

### 2. Chapter
The main study container for coursework.

A chapter can contain:
- Topics and subtopics
- Chapter notes
- Linked lecture slides
- Linked study maps
- Linked remediation entries
- Tags
- Progress

### 3. Note
There is one note type.

A note can include:
- Title
- Body
- Images
- Attachments
- Tags
- Links

A note can be linked to:
- Chapters
- Topics/subtopics
- Lecture slides
- Study maps
- Remediation entries
- Tags

Chapter notes should be easy to view all at once from the chapter page.

### 4. Study Map
A Study Map is a custom learning workspace.

It has two modes:

Checklist mode:
- Used for review/relearning.

Concept map mode:
- Used to explain relationships and patient care.

Example:
Heart failure → decreased cardiac output → pulmonary edema → assess lung sounds/O2 sat → give diuretic as ordered → monitor potassium.

### 5. Knowledge Graph
The Knowledge Graph is the automatic web of relationships across StudyHub.

Example:
Heart failure ↔ pulmonary edema ↔ fluid overload ↔ loop diuretics ↔ potassium ↔ arrhythmias.

### 6. Remediation
Tracks missed questions and learning gaps.

Fields:
- Exam/source
- Question/topic
- What was missed
- Correct answer
- Explanation
- Why your answer was wrong
- Linked chapters
- Linked notes
- Linked study maps
- Tags
- Status: Needs Review, Reviewed, Mastered

### 7. Uploads
Resource attachments:
- Lecture slides
- PDFs
- Images
- Diagrams
- Practice question documents

Uploads can be linked to notes, chapters, tags, study maps, and remediation.

### 8. Tags
Lightweight labels:
- Potassium
- Loop diuretics
- Electrolytes
- Heart failure
- NCLEX
- Exam 2
- Safety

### 9. Search
Search everything:
- Textbooks
- Chapters
- Topics/subtopics
- Notes
- Study maps
- Remediation
- Uploads
- Tags

## Roadmap

Version 1:
- App shell
- Library
- Textbooks/chapters
- Chapter notes
- Tags
- Basic search

Version 2:
- Supabase sync
- Uploads
- Lecture slide/PDF attachments

Version 3:
- Study maps
- Checklist mode
- Concept map mode
- Progress tracking

Version 4:
- Remediation

Version 5:
- Knowledge graph visualization

Version 6:
- AI-assisted organization
