#!/bin/bash -ex

# the workflow will make sure this runs on a push to master only already

build_name=$1
map_file=$build_name.map
if [ ! -f $map_file ]; then
  echo "$map_file does not exist!"
  exit 1
fi

output=$(perl $(dirname "$0")/calcrom.pl $build_name.map | sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g')
curl -d "{\"username\": \"$CALCROM_DISCORD_WEBHOOK_USERNAME\", \"avatar_url\": \"$CALCROM_DISCORD_WEBHOOK_AVATAR_URL\", \"content\":\"\`\`\`$build_name progress:\\n$output\`\`\`\"}" -H "Content-Type: application/json" -X POST "$CALCROM_DISCORD_WEBHOOK_URL"
