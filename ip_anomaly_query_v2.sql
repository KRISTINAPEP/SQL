# IP Address Anomaly Detection

This SQL query simulates a cybersecurity scenario where users are flagged for logging in from multiple unique IP addresses—potentially indicating account compromise or credential sharing.

## Query Logic
- Counts distinct IP addresses per user
- Filters for users with more than 3 unique IPs
- Uses `GROUP BY`, `HAVING`, and `DISTINCT`

##  Cybersecurity Relevance
This mirrors real-world SOC analyst tasks like:
- Detecting session hijacking or credential misuse
- Monitoring authentication logs for anomalies
- Supporting incident response investigations

**MITRE Mapping:** T1078 – Valid Accounts

## Dataset Assumption
Table: `LoginLogs`  
Columns: `UserID`, `IP_Address`, `Timestamp`

## Sample Output
| UserID | UniqueIPs |
|--------|-----------|
| user789 | 6         |
| user321 | 4         |
