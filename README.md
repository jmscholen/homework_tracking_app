homework_tracking_app
=====================


##Models and Associations:
**Location**
* name:string
* has_many :subjects
* has_many :courses

**Subject**
* course_number: integer ## meant to be like Rails 101
* title: string
* has_many :locations
* has_many :courses

**Course**
* title: string
* cohort:references
* subject: references
* location: references
* start_date: date
* end_date: date
* enrollment_size: integer
* belongs_to :location
* belongs_to :subject
* has_one :cohort
* has_many :homework_assignments

**Cohort**
* Title: string
* user: references
* belongs_to :course
* has_many :users

**User**
* name: string
* cohort: references
* comment: references
* has_and_belongs_to_many :cohorts
* has_many :comments
* has_many :homework_submissions


**Homework_Assignment**
* Title: string
* Description: string
* Due Date: date
* course: references
* belongs_to :course
* has_many :homework_submissions

**Homework_Submissions**
* Title: string
* Links: string
* homework_assignment: references
* belongs_to :homeworks_assignments
* belongs_to :user


**Comments**
* Text: text_field
* user: references
* belongs_to :user

##User Stories:

** User-Teacher/Admin:**
* As a teacher, I want to be register for the homework app
* As a teacher, I want to create a class in a location
* As a teacher, I want to create homework assignments.
* As a teacher, I want to be able to edit or delete my homework assignments.
* As a teacher, i want to list requirements for a homework assignments.
* As a teacher, I want to review my students homework submissions.
* As a teacher, I want to be able to communicate with the student on a homework submission.
* As a teacher, I want to be able to mark a students homework submission as completed or needs improvement.

** User-Student:**
* As a student, I want to register for the homework app
* As a student, I want to register for an upcoming class in a location.
* As a student, I want to look at my teachers homework assignment
* As a student, I want to be able to submit my homework submission in the form of checklists, links to external sources, and add lengthy comments to describe. 
* As a student, I want to check-off which requirements that I have met when submitting my homework.
* As a student, I want to be able to edit my homework anytime.



	