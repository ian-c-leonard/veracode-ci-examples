#!/bin/sh

DATE=`date +"%Y-%m-%d-%H%M"`
TEAM_ANALYSISCENTER_ID=$1
TEAM_ANALYSISCENTER_KEY=$2
APP_PROFILE_NAME=$3
FILEPATH=$4

/usr/bin/java -jar --add-modules java.se.ee veracode-wrapper.jar -vid $TEAM_ANALYSISCENTER_ID -vkey $TEAM_ANALYSISCENTER_KEY -action uploadandscan -appname "${APP_PROFILE_NAME}" -createprofile true -filepath $4 -version $DATE
