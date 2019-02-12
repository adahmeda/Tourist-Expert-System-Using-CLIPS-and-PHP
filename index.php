<?php
clips_clear();
clips_set_strategy(LEX_STRATEGY);
clips_load("rules.clp");
clips_reset();

clips_assert(array("hunter", "brian", "duck"));

clips_run();

$facts = clips_get_fact_list();

//print_r($facts);

?>


<!DOCTYPE html>
<html>
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
        <div class="row">
    <div class="col-md-3"></div>
    
        <div class="col-md-6"> 
        <form id="phase-one" action="refine.php" method="POST">
            <center><h3>Hello! Let's get to know you!</h3></center>

  <div class="form-group">
    <label for="name">Name</label>
    <input type="text" id="name" class="form-control" name="uname" placeholder="Enter your name" required>
  </div>

  <!--div class="form-group">
    <label for="people">How many people will you travel with?</label>
    <input type="number" id="age" class="form-control" name="people" placeholder="Enter the number of people">
  </div-->
   
 <div class="divider"></div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="childfriendly">
    <label class="form-check-label" for="exampleCheck1">Should it be child friendly</label>
  </div>

  <div class="divider"></div>

  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" value="Yes" name="airport">
    <label class="form-check-label" for="exampleCheck1">Should it have an airport?</label>
  </div>

  <div class="divider"></div>

  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="sc">
    <label class="form-check-label" for="exampleCheck1">Should it have a shopping center?</label>
  </div>

  <div class="divider"></div>
  <div class="form-group">
  <label for="rtype">What is your climate of preference:</label>
  <select class="form-control" name="rtype">
    <option value="Hot and Wet">Hot and Wet</option>
    <option value="Cool and Wet">Cool and Wet</option>
    <option value="Warm and Wet">Warm and Wet</option>
    <option value="Hot and Dry">Hot and Dry</option>
    <option value="Very Hot and Very Dry">Hot and Dry</option>
  </select>
</div>

  <div class="divider"></div>

 <div class="divider"></div>
            <label>What would you see/ do do in Kenya? (select all that apply)</label>

            <div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" name="beaches" value="beaches">
  <label class="form-check-label" for="inlineCheckbox1">Beaches and Marine</label>
</div>
<br/>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" name="wildlife" value="wildlife">
  <label class="form-check-label" for="inlineCheckbox2">Wildlife</label>
</div>
<br/>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" name="scenery" value="scenery">
  <label class="form-check-label" for="inlineCheckbox2">Scenery and Landscapes</label>
</div>
<br/>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" name="culture" value="culture">
  <label class="form-check-label" for="inlineCheckbox2">Culture</label>
</div>
<br/>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" name="historic" value="historic">
  <label class="form-check-label" for="inlineCheckbox2">Historic Sites</label>
</div>
<br/>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" name="adventure" value="adventure">
  <label class="form-check-label" for="inlineCheckbox2">Adventure</label>
</div>
<br/>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" name="sports" value="sports">
  <label class="form-check-label" for="inlineCheckbox2">Sports</label>
</div>


<div class="divider"></div>


 
 <center> 
     <button  class="btn btn-outline-primary btn-block ">Next</button> 
</center>
</form>
</div> 
        
        <div class="col-md-3"></div>
</div>
    </body>
</html>