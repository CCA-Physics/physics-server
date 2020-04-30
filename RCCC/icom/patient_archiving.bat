timeout /t 240
C:
cd C:\Users\PExIT\git\pymedphys

poetry run pymedphys icom archive D:\iComLogFiles\live Z:\iCom\live Y:\icom\live --by-patient --output-dir D:\iComLogFiles\patients

PAUSE