# WebastoConnect
Shell scripts for pulling the data from your Webasto connect enabled car, boat or RV. THis will in the end work in an automated manner sending data to an MQTT broker which can be ingested by your preffered homeautomation system like Home Assistant, Domoticz et.al.

## Use this on your own risk.


# Currently not working!
There are a few hurdles to solve:

 1. Credentials aren't updating
 
    _stripe_mdi:_ Static and something tied to your account.
    
    _stripe_sid:_ Set by stripe-js (Payment solution) within a javascript and must be generated somehow. _*(Please HELP!)*_
    
    _hssess:_ the session key and can be obtained with webasto-login.sh
    
 2. Else, after some stylization I think this works pretty nice.
