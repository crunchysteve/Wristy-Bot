# Table of Contents
  * [Wristy-Bot](#wristy-bot)
  * [Workshop-Friendy Metal Mech](#Workshop-Friendy-Metal-Mech)
  * [Modular Design](#modular-design)
  * [Adaptable To Any Drum Kit](#adaptable-to-any-drum-kit)
  * [Housekeeping](#housekeeping)

![Kick-Bot mechanism mounted on a modified kick drum pedal attached to a 16" kick drum](./img/IMG_6734.JPG)
# Wristy-Bot
Image: Kick-Bot mechanism mounted on a modified kick drum pedal attached to a 16" kick drum.
 
Arduino code and OpenSCAD drawings for a modular, adaptable robotic drum kit powered by MIDI input. There are three main principles to the project, the wrist-flick, modular design and adaptablity. This will allow almost any amount of drums in a kit, in almost any configuration, to be powered by any computer, sequencer or drum machine. Be it a rehearsal aid with a slightly more "human" feel, a major, distributed art installation or anything in between, Wristy-Bot will be adaptable to your needs.

Preliminary code and designs have been added and will be refined as I get time. CAD drawings are in OpenSCAD format. .scad files can be imported into FreeCAD and many other CAD programs if you need to work in a visual environment. The mechanical parts can be 3D printed, the electronics use a single arduino and a DC h-bridge to control a simple linear actuator.

All mechanisms, printed or metal, will use the same electronics, an arduino for reading MIDI and sending drive or park signals to the h-Bridge(s), and an h-bridge for each motor. As the Snare-Bot will use 2, or even 3, h-bridges and motors (same for hat-bot), you may want to use a Mega 2560 if you want to add a display and control panel for having control over settings or additional routines to generate advanced dynamics. Otherwise, a Nano or Uno will do the job. If you modify any of the designs or software, submit them as a pull request for review.

  * [To TOC](./)

## Workshop-Friendy Metal Mech

I've also added a design for an [all metal mechanism for StickBot](https://github.com/crunchysteve/Wristy-Bot/blob/main/Mechanisms/MetalHardware/README.md) and will be adding details of how to do KickBot and HatBot without 3D printing as well. I figure that not everybody has access to a 3D printer and, while the plastic prototype parts work very reliably, reducing our reliance on plastics is not a bad thing.

![AluminiumDrumbot](https://github.com/crunchysteve/Wristy-Bot/assets/46626696/fd0eea31-9f6e-4f39-96f4-f761d27349f3)
Image: OpenSCAD render of all metal stick mech.

## Why "Wristy-Bot"?
Human drummers, well, good ones, at least, use a wrist-flick action, holding the stick near its balance point, cradling the back of the stick on their ring and pinky fingers. Propulsion by wrist flick stops just before the stick hits the skin, and the standard grip allows the stick to continue rotating until it hits the skin, where it rebounds and comes back to rest with the back of the stick on the minor fingers. While the CAD drawings with this repo show a much simpler mechanism than the human hand and wrist, the principle is the same - a sharp impulse force propells the tip of the stick towards the drum, but not driving the stick into the drum, instead allowing it to rotate beyond the actuator limit, then strike and rebound. The mechanism allows the "underbalanced" stick to repark itself by falling back to it's natural rest, with the help of the rebound as well as the balance of the stick.

  * [To TOC](./)

## Modular Design
![Stick-Bot mechanism mounted on a 10" wood snare.](./img/IMG_6785.JPG)
Image: Stick-Bot mechanism mounted on a 10" wood snare.

The aim of this project is to create a public document that will help musicians with a modicum of microcontroller skills, or with a friend with said skills, to build a robotic drum kit, driven by a MIDI enabled drum machine or computer DAW (such as Logic Pro X or Ableton), such that one can practice while jamming to the more natural sound of real drums. The desire is to create an archive of firmware code and STL files for a set of 3D printable parts to mount the stick, beater and hi-hat mechanisms on mostly standard drum hardware. Each drum stick mech will be a standalone instrument, setup in firmware to read only the relevant MIDI codes for the drum it plays. All of the physical parts, such as the microcontroller, car door lock actuators and power control modules are readily available on eBay and Ali Express, and a recommended BOM will also be included with suggested search terms.

  * [To TOC](./)


## Adaptable To Any Drum Kit
The modular design, allowing the project to be built up and added to each drum or other drum kit parts, makes for adaptability to 4 piece, 5 piece or more, with each drumbot module being daisy-chaned via hardware MIDI thru, waiting for and responding only to its relevant MIDI codes - eg the snare waits for MIDI Snare 1 or Snare 2 and MIDI Sidestick commands, using Snare 1 for left stick and Snare 2 for right stick, with a third stick that can either be set up to strike a rim shot or a side stick, programmed in the drum machine to strike in unison with the left or right sticks. The kick drum will be setup to read Kick 1 as kick with rebound or Kick 2 as a damped kick, where the pedal is held against the skin to damp the beat. DOOF or duf, respectively. If you can imagine a way you'd like a drum kit played, you'll be able to adapt the code, designs and operation to suit the playing style. Imagine using a Logic Pro drummer track to play a real kit in the pocket of your recorded bass line.

  * [To TOC](./)

## Housekeeping
Of course, for any of this to be useful, it all needs to be understandable, simple, free and open source. If there's a commercial component to the music or art you make, that's fine, the art *created* by any user is not part of, nor affected by the licence. If you want to manufacture systems based on code, designs and parts, there is an additional, commercial clause added to the MIT licence. This doesn't exclude mass production, but it makes a strict requirement to negotiate a licence from project maintainer and payment to the project collective. This licence will apply to all forks.

Cheers,
Crunchy

  * [To TOC](./)
