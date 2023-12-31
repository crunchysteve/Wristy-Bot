//  Modified MIT License - Kick-Bot component of the Wristy-Bot System
//  ----------------------------
//  Copyright ©2023 "Crunchysteve"

//  Permission is hereby granted, free of charge (subject to Condition 2, below), 
//  to any person obtaining a copy of this software and associated documentation 
//  files (the "Software"), to deal in the Software without restriction, 
//  including without limitation the rights to...
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:

//  1. The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software, including attibution to contributors.
//  2. That manufacturing systems based on these codes, designs and parts, requires an 
//  additional, commercial clause to the licence. This doesn't exclude mass production, 
//  but it makes a strict requirement to negotiate a licence from project contributors 
//  and payment to the project collective.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//  
//  -----------------------------------------------------------------------------
//  Stick-Bot prototype MIDI firmware
//  -----------------------------------------------------------------------------
//  Ready for alpha-testing, only, not yet built and uploaded. Use at own risk!
//  Kick-Bot is a relatively simple piece of code, but later might add support 
//  for switching between MIDI Kick1 as a beater hit-and-rebound with MIDI Kick2 
//  being hit-and-hold until MIDI NoteOff or dual beater/dual drum operation.

//  declare constants
#define MINVELO  64           // Map minimum velocity
#define MAXVELO 127           // Map maximum velocity
#define DRIVEPIN 10           // analogWrite() pin (drive)
#define PARKPIN 3             // tone() pin (parking)
#define PARKFRQ 250           // frequency to appear as DC to motor
#define SNARE1 38             // MIDI Snare1 - as the project generalises
#define SNARE2 40             // MIDI Snare2 - these will be in a header file
#define SIDE_STICK 37         // MIDI SideStick 
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
