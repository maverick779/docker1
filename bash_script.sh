#!/bin/bash

REGION="us-east-1"
LOG_FILE="/var/log/ec2_health_monitor.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

log() {
  echo "[$TIMESTAMP] $1" | tee -a "$LOG_FILE"
}

log "Fetching EC2 instance health..."

aws ec2 describe-instance-status \
  --region "$REGION" \
  --include-all-instances \
  --query 'InstanceStatuses[*].{
    InstanceId:InstanceId,
    State:InstanceState.Name,
    SystemStatus:SystemStatus.Status,
    InstanceStatus:InstanceStatus.Status
  }' \
  --output table | tee -a "$LOG_FILE"

log "EC2 health monitoring complete."

