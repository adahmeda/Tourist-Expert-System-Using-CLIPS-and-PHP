<?php
include_once('conn.php');


$uname=$_POST['uname'];



$filter="";
$region_filter="(defrule filter_regions    ?f1 <- (regions (rname ?y) ";
if(isset($_POST['childfriendly']))
{
$childfriendly="Yes";
}else
{
    $childfriendly="No";
}





   //PRINTING THE ACTUAL TAGS
   if(isset($_POST['beaches']))
   {


   $beaches="Beach and Marine";
   $beaches_filter='(defrule filter_sites_1  
     
    ?f2 <- (sites (t1  "'.$beaches.'" )  (sname ?a)  (descrp ?b) (rid ?c)  (img ?d ))	
   => 
(assert (wanted_sites

    (sname ?a)
    (descrp ?b)
    (rid ?c)
(t1 "'.$beaches.'")
(img ?d )
 )
)
   )';
   //echo $beaches_filter;
   }else
   {
       $beaches="No";
       $beaches_filter="";
   }
   $filter=$filter.$beaches_filter;


   
   if(isset($_POST['wildlife']))
   {
   $wildlife="Wildlife";
   $wildlife_filter='(defrule filter_sites_2  
     
   ?f2 <- (sites (t1  "'.$wildlife.'" )  (sname ?a) (descrp ?b) (rid ?c)  (img ?d ))
   
   
  =>


(assert (wanted_sites

   (sname ?a)
   (descrp ?b)
   (rid ?c)
(t1 "'.$wildlife.'")
(img ?d )
  
 
   
)
)

  
  )';
   }else
   {
   $wildlife="No";
   $wildlife_filter="";
   }
   $filter=$filter.$wildlife_filter;
   if(isset($_POST['scenery']))
   {
   $scenery="Scenery and Landscapes";

   $scenery_filter='(defrule filter_sites_3  
     
   ?f2 <- (sites (t1  "'.$scenery.'" )  (sname ?a) (descrp ?b) (rid ?c) (img ?d ) )
   
   
  =>


(assert (wanted_sites

   (sname ?a)
   (descrp ?b)
   (rid ?c)
(t1 "'.$scenery.'")
(img ?d )
  
  
)
)

  
  )';
   }else
   {
   $scenery="No";
   $scenery_filter="";
   }
   $filter=$filter.$scenery_filter;
   if(isset($_POST['culture']))
   {
   $culture="Culture";

   $culture_filter='(defrule filter_sites_4
     
   ?f2 <- (sites (t1  "'.$culture.'" )  (sname ?a)  (descrp ?b) (rid ?c) (img ?d ) )
   
   
  =>


(assert (wanted_sites

   (sname ?a)
   (descrp ?b)
   (rid ?c)
(t1 "'.$culture.'")
(img ?d )
  
 
)
)

  
  )';
   }else
   {
   $culture="No";
   $culture_filter=" ";
   }
   $filter=$filter.$culture_filter;

   if(isset($_POST['historic']))
   {
   $historic="Historic Sites";

   $historic_filter='(defrule filter_sites_5  
     
   ?f2 <- (sites (t1  "'.$historic.'" )  (sname ?a)  (descrp ?b) (rid ?c) (img ?d ) )
   
   
  =>


(assert (wanted_sites

   (sname ?a)
   (descrp ?b)
   (rid ?c)
(t1 "'.$historic.'")
(img ?d )
  
  
   
)
)

  
  )';
   }else
   {
   $historic="No";
   $historic_filter=" ";
   
   }
   $filter=$filter.$historic_filter;
   if(isset($_POST['adventure']))
   {
   $adventure="Adventure";
   $adventure_filter='(defrule filter_sites_5  
     
   ?f2 <- (sites (t1  "'.$adventure.'" )  (sname ?a)  (descrp ?b) (rid ?c)  (img ?d ))
   
   
  =>


(assert (wanted_sites

   (sname ?a)
   (descrp ?b)
   (rid ?c)
(t1 "'.$adventure.'")
(img ?d )

   
)
)

  
  )';

   
   }else
   {
   $adventure="No";
   $adventure_filter="";
   }
   $filter=$filter.$adventure_filter;
   if(isset($_POST['sports']))
   {
   $sports="Sports";
   $sports_filter='(defrule filter_sites_6  
     
   ?f2 <- (sites (t1  "'.$sports.'" )  (sname ?a) (descrp ?b) (rid ?c) (img ?d ))
   
   
  =>


(assert (wanted_sites

   (sname ?a)
   (descrp ?b)
   (rid ?c)
(t1 "'.$sports.'")
(img ?d )
)
)

  
  )';
   }else
   {
   $sports="No";
   $sports_filter="";
   }
   $filter=$filter.$sports;
   if(isset($_POST['sc']))
   {
       $sc="Yes";
   }else
       {
           $sc="No";
       }
   $rtype=$_POST['rtype'];
   $region_filter=$region_filter.'(regiontype "'.$rtype.'")'; 
   
   $airport=$_POST['airport'];

   if($airport =="Yes")
   {
    $region_filter=$region_filter.'(airports  "'.$airport.'")'; 
   }
   if($sc =="Yes")
   {
    $region_filter=$region_filter.'(sc "'.$sc.'")'; 
   }
   $region_filter=$region_filter.')
	
   =>

   (assert (wanted_regions

    (rname ?y)
    (regiontype "'.$rtype.'")
 )
)
)';
//echo $region_filter;
$filter=$filter.$region_filter;
//echo $filter;
/*$userassert=   
   "(deffacts sites_facts(users
   (uname ".$uname.")
   (budget ".$budget.")
   (beaches ".$beaches.")
   (wildlife ".$wildlife.")
   (scenery ".$scenery.")
   (culture  ".$culture.")
   (historic ".$historic.")
   (adventure ".$adventure.")
   (sports ".$sports.")
   (cf ".$childfriendly.")
   (rtype ".$rtype.")
   (airports ".$airport.")
   (sc  ".$sc.") 
))"; */

?>

<!DOCTYPE html>
<head>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>

    <style>
        body
        {
           
            padding:5em;
        }
        form
        {
            background-color: white;
            border-radius: 3px;
            border:0.5px solid #d8d8d8;
            padding: 3em;
        }
        .divider
        {
            border-bottom: 0.5px dotted #d8d8d8;
            height:10px;
            margin-bottom:10px;
        }
    </style>
    <body>
    <center><h3>Hello <?php echo $uname; ?> !</h3></center>
   

     <?php
     clips_clear();
     clips_set_strategy(LEX_STRATEGY);
    
     clips_reset();
     clips_load("rules.clp");
     $sql = "SELECT `name`,`description`,`region`,`tag`,`childfriendly`,`img` FROM `sites` ";
     $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
   
     $fp = fopen('/Applications/XAMPP/xamppfiles/htdocs/tourist/lidn.clp', 'w');
     if ($result->num_rows > 0) {
     // output data of each row
   
     $sfacts="(deffacts sites_facts";
     while($row = $result->fetch_assoc()) {
     
   
     $sname= $row["name"];
     $description= $row["description"];
     $rid=$row["region"];
     $tag=$row["tag"];
    
     $childfriendly=$row["childfriendly"];
     $img=$row["img"];
    

   
     $sfacts=$sfacts.'(sites
  
     (sname "'.$sname.'")
     (descrp "'.$description.'")
     (rid "'.$rid.'")
     (t1 "'.$tag.'")
     (cf  "'.$childfriendly.'")
     (img  "'.$img.'")
     
 )';












     //clips_assert(array('tagid'=>$tagid, 'tagtype'=>$tagtype,'tagname'=>$tagname,['MAIN::Tags',["['MAIN']"]]));
	
	//clips_run();
	
    //converts an array to JSON string
    

     }
     } else {
     echo "0 results";
     }
     $sfacts=$sfacts.")";
     
     
     //GETS REGION DATA

     $sql="SELECT * FROM `regions`";
     $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
     if ($result->num_rows > 0) {
        // output data of each row
      
        $sfacts=$sfacts."(deffacts region_facts";
        while($row = $result->fetch_assoc()) {
        
        $sid=$row["regionid"];
        $sname= $row["regionname"];
        $sc= $row["sc"];
        $airports=$row["airports"];
        $rtype=$row["rtype"];
      
      
        $sfacts=$sfacts.'(regions
           (rid '.$sid.')
           (rname "'.$sname.'")
           (sc "'.$sc.'")
           (airports "'.$airports.'")
           (regiontype "'.$rtype.'")
          
       )';
        }
    }
    $sfacts=$sfacts.")";
   //echo $sfacts;
    echo "<br/>";

    //GET HOTEL DATA 
    
    $sql="SELECT * FROM `hotels`";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
    if ($result->num_rows > 0) {
       // output data of each row
     
       $sfacts=$sfacts."(deffacts hotel_facts";
       while($row = $result->fetch_assoc()) {
       
       $hid=$row["hid"];
       $hname= $row["name"];
       $hloc= $row["hlocation"];
       $htype=$row["htype"];
       $email=$row["email"];
       $hpr=$row["hpricerange"];
     
     
       $sfacts=$sfacts.'(hotels
          (hname "'.$hname.'")
          (hlocation "'.$hloc.'")
          (hpricerange "'.$hpr.'")
          (htype '.$htype.')
          
         
      )';
       }
   }
   $sfacts=$sfacts.")";
   $sfacts=$sfacts.$filter;

    //echo $sfacts;
     fwrite($fp, $sfacts);
     
     fclose($fp);
    
    clips_load("lidn.clp");
 
     
    $facts = clips_get_fact_list();
    $jfacts=json_encode($facts); 
    //echo($jfacts);
    //echo "<br/>";
   





 
//filter regions
$fp = fopen('/Applications/XAMPP/xamppfiles/htdocs/tourist/filters.clp', 'w');
$filter="

";
fwrite($fp, $filter);
fclose($fp);
clips_load("filters.clp");
clips_reset();
clips_run();
     
    $facts = clips_get_fact_list('wanted_regions');

    $jfacts=json_encode($facts);
  // echo $jfacts; 


    $jfacts=json_decode($jfacts);
    $facts[0]['rname'][0];
   

    


  
 foreach($facts as $v)
{
  echo '  <div class="divider">
<center><h4>Based on climate <strong>'.$v['rname'][0].'</strong> is recommended</h4>
<br/>
<br/>
    <h4 style="text-decoration:underline;">Here are attraction sites we also found based on your  profile </h4> </center>';





$fs = clips_get_fact_list('wanted_sites');
$jfacts=json_encode($fs);
//echo $jfacts; 
//var_dump($fs);
if(!isset($fs))
{
 echo "<h4>NO SITES MEET YOUR RECOMMENDATION IN THIS REGION</h4>";
}else
foreach($fs as $value) {
   // var_dump($value);
    if(isset($value['rid'][0]) ){ 
    if ($value['rid'][0]==$v['rname'][0])
    {

       echo '<div style="border-radius:3px; border:0.4px solid #d7d7d7; padding:20px; margin:20px; text-align:center">
        <h4>Site Name: '.$value["sname"][0].'</h4>
        <p>Description : '.$value['descrp'][0].'</p>
        <img src="'.$value['img'][0].'" />
        
    </div>';
    }
}
  }

    ?>

    <h3>Accomodation in <?php echo $v['rname'][0]; ?></h3>
    <div style="border-radius:3px; border:0.4px solid #d7d7d7; padding:20px; margin:20px; text-align:left">
    <?php



$fs = clips_get_fact_list('hotels');

foreach($fs as $value) {
    if ($value['hlocation'][0]==$v['rname'][0] )
    {
       echo '
        <h4>Hotel Name: '.$value["hname"][0].'</h4>
        <p>Price Range : '.$value['hpricerange'][0].'
                                 Type : '.$value['htype'][0].'</p>
        <br/>
        <p>*********************************</p>
        
    ';
    }
  }
}
    ?>
   

   </div>
    </body>
    </html> 