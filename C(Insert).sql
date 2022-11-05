USE [Hallo Pharmacy]
GO

INSERT INTO MsVendor
VALUES
('VN001', 'Global', '081123456789', 'Jalan Apel no 19', 'global@gmail.com', '2010'),
('VN002', 'Sederhana', '081850275937', 'Jalan Jeruk no 30', 'ordersederhana@gmail.com', '2005'),
('VN003', 'Pharma', '082173017496', 'Jalan Nanas no 10', 'pharmapharma@yahoo.com', '2016'),
('VN004', 'Super', '082137205829', 'Jalan Duku no 88', 'superpharma@yahoo.com', '1998'),
('VN005', 'Kecil', '081324737492', 'Jalan Pisang no 71', 'smallpharma@yahoo.com', '2012'),
('VN006', 'Sedang', '082164265927', 'Jalan Nangka no 10', 'sedangpharma@gmail.com', '2002'),
('VN007', 'Besar', '0611275539', 'Jalan Kedondong no 25', 'bigpharma@gmail.com', '2005'),
('VN008', 'Pahlawan', '081483055812', 'Jalan Durian no 36', 'pahlawan@gmail.com', '2017'),
('VN009', 'Surya', '081749284028', 'Jalan Mangga no 49', 'suryaphrma@yahoo.com', '2004'),
('VN010', 'Terbaik', '082175947598', 'Jalan Manggis no 99', 'bestpharma@gmail.com', '2019'),
('VN011', 'Sehat', '0615937582', 'Jalan Jambu no 3', 'ordersehat@gmail.com', '2000'),
('VN012', 'Bahagia', '0618503759', 'Jalan Pepaya no 32', 'bahagiapharma@yahoo.com', '1999'),
('VN013', 'Senang', '0618463857', 'Jalan Kelapa no 11', 'senangpharma@gmail.com', '2020'),
('VN014', 'Bagus', '0615739576', 'Jalan Semangka no 100', 'goodpharma@yahoo.com', '2021'),
('VN015', 'Dbest', '082175937596', 'Jalan Melon no 8', 'thebestpharma@gmail.com', '2010');

INSERT INTO MsEmployee
VALUES
('EM001', 'Anto Santoso', 'anto@hallo.com', '082175937759', 'Jalan Anjing no 10', '2002-02-02', 'Male', 10000000),
('EM002', 'Andi', 'andi@hallo.com', '081658365983', 'Jalan Kucing no 49', '2000-12-31', 'Male', 15000000),
('EM003', 'Budi Anu', 'budi@hallo.com', '084646382643', 'Jalan Sapi no 88', '1988-11-23', 'Male', 12500000),
('EM004', 'Mawar', 'mawar@hallo.com', '081759375976', 'Jalan Ayam no 77', '1999-05-12', 'Female', 11000000),
('EM005', 'Didi Jaya', 'didi@hallo.com', '082165969365', 'Jalan Kambing no 58', '2000-05-05', 'Male', 10000000),
('EM006', 'Badang', 'badang@hallo.com', '082175936572', 'Jalan Babi no 43', '1998-01-04', 'Male', 12000000),
('EM007', 'Fajar Hermawan', 'fajar@hallo.com', '081746394611', 'Jalan Gajah no 42', '1960-09-30', 'Male', 15000000),
('EM008', 'Antono', 'antono@hallo.com', '081759365938', 'Jalan Babi no 21', '1990-10-17', 'Male', 20000000),
('EM009', 'Susi', 'susi@hallo.com', '081758375638', 'Jalan Anjing no 75', '2000-02-26', 'Female', 16000000),
('EM010', 'Anggrek', 'anggrek@hallo.com', '082275937493', 'Jalan Burung no 1', '1999-11-12', 'Female', 14500000),
('EM011', 'Bunga', 'bunga@hallo.com', '081365836538', 'Jalan Burung no 111', '2000-03-28', 'Female', 10000000),
('EM012', 'Adi', 'adi@hallo.com', '082176593694', 'Jalan Ikan no 22', '1980-01-01', 'Male', 20000000),
('EM013', 'Susilo', 'susilo@hallo.com', '082111222333', 'Jalan Monyet no 89', '1969-12-19', 'Male', 12000000),
('EM014', 'Bambang Marwan', 'bambang@hallo.com', '081797487467', 'Jalan rubah no 77', '2001-06-20', 'Male', 13000000),
('EM015', 'Lona Kiki', 'lona@hallo.com', '081748369568', 'Jalan Monyet no 19', '1997-08-28', 'Female', 19000000);


INSERT INTO MsCustomer
VALUES
('CU001', 'Steven', '081265936975', 'Jalan Komputer no 19', 'steven@hallo.com', 'Male', 'password', '2000-10-20'),
('CU002', 'Seiji', '081243272482', 'Jalan Printer no 20', 'seiji@hallo.com', 'Male', '12345678', '2001-01-13'),
('CU003', 'Freddie', '081375936593', 'Jalan Laptop no 10', 'freddie@hallo.com', 'Male', 'pharmapass', '2003-05-18'),
('CU004', 'Lucy', '081675600984', 'Jalan Kamera no 38', 'lucy@hallo.com', 'Female', 'hellopass', '2006-12-26'),
('CU005', 'Alvin', '081365369759', 'Jalan Ponsel no 39', 'alvin@hallo.com', 'Male', 'goodpass', '2005-11-21'),
('CU006', 'Cecilia', '0618743686', 'Jalan Jendela no 67', 'cecilia@hallo.com', 'Female', 'strong password', '2009-07-12'),
('CU007', 'Matthew', '081374871231', 'Jalan Pinguin no 93', 'matthew@hallo.com', 'Male', 'hello pharmacy', '1990-04-30'),
('CU008', 'Christian', '081217864412', 'Jalan Apel no 110', 'christian@hallo.com', 'Male', 'learn sql', '1908-07-12'),
('CU009', 'Pohadi', '081290172817', 'Jalan Roda no 88', 'pohadi@hallo.com', 'Male', 'for hello pharma', '1960-03-21'),
('CU010', 'Aurellia', '081210983456', 'Jalan Layar no 37', 'aurellia@hallo.com', 'Female', 'best password', '1998-01-26'),
('CU011', 'Albert', '0616758753', 'Jalan Jedela no 57', 'albert@hallo.com', 'Male', 'nice pass', '2001-08-29'),
('CU012', 'Ricky', '0617297123', 'Jalan Telepon no 17', 'ricky@hallo.com', 'Male', 'pharmapharma', '1970-11-22'),
('CU013', 'Gray', '081675753210', 'Jalan Komputer no 101', 'gray@hallo.com', 'Male', 'goodpharma', '1980-03-18'),
('CU014', 'Kelly', '081285701909', 'Jalan Pinguin no 1', 'kelly@hallo.com', 'Female', 'hellohello', '1978-09-05'),
('CU015', 'Alice', '081217429472', 'Jalan Apel no 11', 'alice@hallo.com', 'Female', 'hellopass', '1989-12-06');

INSERT INTO MsMedicineCategory
VALUES
('CT001', 'Analgesics'),
('CT002', 'Antacids'),
('CT003', 'Antianxiety Drugs'),
('CT004', 'Antiarrhythmics'),
('CT005', 'Antibacterials'),
('CT006', 'Antibiotics'),
('CT007', 'Thrombolytics'),
('CT008', 'Anticonvulsants'),
('CT009', 'Antidepressants'),
('CT010', 'Antidiarrheals'),
('CT011', 'Antifungals'),
('CT012', 'Antihypertensives'),
('CT013', 'Antineoplastics'),
('CT014', 'Barbiturates'),
('CT015', 'Corticosteroids');

INSERT INTO MsMedicine
VALUES
('MD001', 'CT008', 'Tegretol', 10000, 'It works by decreasing nerve impulses that cause seizures and pain.', 100),
('MD002', 'CT006', 'Bactrim', 5000, 'Used to treat ear infections, urinary tract infections, bronchitis, traveler diarrhea, shigellosis, and Pneumocystis jiroveci pneumonia', 50),
('MD003', 'CT004', 'Amiodarone', 40000, 'Used to treat heart rate problems that are life threatening. It�s usually given when other drugs haven�t worked.', 75),
('MD004', 'CT013', 'Adriamycin', 80000, 'Used to treat different types of cancers that affect the breast, bladder, kidneys, ovaries, thyroid, stomach, lungs, bones, nerve tissues, joints, and soft tissues. ', 47),
('MD005', 'CT008', 'Lamotrigine', 38000, 'Used alone or with other medications to prevent or control seizures (epilepsy).', 45),
('MD006', 'CT009', 'Citalopram', 100000, 'Antidepressant medication that affects neurotransmitters, the chemicals that nerves within the brain use to communicate with each other.', 123),
('MD007', 'CT001', 'Salicylates', 63000, 'Salicylic acid and acetylsalicylic acid have analgesic (pain relieving), anti-inflammatory, and antipyretic (temperature-lowering) effects.', 38),
('MD008', 'CT005', 'Doxycycline', 55000, 'Used to treat many different bacterial infections, such as acne, urinary tract infections, intestinal infections, respiratory infections, eye infections, gonorrhea, chlamydia, syphilis, periodontitis (gum disease), and others.', 49),
('MD009', 'CT009', 'Paroxetine', 37000, 'Oral drug that is used for treating depression.', 37),
('MD010', 'CT004', 'Quinidine', 56000, 'Used to help treat and prevent atrial fibrillation or flutter and ventricular arrhythmias, types of irregular heart rate.', 1),
('MD011', 'CT007', 'Activase', 7000, 'Used for the treatment of acute ischemic stroke (AIS).', 84),
('MD012', 'CT002', 'Pepto-Bismol', 47000, 'Used to treat occasional upset stomach, heartburn, and nausea.', 84),
('MD013', 'CT010', 'Loperamide', 8000, 'Used to treat diarrhea and reduce the amount of stool in people who have an ileostomy', 29),
('MD014', 'CT012', 'Carvedilol', 58000, 'Used to treat high blood pressure and heart failure.', 3),
('MD015', 'CT013', 'Oxaliplatin', 40000, 'Used to treat colorectal cancer.', 39),
('MD016', 'CT002', 'Calcium carbonate antacids', 48000, 'Used in conditions of calcium deficiency such as postmenopausal osteoporosis since some of the calcium is absorbed into the body.', 58),
('MD017', 'CT010', 'Florastor', 5000, 'Used as a probiotic, or "friendly bacteria," to prevent the growth of harmful bacteria in the stomach andn intestines.', 59),
('MD018', 'CT001', 'Antimigraine agents', 100000, 'Used to treat migraine headaches.', 186),
('MD019', 'CT014', 'Pentobarbital', 32000, 'Used as a sedative, a preanesthetic, and to control convulsions in emergencies.', 158),
('MD020', 'CT004', 'Amiodarone', 19000, 'Used to treat heart rate problems that are life threatening. It�s usually given when other drugs haven�t worked.', 14),
('MD021', 'CT007', 'Cathflo Activase', 10000, 'Used to dissolve blood clots.', 100),
('MD022', 'CT006', 'Ciprofloxacin', 10000, 'Used to treat serious infections, or infections when other anitbiotics have not worked.', 100),
('MD023', 'CT011', 'Ketoconazole', 10000, 'Used to treat infections caused by a fungus or yeast.', 100),
('MD024', 'CT003', 'Chlordiazepoxide', 10000, 'Used to treat anxiety and acute alcohol withdrawal.', 100),
('MD025', 'CT015', 'Hydrocortisone', 10000, 'Used to treat swelling, itching and irritation.', 100);

INSERT INTO PurchaseTransactionHeader
VALUES
('PC001', 'EM010', 'VN001', '2020-12-27'),
('PC002', 'EM001', 'VN004', '2020-12-18'),
('PC003', 'EM006', 'VN012', '2020-12-30'),
('PC004', 'EM014', 'VN009', '2020-12-21'),
('PC005', 'EM004', 'VN006', '2021-1-29'),
('PC006', 'EM009', 'VN003', '2021-1-19'),
('PC007', 'EM015', 'VN007', '2021-2-04'),
('PC008', 'EM003', 'VN010', '2021-3-05'),
('PC009', 'EM006', 'VN002', '2021-5-18'),
('PC010', 'EM001', 'VN005', '2021-6-28'),
('PC011', 'EM005', 'VN013', '2021-6-28'),
('PC012', 'EM007', 'VN014', '2021-7-08'),
('PC013', 'EM002', 'VN014', '2021-8-05'),
('PC014', 'EM008', 'VN004', '2021-10-18'),
('PC015', 'EM007', 'VN007', '2021-12-27');

INSERT INTO SalesTransactionHeader
VALUES
('SL001', 'EM001', 'CU015', '2021-1-10'),
('SL002', 'EM009', 'CU004', '2021-1-16'),
('SL003', 'EM005', 'CU005', '2021-2-27'),
('SL004', 'EM005', 'CU008', '2021-2-2'),
('SL005', 'EM002', 'CU012', '2021-3-17'),
('SL006', 'EM006', 'CU006', '2021-3-27'),
('SL007', 'EM002', 'CU013', '2021-4-2'),
('SL008', 'EM001', 'CU001', '2021-5-28'),
('SL009', 'EM006', 'CU008', '2021-6-29'),
('SL010', 'EM008', 'CU012', '2021-8-27'),
('SL011', 'EM004', 'CU009', '2021-8-30'),
('SL012', 'EM012', 'CU014', '2021-9-18'),
('SL013', 'EM014', 'CU006', '2021-10-27'),
('SL014', 'EM008', 'CU002', '2021-12-17'),
('SL015', 'EM011', 'CU012', '2021-12-28');

INSERT INTO PurchaseTransactionDetail
VALUES
('PC001', 'MD002', 5),
('PC004', 'MD010', 10),
('PC009', 'MD005', 1),
('PC008', 'MD011', 4),
('PC009', 'MD001', 7),
('PC001', 'MD003', 12),
('PC010', 'MD004', 6),
('PC003', 'MD006', 3),
('PC008', 'MD012', 2),
('PC013', 'MD009', 1),
('PC015', 'MD010', 6),
('PC009', 'MD012', 8),
('PC005', 'MD015', 10),
('PC003', 'MD013', 12),
('PC006', 'MD015', 4),
('PC011', 'MD014', 20),
('PC012', 'MD009', 2),
('PC013', 'MD004', 4),
('PC014', 'MD002', 7),
('PC003', 'MD008', 3),
('PC009', 'MD003', 1),
('PC001', 'MD001', 9),
('PC002', 'MD008', 3),
('PC003', 'MD012', 8),
('PC005', 'MD011', 10),
('PC008', 'MD008', 20),
('PC009', 'MD011', 12),
('PC006', 'MD008', 4),
('PC007', 'MD005', 4),
('PC004', 'MD003', 7);

INSERT INTO SalesTransactionDetail
VALUES
('SL007','MD005', 4),
('SL001','MD001', 2),
('SL009','MD012', 3),
('SL012','MD004', 4),
('SL004','MD006', 5),
('SL006','MD008', 6),
('SL008','MD009', 2),
('SL009','MD011', 10),
('SL012','MD015', 2),
('SL011','MD012', 7),
('SL015','MD008', 9),
('SL013','MD007', 12),
('SL014','MD006', 6),
('SL005','MD012', 7),
('SL003','MD014', 4),
('SL002','MD013', 3),
('SL005','MD001', 9),
('SL007','MD004', 5),
('SL009','MD002', 11),
('SL012','MD001', 2),
('SL014','MD009', 7),
('SL005','MD008', 1),
('SL008','MD006', 9),
('SL009','MD007', 3),
('SL010','MD011', 7),
('SL002','MD010', 8),
('SL005','MD002', 4),
('SL002','MD008', 2),
('SL003','MD007', 1),
('SL011','MD006', 3);