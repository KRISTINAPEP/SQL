SELECT UserID, COUNT(DISTINCT IP_Address) AS UniqueIPs
FROM LoginLogs
GROUP BY UserID
HAVING COUNT(DISTINCT IP_Address) > 3;

--This flags users who logged in from more than 3 unique IPs—could signal account compromise or credential sharing.

README.md

# IP Address Anomaly Detection

This SQL query simulates a cybersecurity scenario where users are flagged for logging in from multiple unique IP addresses—potentially indicating account compromise or credential sharing.

##  Query Logic
- Counts distinct IP addresses per user
- Filters for users with more than 3 unique IPs
- Uses `GROUP BY`, `HAVING`, and `DISTINCT`

## 🛡 Cybersecurity Relevance
This mirrors real-world SOC analyst tasks like:
- Detecting session hijacking or credential misuse
- Monitoring authentication logs for anomalies
- Supporting incident response investigations

##  Dataset Assumption
Table: `LoginLogs`  
Columns: `UserID`, `IP_Address`, `Timestamp`
