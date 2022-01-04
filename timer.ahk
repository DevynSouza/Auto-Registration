#Persistent
Settimer, Instructions, 600000 ; 6.000 ms = 1 minute   This equals 10 minutes
return

Instructions:
send, ^{f5}
send, ctrl
sleep, (1000)
send, {enter}
sleep, (2000)
;9 Tabs
Loop, 9 {
    send, {tab}
    sleep, 50
}
sleep, (1000)
send, {delete}
return

^1::Settimer, Instructions, off