#Persistent
SetTimer, Chronos, 500

vCRN1 := 0
vCRN2 := 0
vCRN3 := 0
vCRN4 := 0
vCRN5 := 0
vCRN6 := 0
vCRN7 := 0


;^8::
    ;Launches the sign in page
    Gui, add, Text,, 'Please Log in if you have not already. When you have logged in Press 'OK''
    Gui, Add, Button, gCRN,Close
    run, https://mycharger.newhaven.edu/web/mycharger
    Gui,Show
return



;Field to input CRNs
CRN:
    Gui, Destroy
    Gui, add, Text,, enter your CRN:
    Gui, add, edit, vCRN1
    Gui, add, edit, vCRN2
    Gui, add, edit, vCRN3
    Gui, add, edit, vCRN4
    Gui, add, edit, vCRN5
    Gui, add, edit, vCRN6
    Gui, add, edit, vCRN7
    gui, Add, Button, w50 gOK, OK
    Gui, show

return


    
OK: 
    Gui, Submit     ;Saves all the entered CRNs to their variables
    InputBox, pin, Please Input Pin,    
    Gui, Destroy
    Gui, Font, s10
    Gui, add, Text,, Please leave your computer open and running on the PIN registration page with your mouse over the pin entry box. If you press CTRL + 3 it will manually enter the CRNs you entered, but only while in the actual CRN entry page. For more help consult the provided readMe.txt 
    Gui, show
    run, https://banner-ssb.newhaven.edu:9000/prod/bwskfreg.P_AltPin
    run, timer.ahk
    Return





;CTRL + 3 Will manually call the method to input all theh CRNs into te fields
^3::
send, %CRN1% 	
send, {tab}
send, %CRN2%		
send, {tab}
send, %CRN3%	
send, {tab}
send, %CRN4%	
send, {tab}
send, %CRN5%	
send, {tab}
send, %CRN6%	
send, {tab}
send, %CRN7%	
send, {enter}



;This will trigger the registration method
Chronos:

FormatTime, TimeToMeet,,HHmm

If TimeToMeet = 700 ;

{
send, %pin% 
send, {enter} 
sleep, 1000

;Required Tabs to navigate to the CRN fields
send, {tab}
send, {tab}
send, {tab}
send, {tab}
send, {tab}
send, {tab}
send, {tab}
send, {tab}
send, {tab}

send, %CRN1% 	
send, {tab}
send, %CRN2%		
send, {tab}
send, %CRN3%	
send, {tab}
send, %CRN4%	
send, {tab}
send, %CRN5%	
send, {tab}
send, %CRN6%	
send, {tab}
send, %CRN7%	
send, {enter}

ExitApp
}

