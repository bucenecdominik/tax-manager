-- Last propagation date: 22/11/30

BEGIN;

-- Tasks
INSERT INTO taxes_task(id, custom_id, name) VALUES(2, '9063','Graph-service API pro mapy/dashboard');
INSERT INTO taxes_task(id, custom_id, name) VALUES(3, '211','Other meetings');
INSERT INTO taxes_task(id, custom_id, name) VALUES(4, '9104','Presmerovani zarizeni na ftp proxy');
INSERT INTO taxes_task(id, custom_id, name) VALUES(5, '9009','Jednoduchý export');
INSERT INTO taxes_task(id, custom_id, name) VALUES(6, '9054','Tech: filtr a sort');
INSERT INTO taxes_task(id, custom_id, name) VALUES(7, '9044','Použití nového notification-service API pro e-mail z ostatních služeb');
INSERT INTO taxes_task(id, custom_id, name) VALUES(8, '9107','Ticketing listing API');
INSERT INTO taxes_task(id, custom_id, name) VALUES(9, '9045','Notification-service interní API pro notifikace, transformace z notifikace na message');
INSERT INTO taxes_task(id, custom_id, name) VALUES(10, '9108','Ticketing - perzistence vazeb z konfigurace akcí');
INSERT INTO taxes_task(id, custom_id, name) VALUES(11, '9220','Appka: aktualizace osobních údajů končí internal server errorem');
INSERT INTO taxes_task(id, custom_id, name) VALUES(12, '9118','Ticketing - doplnění indexace názvů a stavu navázaných entit');
INSERT INTO taxes_task(id, custom_id, name) VALUES(13, '760','Administrativa');
INSERT INTO taxes_task(id, custom_id, name) VALUES(14, '9120','Ticketing - APIs pro update - dodělávky');
INSERT INTO taxes_task(id, custom_id, name) VALUES(15, '9211','Ticketing - doplnění FeedbackAction do DTO pro mobilní i admin API');
INSERT INTO taxes_task(id, custom_id, name) VALUES(16, '9263','Autorizace pro pohled statutára v appce');
INSERT INTO taxes_task(id, custom_id, name) VALUES(17, '9267','App BE: Pohled statutára - Příjmy');
INSERT INTO taxes_task(id, custom_id, name) VALUES(18, '9268','App BE: Pohled statutára - Výdaje');
INSERT INTO taxes_task(id, custom_id, name) VALUES(19, '9275','Subject BE interní API pro invite + password reset');
INSERT INTO taxes_task(id, custom_id, name) VALUES(20, '9278','Association app API pro přidání oprávněného');

-- Time reports
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(2, 540, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-1', 'Mapping + ziskavani dat, prepsani queries, call s Tomem, debug a nekolikrat zmenena implementace + architektura', 'REPORTED', 2);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(3, 120, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-2', 'Grooming ticketing + messaging, prirava ', 'REPORTED', 3);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(4, 180, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-2', 'Debug nekterych nefunkcnich zarizeni s Martinou, komunikace s Joanthanem ohledne nefunkcniho koncentratoru, debug mvs', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(5, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-2', 'Fix reportu od testeru', 'REPORTED', 5);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(6, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-2', 'Fix reportu od testeru', 'REPORTED', 6);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(7, 240, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-3', 'Reseni nefunkcnich elektromeru + debug ostatnich mericu, komunikace s Maritnou a debug', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(8, 120, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-3', 'Dokonceni + refactor, testing na localu ', 'REPORTED', 2);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(9, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-3', 'Zaklad tasku + nejaky zmeny', 'REPORTED', 7);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(10, 600, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-4', 'Metering a whs architektura, debug na localu, teleport dat z admina, priprava prostredi, komunikace s Tomem, Hankou a Jonathanem, zmena dat v zarizenich, zmena koeficientu u zarizeni + debug zlobivyho elektromerice', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(11, 240, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-5', 'Debug jedinyho elektromeru ktery nefunguje, zprovozneni celyho flow na localu + testing', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(12, 180, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-7', 'Debug query, MR od Mata a zamysleni se nad optimalizaci, depth limit', 'REPORTED', 2);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(13, 180, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-7', 'Debug s Tomaszem, komunikace ohledne nefunkcniho zarizeni ', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(14, 180, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-7', 'Zaklad api, zmeny a orientace v tasku', 'REPORTED', 8);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(15, 120, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-8', 'Komunikace s Tomaszem a preposlani zarizeni pro recalculate interpolovanych hodnot, dokonceni tasku ', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(16, 420, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-8', 'Dalsi zmeny v logice, uprava apicek, pridani labelu', 'REPORTED', 8);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(17, 480, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-9', 'Problemy s testy, architektura ticketingu a oprava, hodne debugovani a dalsi zmeny v logice', 'REPORTED', 8);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(18, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-9', 'Oprava a debug chyb reportnutch Tomem, testing na realnych requestech', 'REPORTED', 9);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(19, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-9', 'Uprava logiky a debug rekurze, test zmen v indexaci a reindex local', 'REPORTED', 2);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(20, 300, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-10', 'Dokonceni, dodefinovani kodu s Tomem a oprava od Toma, testing a zmena implementace ', 'REPORTED', 8);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(21, 180, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-10', 'Reseni chyby pri posilani validace udaju u subjektu - specialni symboly v nazvu identity, oprava, testing, call s Tomem, Matem, Bellou', 'REPORTED', 9);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(22, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-10', 'RD Stresovicky', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(23, 660, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-11', 'Presmerovani Stresovicek private, call s Tomem, hardware briefing od Joanthana, sepsani tasku a debug WHS s TOmem na callu, ziskavani excelovych dat, fix a testing zmen v db, reseni Delty, sepsani tasku', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(24, 300, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-12', 'Debug wmbus service, worf serveru, testing na localu, poslani novych dat, hledani problemu a localni fix', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(25, 120, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-13', 'Zakladni struktura tasku, orientace v ticketingu, zakladni zmeny v logice', 'REPORTED', 10);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(26, 240, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-14', 'Call Tomaszem, dodefinovani s TB ohledne zmen v wmbb, zmeny podle dohody s TB a testing zmen, push, poslani zprav ze zarizeni za Zari (2 sniffery) a komunikace s TB ohledne zasekany queue', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(27, 300, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-14', 'Dalsi zmeny podle zadani, dodefinovani od Toma, rozsahlejsi testing zmen', 'REPORTED', 10);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(28, 420, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-15', 'Reseni labelu, mapovani labelu, testovani, problemy s testy', 'REPORTED', 10);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(29, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-15', 'Reseni zasekane queue, debug zarizeni na adminu', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(30, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-15', 'Teleport admina na local, testing na datech uzivatele od Hanky,  debug, call s Matem, oprava a testing, ze funguje logika stejne ', 'REPORTED', 11);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(31, 480, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-16', 'Bod ktery se pridal po ticketingu - pomerne slozity upravy uz udelane logiky ze zacatku z tasku, puvodni nepochopeni zameru Toma a vetsi problemy s it testy, manualni testing', 'REPORTED', 10);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(32, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-16', 'Dokonceni oprav ITN, revize zarizeni', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(33, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-16', 'Zakladni struktura tasku, architektura', 'REPORTED', 12);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(34, 420, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-17', 'Association a document crm service architektura, tvorba api ktery chybi, implementace do ticketingu, logika active u nekterych entit typu, testing , dokonceni', 'REPORTED', 12);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(35, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-17', 'Refactor, push, dodelavky', 'REPORTED', 10);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(36, 480, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-18', 'Placene volno, Moc diky Hani :)', 'REPORTED', 13);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(37, 240, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-19', 'Zmeny v logice move ticket, volani ticket update eventu', 'REPORTED', 14);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(38, 120, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-20', 'Dokonceni, zmeny v testu, refactor, push', 'REPORTED', 14);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(39, 120, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-20', 'Zakladni logika, zaklad tasku, ...', 'REPORTED', 15);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(40, 240, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-21', 'Presmerovani Zlicin a Litomerice, Nerudova, dodelani stresovicek, debug mvs, wmbb, whs, oprava kanalu u vodomeru, call s Jonathanem, oprava COLD_WATER_METER typu, testing debug a push', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(41, 360, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-21', 'Logika mapovani, problemy s testingem, integracni testy, testing na localu, zmeny v logice', 'REPORTED', 15);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(42, 300, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-22', 'Uprava logiky v modulu a auth service, call s Tomem, testing, architektura assoc service a auth service, push a pom zmeny', 'REPORTED', 16);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(43, 180, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-22', 'Dokonceni, komunikce s tomem, internal request, zmeny v maperech a testing', 'REPORTED', 15);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(44, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-22', 'Revize mericu', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(45, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-22', 'Zaklad tasku, upgrade auth service, architektura', 'REPORTED', 17);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(46, 90, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-23', 'Problemy s rebasem, investigace, rebase 2 tasku, testing, dokonceni a push', 'REPORTED', 15);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(47, 540, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-23', 'Dokoncnei cely logiky, zkouseni par implementaci, testy a problemy s test containers', 'REPORTED', 17);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(48, 240, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-24', 'Zmeny v logice na zaklade testu, nefunkcni lokalni test containers, MR, call s Matem, reseni nefunkcnich testu v pipeline, dokonceni', 'REPORTED', 17);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(49, 360, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-24', 'Pridani endpointu, mergnuti logiky do vic generic z minuleho tasku pro prijmy, psani testu, debug, zmeny v puvodnim kodu, testing, debug a dokonceni celyho tasku', 'REPORTED', 18);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(50, 90, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-24', 'Debug chyb od Toma, fix, architektura rbs a wagon/accountingu', 'REPORTED', 9);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(51, 120, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-25', 'KT Giving pro sama, MR, call s Tomem a Samem, zmeny v kodu a debug', 'REPORTED', 18);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(52, 480, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-25', 'Architektura tasku, dodefinovani s Tomem, uprava logiky, architektura subject service, nepochopeni tasku ', 'REPORTED', 19);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(53, 180, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-26', 'Poslani zprav do zarizeni, debug, investigace stavu zarizeni v minulosti, sepsani reportu pro Hanku', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(54, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-27', 'Revize, dokonceni', 'REPORTED', 4);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(55, 540, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-28', 'Uprava logiky, testig, architektura subject service, dodefinovani od Toma, mergovani nektery logiky, debug nekterych exceptionu pri testingu, slight testing', 'REPORTED', 19);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(56, 240, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-29', 'Dokonceni, refactor, rozsahlejsi testing, reseni MR, zmeny a push', 'NEW', 19);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(57, 60, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-29', 'KT Pro Sama, revize reportu od Hanky, debug, call se Samem, uprava logiky, testing', 'NEW', 18);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(58, 240, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-29', 'Zakladni struktura a logika', 'NEW', 20);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(59, 90, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-30', 'Support pro Sama, zmeny v kodu na zaklade callu a konverzace na slacku', 'NEW', 18);
INSERT INTO taxes_timereport(id, minutes_spent,created_at,modified_at,reported_for,note,status,task_id) VALUES(60, 450, '2022-11-30 23:50:00','2022-11-30 23:50:00', '2022-11-30', 'Dokoncnei logiky, testing, problemy s generikou, call s Tomem, dodefinovani, api client, mensi testing', 'NEW', 20);

COMMIT;