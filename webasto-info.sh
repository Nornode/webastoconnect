#!/bin/bash
credentials-cookie=credentials-cookie.txt
stripe_sid=stripe_sid_secret.txt
stripe_mid=stripe_mid_secret.tct
#epoch=date +%s%N | cut -b1-13
epoch=`date +%s%N | cut -b1-13`
#before=$epoch -1200
echo -e "\n $epoch \n"
sleep 10
echo -e "\n Let's do this...\n"
#webasto_info=`
curl -v 'https://my.webastoconnect.com/webapi/get_service_data?poll=true&_=$epoch' \
		-H 'Cookie: i18next=en; __stripe_mid=$stripe_mid; __stripe_sid=$stripe_sid; hssess=$credentials-cookie' \
		-H 'DNT: 1' \
		-H 'Accept-Encoding: gzip, deflate, br' \
		-H 'Accept-Language: en-GB,en-US;q=0.9,en;q=0.8,sv;q=0.7' \
		-H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36' \
		-H 'Accept: application/json, text/javascript, */*; q=0.01'
		-H 'Referer: https://my.webastoconnect.com/index.html?lang=en' \
		-H 'X-Requested-With: XMLHttpRequest' \
		-H 'Connection: keep-alive' --compressed --cookie-jar credentials-cookie.txt
#`
#echo -e "\n $webasto_info \n"
#mosquitto_pub -t "/sniff/webasto"  -m "$webasto_info"
