$TTL 10m  ; default TTL for zone
$ORIGIN domain.name.com.

@           IN      SOA     ns1.domain.name.com. admin.domain.name.com. (
                            2025120203  ; serial number
                            3600        ; refresh period
                            600         ; retry period
                            604800      ; expire time
                            1800        ; negative TTL
                            )

; Name servers for the domain
@           IN      NS              ns1.domain.name.com.
@           IN      NS              ns2.domain.name.com.

; Mail servers for the domain
            IN      MX      10      mx1.domain.name.com.
            IN      MX      20      mx2.domain.name.com.

; Main services
ns1         IN      A               192.168.100.1
ns2         IN      A               192.168.100.2
mx1         IN      A               192.168.100.3
mx2         IN      A               192.168.100.4
prod1       IN      A               192.168.100.10
prod2       IN      A               192.168.100.11
prod3       IN      A               192.168.100.12

; Wildcard services
*.prod1     IN      CNAME           prod1
*.prod2     IN      A               192.168.100.11

; CNAME (aliases) services
svc1        IN      CNAME           prod1
svc2        IN      CNAME           prod2
