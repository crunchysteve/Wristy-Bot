# Kick-Bot Mechanism

![Stick-Bot mechanism mounted on a 10" wood snare](../../img/IMG_6785.JPG)
Image: Kick-Bot mechanism mounted on a 10" wood snare.

This assembly clamps onto the top and bottom rim of my piccolo snare. There's standoff between the clamp and the stick-bot stick and motor assembly. My plan is to generalise the designs to work on a number of sizes of drum. Another reason I use OpenSCAD, the ability to make a model parametric with standing variables in the first few lines of code that allow me to tweak the same part for different applications, just by changing a dimension.

The snare drum will be hit by two, alternating sticks, MIDI 38 being right stick and MIDI 40 for left. (Snare 1 and 2, respectively) The picture above shows one stick, the second mech will mou nt on the same side, with the pair of sticks fitting neatly between 2 tuners. The snare will later have a third stick mechanism added for MIDI 37, "sidestick" or "rimshot." By combining MIDI 37 and 38 in unison, a simulation of a "flatstick rimshot" can be created.

The 3D modelling files are as follows:-
- [KickActuatorPushrod.scad](./SnareMount.scad) The OpenSCAD 3D model of the snare drum clamp. (Importable to many other CAD programs.)
- [KickActuatorPushrod.stl](./SnareMount.stl) The slicer-ready mesh model for 3D printing.
- [KickActuatorMount.scad](./standoff.scad) The OpenSCAD 3D standoff bracket that spaces the stick tip over the drum centre. (Also importable to other CAD programs.)
- [KickActuatorMount.stl](./standoff.stl) The slicer-ready mesh model for 3D printing.

PLA will probably eventually weaken and fail. I'm using PETG as it's nearly as strong as, and less toxic than, ABS as well as slightly more elastic than PLA or ABS. It's also much easier to print on a basic machine than ABS. The SCAD model could also be used to machine a metal bracket out of aluminium channel or square hollow, either with hand tools or with a suitable CNC router.

I'm using this linear actuator...
[![door lock motor](../../img/actuator.jpg)<br />links to eBay search](https://www.ebay.com/sch/i.html?_nkw=car+door+lock+actuator&_sacat=131090&_sop=15&_svsrch=1), add your country code to the domain where applicable.