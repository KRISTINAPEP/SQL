SELECT a.UserID, r.ResourceName
FROM AccessLogs a
JOIN Resources r ON a.ResourceID = r.ResourceID
WHERE r.AccessLevel = 'Admin' AND a.UserRole != 'Admin';

-- This query flags users accessing admin-only resources without admin privileges (possible access control violation).

README.md
# Access Control Violation Detection

This SQL query simulates a cybersecurity scenario where users are flagged for accessing admin-level resources without proper privileges—indicating a potential access control violation.

##  Query Logic
- Joins access logs with resource metadata
- Filters for cases where non-admin users access admin-only resources
- Uses `JOIN`, `WHERE`, and role-based filtering

## 🛡 Cybersecurity Relevance
This mirrors real-world SOC analyst tasks like:
- Enforcing zero trust and role-based access control
- Detecting privilege misuse or policy violations
- Supporting compliance and audit investigations
  
**MITRE Mapping:** T1078 – Valid Accounts

##  Dataset Assumption
Tables: `AccessLogs`, `Resources`  
Columns:  
- `AccessLogs`: `UserID`, `UserRole`, `ResourceID`  
- `Resources`: `ResourceID`, `ResourceName`, `AccessLevel`

## Sample Output
| UserID | ResourceName |
|--------|--------------|
| user123 | AdminPanel  |
| user456 | ConfigTool  |

