$TTL 30m  ; default TTL for zone
$ORIGIN DOMAIN.NAME.COM.

@           IN      SOA     ns1.DOMAIN.NAME.COM admin.DOMAIN.NAME.COM (
                            2025120203  ; serial number
                            3600        ; refresh period
                            600         ; retry period
                            604800      ; expire time
                            1800        ; negative TTL
                            )
; Name servers for the domain
            IN      NS              ns1.DOMAIN.NAME.COM.
            IN      NS              ns2.DOMAIN.NAME.COM.

; Mail servers for the domain
            IN      MX      10      mx1.DOMAIN.NAME.COM.
            IN      MX      20      mx2.DOMAIN.NAME.COM.

; Main services
ns1         IN      A               192.168.100.1
ns2         IN      A               192.168.100.2
mx1         IN      A               192.168.100.3
mx2         IN      A               192.168.100.4
prod1       IN      A               192.168.100.10
prod2       IN      A               192.168.100.11
prod3       IN      A               192.168.100.12

; Wildcard services
*.prod1     IN      A               192.168.100.10
*.prod2     IN      A               192.168.100.11

; CNAME (aliases) services
svc1        IN      CNAME           prod1
svc2        IN      CNAME           prod2
