//  Modified MIT License - Kick-Bot component of the Wristy-Bot System
//  See LICENCE for details.
//  Copyright ©2023 "Crunchysteve"
//  -----------------------------------------------------------------------------
//  Kick-Bot prototype MIDI firmware
//  -----------------------------------------------------------------------------
//  Ready for alpha-testing, only, not yet built and uploaded. Use at own risk!
//  declare constants
#define MINVELO  64           // Map minimum velocity
#define MAXVELO 127           // Map maximum velocity
#define DRIVEPIN 10           // analogWrite() pin (drive)
#define PARKPIN 3             // tone() pin (parking)
#define PARKFRQ 250           // frequency to appear as DC to motor
#define KICK1 35              // MIDI Snare1 - as the project generalises
#define KICK2 36              // MIDI Snare2 - these will be in a header file
const uint32_t PARKTIME = 8;  // parking pulse width in milliseconds

//  declare global variables
int count = 0;                // LED_BUILTIN on/off state

//  Include libraries
#include <MIDI.h>             // Load MIDI class library

//  instantiate MIDI - Create MIDI port on Hardware Serial
MIDI_CREATE_DEFAULT_INSTANCE();

//  MIDI Callback Functions
//  -----------------------
//  Callback Functions handle MIDI commands

//  At some point, I want the drum-bot modules to flash an LED at tempo.
//  It's a quick diagnosting to check there are no firmware latencies.
void handleClock(){
  if(count >= 11){
    digitalWrite(LED_BUILTIN,
                !digitalRead(LED_BUILTIN));
            // Flash built in LED on half a beat, off half a beat
    count = 0;
            // reset counter
  } else {
    count++;
  }
}

// Function called when a NoteOn is received. MIDI NoteOn operates.
void handleNoteOn(byte channel,
                  byte pitch,
                  byte velocity){
  // Map MIDI velocities to practical mechanical velocities
  if(channel == 10){                      // check for drum notes
  int beater = map(velocity,1,127,MINVELO,MAXVELO);
    //  Only operate beater if kick drum MIDI noteOn recieved
    if(pitch == 35 || pitch == 36 && beater > MINVELO-1){
      noTone(PARKPIN);                    // interupt park
      delay(1);                           // elec safety delay
      analogWrite(DRIVEPIN, beater);      // drive at correct velocity
    }
  }
}

// Function called when a NoteOff is received. MIDI NoteOff parks the beater.
void handleNoteOff(byte channel, byte pitch, byte velocity){
  if(channel == 10){                      // check for drum note off
    //  Only park beater if kick drum MIDI NoteOff recieved.
    if(pitch == 35 || pitch == 36 && !velocity){
      analogWrite(DRIVEPIN,0);            // interrupt note
      delay(1);                           // elec safety delay
      tone(PARKPIN,
           PARKFRQ,
           PARKTIME); // park beater at 50% duty, approx 6 volts.
    }
  }
}

//  Arduino setup ruotine
void setup(){
    //  Set MIDI callbacks
    MIDI.setHandleClock(handleClock);
    MIDI.setHandleNoteOn(handleNoteOn);
    MIDI.setHandleNoteOff(handleNoteOff);
    // Initialise MIDI
    MIDI.begin(MIDI_CHANNEL_OMNI);
    //  At a later stage SoftwareSerial may be added to run MIDI
    //  leaving HardwareSerial free to provide debugging output.
    //  This is just a POC prototyp for Kick-Bot.
}

void loop(){
  // Sends MIDI commands to callback functions
  MIDI.read();
  //  Little else needs to be, nor should be done here,
  //  lest MIDI and mechanical responses are slowed.
  //  Some fast system checks may need to be run here in future
  //  but should be kept to minimal lines of code, and be 
  //  conditional on making a setting change (run or setup modes)
}
