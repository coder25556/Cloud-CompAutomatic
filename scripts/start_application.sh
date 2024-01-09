#!/bin/bash

# Navigieren zum Verzeichnis mit der SNAPSHOT.jar-Datei
cd /home/ec2-user/cloudauto || exit 1

# Starten Sie die Quarkus-Anwendung mit einem Timeout
# Setzen Sie den gewünschten Timeout-Wert in Sekunden
TIMEOUT=60

timeout --preserve-status $TIMEOUT mvn quarkus:dev -Dquarkus.http.host=0.0.0.0

# Überprüfen Sie den Exit-Code von timeout
EXIT_CODE=$?

if [ $EXIT_CODE -eq 124 ]; then
    echo "Das Skript hat einen Timeout erreicht nach $TIMEOUT Sekunden."
    # Führen Sie hier weitere Aktionen aus, wenn ein Timeout aufgetreten ist
else
    echo "Das Skript wurde erfolgreich beendet."
    # Führen Sie hier Aktionen aus, wenn das Skript erfolgreich war
fi

Exit 0