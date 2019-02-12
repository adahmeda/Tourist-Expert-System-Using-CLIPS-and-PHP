(exit)
; facts
(deffacts myfacts
	(ask start)
)
; rule asking tourist preferred destination
(defrule getinfo
	(ask start)
	=>
	(printout -t "What attraction do you wanna visit? "crlf)
	(assert (favorite ?userfav)
	(printout -t "What climate do you prefer? "crlf)
	(assert (climate ?usercli)
	(printout -t "Would you want an airport new where you land? "crlf)
	(assert (airport ?userair)
	(printout -t "What attraction do you wanna visit? "crlf)
	(assert (shopping ?usershop)
)
 
; rule to fire recommendations
(defrule recommend
	(and
	(favorite userfav)
	(climate usercli)
	(airport userair)
	(shopping usershop))
	=> 
 
	(printout"We recommend the following hotels")
 



 if region-climate== "rtype" | region_airport=="no" | regi
	region be true else false

if site region ==="false"
	site == false

if t1 | t2 | t3 |t5= "wildlife"
	site= true
	else
	site = false
if site budget > budget
	site=false

if cf ! true |