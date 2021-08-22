$useMcMaster = true;
module bearing(id,od,wd,mcmaster,series){
    difference(){
        color("grey")cylinder(d=od,h=wd, center=true);
        color("white")cylinder(d=id,h=wd+1, center=true);  
        if($preview){
            bearing_lettering(id, od, wd, mcmaster, series);    
        }
    }
}

module bearing_lettering(id,od, wd, mcmaster, series)
{
    degreesSeries = 25*len(series);
    degreesMcMaster = 25*len(mcmaster);
    color("black")
    rotate(180+45){
        rotate(degreesSeries)
        bearing_text(id,od, wd, series,degreesSeries);
        if($useMcMaster){
            rotate(degreesMcMaster+degreesSeries+10)
            bearing_text(id,od, wd, mcmaster, degreesMcMaster);   
        }
    }
}

module bearing_text(id, od, wd, st, radiusConsumed=180){
    bearingGirth = (od-id)/2;
    letterHeight = bearingGirth * 0.6;
    letterOffsetFromCenter = (od/2) - (bearingGirth*0.9);
    
    width=bearingGirth ;
    thickness=wd/20 ;
    chars=len(st)+1 ;
    //echo(str("Writing ", st, " at " , letterOffsetFromCenter, "mm from center"));
    for (i = [1:chars]) {
            rotate([0,0,90-(i*(radiusConsumed/chars))])
            translate([0,letterOffsetFromCenter,(bearingGirth/2)-((thickness+1)/2)])
            linear_extrude(thickness+1)
            text(st[i-1],size=letterHeight, halign="center");
    }
}


module bearing_608(){ bearing(8,22,7,"5972K91","608"); }
module bearing_629(){ bearing(9,26,8,"5972K93","629"); }
module bearing_635(){ bearing(5,19,6,"5972K197","635"); }
module bearing_6000(){ bearing(10,26,8,"5972K94","6000"); }
module bearing_6001(){ bearing(12,28,8,"5972K95","6001"); }
module bearing_6002(){ bearing(15,32,9,"5972K358","6002"); }
module bearing_6003(){ bearing(17,35,10,"5972K311","6003"); }
module bearing_6007(){ bearing(35,62,14,"5972K312","6007"); }
module bearing_6200(){ bearing(10,30,9,"5972K101","6200"); }
module bearing_6201(){ bearing(12,32,10,"5972K313","6201"); }
module bearing_6202(){ bearing(15,35,11,"5972K314","6202"); }
module bearing_6203(){ bearing(17,40,12,"5972K104","6203"); }
module bearing_6204(){ bearing(20,47,14,"5972K105","6204"); }
module bearing_6205(){ bearing(25,52,15,"5972K315","6205"); }
module bearing_6206(){ bearing(30,62,16,"5972K316","6206"); }
module bearing_6207(){ bearing(35,72,17,"5972K317","6207"); }
module bearing_6208(){ bearing(40,80,18,"5972K114","6208"); }
module bearing_6209(){ bearing(45,85,19,"5972K115","6209"); }
module bearing_6210(){ bearing(50,90,20,"5972K129","6210"); }
module bearing_6211(){ bearing(55,100,21,"5972K113","6211"); }
module bearing_6212(){ bearing(60,110,22,"5972K3","6212"); }
module bearing_6301(){ bearing(12,37,12,"5972K318","6301"); }
module bearing_6302(){ bearing(15,42,13,"5972K117","6302"); }
module bearing_6303(){ bearing(17,47,14,"5972K118","6303"); }
module bearing_6304(){ bearing(20,52,15,"5972K119","6304"); }
module bearing_6305(){ bearing(25,62,17,"5972K121","6305"); }
module bearing_6306(){ bearing(30,72,19,"5972K319","6306"); }
module bearing_6307(){ bearing(35,80,21,"5972K503","6307"); }
module bearing_6308(){ bearing(40,90,23,"5972K124","6308"); }
module bearing_6309(){ bearing(45,100,25,"5972K125","6309"); }
module bearing_6310(){ bearing(50,110,27,"5972K126","6310"); }
module bearing_6311(){ bearing(55,120,29,"5972K127","6311"); }
module bearing_6312(){ bearing(60,130,31,"5972K128","6312"); }
module bearing_6403(){ bearing(17,62,17,"5972K198","6403"); }
module bearing_6800(){ bearing(10,19,5,"5972K211","6800"); }
module bearing_6801(){ bearing(12,21,5,"5972K212","6801"); }
module bearing_6802(){ bearing(15,24,5,"5972K213","6802"); }
module bearing_6803(){ bearing(17,26,5,"5972K214","6803"); }
module bearing_6804(){ bearing(20,32,7,"5972K215","6804"); }
module bearing_6805(){ bearing(25,37,7,"5972K216","6805"); }
module bearing_6806(){ bearing(30,42,7,"5972K217","6806"); }
module bearing_6900(){ bearing(10,22,6,"5972K241","6900"); }
module bearing_6901(){ bearing(12,24,6,"5972K242","6901"); }
module bearing_6902(){ bearing(15,28,7,"5972K243","6902"); }
module bearing_6903(){ bearing(17,30,7,"5972K244","6903"); }
module bearing_6904(){ bearing(20,37,9,"5972K245","6904"); }
module bearing_6905(){ bearing(25,42,9,"5972K246","6905"); }
module bearing_6906(){ bearing(30,47,9,"5972K247","6906"); }
module bearing_6907(){ bearing(35,55,10,"5972K248","6907"); }
module bearing_6908(){ bearing(40,62,12,"5972K249","6908"); }
module bearing_16002(){ bearing(15,32,8,"5972K199","16002"); }
module bearing_16004(){ bearing(20,42,8,"5972K218","16004"); }
module bearing_16005(){ bearing(25,47,8,"5972K219","16005"); }
module bearing_16100(){ bearing(10,28,8,"5972K223","16100"); }
module bearing_16101(){ bearing(12,30,8,"5972K224","16101"); }

bearing_6800();
bearing_6804();
bearing_6907();
translate([50,0,0])
bearing_16101();
