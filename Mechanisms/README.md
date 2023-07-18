# Wristy-Bot Mechanisms

There are 3 basic mechanisms, [Kick-Bot](./Kick-Bot), [SnareMount](./SnareMount) and Hat-Bot, the latter being still in development. The files kept here, in the appropriate folders are the OpenSCAD CAD files for use as is, or for importing into your CAD software of choice for parametric mods to suit your kit.

Much of the scope of this project is to use logic to ensure signals from the drum machine are played how a human would play the piece. For example, if a snare right and hi-hat right are called at the same time, the hi-hat beat will be diverted to the left stick on the hats, causing repeated left hits to maintain the beat. This is part of what will generate a "human" feel.

## Kick-Bot

Kick-Bot operates the kick drum beater and will respond to MIDI 35 and 36 in single kick mode, with 35 being a hit-and-rebound, 36 being a hit and hold. The hold will have a timeout so that the actuator and power control don't burnout. In double kick and two kicks mode, one beater will be driven by MIDI 35, the other by 36.

## Stick-Bot

Stick-Bot is the general workhorse of the system. More or less using the same hardware on drums, cymbals and other percussion as required. As part of the snare drum mechanism, it will be configurable with two sticks, using MIDI 38 and 40, and an option stick on the rim, using MIDI 37, "sidestick", in unison with MIDI 38 for a rimshot. This third stick will also be configurable as an actual sidestick sound on the side of the drum.

For other drums, it will be up to your needs to decide on double or single stick setups. Two stick-bots will also be needed for the hi-hat rig, also as a left and right stick, alternating based on the last stick that operated (left-right-left-right) and whether a snare hit was called (left or right), flicking the next due hit to the opposite.

# Hat-Bot
Hat-Bot will consist of 2 stick-bots and a hi-hat lifting mechanism, powered by a high torque digital servo motor. Hat-Bot is still under development.