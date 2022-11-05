use [Hallo Pharmacy]

-- 1 
-- Membeli medicine dari msVendor
INSERT INTO PurchaseTransactionHeader
VALUES
('PC016', 'EM011', 'VN003', '2021-12-30')

INSERT INTO PurchaseTransactionDetail
VALUES
('PC016', 'MD002', 5),
('PC016', 'MD005', 10),
('PC016', 'MD009', 3)

UPDATE MsMedicine
SET MedicineStock = MedicineStock+5
WHERE MedicineID = 'MD002'

UPDATE MsMedicine
SET MedicineStock = MedicineStock+10
WHERE MedicineID = 'MD005'

UPDATE MsMedicine
SET MedicineStock = MedicineStock+3
WHERE MedicineID = 'MD009'

-- 2
-- Membeli medicine dan terdapat medicine dengan category baru dari vendor
-- Memasukkan data medicinenya terlebih dahulu kemudian dilanjutkan ke transaksinya
INSERT INTO MsMedicineCategory
VALUES
('CT016', 'Vitamins')

INSERT INTO MsMedicine
VALUES
('MD026', 'CT016', 'Blackmores Vitamin C', 10000, 'It works by increasing vitamin C', 10)

INSERT INTO PurchaseTransactionHeader
VALUES
('PC017', 'EM015', 'VN010', '2021-11-01')

INSERT INTO PurchaseTransactionDetail
VALUES
('PC017', 'MD016', 5),
('PC017', 'MD026', 10)

UPDATE MsMedicine
SET MedicineStock = MedicineStock+5
WHERE MedicineID = 'MD016'

-- MedicineID MD026 tidak perlu diupdate lagi karena MedicineStock sudah diberikan nilai terbarunya ketika diinsert valuenya

-- 3
-- Menjual medicine ke customer
INSERT INTO SalesTransactionHeader
VALUES
('SL016', 'EM015', 'CU008', '2021-11-29')

INSERT INTO SalesTransactionDetail
VALUES
('SL016', 'MD010', 1),
('SL016', 'MD011', 1),
('SL016', 'MD012', 2)

UPDATE MsMedicine
SET MedicineStock = MedicineStock-1
WHERE MedicineID = 'MD010'

UPDATE MsMedicine
SET MedicineStock = MedicineStock-1
WHERE MedicineID = 'MD011'

UPDATE MsMedicine
SET MedicineStock = MedicineStock-2
WHERE MedicineID = 'MD012'
