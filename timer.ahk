Settimer, Instructions, 600000 ; 60,000 ms = 1 minute   This equals 10 minutes
return

Instructions:
send, ^{f5}
send, ctrl
sleep, (1000)
send, {enter}
sleep, (1000)
mouseclick, left
mouseclick, left
sleep, (1000)
send, {delete}
return

^1::Settimer, Instructions, off
