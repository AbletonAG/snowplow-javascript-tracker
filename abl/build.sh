#!/bin/bash

npx @microsoft/rush update
npx @microsoft/rush build -t @snowplow/javascript-tracker
cp trackers/javascript-tracker/dist/sp.js trackers/javascript-tracker/dist/delta.min.js
sed -i s/sp\.js\.map/delta\.min\.js\.map/g trackers/javascript-tracker/dist/delta.min.js
cp trackers/javascript-tracker/dist/sp.js.map trackers/javascript-tracker/dist/delta.min.js.map
