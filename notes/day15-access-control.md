# Day 15: Users, Groups, Permissions, and Access Control

## Objectives
- Create users and groups safely
- Apply ownership and permission changes
- Understand setgid directories
- Inspect file metadata and ACLs
- Understand umask
- Build a reusable access-control audit script

## Key Concepts
- Owner:
- Group:
- Others:
- Numeric permissions:
- Setgid directory:
- ACL:
- Umask:

## Lab Findings
- Directory permissions:
- File ownership:
- Shared file behavior:
- Restricted file behavior:
- Default umask:
- ACL result:

## Security Interpretation
Explain:
1. Which file was intentionally shareable?
2. Which file was intentionally restricted?
3. Why is `640` safer than `644` for sensitive data?
4. Why can parent-directory permissions affect access?
5. When would ACLs be useful?

## Files Created
- `notes/day15-access-control.md`
- `labs/day15/access-control/permission-snapshot.txt`
- `labs/day15/access-control/access-control-audit-output.txt`
- `labs/day15/access-control/umask-test.txt`
- `scripts/access-control-audit.sh`
