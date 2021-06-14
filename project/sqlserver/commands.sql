CREATE DATABASE momd
GO

USE momd
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE momd..department (
	department_id INT PRIMARY KEY IDENTITY (1, 1),
	department_name  VARCHAR (50) NOT NULL
)
GO

CREATE TABLE momd..employee (
    employee_id INT PRIMARY KEY IDENTITY (1, 1),
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    phone VARCHAR(20),
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES momd..department (department_id)
)
GO
-------------------------------------------
person (نازح)
  file_number integer (unique, 1st 2 digits: branch_id)
  branch_id integer
  full_name string (5 words, no spaces in composed names)
  mother_name string(3 words)      
  gender_id integer 
  birth_year integer
  martial_status_id 
  degree_id
  nationality_id 
  natioliasim_id
  condition_id
  old_job_id
  current_job_id
  address (! provenance_id ) 

  

familymemberrelation
 file_number 
 member_id

persondocuments
 file_number 
 document_id
		
branch
 branch_id integer
 branch_name string
 
gender
 gender_id 
 gender_name

martialstatus
 status_id
 status_name

familymembers
 member_id
 sequence
 relation
 name
 mothername (!)
 gender
 birth_year
 degree_id
 condition_id

medicalconditions
condition_id
condition_name

degree
 degree_id
 degree_name

natioliasim
 natioliasim_id
 natioliasim_name

nationality
 nationality_id
 nationality_name

job
 job_id
 job_name

document 
 document_id 
 document_type
 document_name
 document_path 

address 
provenance_id 
qada_id
nahya_id

provenance
 provenance_id 
 provenance_name

qada
 qada_id
 qada_name
 provenance_id

nahya 
 nahya_id
 nahya_name



