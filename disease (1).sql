-- Create the "diseases" database if it doesn't exist
CREATE DATABASE Diseases;

-- Use the "diseases" database
USE diseases;

-- Create the "Pediatricians" table
CREATE TABLE Pediatricians (
    DiseaseName NVARCHAR(100),
    Symptoms_1 NVARCHAR(100),
    Symptoms_2 NVARCHAR(100),
    Symptoms_3 NVARCHAR(100),
    AffectedOrgan_1 NVARCHAR(100),
    AffectedOrgan_2 NVARCHAR(100)
);

-- Insert data into the Pediatricians table
INSERT INTO Pediatricians (DiseaseName, Symptoms_1, Symptoms_2, Symptoms_3, AffectedOrgan_1, AffectedOrgan_2)
VALUES ('Common Cold', 'Runny nose', 'Sneezing', 'Cough', 'Upper respiratory tract', NULL),
('Strep Throat', 'Sore throat', 'Difficulty swallowing', 'Fever', 'Throat', NULL),
 ('Ear Infection', 'Ear pain', 'Fluid draining from the ear', 'Hearing difficulties', 'Ear', NULL),
 ('Asthma', 'Wheezing', 'Shortness of breath', 'Coughing', 'Airways', 'Lungs'),
('Gastroenteritis', 'Abdominal pain', 'Nausea and vomiting', 'Diarrhea', 'Stomach, Intestines', NULL),
('Bronchiolitis', 'Cough', 'Runny or stuffy nose', 'Rapid breathing', 'Airways', NULL),
('Urinary Tract Infection', 'Frequent urination', 'Pain or burning during urination', 'Abdominal pain', 'Urinary tract', NULL),
('Hand, Foot, and Mouth Disease', 'Fever', 'Sore throat', 'Rash', 'Mouth, Hands, Feet', NULL),
('Conjunctivitis (Pink Eye)', 'Redness and itching', 'Watery or discharge from the eye', 'Swelling', 'Eyes', NULL),
('Chickenpox', 'Itchy rash', 'Fever', 'Fatigue', 'Skin, Nervous system', NULL);




-- Use the "diseases" database
USE diseases;

-- Create the "Allergists" table
CREATE TABLE Allergists (
    DiseaseName NVARCHAR(100),
    Symptoms_1 NVARCHAR(100),
    Symptoms_2 NVARCHAR(100),
    Symptoms_3 NVARCHAR(100),
    AffectedOrgan_1 NVARCHAR(100),
    AffectedOrgan_2 NVARCHAR(100),
    Specialist NVARCHAR(100)
);

-- Insert multiple entries into the "Allergists" table
INSERT INTO Allergists (DiseaseName, Symptoms_1, Symptoms_2, Symptoms_3, AffectedOrgan_1, AffectedOrgan_2, Specialist)
VALUES
    ('Hay Fever', 'Sneezing', 'Runny nose', 'Itchy eyes', 'Respiratory system', NULL, 'Allergist'),
    ('Asthma', 'Wheezing', 'Shortness of breath', 'Coughing', 'Airways', 'Lungs', 'Allergist'),
    ('Food Allergy', 'Hives', 'Nausea', 'Swelling', 'Gastrointestinal system', NULL, 'Allergist'),
    ('Eczema', 'Dry, itchy skin', 'Rash', 'Redness', 'Skin', NULL, 'Allergist'),
    ('Anaphylaxis', 'Difficulty breathing', 'Swollen throat', 'Dizziness', 'Multiple organs', NULL, 'Allergist'),
    ('Allergic Rhinitis', 'Sneezing', 'Nasal congestion', 'Itchy nose', 'Respiratory system', NULL, 'Allergist'),
    ('Atopic Dermatitis', 'Itchy, inflamed skin', 'Rash', 'Dryness', 'Skin', NULL, 'Allergist'),
    ('Drug Allergy', 'Rash', 'Hives', 'Swelling', 'Multiple organs', NULL, 'Allergist'),
    ('Insect Sting Allergy', 'Swelling at the sting site', 'Itching', 'Difficulty breathing', 'Skin, Respiratory system', NULL, 'Allergist'),
    ('Latex Allergy', 'Skin rash', 'Hives', 'Itching', 'Skin, Mucous membranes', NULL, 'Allergist');

-- Use the "diseases" database
USE diseases;

-- Create the "Dermatologists" table
CREATE TABLE Dermatologists (
    DiseaseName NVARCHAR(100),
    Symptoms_1 NVARCHAR(100),
    Symptoms_2 NVARCHAR(100),
    Symptoms_3 NVARCHAR(100),
    AffectedOrgan_1 NVARCHAR(100),
    AffectedOrgan_2 NVARCHAR(100),
    Specialist NVARCHAR(100)
);




-- Insert multiple entries into the "Dermatologists" table
INSERT INTO Dermatologists (DiseaseName, Symptoms_1, Symptoms_2, Symptoms_3, AffectedOrgan_1, AffectedOrgan_2, Specialist)
VALUES
    ('Acne', 'Pimples', 'Blackheads', 'Whiteheads', 'Skin', NULL, 'Dermatologist'),
    ('Eczema', 'Dry, itchy skin', 'Rash', 'Redness', 'Skin', NULL, 'Dermatologist'),
    ('Psoriasis', 'Red, scaly patches', 'Silvery scales', 'Itching', 'Skin', NULL, 'Dermatologist'),
    ('Rosacea', 'Facial redness', 'Visible blood vessels', 'Bumps and pimples', 'Skin', NULL, 'Dermatologist'),
    ('Hives', 'Raised, itchy welts', 'Redness', 'Swelling', 'Skin', NULL, 'Dermatologist'),
    ('Fungal Infections', 'Redness', 'Itching', 'Flaking', 'Skin', NULL, 'Dermatologist'),
    ('Vitiligo', 'Loss of skin color', 'Patchy depigmentation', 'Premature graying of hair', 'Skin', NULL, 'Dermatologist'),
    ('Warts', 'Flesh-colored growths', 'Rough to the touch', 'Black dots', 'Skin', NULL, 'Dermatologist'),
    ('Skin Cancer', 'Unusual moles', 'Skin growths', 'Changes in skin appearance', 'Skin', NULL, 'Dermatologist'),
    ('Dermatitis', 'Skin inflammation', 'Itching', 'Blisters', 'Skin', NULL, 'Dermatologist');

-- Use the "diseases" database
USE diseases;

-- Create the "Ophthalmologists" table
CREATE TABLE Ophthalmologists (
    DiseaseName NVARCHAR(100),
    Symptoms_1 NVARCHAR(100),
    Symptoms_2 NVARCHAR(100),
    Symptoms_3 NVARCHAR(100),
    AffectedOrgan_1 NVARCHAR(100),
    AffectedOrgan_2 NVARCHAR(100),
    Specialist NVARCHAR(100)
);

-- Insert multiple entries into the "Ophthalmologists" table
INSERT INTO Ophthalmologists (DiseaseName, Symptoms_1, Symptoms_2, Symptoms_3, AffectedOrgan_1, AffectedOrgan_2, Specialist)
VALUES
    ('Cataracts', 'Blurry vision', 'Clouded vision', 'Difficulty seeing at night', 'Eyes', NULL, 'Ophthalmologist'),
    ('Glaucoma', 'Increased eye pressure', 'Vision loss', 'Eye pain', 'Eyes', NULL, 'Ophthalmologist'),
    ('Conjunctivitis', 'Redness of the eye', 'Itching', 'Watery eyes', 'Eyes', NULL, 'Ophthalmologist'),
    ('Macular Degeneration', 'Blurred central vision', 'Blank spots', 'Distorted vision', 'Eyes', NULL, 'Ophthalmologist'),
    ('Dry Eye Syndrome', 'Dryness', 'Burning sensation', 'Foreign body sensation', 'Eyes', NULL, 'Ophthalmologist'),
    ('Retinal Detachment', 'Floaters', 'Flashes of light', 'Sudden vision loss', 'Eyes', NULL, 'Ophthalmologist'),
    ('Corneal Ulcer', 'Eye pain', 'Redness', 'Tearing', 'Eyes', NULL, 'Ophthalmologist'),
    ('Amblyopia', 'Reduced vision', 'Lazy eye', 'Poor depth perception', 'Eyes', NULL, 'Ophthalmologist'),
    ('Ptosis', 'Drooping eyelid', 'Tired eyes', 'Vision obstruction', 'Eyes', NULL, 'Ophthalmologist'),
    ('Strabismus', 'Misaligned eyes', 'Double vision', 'Eye strain', 'Eyes', NULL, 'Ophthalmologist');


-- Use the "diseases" database
USE diseases;

-- Create the "Gynecologists" table
CREATE TABLE Gynecologists (
    DiseaseName NVARCHAR(100),
    Symptoms_1 NVARCHAR(100),
    Symptoms_2 NVARCHAR(100),
    Symptoms_3 NVARCHAR(100),
    AffectedOrgan_1 NVARCHAR(100),
    AffectedOrgan_2 NVARCHAR(100),
    Specialist NVARCHAR(100)
);

-- Insert multiple entries into the "Gynecologists" table
INSERT INTO Gynecologists (DiseaseName, Symptoms_1, Symptoms_2, Symptoms_3, AffectedOrgan_1, AffectedOrgan_2, Specialist)
VALUES
    ('Menstrual Disorders', 'Irregular periods', 'Heavy bleeding', 'Painful cramps', 'Reproductive system', NULL, 'Gynecologist'),
    ('Polycystic Ovary Syndrome (PCOS)', 'Irregular periods', 'Excess hair growth', 'Acne', 'Ovaries', 'Reproductive system', 'Gynecologist'),
    ('Endometriosis', 'Pelvic pain', 'Painful periods', 'Pain during intercourse', 'Reproductive system', NULL, 'Gynecologist'),
    ('Pelvic Inflammatory Disease (PID)', 'Pelvic pain', 'Abnormal vaginal discharge', 'Painful urination', 'Reproductive system', NULL, 'Gynecologist'),
    ('Cervical Cancer', 'Abnormal vaginal bleeding', 'Pelvic pain', 'Pain during intercourse', 'Cervix', NULL, 'Gynecologist'),
    ('Ovarian Cysts', 'Pelvic pain', 'Bloating', 'Abdominal discomfort', 'Ovaries', NULL, 'Gynecologist'),
    ('Urinary Tract Infections (UTIs)', 'Burning sensation during urination', 'Frequent urination', 'Cloudy or bloody urine', 'Urinary system', NULL, 'Gynecologist'),
    ('Premenstrual Syndrome (PMS)', 'Mood swings', 'Breast tenderness', 'Fatigue', 'Reproductive system', NULL, 'Gynecologist'),
    ('Vaginal Infections', 'Vaginal itching', 'Abnormal discharge', 'Pain or discomfort', 'Reproductive system', NULL, 'Gynecologist'),
    ('Infertility', 'Difficulty getting pregnant', 'Irregular periods', 'Recurrent miscarriages', 'Reproductive system', NULL, 'Gynecologist');

-- Use the "diseases" database
USE diseases;

-- Create the "Cardiologists" table
CREATE TABLE Cardiologists (
    DiseaseName NVARCHAR(100),
    Symptoms_1 NVARCHAR(100),
    Symptoms_2 NVARCHAR(100),
    Symptoms_3 NVARCHAR(100),
    AffectedOrgan_1 NVARCHAR(100),
    AffectedOrgan_2 NVARCHAR(100),
    Specialist NVARCHAR(100)
);

-- Insert multiple entries into the "Cardiologists" table
INSERT INTO Cardiologists (DiseaseName, Symptoms_1, Symptoms_2, Symptoms_3, AffectedOrgan_1, AffectedOrgan_2, Specialist)
VALUES
    ('Coronary Artery Disease', 'Chest pain', 'Shortness of breath', 'Fatigue', 'Heart', NULL, 'Cardiologist'),
    ('Heart Attack', 'Chest pain', 'Shortness of breath', 'Nausea', 'Heart', NULL, 'Cardiologist'),
    ('Hypertension (High Blood Pressure)', 'Headaches', 'Dizziness', 'Blurred vision', 'Cardiovascular system', NULL, 'Cardiologist'),
    ('Heart Failure', 'Shortness of breath', 'Fatigue', 'Swelling in legs', 'Heart', NULL, 'Cardiologist'),
    ('Arrhythmia', 'Palpitations', 'Dizziness', 'Fainting', 'Heart', NULL, 'Cardiologist'),
    ('Valvular Heart Disease', 'Fatigue', 'Shortness of breath', 'Heart murmur', 'Heart', NULL, 'Cardiologist'),
    ('Congenital Heart Defects', 'Cyanosis (blue-tinted skin)', 'Poor growth', 'Heart murmur', 'Heart', NULL, 'Cardiologist'),
    ('Peripheral Artery Disease', 'Leg pain', 'Numbness or weakness', 'Poor wound healing', 'Peripheral arteries', NULL, 'Cardiologist'),
    ('Cardiomyopathy', 'Fatigue', 'Shortness of breath', 'Swelling in legs', 'Heart', NULL, 'Cardiologist'),
    ('Deep Vein Thrombosis', 'Swelling in leg', 'Pain or tenderness', 'Warmth or redness', 'Veins', NULL, 'Cardiologist');

-- Use the "diseases" database
USE diseases;

-- Create the "Endocrinologists" table
CREATE TABLE Endocrinologists (
    DiseaseName NVARCHAR(100),
    Symptoms_1 NVARCHAR(100),
    Symptoms_2 NVARCHAR(100),
    Symptoms_3 NVARCHAR(100),
    AffectedOrgan_1 NVARCHAR(100),
    AffectedOrgan_2 NVARCHAR(100),
    Specialist NVARCHAR(100)
);

-- Insert multiple entries into the "Endocrinologists" table
INSERT INTO Endocrinologists (DiseaseName, Symptoms_1, Symptoms_2, Symptoms_3, AffectedOrgan_1, AffectedOrgan_2, Specialist)
VALUES
    ('Diabetes Mellitus', 'Frequent urination', 'Excessive thirst', 'Fatigue', 'Pancreas', NULL, 'Endocrinologist'),
    ('Hypothyroidism', 'Fatigue', 'Weight gain', 'Depression', 'Thyroid gland', NULL, 'Endocrinologist'),
    ('Hyperthyroidism', 'Weight loss', 'Rapid heartbeat', 'Anxiety', 'Thyroid gland', NULL, 'Endocrinologist'),
    ('Polycystic Ovary Syndrome (PCOS)', 'Irregular periods', 'Excess hair growth', 'Acne', 'Ovaries', 'Reproductive system', 'Endocrinologist'),
    ('Osteoporosis', 'Bone pain', 'Fractures', 'Loss of height', 'Bones', NULL, 'Endocrinologist'),
    ('Cushings Syndrome', 'Weight gain', 'Round face', 'Muscle weakness', 'Adrenal glands', NULL, 'Endocrinologist'),
    ('Addisons Disease', 'Fatigue', 'Weight loss', 'Low blood pressure', 'Adrenal glands', NULL, 'Endocrinologist'),
    ('Growth Hormone Deficiency', 'Short stature', 'Delayed puberty', 'Reduced muscle mass', 'Pituitary gland', NULL, 'Endocrinologist'),
    ('Hyperparathyroidism', 'Fatigue', 'Kidney stones', 'Bone pain', 'Parathyroid glands', NULL, 'Endocrinologist'),
    ('Pituitary Tumors', 'Headaches', 'Vision problems', 'Hormone imbalances', 'Pituitary gland', NULL, 'Endocrinologist');


-- Use the "diseases" database
USE diseases;

-- Create the "Gastroenterologists" table
CREATE TABLE Gastroenterologists (
    DiseaseName NVARCHAR(100),
    Symptoms_1 NVARCHAR(100),
    Symptoms_2 NVARCHAR(100),
    Symptoms_3 NVARCHAR(100),
    AffectedOrgan_1 NVARCHAR(100),
    AffectedOrgan_2 NVARCHAR(100),
    Specialist NVARCHAR(100)
);

-- Insert multiple entries into the "Gastroenterologists" table
INSERT INTO Gastroenterologists (DiseaseName, Symptoms_1, Symptoms_2, Symptoms_3, AffectedOrgan_1, AffectedOrgan_2, Specialist)
VALUES
    ('Gastroesophageal Reflux Disease (GERD)', 'Heartburn', 'Regurgitation', 'Difficulty swallowing', 'Esophagus', NULL, 'Gastroenterologist'),
    ('Peptic Ulcer Disease', 'Abdominal pain', 'Bloating', 'Nausea', 'Stomach', NULL, 'Gastroenterologist'),
    ('Irritable Bowel Syndrome (IBS)', 'Abdominal pain', 'Bloating', 'Altered bowel habits', 'Intestines', NULL, 'Gastroenterologist'),
    ('Crohns Disease', 'Abdominal pain', 'Diarrhea', 'Fatigue', 'Intestines', NULL, 'Gastroenterologist'),
    ('Ulcerative Colitis', 'Abdominal pain', 'Bloody diarrhea', 'Weight loss', 'Colon', NULL, 'Gastroenterologist'),
    ('Gallstones', 'Abdominal pain', 'Nausea', 'Jaundice', 'Gallbladder', NULL, 'Gastroenterologist'),
    ('Hepatitis', 'Fatigue', 'Jaundice', 'Abdominal pain', 'Liver', NULL, 'Gastroenterologist'),
    ('Pancreatitis', 'Abdominal pain', 'Nausea', 'Fever', 'Pancreas', NULL, 'Gastroenterologist'),
    ('Celiac Disease', 'Abdominal pain', 'Diarrhea', 'Weight loss', 'Intestines', NULL, 'Gastroenterologist'),
    ('Diverticulitis', 'Abdominal pain', 'Fever', 'Change in bowel habits', 'Intestines', NULL, 'Gastroenterologist');



-- Use the "diseases" database
USE diseases;

-- Create the "Nephrologists" table
CREATE TABLE Nephrologists (
    DiseaseName NVARCHAR(100),
    Symptoms_1 NVARCHAR(100),
    Symptoms_2 NVARCHAR(100),
    Symptoms_3 NVARCHAR(100),
    AffectedOrgan_1 NVARCHAR(100),
    AffectedOrgan_2 NVARCHAR(100),
    Specialist NVARCHAR(100)
);

-- Insert multiple entries into the "Nephrologists" table
INSERT INTO Nephrologists (DiseaseName, Symptoms_1, Symptoms_2, Symptoms_3, AffectedOrgan_1, AffectedOrgan_2, Specialist)
VALUES
    ('Chronic Kidney Disease', 'Fatigue', 'Swelling in legs', 'Frequent urination', 'Kidneys', NULL, 'Nephrologist'),
    ('Acute Kidney Injury', 'Decreased urine output', 'Swelling in legs', 'Confusion', 'Kidneys', NULL, 'Nephrologist'),
    ('Kidney Stones', 'Severe pain in the side or back', 'Blood in urine', 'Frequent urination', 'Kidneys', NULL, 'Nephrologist'),
    ('Urinary Tract Infections (UTIs)', 'Burning sensation during urination', 'Frequent urination', 'Cloudy or bloody urine', 'Urinary system', NULL, 'Nephrologist'),
    ('Polycystic Kidney Disease', 'Abdominal pain', 'High blood pressure', 'Blood in urine', 'Kidneys', NULL, 'Nephrologist'),
    ('Glomerulonephritis', 'Blood in urine', 'Foamy urine', 'Swelling in face or ankles', 'Kidneys', NULL, 'Nephrologist'),
    ('Nephrotic Syndrome', 'Swelling in face or ankles', 'Foamy urine', 'Loss of appetite', 'Kidneys', NULL, 'Nephrologist'),
    ('Renal Failure', 'Fatigue', 'Swelling in legs', 'Shortness of breath', 'Kidneys', NULL, 'Nephrologist'),
    ('Hematuria', 'Blood in urine', 'Abdominal pain', 'Frequent urination', 'Urinary system', NULL, 'Nephrologist'),
    ('Hydronephrosis', 'Flank pain', 'Frequent urination', 'Nausea', 'Kidneys', NULL, 'Nephrologist');

-- Use the "diseases" database
USE diseases;

-- Create the "Urologists" table
CREATE TABLE Urologists (
    DiseaseName NVARCHAR(100),
    Symptoms_1 NVARCHAR(100),
    Symptoms_2 NVARCHAR(100),
    Symptoms_3 NVARCHAR(100),
    AffectedOrgan_1 NVARCHAR(100),
    AffectedOrgan_2 NVARCHAR(100),
    Specialist NVARCHAR(100)
);

-- Insert multiple entries into the "Urologists" table
INSERT INTO Urologists (DiseaseName, Symptoms_1, Symptoms_2, Symptoms_3, AffectedOrgan_1, AffectedOrgan_2, Specialist)
VALUES
    ('Urinary Tract Infections (UTIs)', 'Burning sensation during urination', 'Frequent urination', 'Cloudy or bloody urine', 'Urinary system', NULL, 'Urologist'),
    ('Kidney Stones', 'Severe pain in the side or back', 'Blood in urine', 'Frequent urination', 'Kidneys', NULL, 'Urologist'),
    ('Bladder Cancer', 'Blood in urine', 'Frequent urination', 'Pelvic pain', 'Bladder', NULL, 'Urologist'),
    ('Prostate Cancer', 'Difficulty urinating', 'Weak urine flow', 'Blood in semen', 'Prostate', NULL, 'Urologist'),
    ('Erectile Dysfunction', 'Difficulty achieving or maintaining an erection', 'Reduced sexual desire', 'Premature ejaculation', 'Genital organs', NULL, 'Urologist'),
    ('Benign Prostatic Hyperplasia (BPH)', 'Frequent urination', 'Weak urine flow', 'Nocturia', 'Prostate', NULL, 'Urologist'),
    ('Urinary Incontinence', 'Leakage of urine', 'Frequent urination', 'Sudden urge to urinate', 'Urinary system', NULL, 'Urologist'),
    ('Testicular Cancer', 'Lump or swelling in the testicles', 'Testicular pain', 'Heaviness in the scrotum', 'Testicles', NULL, 'Urologist'),
    ('Cystitis', 'Frequent urination', 'Burning sensation during urination', 'Pelvic pain', 'Bladder', NULL, 'Urologist'),
    ('Hydrocele', 'Swelling in the scrotum', 'Discomfort or pain', 'Heaviness in the scrotum', 'Scrotum', NULL, 'Urologist');


-- Use the "diseases" database
USE diseases;

-- Create the "Specialties" table
CREATE TABLE Specialties (
    SpecialtyID INT PRIMARY KEY,
    SpecialtyName NVARCHAR(100)
);

-- Insert specialty data
INSERT INTO Specialties (SpecialtyID, SpecialtyName)
VALUES
    (1, 'Pediatrics'),
    (2, 'Allergy and Immunology'),
    (3, 'Dermatology'),
    (4, 'Ophthalmology'),
    (5, 'Gynecology'),
    (6, 'Cardiology'),
    (7, 'Endocrinology'),
    (8, 'Gastroenterology'),
    (9, 'Nephrology'),
    (10, 'Urology');

-- Modify the "Pediatricians" table
ALTER TABLE Pediatricians
ADD SpecialtyID INT,
    FOREIGN KEY (SpecialtyID) REFERENCES Specialties(SpecialtyID);

-- Modify the "Allergists" table
ALTER TABLE Allergists
ADD SpecialtyID INT,
    FOREIGN KEY (SpecialtyID) REFERENCES Specialties(SpecialtyID);

-- Modify the "Dermatologists" table
ALTER TABLE Dermatologists
ADD SpecialtyID INT,
    FOREIGN KEY (SpecialtyID) REFERENCES Specialties(SpecialtyID);

-- Modify the "Ophthalmologists" table
ALTER TABLE Ophthalmologists
ADD SpecialtyID INT,
    FOREIGN KEY (SpecialtyID) REFERENCES Specialties(SpecialtyID);

-- Modify the "Gynecologists" table
ALTER TABLE Gynecologists
ADD SpecialtyID INT,
    FOREIGN KEY (SpecialtyID) REFERENCES Specialties(SpecialtyID);

-- Modify the "Cardiologists" table
ALTER TABLE Cardiologists
ADD SpecialtyID INT,
    FOREIGN KEY (SpecialtyID) REFERENCES Specialties(SpecialtyID);

-- Modify the "Endocrinologists" table
ALTER TABLE Endocrinologists
ADD SpecialtyID INT,
    FOREIGN KEY (SpecialtyID) REFERENCES Specialties(SpecialtyID);

-- Modify the "Gastroenterologists" table
ALTER TABLE Gastroenterologists
ADD SpecialtyID INT,
    FOREIGN KEY (SpecialtyID) REFERENCES Specialties(SpecialtyID);

-- Modify the "Nephrologists" table
ALTER TABLE Nephrologists
ADD SpecialtyID INT,
    FOREIGN KEY (SpecialtyID) REFERENCES Specialties(SpecialtyID);

-- Modify the "Urologists" table
ALTER TABLE Urologists
ADD SpecialtyID INT,
    FOREIGN KEY (SpecialtyID) REFERENCES Specialties(SpecialtyID);

SELECT * FROM Pediatricians;

SELECT DiseaseName, Symptoms_1, AffectedOrgans FROM Allergists;

SELECT * FROM Dermatologists WHERE SpecialtyID = 3;

SELECT p.DiseaseName, g.Symptoms_1 FROM Pediatricians p INNER JOIN Gynecologists g ON p.SpecialtyID = g.SpecialtyID;

SELECT * FROM Cardiologists WHERE Symptoms_1 = 'Chest pain';

SELECT * FROM Endocrinologists ORDER BY DiseaseName ASC;

SELECT DISTINCT DiseaseName FROM Gastroenterologists;

SELECT COUNT(*) AS TotalEntries FROM Nephrologists;

SELECT * FROM Urologists WHERE DiseaseName LIKE '%stone%';