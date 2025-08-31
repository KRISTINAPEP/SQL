# Suspicious Login Pattern Detection

This SQL query simulates a brute force login detection scenario by identifying users with excessive login attempts within a 30-day window.

## Query Logic
- Counts login attempts per user
- Filters for users with more than 10 attempts
- Uses `GROUP BY`, `HAVING`, and timestamp filtering

##  Cybersecurity Relevance
This mirrors real-world SOC analyst tasks like:
- Detecting brute force attacks
- Monitoring authentication logs
- Supporting incident response investigations

**MITRE Mapping:** T1110 – Brute Force

## Dataset Assumption
Table: `LoginLogs`  
Columns: `UserID`, `Timestamp`

## Sample Output
| UserID | LoginAttempts |
|--------|----------------|
| user456 | 12             |
| user789 | 15             |
