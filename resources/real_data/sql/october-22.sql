-- Last propagation date: None

BEGIN;

-- Tasks
INSERT INTO taxes_task(id, custom_id, name) VALUES (21, '8990', 'Spatné parsování Kamstrup vodoměru');
INSERT INTO taxes_task(id, custom_id, name) VALUES (22, '9042', 'Notification-service revival');
INSERT INTO taxes_task(id, custom_id, name) VALUES (23, '8961', 'Špatné parsování Techem měřičů');
INSERT INTO taxes_task(id, custom_id, name) VALUES (24, '9043', 'Notification-service interní API pro zprávy, abstrakce pro doručovací služby');
INSERT INTO taxes_task(id, custom_id, name) VALUES (25, '9104', 'Presmerovani zarizeni na ftp proxy');
INSERT INTO taxes_task(id, custom_id, name) VALUES (26, '9054', 'Tech: filtr a sort');
INSERT INTO taxes_task(id, custom_id, name) VALUES (27, '9009', 'Jednoduchý export');
INSERT INTO taxes_task(id, custom_id, name) VALUES (28, '8776', 'FE: Delivery point detail: nadradene/podradene DP export');
INSERT INTO taxes_task(id, custom_id, name) VALUES (29, '9045', 'Notification-service interní API pro notifikace, transformace z notifikace na message');
INSERT INTO taxes_task(id, custom_id, name) VALUES (30, '9021', 'Nezobrazuje se navázaný dodavatel v ceníku');
INSERT INTO taxes_task(id, custom_id, name) VALUES (31, '8769', 'Doplnit do tabulky kont pod Objektom Primárne subjeky');
INSERT INTO taxes_task(id, custom_id, name) VALUES (32, '9063', 'Graph-service API pro mapy/dashboard');

-- Time reports
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(61, 540, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-17', 'Debug, call s Jonathanem, dokumentace wmbus, fix a debug v sds', 'REPORTED', 2);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(62, 540, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-18', 'Call s Tomem, zmena spring boot verzi, reseni dependencies, java upgrade, zmeny modelu a zprovozneni do spustitelny podoby', 'REPORTED', 3);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(63, 540, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-19', 'Dokonceni zmen v logice, dodefinovani od Toma, zmena v modelu, tvorba liquibase skriptu (dat + zmen), testing oproti cloudu, vetsi testing posilani emailu (stavajici controller)', 'REPORTED', 3);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(64, 150, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Testing v sds, debug v sds, fixy a teleport sds, push jmbus, sds, wmbb, rebase', 'REPORTED', 2);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(65, 30, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Testing a push sds', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(66, 180, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-20', 'Dokonceni, mensi zmeny v modelu na zaklade konverzace s Tomem, refactor, push a reseni pipeline', 'REPORTED', 3);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(67, 420, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Zakladni zmeny, novy api, prekopani starych metod, novy kontroler, dtocka', 'REPORTED', 5);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(68, 240, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-21', 'Reseni pipeline, cally s Matem, smazani unused dependencies, angularize, dockerize, novy stage v jenkisfile, testing, debug a fixy, push a dokonceni', 'REPORTED', 3);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(69, 300, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Sendery, reseni architektury dtocek, zalozeni message, mappery a testovani', 'REPORTED', 5);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(70, 180, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-23', 'Dokonceni abstract senderu + implementace noop senderu', 'REPORTED', 5);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(71, 600, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-24', 'Dokonceni emailu, zacatek notifikaci, predelani dto na zaklade callu s Tomem, testovani mailu a template', 'REPORTED', 5);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(72, 480, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-25', 'Dokonceni notifikaci, mapovani, testing, zmeny v architekture od Toma', 'REPORTED', 5);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(73, 60, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'MR a zmena angular api', 'REPORTED', 3);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(74, 180, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-26', 'Dokonceni a testing, refactor', 'REPORTED', 5);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(75, 60, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Call s Jonathanem + orientace ve smart gridu, zmeny v ftp bridge a worf ftp serveru', 'REPORTED', 6);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(76, 300, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Orientace v tasku, priprava prostredi, testovani, prvnich par pointu, reseni smazani aranga na techu', 'REPORTED', 7);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(77, 540, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-27', 'Komunikace s Michalem, bellou a architektura whs, debug chyb a jejich oprava, call s Matem ohledne nejasnosti, dokonceni', 'REPORTED', 7);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(78, 30, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Debug exportu ceniku, komunikace s Matem', 'REPORTED', 8);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(79, 30, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Uvod do problemu, zprovozneni testovani na localu, testing a debug', 'REPORTED', 9);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(80, 30, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-28', 'Debug  exportu qr kodu na localu, testing na cloudu a zjistovani chyby oproti jinym exportum, sepsani', 'REPORTED', 8);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(81, 60, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Seznameni s problemem, potencionalni fixy, problemy se streamem a fix, debug a testing, push', 'REPORTED', 9);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(82, 450, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Architektura notifikaci, kontrola co je hotovy v API, novy template, dodefinovani nekterych veci, uprava entit, orientace v architekture, uprava logiky', 'REPORTED', 10);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(83, 30, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-29', 'MR', 'REPORTED', 5);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(84, 270, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Dokonceni thymeleaf zmen v sablone, testing a zmena v entitach', 'REPORTED', 10);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(85, 30, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'MR', 'REPORTED', 7);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(86, 30, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Komunikace s Bellou + sepsani a debug', 'REPORTED', 11);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(87, 60, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Implementace zmen, neporozumeni tasku, komunikace s Matem', 'REPORTED', 12);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(88, 240, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Orientace v tasku, zakladni struktura, logika, endpoint', 'REPORTED', 13);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(89, 120, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-31', 'Call s bellou, retest, sepsani, oprava qr kodu na be, debug a test', 'REPORTED', 7);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(90, 60, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Debug, zprovozneni testing na localu, testing a fix', 'REPORTED', 8);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(91, 120, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Call s Tomem, dokonceni zmen na kterych jsme se dohodli, testing', 'REPORTED', 10);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(92, 120, '2022-10-31 23:50:00','2022-10-31 23:50:00', '2022-10-30', 'Dalsi stripky logiky a mapovani hodnot, requesty na ostatni servisy', 'REPORTED', 13);

COMMIT;