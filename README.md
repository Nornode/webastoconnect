# WebastoConnect
Shell scripts for pulling the data from your Webasto connect enabled car, boat or RV. THis will in the end work in an automated manner sending data to an MQTT broker which can be ingested by your preffered homeautomation system like Home Assistant, Domoticz et.al.

## Use this on your own risk.


# Currently not working! - PR Welcome!
There are a few hurdles to solve:

 1. Credentials aren't updating
 
    _stripe_mdi:_ Static and something tied to your account - All good!.
    
    _stripe_sid:_ _*(Please HELP!)*_ Set by stripe (Payment solution) within a javascript and must be generated somehow. Googling showed it might be possible to solve with https://github.com/facebook/php-webdriver but help needed here. 
    
    _hssess:_ the session key and can be obtained with webasto-login.sh.
    
 2. Automating all the above just inputing your username and password.
 
 3. Restructuring all in to one nice script.
 
 4. Else, after some stylization I think this works pretty nice.
