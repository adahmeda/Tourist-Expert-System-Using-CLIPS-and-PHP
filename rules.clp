
(deftemplate sites

    (multislot  sname  (type STRING)) ;site name
    (multislot  descrp )  ;site description
    (multislot rid (type STRING)); region name
    (multislot  t1 (type STRING)(default "none"));tags
    (multislot   cf (type STRING)); child friendienss
	)
    


(deftemplate regions
    (slot rid)
    (multislot rname (type STRING))
    (multislot regiontype (type STRING))
    (slot airports (type STRING) (default "no"))
    (slot sc (type STRING) (default "no")) ;shopping centers
)




(deftemplate hotels
    (multislot hname (type STRING))
    (multislot hlocation (type STRING))
    (multislot hpricerange (type STRING))
    (multislot htype )
    
)

(deftemplate wanted_regions

    (multislot rname (type STRING))
    (multislot regiontype (type STRING))
 
)



(deftemplate wanted_sites

    (multislot  sname (type STRING))
    (multislot  descrp )
    (multislot rid (type STRING))
    (multislot  t1 (type STRING)(default "none"))

    
)


;final sites based on  wanted_sites && wanted_regions

(deftemplate final_sites

    (multislot  sname (type STRING))
    (multislot  descrp (type STRING))
    (multislot rid)
    (multislot  t1 (type STRING))
    (multislot  cost)
    (multislot   cf (type STRING))
    
)
    

(deftemplate tourguide
    (multislot tname (type STRING))
    (multislot ratings (type STRING))
)



;done


;HOTEL AND ACCOMODATION


(deftemplate final_hotel_site

    (multislot hname (type STRING))
    (multislot hlocation (type STRING))
    (multislot hpricerange (type STRING))
    (multislot htype (type STRING) )
    
)


 (defrule filter_hotels
     
    (hotels (hname ?a)(hpricerange "Mid djfb")(hlocation "Nairobi")(htype ?z))


    
    
   =>
   (printout t ?a)
 
(assert (final_hotel_site

    (hname ?a)
    (hpricerange "Mid djfb")

(hlocation "Nairobi")
(htype ?z)
   
 
    
 )
)

   
)






