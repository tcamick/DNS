;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	router.foreman.network.com. admin.foreman.network.com. (
			      4		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;name servers ns records
	IN	NS	router.foreman.network.com.
;name servers - A records 

router.foreman.network.com.    IN    A    172.16.0.1

;172.16.0.1/24 - A records
foreman-test.foreman.network.com. IN    A 172.16.0.10
host1.foreman.network.com. IN    A 172.16.0.11




