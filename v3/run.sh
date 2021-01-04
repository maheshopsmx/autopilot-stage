#!/bin/sh
USERNAME="$1"
PASSWORD="$2"
URL="$3"
APPNAME="$4"
CANARYTIME="$5"
CANARYINTERVAL="$6"
MINSCORE="$7"
MAXSCORE="$8"
CANARYRESULT="$9"
SUCESSMETRICRESULT="$10"
LIFETIME="$11"

#================================================>LOGSVC="$12"
LOGSVC="$12"

LOGKEY="$13"
LOGBASEVALUE="$14"
LOGCANARYVALUE="$15"

#================================================>METRICSVC="$16"
METRICSVC="$16"


METRICKEY="$17"
METRICBASEVALUE="$18"
METRICCANARYVALUE="$19"

#=============================================
BSTIME="$20"
CNRTTIME="$21"

BASELINESTARTTIME=$(date -d "$BSTIME" +"%s")
CANARYSTARTTIME=$(date -d "$CNRTTIME" +"%s")

#METRICSVC=$1
#LOGSVC=$2
if [ -z $METRICSVC ] || [ -z $LOGSVC ]
then
    if [ -z $METRICSVC ]
 then
	 echo "Pick LOG Template"
	 cp log_template.json template.json
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
	 sed -i 's/LOGBASEVALUE/'$LOGBASEVALUE'/g' template.json
	 sed -i 's/LOGCANARYVALUE/'$LOGCANARYVALUE'/g' template.json
	 #sed -i 's/METRICSVC/'$METRICSVC'/g' template.json
	 #sed -i 's/METRICKEY/'$METRICKEY'/g' template.json
	 #sed -i 's/METRICVALUE/'$METRICVALUE'/g' template.json
	 sed -i 's/BASELINESTARTTIME/'$BASELINESTARTTIME'/g' template.json
	 sed -i 's/CANARYSTARTTIME/'$CANARYSTARTTIME'/g' template.json
	 sed -i 's/USERNAME/'$USERNAME'/g' template.json
	 
	 JSONFILE=template.json
	 
	 curl -vX POST -u $USERNAME:$PASSWORD $URL/autopilot/registerCanary -d @$JSONFILE --header "Content-Type: application/json" --insecure

 else
	 echo "Pick Metric Template"
	 cp metric_template.json template.json
	 sed -i 's/APPNAME/'$APPNAME'/g' template.json
	 sed -i 's/CANARYTIME/'$CANARYTIME'/g' template.json
	 sed -i 's/CANARYINTERVAL/'$CANARYINTERVAL'/g' template.json
	 sed -i 's/MINSCORE/'$MINSCORE'/g' template.json
	 sed -i 's/MAXSCORE/'$MAXSCORE'/g' template.json
	 sed -i 's/CANARYRESULT/'$CANARYRESULT'/g' template.json
	 sed -i 's/SUCESSMETRICRESULT/'$SUCESSMETRICRESULT'/g' template.json
	 sed -i 's/LIFETIME/'$LIFETIME'/g' template.json
	 #sed -i 's/LOGSVC/'$LOGSVC'/g' template.json
	 #sed -i 's/LOGKEY/'$LOGKEY'/g' template.json
	 #sed -i 's/LOGBASEVALUE/'$LOGBASEVALUE'/g' template.json
	 #sed -i 's/LOGCANARYVALUE/'$LOGCANARYVALUE'/g' template.json
	 sed -i 's/METRICSVC/'$METRICSVC'/g' template.json
	 sed -i 's/METRICKEY/'$METRICKEY'/g' template.json
	 sed -i 's/METRICBASEVALUE/'$METRICBASEVALUE'/g' template.json
	 sed -i 's/METRICCANARYVALUE/'$METRICCANARYVALUE'/g' template.json
	 sed -i 's/BASELINESTARTTIME/'$BASELINESTARTTIME'/g' template.json
	 sed -i 's/CANARYSTARTTIME/'$CANARYSTARTTIME'/g' template.json
	 sed -i 's/USERNAME/'$USERNAME'/g' template.json
	 
	 JSONFILE=template.json
	 
	 curl -vX POST -u $USERNAME:$PASSWORD $URL/autopilot/registerCanary -d @$JSONFILE --header "Content-Type: application/json" --insecure

 fi
 else
   echo "Pick both the template"
	 cp both_log_metric_template.json template.json
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
	 sed -i 's/LOGBASEVALUE/'$LOGBASEVALUE'/g' template.json
	 sed -i 's/LOGCANARYVALUE/'$LOGCANARYVALUE'/g' template.json
	 sed -i 's/METRICSVC/'$METRICSVC'/g' template.json
	 sed -i 's/METRICKEY/'$METRICKEY'/g' template.json
	 sed -i 's/METRICBASEVALUE/'$METRICBASEVALUE'/g' template.json
	 sed -i 's/METRICCANARYVALUE/'$METRICCANARYVALUE'/g' template.json
	 sed -i 's/BASELINESTARTTIME/'$BASELINESTARTTIME'/g' template.json
	 sed -i 's/CANARYSTARTTIME/'$CANARYSTARTTIME'/g' template.json
	 sed -i 's/USERNAME/'$USERNAME'/g' template.json
	 
	 JSONFILE=template.json
	 
	 curl -vX POST -u $USERNAME:$PASSWORD $URL/autopilot/registerCanary -d @$JSONFILE --header "Content-Type: application/json" --insecure

fi 