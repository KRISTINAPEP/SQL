SELECT UserID, COUNT(*) AS LoginAttempts
FROM LoginLogs
WHERE Timestamp BETWEEN '2025-08-01' AND '2025-08-30'
GROUP BY UserID
HAVING COUNT(*) > 10;

# Suspicious Login Pattern Detection

This SQL query simulates a brute force login detection scenario by identifying users with excessive login attempts within a 30-day window.

##  Query Logic
- Counts login attempts per user
- Filters for users with more than 10 attempts
- Uses `GROUP BY`, `HAVING`, and timestamp filtering

## 🛡 Cybersecurity Relevance
This mirrors real-world SOC analyst tasks like:
- Detecting brute force attacks
- Monitoring authentication logs
- Supporting incident response investigations

##  Dataset Assumption
Table: `LoginLogs`  
Columns: `UserID`, `Timestamp`
