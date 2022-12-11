#!/bin/sh
if [ ! -f UUID ]; then
  UUID="c6b8ab3d-39d0-43d4-91ec-2e361c5bac9f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

