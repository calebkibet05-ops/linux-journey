# Day 7 – Networking Fundamentals

## Commands practiced

- ip addr
- ip route
- ping
- getent hosts
- resolvectl
- ss
- hostnamectl

## Key concepts

- An IP address identifies a network interface.
- The default route is used for traffic leaving the local network.
- DNS resolves hostnames to IP addresses.
- Listening ports identify services waiting for connections.
- `ss` is a modern tool for inspecting sockets and connections.

## Troubleshooting workflow

1. Check interface state and IP address.
2. Check the routing table.
3. Test the local stack.
4. Test external connectivity.
5. Test DNS resolution.
6. Inspect listening ports.9
