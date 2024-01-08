#!/bin/bash

# Navigieren zum Verzeichnis mit der SNAPSHOT.jar-Datei
cd /home/ec2-user/cloudauto

# Starten Sie die Quarkus-Anwendung.
mvn quarkus:dev -Dquarkus.http.host=0.0.0.0
