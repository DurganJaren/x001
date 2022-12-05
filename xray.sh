#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ad5b795c-5e53-4527-b544-0be7d6d3cb09"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

