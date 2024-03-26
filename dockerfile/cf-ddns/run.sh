#!/bin/ash
FILE=/tmp/ip.txt

if [ -z ${SLEEP_TIME} ]; then
    SLEEP_TIME=300
fi

while true; do
    t=$(date "+%Y-%m-%d %H:%M:%S")
    echo "Start at [${t}]"
    lastip=""
    if [ -f ${FILE} ]; then
        lastip=`cat ${FILE}`
	echo "last ip is: ${lastip}"
    else
	echo "last ip is empty"
    fi
    if [ -z ${CHECK_IP_URL} ];then
	echo "CHECK_IP_URL is not set. Use default: ipv4.ip.sb"
        CHECK_IP_URL=ipv4.ip.sb
    fi

    nowip=`curl -s ${CHECK_IP_URL}`
    echo "Get nowip is: ${nowip}."

    while [[ "${nowip}" = "" ]]; do
        echo "Get nowip failed. Try again."
	sleep 10
        nowip=`curl -s ${CHECK_IP_URL}`
	echo "Get nowip again is: ${nowip}."
    done

    if [ "${lastip}" = "${nowip}" ]; then
        echo "[Finish] Not need update"
    else
        cf-ddns \
            --cf-email=${CF_EMAIL} \
            --cf-api-key=${CF_KEY} \
            --cf-zone-id=${CF_ZONEID} \
            --ip-address=${nowip} \
            ${DOMAIN}
        echo "${nowip}" > /tmp/ip.txt
        echo "[Finish] IP updated"
    fi
    sleep ${SLEEP_TIME}
done

