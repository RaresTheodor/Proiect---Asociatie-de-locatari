

\# 🏢 Ghid de Pornire - Proiect Gestiune Asociație "Bloc X69"



Acest proiect este o aplicație web dezvoltată în \*\*Python (Flask)\*\* cu backend în \*\*PostgreSQL\*\*, destinată managementului financiar și administrativ al unei asociații de proprietari.



\## 📋 Pre-condiții



\* \*\*Python 3.12+\*\* instalat.

\* \*\*PostgreSQL 18\*\* instalat și pornit.



\---



\## 🚀 Pașii pentru Instalare și Configurare



\### 1. Configurarea Bazei de Date



1\. Deschide \*\*pgAdmin 4\*\* și creează o bază de date nouă numită `asociatie\_db`.

2\. Deschide un \*\*Query Tool\*\* pe această bază de date.

3\. Rulează mai întâi scriptul `baza\_de\_date.sql` pentru a crea structura tabelelor.

4\. Rulează scriptul de populare (cel primit recent) pentru a introduce datele realiste și a reseta secvențele.



> \*\*⚠️ Notă Importantă:\*\* Deschide fișierul `app.py` și asigură-te că la funcția `get\_db\_connection` parola pentru user-ul `postgres` coincide cu cea setată de tine la instalare.



\### 2. Instalarea Dependențelor



Deschide un terminal (PowerShell/CMD) în folderul proiectului și instalează bibliotecile necesare:



```bash

pip install -r requirements.txt.txt



```



\### 3. Validarea Proiectului (Testare Automată)



Înainte de pornire, verifică integritatea aplicației rulând cele \*\*15 teste automate\*\*:



```bash

python -m pytest



```



\*Toate testele trebuie să fie cu verde (PASSED).\*



\### 4. Pornirea Aplicației



Lansează serverul local de dezvoltare:



```bash

python app.py



```



\### 5. Accesare în Browser



Aplicația va fi disponibilă la adresa:

👉 \*\*\[http://127.0.0.1:5000](http://127.0.0.1:5000)\*\*



\---



\## 🔐 Date de Acces (Credentials)



| Rol | Utilizator | Parolă |

| --- | --- | --- |

| \*\*Administrator\*\* | `admin` | `1234` |

| \*\*Locatar\*\* | `m.ionescu` | `parola123` |



\---



\## 🛠️ Funcționalități Implementate



\* \*\*Dashboard:\*\* Vizualizarea stării apartamentelor.

\* \*\*Gestiune Utilități:\*\* Adăugarea și listarea facturilor de la furnizori (Apa Oltenia, CEZ, etc.).

\* \*\*Consum Apă:\*\* Monitorizarea indexilor de apă pentru fiecare apartament.

\* \*\*Raport Lunar:\*\* Calculul automat al cotelor de întreținere conform formulei matematice \*\*REQ-41\*\*.

\* \*\*Plăți:\*\* Înregistrarea și evidența încasărilor de la locatari.





