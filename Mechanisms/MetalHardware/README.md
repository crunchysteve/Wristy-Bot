# Table of Contents
  * [Metal Hardware (Stick-Bot)](#METAL-HARDWARE-(Stick-Bot))
    * [Bill-of-Materials](#BILL-OF-MATERIALS)
    * [2D Sketch](#2D-SKETCH)
  * [Metal Hardware (Kick-Bot)](#METAL-HARDWARE-Kick-Bot)
  * [Metal Hardware (Hat-Bot)](#METAL-HARDWARE-Hat-Bot)

## METAL HARDWARE (Stick-Bot)
I'm kind of in the middle of a crisis of faith with 3D printing and have been adding more conventional tools to my workshop. This came about from trying out a resin printer, with "envornmentally friendly, plant based resin," only to discover the stuff is as toxic as any other, more conventional resin. The stink hung around for days. It made me look at my "skip of shame", a kids' toy box made to look like a mini skip ("dumpster" to North Americans) and, while it's not a lot of fails and sprues for 5 years of printing, it's still a lot of waste plastic that I'm still trying to find a use for. 

So, I thought I need to look into better ways to make this hardware, not just for cutting down my plastics generation, but for accessibility, as well. Plenty of people have basic tools in their workshop, 3D printers are a little less common. Sure, they're affordable, but musicians would rather spend money on instruments than tools, I'm sure. I just happen to have printing as an option. So here is a design for the drumBot mechanism that uses standard aluminium extrusions. This design also includes brackets to mount the stickbots to drums with t-nuts, wood screws or rivnuts in the sides of the drum. Don't build this onto your main kit, use a stunt kit, but hey, easier to make, easier to mount and slightly better for the planet.

![AluminiumDrumbot](https://github.com/crunchysteve/Wristy-Bot/assets/46626696/fd0eea31-9f6e-4f39-96f4-f761d27349f3)

Version 1 of the all metal Kick-Bot is now described below and 2D sketches for it will be uploaded soon. HatBot is already mostly metal in construction and, if I design it to use standard v-slot extrusions, there are loads of standard brackets that can be pressed into service for mounting the lifter servo and the Stick Bots.

There are some parts and materials you'll need to buy for this basic Stick-Bot. I'll also upload some 2D drawings of each individual part, soon, and embed them here. These 2D plans will make it easier for those who don't read OpenSCAD, the CAD language I use to render my designs and create 3D printable models with. Stick bot 2D plans are already uploaded, Kick-Bot 2D drawings will be next.

All mechanisms, printed or metal, will use the same electronics, an arduino for reading MIDI and sending drive or park signals to the h-Bridge(s), and an h-bridge for each motor. As the Snare-Bot will use 2, or even 3, h-bridges and motors, you may want to use a Mega 2560 if you want to add a display and control panel for having control over settings or additional routines to generate advanced dynamics. Otherwise, a Nano or Uno will do the job. If you modify any of the designs or software, submit them as a pull request for review.

### BILL OF MATERIALS
``` Text
MATERIALS
(My materials are sourced from my local hardware and the actuators and bearings I sourced
from eBay, you may need to alter the design slightly. I also machined my own spacers and
threaded them for M3 screws.)

2x 1m lengths of 60x3 aluminium flatbar will build 10 (2x sides)
1x 1m length of 40x20x2   "     square tube will build 10 (rocker)
1x 1m length of 20mm      "     round bar (will build enough spacers)

      WORKING
        -   centre drill 3mm hole with lathe for all spacers
            cut 2 to 30mm lengths
            cut 2 to 4mm lengths after lathing outer to 5mm
      (...or use off the shelf spacers

1x 1m length of 40x12x1.6 aluminium angle will easily build brackets for 10 units.
1x car door linear actuator
2x MF83-2Z bearing 8mm OD x 3mm ID x 3mm Wide

Assorted M3 screws and nuts, including...
  M3x 40mm if spacers are unthreaded or M3x 8mm if the spacers are threaded.

Nuts, washers and other hardware as needed. I recommend nylok nuts and low dome head
allen screws.
```

### 2D SKETCH
Details to follow, but anybody competent in their workshop should be able to build these parts from standard extrusions (even imperial, just divide the mm by 25.4 for inches) and standard bolt, nut and spacer hardware. The 8mm hole through the stick cradle is to accomodate the 2 MF83-2Z 8x3x3 flanged bearings like this... 

![MF83-2Z_bearing_8mmODx3mmIDx3mmW](https://github.com/crunchysteve/Wristy-Bot/assets/46626696/0b125a91-bfa1-4089-88e4-811bca8c95a3)

These are readily available on eBay, Ali or that evil dog Jeff's store if you must give your money to that rich thief. This is [the bearing I used](https://www.ebay.com.au/itm/264688273390).

All other holes and slots are M3 (or 1/8 inch).
![MetalDrumBot](https://github.com/crunchysteve/Wristy-Bot/assets/46626696/8ccdbc0e-f4a1-462d-8ab4-e7f17e4e6e5f)
Feel free to download these images or print this page.

## METAL HARDWARE (Kick-Bot)

An all metal version of Kick-Bot using a 120mm length of 50x50x3 aluminium tube and some lengths of 50x50x3 aluminium angle and 40x12x1.6 aluminium uneven angle. The drive is provided by an RS755 class 12v 4000rpm motor, coupled to a standard beater via a coupling made from a 20mm length of 20mm diameter aluminium solid bar. The shaft and beater holes are untapped, the smaller holes are threaded to provide clamping via M4 screws. 2D sketches coming soon.

|  Left, drum-side view  |  right, back-side view  |
|---|---|
|![AllMetalKickDrumClampSideLeftSmall](https://github.com/crunchysteve/Wristy-Bot/assets/46626696/90018c8c-9127-4373-adf4-6a15071e1b87)|![AllMetalKickBotBackSideRightSmall](https://github.com/crunchysteve/Wristy-Bot/assets/46626696/8b636b98-fa28-4431-8a0f-e744e1c4bc78)|
| At the front, the 50x50 angle has its horizontal flange facing forwards, cut out in the middle and drilled in the middle of each remaining flange. On either side of this cutout are 2 pieces of 40x12 angle and a 12x12 wood block to support it. This part of the assemblu clampes to the kick drum rim. The electrical connection end of the motor can be seen protruding through the 44mm hole in the back of the beater riser. The motor direct drives the beater, via a cylindrical perpendicular coupling. M4 grub screws provide the locking force to keep the coupling on the motor shaft and the beater in the coupling. | The entire assembly is held together with M4 bolts of varying lengths. Use nylock nuts and loktite to ensure secure fastening. From this side you can clearly see the beater assembly on the motor shaft, the motor mounting screw holes and the hole ast the top of the beater riser for an M4x40 screw to hold the beater stop. The hole at the back is for a rubber foot similar to the rubber feet the the drum clamp bolts go through at the front. |

The motor chosen is a relatively standard, RS775, 12 volt, 4000 RPM, electric motor. These are often used in hand held vacuum cleaners, portable electric drills and other appliances, so should have plenty of torque for beating the kick drum. The Kick-Bot arduino will need a little extra code and circuitry to read the stall signal from the power control board, allowing for power cut on beat and park when the beater meets the drum sking or the backstop.

I'm using 50x50x3 metric aluminium tubing and angle for my base materials but, if you have a MIG, you could weld it up from steel rather than bolt it together. Even Aluminium can be MAPP gas "soldered", so that's also an option. The holes in the clamping jaws on the drum side of the assembly need to be larger than the M6 bolt and wing nut that tightens them against the kick drum rim, to allow for a range of tilt. Even an M10 hole with "mudguard" washers wouldn't be too big. I plan to cut these 40x12 angles from leftover 50x50x3 for added strength, but standard 40x40x1.6 might be OK.

## METAL HARDWARE (Hat-Bot)
(Coming Soon)
