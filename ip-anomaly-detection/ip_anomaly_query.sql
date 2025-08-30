 SELECT UserID, COUNT(DISTINCT IP_Address) AS UniqueIPs
FROM LoginLogs
WHERE Timestamp BETWEEN '2025-08-01' AND '2025-08-30'
GROUP BY UserID
HAVING COUNT(DISTINCT IP_Address) > 3;


# IP Address Anomaly Detection

This SQL query simulates a cybersecurity scenario where users are flagged for logging in from multiple unique IP addresses within a short time frame—potentially indicating account compromise or credential sharing.

## 🔍 Query Logic
- Counts distinct IP addresses per user
- Filters for users with more than 3 unique IPs in 30 days
- Uses `GROUP BY`, `HAVING`, and `DISTINCT`

## 🛡️ Cybersecurity Relevance
This mirrors real-world SOC analyst tasks like:
- Detecting session hijacking or credential misuse
- Monitoring authentication logs for anomalies
- Supporting incident response and account investigations

## 📁 Dataset Assumption
Table: `LoginLogs`  
Columns: `UserID`, `IP_Address`, `Timestamp`

