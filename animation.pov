#include "colors.inc"
#include "textures.inc"
                              

background { color Black }

camera
{

  location <0, 5, -15>
  look_at <0, 1+30*clock, 0>
  //rotate <clock*5,0,0>


}

plane { y, -25
		pigment { checker rgb <0.5, 0.6, 0.9> rgb <1.0, 1.0, 1.0> scale 5 }
		finish { reflection 0.2 ambient 0.4 }
	}

	fog {
		distance 100
		color rgb 0.9
		fog_offset 2
		fog_alt 5
		fog_type 2
	}

sky_sphere {
		pigment { gradient y
			color_map {
				[0 rgb <0.5, 0.6, 1> ]
				[1 rgb <0, 0, 1> ]
			}
		}
		pigment { wrinkles turbulence 0.7
			color_map {
				[0 rgbt <1,1,1,1>]
				[0.5 rgbt <0.98, 0.99, 0.99, .6>]
				[1 rgbt <1, 1, 1, 1>]
			}
			scale <.8, .1, .8>
		}
	}                                                                                                                                                       
                         
#declare Pawn = union{                          
//sphere{<0,1,0>,0.35}    


sphere {<0,1,0>,0.35   
#if ( clock >= 0.05 )
 

	pigment { color rgbf  <1.0+(clock*20), clock+1.0, 0.0, 0.0>}   
		finish {	      	
		phong 0.8		
		reflection 0.5		
	       }
	#else
	pigment { color rgbf  <1.0, 0.0, 0.0, 0.0>}  
	finish {	      	
		phong 0.8		
		reflection 0.5		
	       }    #end
}   
#if ( clock >= 0.05 ) 
cone   {<0,0,0>,0.5,<0,1,0>,0.0}
texture {pigment{ color rgbf<1.0+(clock*20), clock+1.0, 0.0, 0.0>}
         finish { phong 0.5}}}
         
#else
cone   {<0,0,0>,0.5,<0,1,0>,0.0}
texture {pigment{ color rgb<1.5,0.5,0.5>}
         finish { phong 0.5}}}   
#end
union{
object{ Pawn translate < 0.0, 0.0, 0.5+(clock*20)>}
object{ Pawn translate < 0.0, 0.0+(clock*30), 0.5>}
object{ Pawn translate < 0.0, 0.0-(clock*20), 0.5>}

object{ Pawn translate < 0.0+(clock*20), 0.0, 0.5>}   
object{ Pawn translate < 0.0+(clock*20), 0.0+(clock*20), 0.5>} 
object{ Pawn translate < 0.0-(clock*20), 0.0+(clock*20), 0.5>}
rotate<0,0,0> translate<0,0.7,0>}


  light_source {
    <0, 16, -2>
    color rgbf <2.0, 2.0, 2.0, 0.0> 
  }
  
   light_source {
    <-1, 3, -6>
    color White
  } 
  
            
                              


