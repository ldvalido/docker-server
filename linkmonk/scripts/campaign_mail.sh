#!/bin/bash

campaign_id=$(curl -s -u "adminapi:b9EtWP6Cm1Ezo9vOTgmoc7M0rBOig0bM" 'http://localhost:9000/api/campaigns' \
  -H 'Content-Type: application/json' \
  --data-raw '{"archiveSlug":"Test","name":"Backup 20241113","subject":"Backup 20241113","body":"{{ TrackView }}  Backup Sucessfully Generated","lists":[3],"from_email":"listmonk <noreply@listmonk.yoursite.com>","content_type":"richtext","messenger":"email","type":"regular","tags":[],"send_later":false,"send_at":null,"headers":[],"template_id":2,"media":[]}' | jq '.data.id')


curl -u "adminapi:b9EtWP6Cm1Ezo9vOTgmoc7M0rBOig0bM" -X PUT "http://localhost:9000/api/campaigns/$campaign_id/status" \
--header 'Content-Type: application/json' \
--data-raw '{"status":"running"}'
echo $result