# Table of Contents
- [Metal Hardware](#METAL-HARDWARE)
  * [Bill-of-Materials](#BILL-OF-MATERIALS)
  * [2D Sketch](#2D-SKETCH)

## METAL HARDWARE
I'm kind of in the middle of a crisis of faith with 3D printing and have been adding more conventional tools to my workshop. This came about from trying out a resin printer, with "envornmentally friendly, plant based resin," only to discover the stuff is as toxic as any other, more conventional resin. The stink hung around for days. It made me look at my "skip of shame", a kids' toy box made to look like a mini skip ("dumpster" to North Americans) and, while it's not a lot of fails and sprues for 5 years of printing, it's still a lot of waste plastic that I'm still trying to find a use for. 

So, I thought I need to look into better ways to make this hardware, not just for cutting down my plastics generation, but for accessibility, as well. Plenty of people have basic tools in their workshop, 3D printers are a little less common. Sure, they're affordable, but musicians would rather spend money on instruments than tools, I'm sure. I just happen to have printing as an option. So here is a design for the drumBot mechanism that uses standard aluminium extrusions. This design also includes brackets to mount the stickbots to drums with t-nuts, wood screws or rivnuts in the sides of the drum. Don't build this onto your main kit, use a stunt kit, but hey, easier to make, easier to mount and slightly better for the planet.

![AluminiumDrumbot](https://github.com/crunchysteve/Wristy-Bot/assets/46626696/fd0eea31-9f6e-4f39-96f4-f761d27349f3)

So far, I've only managed to redesign StickBot. KickBot is a tad trickier to do in metal, although not imossible. I need to find the right brackets, such as the hex hole lever, that is pushed by the actuator, to rotate the beater axle. HatBot is already mostly metal in construction and, if I design it to use standard v-slot extrusions, there are loads of standard brackets that can be pressed into service for mounting the lifter servo and the Stick Bots.

There are some parts and materials you'll need to buy for this basic StickBot. I'll also upload some 2D drawings of each individual part, soon, and embed them here. These 2D plans will make it easier for those who don't read OpenSCAD, the CAD language I use to render my designs and create 3D printable models with.

### BILL OF MATERIALS
``` Text
MATERIALS
(My materials are sourced from my local hardware and the actuators and bearings I sourced
from eBay, you may need to alter the design slightly. I also machined my own spacers and
threaded them for M3 screws.)

2x 1m lengths of 60x3 aluminium flatbar will build 10 (2x sides)
1x 1m length of 40x20x2   "     square tube will build 10 (rocker)
1x 1m length of 10mm      "     round bar (will build enough spacers)

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
