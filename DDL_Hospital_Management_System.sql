


-- Creating Department Table: Contains information about service departments and their budgets.

create table Department(
    Department_name varchar(50) primary key,  -- Unique identifier for the department
    Budget varchar(6) check(budget between 50000 and 500000)  -- Budget must be between 50,000 and 500,000
);




-- Creating Sub_dept Table: Represents sub-departments belonging to specific departments.

create table Sub_dept(
    Sub_dept_name varchar(50) primary key,  -- Unique identifier for the sub-department
    Department_name varchar(50) not null,  -- The department to which this sub-department belongs
    CONSTRAINT Department_name_fk foreign key(Department_name) references department on delete cascade  -- Foreign key referencing the department table
);


-- Creating Wardrooms Table: Contains information about available wardrooms and their associated departments and sub-departments.
create table Wardrooms(
    Wardroom_id varchar(5) primary key,  -- Unique identifier for the wardroom
    Sub_dept_name varchar(50) not null,  -- Sub-department where the wardroom belongs
    Department_name varchar(50) not null,  -- Department associated with the wardroom
    Availability varchar(30),  -- Availability status of the wardroom
    foreign key (Sub_dept_name) references Sub_dept on delete cascade,  -- Foreign key referencing sub-dept table
    foreign key (Department_name) references Department on delete cascade,  -- Foreign key referencing department table
    check(availability in ('Available','Non Available'))  -- Availability status must be either "Available" or "Non Available"
);


-- Creating Doctor Table: Contains information about doctors, including personal and professional details.
create table doctor(
    doctor_id varchar(5) PRIMARY KEY,  -- Unique identifier for the doctor
    full_name varchar(100) not null,  -- Full name of the doctor
    job_title varchar(50) not null,  -- Job title of the doctor
    department_name varchar(50) not null references department(department_name) on delete cascade,  -- Department the doctor belongs to
    sub_dept_name varchar(50) not null references sub_dept(sub_dept_name) on delete cascade,  -- Sub-department the doctor works in
    gender varchar(10) not null check (gender in ('Male', 'Female')),  -- Gender of the doctor
    date_of_birth DATE not null,  -- Birthdate of the doctor
    nationality varchar(30) not null,  -- Nationality of the doctor
    experience varchar(30) not null,  -- Years of experience of the doctor
    salary numeric(7,2) not null check (salary BETWEEN 10000 AND 50000),  -- Salary with a range check
    email varchar(50) not null,  -- Doctor's email
    phone_number char(15) not null,  -- Doctor's phone number
    CONSTRAINT uk_doctor UNIQUE (email, phone_number)  -- Ensures email and phone number are unique
);

-- Creating Patient Table: Contains patient information, including personal details and contact information.
create table Patient(
    Patient_ID varchar(5) primary key,  -- Unique identifier for the patient
    Full_name varchar(50) not null,  -- Full name of the patient
    Date_of_birth date not null,  -- Birthdate of the patient
    Gender varchar(6) not null,  -- Gender of the patient
    Phone_Number char(15) unique not null,  -- Patient's phone number (unique)
    Address varchar(50),  -- Address of the patient
    Nationality varchar(30),  -- Nationality of the patient
    Blood_type varchar(3),  -- Blood type of the patient
    check(Gender in ('Female', 'Male'))  -- Gender must be either "Female" or "Male"
);


-- Creating Nurse Table: Contains information about nurses, including personal and professional details.
create table Nurse(
    Nurse_id varchar(5) primary key,  -- Unique identifier for the nurse
    Full_name varchar(50) not null,  -- Full name of the nurse
    Department_name varchar(50) not null,  -- Department the nurse works in
    Sub_dept_name varchar(50) not null,  -- Sub-department the nurse works in
    Gender varchar(10) not null,  -- Gender of the nurse
    Date_of_birth date,  -- Birthdate of the nurse
    Nationality varchar(30) not null,  -- Nationality of the nurse
    Experience varchar(30) not null,  -- Years of experience of the nurse
    Salary numeric(7,2) not null,  -- Salary of the nurse
    Email varchar(50) not null,  -- Nurse's email
    Phone_Number char(15) not null,  -- Nurse's phone number
    check (gender in ('Male', 'Female')),  -- Gender must be either "Male" or "Female"
    check (salary BETWEEN 10000 AND 50000),  -- Salary must be within the given range
    constraints uk_Nurse UNIQUE (Email, Phone_Number),  -- Ensures email and phone number are unique
    foreign key (Department_name) references Department on delete cascade,  -- Foreign key referencing department
    foreign key (Sub_dept_name) references Sub_dept on delete cascade  -- Foreign key referencing sub-dept
);



-- Creating Patient_satisfaction Table: Contains patient satisfaction survey results for healthcare services.
create table Patient_satisfaction (
    Survey_ID varchar(5) primary key,  -- Unique identifier for the survey
    Patient_ID varchar(5) references Patient(Patient_ID) on delete cascade not null,  -- Foreign key referencing patient table
    Doctor_ID varchar(5) references Doctor(Doctor_ID) on delete cascade not null,  -- Foreign key referencing doctor table
    Nurse_ID varchar(5) references Nurse(Nurse_ID) on delete set null,  -- Foreign key referencing nurse table
    Rating_scale int not null check(Rating_scale between 1 and 5),  -- Rating scale for satisfaction, between 1 and 5
    Survey_Date date not null  -- Date the survey was conducted
);



-- Creating Equipment Table: Contains details about medical equipment available in the service centers.
create table Equipment(
    Equipment_ID varchar(5) not null,  -- Unique identifier for the equipment
    Name varchar(20) not null,  -- Name of the equipment
    Department_name varchar(50) not null,  -- Department where the equipment is used
    Wardroom_id varchar(5) not null,  -- Wardroom where the equipment is stored
    Quantity int default 0 check (Quantity >= 0),  -- Quantity of equipment, must be non-negative
    TypeOfEquipment varchar(15),  -- Type of equipment (e.g., one-use, reusable)
    Status varchar(15),  -- Status of the equipment (e.g., good, needs checking)
    primary key(Equipment_ID ,Name ,Department_name ,Wardroom_id),  -- Primary key constraint
    foreign key(Department_name) references Department on delete cascade,  -- Foreign key referencing department table
    foreign key(Wardroom_id) references Wardrooms on delete cascade,  -- Foreign key referencing wardrooms table
    check(TypeOfEquipment in ('one use','reusable')),  -- Valid equipment types
    check(Status in ('good','need checking'))  -- Valid equipment status
);



-- Creating Staff Table: Contains details about staff working in different departments and their roles.
create table Staff(
    Staff_id varchar(5) primary key,  -- Unique identifier for the staff member
    Full_name varchar(50) not null,  -- Full name of the staff member
    Job_Title varchar(50) not null,  -- Job title of the staff member
    Department_name varchar(50) not null,  -- Department the staff member belongs to
    Sub_dept_name varchar(50) not null,  -- Sub-department the staff member works in
    Gender varchar(10) not null,  -- Gender of the staff member
    Date_Of_Birth date,  -- Birthdate of the staff member
    Nationality varchar(30) not null,  -- Nationality of the staff member
    Experience varchar(30) not null,  -- Years of experience of the staff member
    Salary numeric(7,2) not null,  -- Salary of the staff member
    Email varchar(50) unique not null,  -- Staff member's email
    Phone_Number char(15) unique not null,  -- Staff member's phone number
    Foreign key(Department_name) references Department(Department_name) on delete cascade,  -- Foreign key referencing department table
    Foreign key(Sub_dept_name) references Sub_dept(Sub_dept_name) on delete cascade,  -- Foreign key referencing sub-dept table
    Check (Salary Between 1500 and 90000),  -- Salary must be within the given range
    Check (Gender in ('Female','Male'))  -- Gender must be either "Female" or "Male"
);



-- Creating Appointment Table: Contains information about appointments made by patients.
create table Appointment (
    Appointment_id VARCHAR(5) PRIMARY KEY,  -- Unique identifier for the appointment
    Patient_id VARCHAR(5) NOT NULL REFERENCES patient(patient_id) ON DELETE CASCADE,  -- Foreign key referencing patient table
    Department_name VARCHAR(50) NOT NULL REFERENCES department(department_name) ON DELETE CASCADE,  -- Department for the appointment
    Sub_dept_name VARCHAR(50) NOT NULL REFERENCES sub_dept(sub_dept_name) ON DELETE CASCADE,  -- Sub-department for the appointment
    Wardroom_id VARCHAR(5) NOT NULL REFERENCES wardrooms(Wardroom_id) ON DELETE CASCADE,  -- Wardroom where the appointment is scheduled
    Doctor_id VARCHAR(5) NOT NULL REFERENCES doctor(doctor_id) ON DELETE CASCADE,  -- Doctor handling the appointment
    Appointment_date DATE NOT NULL,  -- Date of the appointment
    status VARCHAR(50) CHECK (status IN ('scheduled', 'completed', 'canceled'))  -- Status of the appointment
);