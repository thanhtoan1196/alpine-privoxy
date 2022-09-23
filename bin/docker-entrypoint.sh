#!/bin/sh

sed -i "s/listen\-address  127\.0\.0\.1:8118/listen\-address  0\.0\.0\.0:8118/" /etc/privoxy/config


if [ $SOCKS5IP ];
then
  if [ $SOCKS5PORT ];
  then
    echo "forward-socks5t   / "$SOCKS5IP":"$SOCKS5PORT" ." >> /etc/privoxy/config
  fi
fi

if [ $HTTP_IP ];
then
  if [ $HTTP_PORT ];
  then
    echo "forward   / "$HTTP_IP":"$HTTP_PORT"" >> /etc/privoxy/config
  fi
fi

if [ $I2PIP ];
then
  if [ $I2PPORT ];
  then
    echo "forward  .i2p "$I2PIP":"$I2PPORT >> /etc/privoxy/config
  fi
fi

exec "$@"
