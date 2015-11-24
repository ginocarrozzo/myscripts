#!/bin/bash

USER="gmpls"
GMPLS_NET="172.20.0"
GMPLS_VMS=7
GMPLS_HOST="10.0.2.19"
DRYRUN=""
#DRYRUN="echo"
SSH_IDENT="gmpls-ctrl"

function rmKeyfile()
{
    rm -f $SSH_IDENT
}

function genKeyfile()
{
    rmKeyfile

    echo "-----BEGIN RSA PRIVATE KEY-----
MIIJKAIBAAKCAgEAsV7SOSxkuz9/yArfJetsI/47UWPcKUmO3MlhSspp+8E27KDs
1Kko+KARsiTrafK1Pb0SMUwnKmDVQ3AhH59mvV9EQWKIq0d3jj1nBEFEgw15mJeJ
/r98uzB2ko2FCpMFcEqG1lQ0IQaF8kUREoEvJuAb9s5DYF2h7zu5vDF6HGBL3GKe
kR4Ap3HHnrMRTyYcNJ6Z986Y9/NkBU9WeT84yyI9bjXb26LcqGyfCrNvqognLd96
NLlDGQZfOjBTQBhTZP51qaxpKkq7YMmcwi5KdA2sr9R9aW8Z9QTL+DI6PNIYRnd2
MiwInXhPZUgvjQlwESuO+JhBoWD6hnjBHZMpBX/9S3zx6lVIXF1FKCWZ6TX8Q5cH
hblNBrzscZouiBeoRMnbr0jfMC5itJQDtrA+0eboeJ5p0Umrb46LniIrvW+oMTNR
8loUuaf4kfxOQhe3t5dnhCnsoXHKUbYkzQTj4o+lLfd86/e3GLrzDGGZ7UZud9Q+
R2BDFk6hXGRNjN6GLvX9o85eCF0h8VZhxPDldWNgnnVRqxWAWKWBmHqC/LAKCAAv
RVvHWYJkmYqIAY1Xjfb17Xyh5zA2RVsbW1cAzo2tRNeAt0r2ho1RPzvtiwtg9TVc
lbDJW7ZTvi7A/6+gG9Vx4YEYRgTHP63nwiWd7EDfAR98Kgs0EcXV9a3na+kCAwEA
AQKCAgB9iYA/KRWOli3ptxAjdZIPk5QGUih0LHTp/bpXxhXnMuSd7HRTO/scpaaA
sLLSRQ9USCrFK4IY83peBdHb4OVFqVTU9lmG6MlMqlbsYwmLvBDRGIh5/qvYjT+P
EI0WY+KYjJcMwYI30bciNxITR83ItRv1vh1f6kV/3oTiFx63UMzAiihyy4po+RXx
VAovO+kAsTSGePo5nFGxlGq+3CllVLGn/ITE2mtU5bRXTZL+XulkBWUoReugnaru
s19o4Q69T4CV+8pfPY+LvIavxTW7GCaeOEYfRpxXl/KJk3s2qvi1fz3v2syqL4n6
RHIrX3+rF2pUtubUwp/uZy8/sHV6GgsHWhfEpIMHnfgKaYpRyi/VYcvSqnWV36xM
pZKk3aLYqVkVCE5OWPa1ts2JhVY5V3b9lFq1vsAYK7sb48F2rwQqLQtZe5g9PLki
NsaZQ28nWipeYvoMg77AS7fhJxOQTPASFdsZfsFIvq4yQIflrw01rajmW8Jko7y4
q4k9lpp2EdZ/JjhTAVCcp1WOpyZetiI54Ev4asvBboDsF3AMQhvTPNU5qKVBfa1l
VYPsL+h5l9u7Tg71yHkIvQimvNeq+STg4h6ysCC3DiMzNmI+7fvLGuk6V20plJk2
M61IV7qrIcf/Cw/taz5vrUYHaGU/pSW0i+eFNE6QQT+CmNrYRQKCAQEA4CQoAGTA
3w2uyqNUAI5fDSjX7qpQgE5KJsmGFyqjT/KslxbdzIxXj0HCBlJ824Vnj6vzYYUN
45oEmdMQau8mOwcahYEPHLC1Z63DzTWPx7BrVYFWI69oHczR8AA5SjsJs/SeJN7p
jwlDRssOYLMDsOsy2pDF+J1fYTdqtKLPOP5YbZlse6Y2JpQQBDvCqk4TyueeSNcI
81fUP9tXfGwrw50DF72azxWT144fm6gQf52CRa8fuHyGyjMvzQ9CSv7/TNtVJkDn
4STFNHdEolKUf3xRq0rcRAK50TunFHamOpHaFJtdRTtxYA/XIWjDShVWqc4hm6H3
coVM3pOWmhtW2wKCAQEAypTPl1WnLwZJArhM0KN6BOCDmIG9xdbWeYwBhyLlqskl
k/+4g/L0fFS3vAGuM0cS8XVOM0LlLZknNJGoVx2Jxm/t+C/9FIeEEm1TxysyMwSp
NQOFehj/9uemKWg4DYd/wwMX2yd1dCu9+drdO6mIv1vN62s+dJio7Mb0N8+OuvBK
+4mL/2DOk/t+Yxt2TF6f1LO+wPxe4qkykKbXVCyS44ouBtAJ8O5yksDeh2RBoeA0
++cuI/zpdKCfpWKTo2cZ7TllUyycTuJgp5FkCEJetKy7CROkvz0IMmZ2JX3Ky7+c
i1X35riEsDgJBYepg7d5R+TADDdO+1HrY3jEjFG5iwKCAQEAhyamDB60gYrBk6RK
OY+fVtMC6QE/Sy5p3dt0BDIMiV99nBkIopcZEOOIt8EzUjatjF8VgP72sf+juJEg
/Cm5tqwA3PFGCHmw2JRZVTpvuOvyvHshUqEouZdQG1Q3N0BECIN+fCMBV+Mw8tXr
lHk8x4f6gPn8tX1HDtqYd9UX+Hi9H1D8rc46JqbuxW63YXN00cs5kRhAaGLUM7Dx
nq+m7+uT+tO0LhwHqlkjS/tZ/2kdLSF8kgRcTj3xG8eQpKH/lPtH66oFZ6eBVbJ4
6xu6OOjgYdXg3Q17t+MtStSERRq/Ed/grKc8JL1Ibfe6kcguGnOVpj9ScnZYNHlv
vPqxMwKCAQBIrx/UcnzrmFu1yB53dVAgU9WjcFmAlFabgapCrDivEECVW1j+rrsd
qN/Laubvqv6W97m5FrVXqO2yJNi7ePOn6Rz+wWkSZpTyb5txiIQYXgG/7aWEa1fb
ZL3veV8zK3yhoYh7ryqrJc6hyO87qtZPoka9wtrDxspFOhUBuUzCsdiVa4J5fGhi
HAf60y2ctQ6vqFY2s9XviTmFQPddUijZzwg4lYgbk9Iz6VNuTIBn7iPUhdu+Oc4h
dEgTdMz4AdQBk2hRcV4bx4laVgYIGJgWRytMVGn125YHT0/wn7OVawhlzdCGTYn+
F/zUqRofEkNHkkF9oJKMBZZpODl9Bw2FAoIBADPII/cgMYLPawS7h9qu/e2N1Eta
RJAkhmoHd/UP8EXyS+5pTKQ3YMZMYR+6aJuaUATqyQNl6jtWsf5bx2CqQChuSRKZ
M1zjhS8GI1VpoQBJ5PC65GYEI2iLNYwHDbCYtdDnk//+ZYfEr3Vpoocoh+GIz+iN
jqWtp0x74gmYuIilq7pWFmT31+uPAE6NjW4cawO/u8c2uPzSmvziouC3NnmHthmC
JG6THEX+EjKof9d0Wnwf56WMAUZMfC8MHXJpW2rdujdie+bNmzuRfSUegqdV9IDY
lwVa2I7kZN/WDGPMvynuTYb0KehOU+P5yc1/aDRu2kAz7uUpaZzhyXpL0rY=
-----END RSA PRIVATE KEY-----
" > $SSH_IDENT
    chmod 600 $SSH_IDENT
}

function myTerm()
{
    XTERM_OPTS="-sb -si -sk -sl 10000"
               # -fn 8x13"
    echo "Connecting to GMPLS-CTRL-$1...."
    $DRYRUN xterm $XTERM_OPTS -title GMPLS-CTRL-$1 -e ssh -i $SSH_IDENT $USER@$GMPLS_NET.2$1 &

}

function checkRoute()
{
    CHECK_ROUTE=`/bin/ping -w 3 -c 1 $GMPLS_NET.21 | grep 'packets transmitted' |
    awk {'print $6'}`


    if [ "$CHECK_ROUTE" = "100%" ]; then
# add a route to the GMPLS testbed on NETDEV-1
        echo "Adding the missing route to the NXW-GMPLS testbed on $GMPLS_HOST"
        $DRYRUN sudo /sbin/route add -net $GMPLS_NET.0/24 gw $GMPLS_HOST
    fi
}


### MAIN PART
genKeyfile

if [ -z $1 ]; then
    pkill -9 xterm
    HOWMANY=$(( GMPLS_VMS + 1 ))
else
    if [ ! $(echo "$1" | grep -E "^[0-9]+$") ]; then
        echo "'$1' is not a valid integer."
        exit 1
    fi

    if [ $1 -lt "1" ] || [ $1 -gt "$GMPLS_VMS" ]; then
        echo "'$1' is not in the valid range [1,$GMPLS_VMS]."
        exit 1
    fi
    HOWMANY=1
    WHICHONE=$1
fi

###checkRoute

if [ $HOWMANY -gt "$GMPLS_VMS" ]; then
    for (( i = 1; i <  $HOWMANY; i++ ))
    do
        myTerm $i
    done
else
    myTerm $WHICHONE
fi

sleep $(( HOWMANY * 2 ))
rmKeyfile
