# Author(s): Brian McGinnis
#            Patrick McGinnis
# Date: March-24-2017
# Organization: NoBox
# Website: nobox.io
# GitHub: github.com/noboxio         
#
# Purpose: To upload a Node-Red app to Bluemix via cloud foundry
# Usage: ./auto.sh <username> <password> <organization> <space> <appname>


username=$1
password=$2
organization=$3
space=$4
appname=$5

echo $user

echo "" > manifest.yml
echo "applications:" >> manifest.yml
echo "- path: ." >> manifest.yml
echo "  memory: 512M" >> manifest.yml
echo "  instances: 1" >> manifest.yml
echo "  domain: mybluemix.net" >> manifest.yml
echo "  name: $appname" >> manifest.yml
echo "  host: $appname" >> manifest.yml
echo "  disk_quota: 1024M" >> manifest.yml
echo "  services:" >> manifest.yml
echo "  - $appname-cloudantNoSQLDB" >> manifest.yml

cf l -u $username -p $password

cf t -o $organization -s $space

cf cs conversation free conversation
cf bs $appname conversation

cf cs text_to_speech standard text-to-speech
cf bs $appname text-to-speech

cf cs speech_to_text standard speech-to-text
cf bs $appname speech-to-text

cf cs tone_analyzer standard tone-analyzer
cf bs $appname tone-analyzer

cf push $appname

