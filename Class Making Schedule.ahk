#Persistent  ; Script by BoBo		

SetTimer, Chronos, 500

Return

Chronos:

FormatTime, TimeToMeet,,HHmm

If TimeToMeet = 700 ;

{
send, 473160    ;Registration Pin
send, {enter} 
sleep, 2000

send, {tab}
send, {tab}
send, {tab}
send, {tab}
send, {tab}
send, {tab}
send, {tab}
send, {tab}
send, {tab}


send, 91953 	;Network essentials
send, {tab}
send, 91781		;Reverse Engineering 
send, {tab}
send, 90528 	;mech lab
send, {tab}
send, 90518		;mech heat and waves
send, {tab}
send, 91780		;Small scale
send, {tab}
send, 90877		;algorithms
send, {enter}

ExitApp

}

Return
