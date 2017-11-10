#!/bin/bash
#
# slack.sh
#
# Send message to slack channel
#
CHANNEL="#ims_vccz_test"
URL="https://hooks.slack.com/services/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"
USER="BrightResolve"
ICON=":smile:"
COLOR="#36a64f"
PAYLOAD="{\"channel\": \"${CHANNEL}\", \"username\": \"${USER}\", \"icon_emoji\": \"${ICON}\", \"attachments\": [{\"fallback\": \"Fallback text\", \"color\": \"${COLOR}\", \"title\": \"Bright Resolve\", \"fields\": [{\"title\": \"Trigger\", \"value\": \"${CMD_TRIGGER_NAME}\"},{\"title\": \"Measurable\", \"value\": \"${CMD_MEASURABLE_NAME}\"},{\"title\": \"IP\",\"value\":\"${CMD_IP}\"},{\"title\": \"Hostname\", \"value\": \"${CMD_HOSTNAME}\"},{\"title\": \"Location\", \"value\": \"${CMD_UCS_DN}\"}]}]}"
#TEXT="Trigger: ${CMD_TRIGGER_NAME}\nMeasurable: ${CMD_MEASURABLE_NAME}\nIP Addr: ${CMD_IP}\nLocation: ${CMD_UCS_DN}\nHostname: ${CMD_HOSTNAME}"
#PAYLOAD="{\"channel\": \"${CHANNEL}\", \"username\": \"Bright\", \"icon_emoji\": \":headwall:\", \"text\": \"${TEXT}\"}"
curl -X POST --data-urlencode "payload=${PAYLOAD}" ${URL}
