insert into Department values ('Administrative Service Center', 45000);
insert into Department values ('Financial Service Center', 380000);
insert into Department values ('Diagnostic Service Center', 190000);
insert into Department values ('Therapeutic Service Center', 420000);
insert into Department values ('Support Service Center', 90000);



insert into Sub_dept values ('Admission Center', 'Administrative Service Center');
insert into Sub_dept values ('Information Center', 'Administrative Service Center');
insert into Sub_dept values ('Human Resources', 'Administrative Service Center');

insert into Sub_dept values ('Accounting Center', 'Financial Service Center');
insert into Sub_dept values ('Billing Center', 'Financial Service Center');

insert into Sub_dept values ('Radiology Center', 'Diagnostic Service Center');
insert into Sub_dept values ('Cardiology Center', 'Diagnostic Service Center');

insert into Sub_dept values ('Medical Psychology Center', 'Therapeutic Service Center');
insert into Sub_dept values ('Dietary Center', 'Therapeutic Service Center');
insert into Sub_dept values ('Pharmacy Center', 'Therapeutic Service Center');
insert into Sub_dept values ('Physical Therapy Center', 'Therapeutic Service Center');

insert into Sub_dept values ('Safety', 'Support Service Center');
insert into Sub_dept values ('Housekeeping and Maintenance', 'Support Service Center');


INSERT INTO doctor VALUES ('D0001', 'John Smith', 'Cardiologist', 'Diagnostic Service Center', 'Cardiology Center', 'Male', DATE '1980-05-10', 'American', '15 years', 40000.00, 'john.smith@example.com', '+966508346785');
INSERT INTO doctor VALUES ('D0002', 'Emily Johnson', 'Radiologist', 'Diagnostic Service Center', 'Radiology Center', 'Female', DATE '1985-08-22', 'Canadian', '12 years', 45000.00, 'emily.johnson@example.com', '+966589647789');
INSERT INTO doctor VALUES ('D0003', 'David Wilson', 'Physical Therapist', 'Therapeutic Service Center', 'Physical Therapy Center', 'Male', DATE '1976-11-07', 'British', '20 years', 38000.00, 'david.wilson@example.com', '+966650082233');
INSERT INTO doctor VALUES ('D0004', 'Sarah Davis', 'Dietitian', 'Therapeutic Service Center', 'Dietary Center', 'Female', DATE '1990-02-15', 'Australian', '8 years', 32000.00, 'sarah.davis@example.com', '+966551670432');
INSERT INTO doctor VALUES ('D0005', 'Michael Brown', 'Pharmacist', 'Therapeutic Service Center', 'Pharmacy Center', 'Male', DATE '1982-09-29', 'Indian', '18 years', 42000.00, 'michael.brown@example.com', '+966548346785');


insert into Nurse values ('N0001', 'Nora Joesph', 'Support Service Center', 'Housekeeping and Maintenance', 'Female', '22-JAN-1980', 'Canadian', '6 years', 27000.00, 'nora@gmail.com', '+966567890547');
insert into Nurse values ('N0002', 'Ahmad Khalid', 'Support Service Center', 'Safety', 'Male', '17-MAY-1990', 'Saudi', '2 years', 16000.00, 'ahmad@icloud.com', '+966558767896');
insert into Nurse values ('N0003', 'Noah Arin', 'Administrative Service Center', 'Admission Center', 'Male', '19-MAY-1985', 'French', '4 years', 19000.00, 'noah@hotmail.com', '+966554678989');
insert into Nurse values ('N0004', 'Dalia Joan', 'Administrative Service Center', 'Information Center', 'Female', '19-AUG-1991', 'Indian', '5 years', 20000.00, 'dalia@mail.com', '+966553428999');
insert into Nurse values ('N0005', 'Lola Darin', 'Administrative Service Center', 'Human Resources', 'Female', '27-SEP-1992', 'Irish', '3 years', 17000.00, 'lola@hotmail.com', '+9665555678967');


insert into Patient values ('P0001', 'Bella Smith', '03-JUN-1995', 'Female', '+966582539011', 'Alrabwah', 'American', 'O+');
insert into Patient values ('P0002', 'Gorge Miller', '16-MAY-1989', 'Male', '+966538771683', 'Almalqa', 'British', 'AB-');
insert into Patient values ('P0003', 'Nora Khalid', '21-AUG-2000', 'Female', '+966584390017', 'Qurtoba', 'Saudi', 'O-');
insert into Patient values ('P0004', 'Mohammad Kumar', '07-FEB-1998', 'Male', '+966525339610', 'Alnahdha', 'Indian', 'O+');
insert into Patient values ('P0005', 'Abdulaziz Ahmad', '11-OCT-1995', 'Male', '+966537295618', 'Alremal', 'Saudi', 'B+');


insert into Staff values ('001', 'John Doe', 'Administrative Assistant', 'Administrative Service Center', 'Admission Center', 'Male', TO_DATE('15/5/1990', 'DD,MM,YYYY'), 'American', 'Eight Years', 60000, 'johndoe@gmail.com', '+966123456789');
insert into Staff values ('002', 'Jane Smith', 'Electronic Health Record Manager', 'Administrative Service Center', 'Information Center', 'Female', TO_DATE('20/10/1988', 'DD,MM,YYYY'), 'Canadian', 'Five Years', 55000, 'janesmith@gmail.com', '+966987654321');
insert into Staff values ('003', 'Mike Johnson', 'Pharmacy Clerk', 'Therapeutic Service Center', 'Pharmacy Center', 'Male', TO_DATE('25/3/1995', 'DD,MM,YYYY'), 'British', 'Three Years', 45000, 'mikejohnson@gmail.com', '+9664546789012');
insert into Staff values ('004', 'Sarah Lee', 'Industry Accounting', 'Financial Service Center', 'Accounting Center', 'Female', TO_DATE('12/8/1992', 'DD,MM,YYYY'), 'Australian', 'Six Years', 58000, 'sarahlee@gmail.com', '+9667879012345');
insert into Staff values ('005', 'David Brown', 'Billing Representative', 'Financial Service Center', 'Billing Center', 'Male', TO_DATE('30/11/1997', 'DD,MM,YYYY'), 'French', 'Seven Years', 62000, 'davidbrown@gmail.com', '+966234567689');
insert into Staff values ('006', 'Emily Wang', 'Radiation Therapist', 'Diagnostic Service Center', 'Radiology Center', 'Female', TO_DATE('18/4/1989', 'DD,MM,YYYY'), 'Chines', 'Seven Years', 55000, 'emilywang@gmail.com', '+9663456789901');
insert into Staff values ('007', 'Michael Garcia', 'Cardiovascular Technician', 'Diagnostic Service Center', 'Cardiology Center', 'Male', TO_DATE('22/7/1983', 'DD,MM,YYYY'), 'Spanish', 'Nine Years', 70000, 'michaelgarcia@gmail.com', '+966983112118');
insert into Staff values ('008', 'Thomas Miller', 'Safety Manager', 'Support Service Center', 'Safety', 'Male', TO_DATE('12/7/1987', 'DD,MM,YYYY'), 'German', 'Nine Years', 65000, 'thomasmiller@gmail.com', '+966654321898');
insert into Staff values ('009', 'Jessica Garcia', 'HR Director', 'Administrative Service Center', 'Human Resources', 'Female', TO_DATE('8/1/1991', 'DD,MM,YYYY'), 'British', 'Six Years', 55000, 'jessica.garcia@gmail.com', '+9666543210987');
insert into Staff values ('010', 'Daniel Martinez', 'Medical Billing Specialist', 'Financial Service Center', 'Billing Center', 'Male', TO_DATE('20/6/1984', 'DD,MM,YYYY'), 'Mexican', 'Ten Years', 77000, 'daniel.martinez@gmail.com', '+9660342189876');
insert into Staff values ('011', 'Sophia Nguyen', 'Administrative Coordinator', 'Administrative Service Center', 'Admission Center', 'Female', TO_DATE('28/3/1986', 'DD,MM,YYYY'), 'Vietnam', 'Eight Years', 60000, 'Sophia.nguyen@gmail.com', '+9660321098765');
insert into Staff values ('012', 'William Taylor', 'Privacy Officer', 'Administrative Service Center', 'Information Center', 'Male', TO_DATE('16/10/1983', 'DD,MM,YYYY'), 'Australia', 'Eleven Years', 85000, 'williamtaylor@gmail.com', '+9662109876545');
insert into Staff values ('013', 'Alex Rodriguez', 'Housekeeping Supervisor', 'Support Service Center', 'Housekeeping and Maintenance', 'Male', TO_DATE('30/11/1987', 'DD,MM,YYYY'), 'Mexican', 'Six Years', 40000, 'alex.rodriguez@gmail.com', '+966787912345');
insert into Staff values ('014', 'Alice Chang', 'Accounting Training', 'Financial Service Center', 'Accounting Center', 'Female', TO_DATE('12/4/1983', 'DD,MM,YYYY'), 'Japanese', 'Nine Years', 73000, 'alicechang@gmail.com', '+966689123456');
insert into Staff values ('015', 'Mohammed Ali', 'Pharmacy Assistant', 'Therapeutic Service Center', 'Pharmacy Center', 'Male', TO_DATE('5/1/1993', 'DD,MM,YYYY'), 'Saudi Arabian', 'Four Years', 38000, 'mohammedali@gmail.com', '+966091234567');
insert into Staff values ('016', 'Sophia Kim', 'Radiology Manager', 'Diagnostic Service Center', 'Radiology Center', 'Female', TO_DATE('12/3/1991', 'DD,MM,YYYY'), 'French', 'Five Years', 42000, 'sophiakim@gmail.com', '+966584932016');
insert into Staff values ('017', 'Omar Ahmed', 'Cardiology Consultant', 'Diagnostic Service Center', 'Cardiology Center', 'Male', TO_DATE('13/7/1995', 'DD,MM,YYYY'), 'Jordanian', 'Three Years', 35000, 'omarahmed@gmail.com', '+96667589231');
insert into Staff values ('018', 'Olivia Anderson', 'Maintenance Supervisor', 'Support Service Center', 'Housekeeping and Maintenance', 'Female', TO_DATE('5/12/1989', 'DD,MM,YYYY'), 'German', 'Seven Years', 55000, 'oliviaanderson@gmail.com', '+9661089756435');
insert into Staff values ('019', 'Ryan Scott', 'Safety Coordinator', 'Support Service Center', 'Safety', 'Male', TO_DATE('14/8/1980', 'DD,MM,YYYY'), 'Canadian', 'Ten Years', 80000, 'ryanscott@gmail.com', '+966089754532');
insert into Staff values ('020', 'Ella Lewis', 'HR Assistant', 'Administrative Service Center', 'Human Resources', 'Female', TO_DATE('26/6/1993', 'DD,MM,YYYY'), 'British', 'Six Years', 60000, 'ellalewis@gmail.com', '+966687795042');
