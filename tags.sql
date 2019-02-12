INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Beach and Marine','boating')
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Beach and Marine','coral reef')
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Beach and Marine','diving')
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Beach and Marine','fishing')
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Beach and Marine','marina')
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Beach and Marine','marine park')
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Wildlife',' Animal Santuary');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Wildlife','Birding Site');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Wildlife',' Butterfly Site');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Wildlife',' Game Reserve');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Wildlife',' National Park');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Wildlife',' National Reserve');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Wildlife',' Wildlife Conservancy');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Scenery and Landscapes','Botanical Gardens');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Scenery and Landscapes','Caves');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Scenery and Landscapes','Crater');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Scenery and Landscapes','Farm or Plantation');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Scenery and Landscapes','Forest');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Scenery and Landscapes','Lake or River');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Scenery and Landscapes','Mountain');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Scenery and Landscapes','Natural Springs');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Scenery and Landscapes','Rock Formation');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Scenery and Landscapes','Rock Painting');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Scenery and Landscapes','Swamp');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Scenery and Landscapes','Volcano');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Scenery and Landscapes','Waterfalls');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Culture','Art Gallery');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Culture','Community Tourism');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Culture','Cultural Centre');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Culture','Cultural Museum');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Culture','Market');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Culture','Mosque');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Culture','Shrine');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Culture','Temple');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Historic Sites','Archaeological site');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Historic Sites','Fort');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Historic Sites','Historical Museum');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Historic Sites','Monument');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Historic Sites','Ruins');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Adventure','Boating');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Adventure','Mountain Biking');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Adventure','Mountain Climbing');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Adventure','Paragliding');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Adventure','Rafting');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Adventure','Scuba diving');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Adventure','Trekking');
 INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Sports','Athletics');
 INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Sports','Boating');
 INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Sports','Cricket');
 INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Sports','Fishing');
 INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Sports','Football');
 INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Sports','Golf');
 INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Sports','Rugby');
 INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Sports','Surfing');
 INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Sports','Tennis');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Special Interest','Camel Ride');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Special Interest','Convention Center');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Special Interest','Education');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Special Interest','Educational Tourism');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Special Interest','Farm and Plantation');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Special Interest','Health and Wellness');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Special Interest','Special Event');
INSERT INTO `regions`(`regionname`) VALUES ('Coast');
INSERT INTO `regions`(`regionname`) VALUES ('Mt. Kenya');
INSERT INTO `regions`(`regionname`) VALUES ('Nairobi');
INSERT INTO `regions`(`regionname`) VALUES ('North Rift');
INSERT INTO `regions`(`regionname`) VALUES ('South Rift');
INSERT INTO `regions`(`regionname`) VALUES ('Western');
INSERT INTO `regions`(`regionname`) VALUES ('Eastern');
INSERT INTO `operators`(`name`, `email`, `rid`) VALUES ('Adventure Africa','adventure@africa.com','1');
INSERT INTO `operators`(`name`, `email`, `rid`) VALUES ('Singh Travels','adventure@singht.com','2');
INSERT INTO `operators`(`name`, `email`, `rid`) VALUES ('Red Noose','info@rednoose.com','3');
INSERT INTO `operators`(`name`, `email`, `rid`) VALUES ('Kenya Around','info@kenyaaround.com','3');
INSERT INTO `operators`(`name`, `email`, `rid`) VALUES ('Wing Factor it','adventure@wingf.com','4');
INSERT INTO `operators`(`name`, `email`, `rid`) VALUES ('Equaira','adventure@equaria.com','4');
INSERT INTO `operators`(`name`, `email`, `rid`) VALUES ('Code Alert','adventure@codea.com','5');
INSERT INTO `operators`(`name`, `email`, `rid`) VALUES ('Bonfire Amazing','adventure@bonfireamazing.com','6');
INSERT INTO `operators`(`name`, `email`, `rid`) VALUES ('Kenyan Traveller','adventure@kenyantraveller.com','1');
INSERT INTO `operators`(`name`, `email`, `rid`) VALUES ('Adventure Time','adventure@adventuretime.com','1');
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Beach and Marine','snorkeling')
INSERT INTO `tags`( `tagtype`, `tagname`) VALUES ('Wildlife',' Animal Orphanage');



INSERT INTO `site`( `name`, 
                    `description`, 
                    `rid`, 
                    `tag1`,
             
                     `cost`,
                      `childfriendly`
                       ) 
VALUES ('David Sheldrick Wildlife Trust
',
'This non-profit venture was established in 1977 after the death of founder, David Sheldrick who served as anti-poaching warden at the Tsavo National Park. The centre is home to orphaned rhinos and elephants that are cared for and reintroduced back to the wild.',
'3',
'9',
'800',
'1'
);



INSERT INTO `site`( `name`, 
                    `description`, 
                    `rid`, 
                    `tag1`
                     `cost`,
                      `childfriendly`
                       ) 
VALUES ('Crescent Island Game Sanctuary',
'This is one of the most beautiful sanctuaries in Kenya and Naivashas best kept secret. It is private, secure and patrolled by guides who can accompany anyone who wishes for a guided tour. The shores host abundant wildlife including wildebeest, waterbuck, zebra and gazelle and hippos.',
'5',
'10',
'9000',
'1'
);


INSERT INTO `site`( `name`, 
                    `description`, 
                    `rid`, 
                    `tag1`,
                     `tag2`, 
                     `tag3`, 
                     `cost`,
                      `childfriendly`
                       ) 
VALUES ('Elsamere Nature Reserve',
'Once a retirement home for the Adamsons, Elsamere remains unique as its both a game reserve and a museum. Here, history connects with the future as conservation is the main objective. It rekindles the memories of Born Free by watching the documentary, The Joy Adamson Story, and visiting the museum.',
'5',
'10','13','40'
'1000',
'1'
);
INSERT INTO `site`( `name`, 
                    `description`, 
                    `rid`, 
                    `tag1`,
                     `cost`,
                      `childfriendly`
                       ) 
VALUES ('Active Edge, Kerio View',
'Active Edge organizes paragliding events in Kerio with Kerio view hotel. This is a world-class Paragliding site and the most relaxing places to fly. It is where many pilots have completed massive out and return flights in a combination of ridge and thermal lift.',
'4',
'46',
'5000',
'1'
);
INSERT INTO `site`( `name`, 
                    `description`, 
                    `rid`, 
                    `tag1`,
                     `tag2`, 
                     `cost`,
                      `childfriendly`
                       ) 
VALUES ('Nairobi Orphanage',
'This sanctuary was opened for the purposes of hosting a collection of orphaned, hurt, or abandoned wild animals from all over the country. In doing so, it has made enormous contribution to conservation in Kenya. Interesting activities here include opportunity for animal adoption, bird watching and tree identification.',
'3',
'9','11',
'500',
'1'
);