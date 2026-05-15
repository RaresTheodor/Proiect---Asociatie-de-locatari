🏢 Ghid de Pornire - Proiect Gestiune Asociație "Bloc X69"
Acest proiect este o aplicație web dezvoltată în Python (Flask) cu backend în PostgreSQL, destinată managementului financiar și administrativ al unei asociații de proprietari.

📋 Pre-condiții
Python 3.12+ instalat.

PostgreSQL 18 instalat și pornit.

🚀 Pașii pentru Instalare și Configurare
1. Configurarea Bazei de Date
Deschide pgAdmin 4 și creează o bază de date nouă numită asociatie_db.

Deschide un Query Tool pe această bază de date.

Rulează mai întâi scriptul baza_de_date.sql pentru a crea structura tabelelor.

Rulează scriptul de populare pentru a introduce datele realiste și a reseta secvențele.

⚠️ Notă Importantă: Deschide fișierul app.py și asigură-te că la funcția get_db_connection parola pentru user-ul postgres coincide cu cea setată de tine la instalare.

2. Instalarea Dependențelor
Deschide un terminal în folderul proiectului și instalează bibliotecile necesare:

Bash
pip install -r requirements.txt.txt
3. Validarea Proiectului (Testare Automată)
Rulează cele 15 teste automate pentru a verifica integritatea aplicației:

Bash
python -m pytest
4. Pornirea Aplicației
Lansează serverul local:

Bash
python app.py
