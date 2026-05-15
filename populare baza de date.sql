-- ==========================================================
-- SCRIPT POPULARE BAZA DE DATE - ASOCIATIE BLOC X69
-- ==========================================================

-- 1. CURATARE TOTALA (Golim tabelele in ordinea corecta)
TRUNCATE public.waterconsumption, public.payments, public.invoices, public.locatari, 
         public.administrators, public.apartments, public.employees, public.users, public.suppliers CASCADE;

-- 2. RESETARE SECVENTE (ID-urile vor incepe iar de la 1)
ALTER SEQUENCE public.apartments_id_seq RESTART WITH 1;
ALTER SEQUENCE public.users_id_seq RESTART WITH 1;
ALTER SEQUENCE public.employees_id_seq RESTART WITH 1;
ALTER SEQUENCE public.invoices_id_seq RESTART WITH 1;
ALTER SEQUENCE public.suppliers_id_seq RESTART WITH 1;
ALTER SEQUENCE public.payments_id_seq RESTART WITH 1;
ALTER SEQUENCE public.waterconsumption_id_seq RESTART WITH 1;

-- 3. ADAUGARE APARTAMENTE (10 Unitati)
INSERT INTO public.apartments (room_count, resident_count) VALUES
(2, 2), (3, 4), (1, 1), (2, 3), (4, 5),
(1, 1), (3, 3), (2, 2), (1, 1), (3, 2);

-- 4. ADAUGARE UTILIZATORI (Admini si Locatari)
-- Parolele sunt '1234' pt admin si 'parola123' pt useri
INSERT INTO public.users (username, password_hash, role) VALUES
('admin', '1234', 'Administrator'),
('m.ionescu', 'parola123', 'User'),
('familia.popa', 'parola123', 'User'),
('stefan.andrei', 'parola123', 'User'),
('elena.dumitru', 'parola123', 'User');

-- 5. ASOCIERE ADMINISTRATOR
INSERT INTO public.administrators (user_id, numar_atestat) VALUES
(1, 'AT-Craiova-2026');

-- 6. ASOCIERE LOCATARI PE APARTAMENTE
INSERT INTO public.locatari (user_id, nume_complet, este_proprietar, apartament_id) VALUES
(2, 'Maria Ionescu', true, 1),
(3, 'Constantin Popa', true, 2),
(4, 'Andrei Stefan', false, 3),
(5, 'Elena Dumitru', true, 4);

-- 7. ADAUGARE ANGAJATI (Cheltuieli salariale bloc)
INSERT INTO public.employees (nume_complet, salariu_brut) VALUES
('Ionescu Maria (Curatenie)', 1500.00),
('Georgescu Vasile (Administrator)', 2800.00),
('Popa Ion (Mentenanta)', 2200.00);

-- 8. ADAUGARE FURNIZORI
INSERT INTO public.suppliers (name, fiscal_code) VALUES
('Compania de Apa Oltenia', 'RO123456'),
('CEZ Vanzare (Energie)', 'RO987654'),
('Salubritate Craiova', 'RO112233'),
('Otis Lift SRL', 'RO556677'),
('DIGI Romania', 'RO443322');

-- 9. ADAUGARE FACTURI (Istoric Aprilie si Mai)
INSERT INTO public.invoices (amount, date, supplier_id) VALUES
(450.50, '2026-04-10', 1), 
(210.00, '2026-04-12', 2),
(520.00, '2026-05-01', 1), -- Apa Mai
(250.00, '2026-05-03', 2), -- Energie Mai
(150.00, '2026-05-05', 3), -- Salubritate Mai
(300.00, '2026-05-10', 4); -- Lift Mai

-- 10. ADAUGARE CONSUM APA (Indexi)
INSERT INTO public.waterconsumption (apartament_id, index_value, date) VALUES
(1, 120, '2026-04-30'), (1, 135, '2026-05-15'),
(2, 340, '2026-04-30'), (2, 362, '2026-05-15'),
(3, 55, '2026-04-30'),  (3, 60, '2026-05-15');

-- 11. ADAUGARE PLATI
INSERT INTO public.payments (amount, date, apartment_id) VALUES
(400.00, '2026-05-12', 1),
(650.00, '2026-05-14', 2);

-- 12. SINCRONIZARE SECVENTE (Pt. a permite adaugari noi din aplicatie)
SELECT setval('public.apartments_id_seq', (SELECT max(id) FROM public.apartments));
SELECT setval('public.users_id_seq', (SELECT max(id) FROM public.users));
SELECT setval('public.invoices_id_seq', (SELECT max(id) FROM public.invoices));