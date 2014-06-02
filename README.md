Homework Tracking App
=====================

##Models and Associations:

**Location**
* name:string
* has_many :subjects
* has_many :cohorts

**Subject**
* course_number: integer ## meant to be like Rails 101
* title: string
* has_many :locations
* has_many :cohorts


**Enrollment**
* cohort_id: integer
* user_id: integer
* status: string
* has_and_belongs_to_many :users
* has_and_belongs_to_many :cohorts


**Cohort**
* Title: string
* Subject_id: integer
* Location_id: integer
* start_date: date
* end_date: date
* enrollment_size: integer
* has_and_belongs_to_many :enrollments
* belongs_to :location
* belongs_to :subject


**User**
* name: string
* comment_id: integer
* has_and_belongs_to_many :enrollments
* has_many :comments
* has_many :homework_submissions


**Homework_Assignment**
* Title: string
* Description: string
* Due Date: date
* cohort_id: integer
* belongs_to :cohort
* has_many :homework_submissions

**Homework_Submissions**
* Title: string
* Links: string
* Explanation: text
* homework_assignment_id:integer
* belongs_to :homeworks_assignments
* belongs_to :user


**Comments**
* Text: text_field
* user_id: integer
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



	