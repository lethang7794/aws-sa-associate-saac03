# DNSSEC

> [!NOTE] .org
>
> ```shell
> # 6️⃣ DS: Hash of icann.org's public KSK 5️⃣
> icann.com.              86400   IN      DS      50731 8 2 6912A467DC432811BD2B1C7E5C01B20E2C60049EB57833E8308FAD0F DE779511
>
> # 7️⃣ RRSIG DS:  Digital Signature of RRSET DS (signed with .org private ZSK) 👈 Use .org public ZSK to verify
> icann.com.              86400   IN      RRSIG   DS 8 2 86400 20231004041827 20230927030827 4459 com. HzxBlHRtCbsrYi2gSs/bndqPM+CudLaCpHQQtZAxMgtdCnVaizDYPan2 2y90Xs6SEXtUqgoZqq7UUGsR+R/z3dB3WSp7x803l6YReF8yEl798JVb LqVZTHzxCkGI1epGgG7RRQh6guewsjIglLMn10F8DYYVwA/ciIM0MFVn PoGJ7jFVXCV94wbDjR/hGhmBnMs915qCQrXORsLoj3hNVA==
> ```
>
> > icann.org

```shell
# 1️⃣ A
icann.com.              21600   IN      A       192.0.43.22
# 👉 2️⃣ RRSET A

# 3️⃣ RRSIG: Digital Signature of RRSET A (signed with icann.org private ZSK) 👈 Use icann.org public ZSK to verify
icann.com.              21171   IN      RRSIG   A 8 2 172800 20231013151215 20230922222304 19948 icann.com. kdlvu99UkZSgLwUm5kRLOh3uwPEDdrw8AGTA0GmVmHWVS+2DirvCvv5W cygWGaAJEgWv1vIrO7xxwhPSZgRFgGExsflJEweFeUhah4kvyu6ccWkH 7vKmB7FDllDk1jiOVTQxlMq6NMEiWEjdXV9kpWSz3W0zPUkZbfP0+LSU vF8=

# 4️⃣ DNSKEY 256 👈 Public ZSK
icann.com.              3600    IN      DNSKEY  256 3 8 AwEAAZH9MYCAnL3ScBITGA/aqPHOWf06ggtfDNW2keGvZdI931UtwHqn yt7GxDReDChSBuKD4s61NqrNsLaYafAhJ2e0QoOMHdKerd0B/UXAr2Sg VjA1yhLicBivgmnF/+a1lfiMV8MuRLwQococw855FQe0+u7B+KfkSmna U+yl865p

# 5️⃣ DNSKEY 257 👈 Public KSK
icann.com.              3600    IN      DNSKEY  257 3 8 AwEAAa7hPkfzWnWAMcvA+AYuFltjQRrwSitlgoq5rBZJw/rRS88g2jDK R9iM+8E4shyH97qElzKKWtmB9zo1Ch4+7hL7nX1Fb5yxPmuzIvsCgktj YWKe+5xzXn7k0SX4HtRZlkZEMSRZU0FU0nnuVo1uKqCfirLBwA1pS56c ocw/nBlLz+6+GIsJ8+Ru6gsoMJDsM/um6lRsaIpRsgJZE1MD9L+iIVm7 SQTuJ/A9fBALcDP709YAW2Km4AMpr858kMW9dFwotKhkTDdrR4w4DGvC YuM8mmjrVcWkGNXuJa1dIbDRnTYuklxQhl8q79l2afUpMHpJN2Clmgqk 2SCQx4Pidz0=

icann.com.              3600    IN      RRSIG   DNSKEY 8 2 3600 20231015134910 20230924084215 33307 icann.com. ecdISSPgwKvgW6LIwtalMSIwlp9uJr36EJ6DdAKcVERLJ4Qj3GL9Nzki VMbVnKAvSRxHvDTvI7C6lxwKw0IZRxbcyFHTj/FM7wZhXDZEeL/4XVNJ Zctbz61e+TQgsLaOsGtw3/6xiDBkMaVdSzXS+dGmcOZoLtnR3snd/lHb GRtTLI/MPICnCrJNV0r1L6Ka+sLAOVeci7qmB6VrG4oQ9z5/IIpXe0dW njPXRhETbgVIClV/lOXxOLcEot3txwBCYyT714Cmpr6tqNaK++MGKlrt SE5c5q4MgHn18TZapcwgbCXaQqcgl1Q4hm1UY0kqnf0arBVgtOrJHTPO LOainw==
icann.com.              3600    IN      RRSIG   DNSKEY 8 2 3600 20231015134910 20230924084215 50731 icann.com. SMh9VLTzhdBtZFvkiCrcbPKv0o4EtcyRH/HqOfNz5nF3A1NtA2OB9ygp jwCipXMCPP4exBdZWTYz+wcnTom2kSGADa7RfTolAvY5/ttoNlyIMDs0 TaHY9YlHG+24jgA/O3i00CHCT1cT9/Pi+A5mVkD+L+89/5bA1+b35Ee3 Nf3Ub6krykr817WXuvb5EqVpPxHdKFqbwxNfhLRhlAgidPWY/JxeXm+m jF30A25QE0XiS+FrBv6yi/0adCUiFnoIbd8mORuE+Lj/j++5EBOvUBQY a5fc100gJmn8M2hfbH7K9pGPjiG8WjDmJn7htj9DAOeU/WGmOz5bDSfG JO+mhA==
```
