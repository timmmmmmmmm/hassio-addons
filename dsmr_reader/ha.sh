#!/usr/bin/env bash
#---------------------------------------------------------------------------------------------------------------------------
# HOMEASSISTANT Add-On OVERRIDES
#---------------------------------------------------------------------------------------------------------------------------
echo "Welcome to the DSMR Reader Home Assistant Add-on"
echo "Setting Home Assistant configuration"
CONFIG_PATH=/data/options.json

DJANGO_DATABASE_NAME=$(jq --raw-output ".DJANGO_DATABASE_NAME" $CONFIG_PATH)
DJANGO_DATABASE_USER=$(jq --raw-output ".DJANGO_DATABASE_USER" $CONFIG_PATH)
DJANGO_DATABASE_PASSWORD=$(jq --raw-output ".DJANGO_DATABASE_PASSWORD" $CONFIG_PATH)
DJANGO_DATABASE_HOST=$(jq --raw-output ".DJANGO_DATABASE_HOST" $CONFIG_PATH)
DJANGO_DATABASE_PORT=$(jq --raw-output ".DJANGO_DATABASE_PORT" $CONFIG_PATH)
DATALOGGER_MODE=$(jq --raw-output ".DATALOGGER_MODE" $CONFIG_PATH)
DATALOGGER_SERIAL_PORT=$(jq --raw-output ".DATALOGGER_SERIAL_PORT" $CONFIG_PATH)
DATALOGGER_INPUT_METHOD=$(jq --raw-output ".DATALOGGER_INPUT_METHOD" $CONFIG_PATH)
DATALOGGER_SERIAL_BAUDRATE=$(jq --raw-output ".DATALOGGER_SERIAL_BAUDRATE" $CONFIG_PATH)

export DJANGO_DATABASE_NAME="${DJANGO_DATABASE_NAME}"
export DJANGO_DATABASE_USER="${DJANGO_DATABASE_USER}"
export DJANGO_DATABASE_PASSWORD="${DJANGO_DATABASE_PASSWORD}"
export DJANGO_DATABASE_HOST="${DJANGO_DATABASE_HOST}"
export DJANGO_DATABASE_PORT="${DJANGO_DATABASE_PORT}"
export DATALOGGER_MODE="${DATALOGGER_MODE}"
export DATALOGGER_SERIAL_PORT="${DATALOGGER_SERIAL_PORT}"
export DATALOGGER_INPUT_METHOD="${DATALOGGER_INPUT_METHOD}"
export DATALOGGER_SERIAL_BAUDRATE="${DATALOGGER_SERIAL_BAUDRATE}"
#---------------------------------------------------------------------------------------------------------------------------
# Run DSMR Reader
#---------------------------------------------------------------------------------------------------------------------------
echo "Done, Start DSMR Reader!"
/app/run.sh