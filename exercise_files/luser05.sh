#!/bin/bash

# generate password using ${RANDOM}
PASSWORD="${RANDOM}"
echo -e "$PASSWORD \n-using one variable of RANDOM"

# generate password using 3 variables of ${RANDOM}
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo -e "$PASSWORD \n-using three vairables of RANDOM"

# use current date/time as basis for password
PASSWORD=$(date +%s)
echo -e "$PASSWORD \n-using time/date as basis of password"

# use nanoseconds to act as randomization
PASSWORD=$(date +%s%N )
echo -e "$PASSWORD \n-using time/date as basis and nanoseconds as random"

# a better password using sha256sum
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo -e "$PASSWORD \n-using sha256sum to produce random password"

# even better password using RANDOM and sha256sum
PASSWORD=$(date +%s%N${RANDOM} | sha256sum | head -c48)
echo -e "$PASSWORD \n-using random and sha256sum"

# append special character to password.
SPECIAL_CHARACTER=$(echo '!@#$%^&*()_-=+' | fold -w1 | shuf | head -c1)
echo ${PASSWORD}${SPECIAL_CHARACTER}

