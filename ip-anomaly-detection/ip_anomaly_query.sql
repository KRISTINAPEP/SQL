# IP Address Anomaly Detection

This SQL query simulates a cybersecurity scenario where users are flagged for logging in from multiple unique IP addresses within a short time frame—potentially indicating account compromise or credential sharing.

##  Query Logic
- Counts distinct IP addresses per user
- Filters for users with more than 3 unique IPs in 30 days
- Uses `GROUP BY`, `HAVING`, and `DISTINCT`

## 🛡 Cybersecurity Relevance
This mirrors real-world SOC analyst tasks like:
- Detecting session hijacking or credential misuse
- Monitoring authentication logs for anomalies
- Supporting incident response and account investigations

**MITRE Mapping:** T1078 – Valid Accounts

##  Dataset Assumption
Table: `LoginLogs`  
Columns: `UserID`, `IP_Address`, `Timestamp`

## 🧾 Sample Output
| UserID | UniqueIPs |
|--------|-----------|
| user123 | 5         |
| user456 | 7         |
