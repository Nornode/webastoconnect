DATE=`date '+%Y-%m-%d %H:%M:%S'`

credentials=credentials.txt
stripe_sid=stripe_sid_secret.txt
stripe_mid=stripe_mid_secret.txt

curl -v 'https://my.webastoconnect.com/webapi/login' \
    -H 'Cookie: i18next=en __stripe_mid=$stripe_mid; __stripe_sid=$stripe_sid'\
    -H 'Origin: https://my.webastoconnect.com' \
    -H 'Accept-Encoding: gzip, deflate, br' \
    -H 'Accept-Language: en-GB,en-US;q=0.9,en;q=0.8,sv;q=0.7' \
    -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36' \
    -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' \
    -H 'Accept: */*' \
    -H 'Referer: https://my.webastoconnect.com/login.html?/en/' \
    -H 'X-Requested-With: XMLHttpRequest' \
    -H 'Connection: keep-alive' \
    -H 'DNT: 1' \
    --data '$credentials' --compressed --cookie-jar credentials-cookie.txt

#echo -e " \n Creation date
