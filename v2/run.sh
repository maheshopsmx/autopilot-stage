#!/bin/sh
APPNAME="$1"
CANARYTIME="$2"
CANARYINTERVAL="$3"
MINSCORE="$4"
MAXSCORE="$5"
CANARYRESULT="$6"
SUCESSMETRICRESULT="$7"
LIFETIME="$8"
LOGSVC="$9"
LOGKEY="$10"
LOGVALUE="$11"
METRICSVC="$12"
METRICKEY="$13"
METRICVALUE="$14"
BSTIME="$15"
CNRTTIME="$16"
USERNAME="$17"
PASSWORD="$18"
URL="$19"
BASELINESTARTTIME=$(date -d "$BSTIME" +"%s")
CANARYSTARTTIME=$(date -d "$CNRTTIME" +"%s")

cp originaltemplate.json template.json
sed -i 's/APPNAME/'$APPNAME'/g' template.json
sed -i 's/CANARYTIME/'$CANARYTIME'/g' template.json
sed -i 's/CANARYINTERVAL/'$CANARYINTERVAL'/g' template.json
sed -i 's/MINSCORE/'$MINSCORE'/g' template.json
sed -i 's/MAXSCORE/'$MAXSCORE'/g' template.json
sed -i 's/CANARYRESULT/'$CANARYRESULT'/g' template.json
sed -i 's/SUCESSMETRICRESULT/'$SUCESSMETRICRESULT'/g' template.json
sed -i 's/LIFETIME/'$LIFETIME'/g' template.json
sed -i 's/LOGSVC/'$LOGSVC'/g' template.json
sed -i 's/LOGKEY/'$LOGKEY'/g' template.json
sed -i 's/LOGVALUE/'$LOGVALUE'/g' template.json
sed -i 's/METRICSVC/'$METRICSVC'/g' template.json
sed -i 's/METRICKEY/'$METRICKEY'/g' template.json
sed -i 's/METRICVALUE/'$METRICVALUE'/g' template.json
sed -i 's/BASELINESTARTTIME/'$BASELINESTARTTIME'/g' template.json
sed -i 's/CANARYSTARTTIME/'$CANARYSTARTTIME'/g' template.json

JSONFILE=template.json

curl -vX POST -u $USERNAME:$PASSWORD $URL/autopilot/registerCanary -d @$JSONFILE --header "Content-Type: application/json" --insecure

