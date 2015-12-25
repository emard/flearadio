# FleaFPGA Digital FM Radio example v1.1!

Files that are included in the FleaFPGA_oscilloscope_v1-FLASH_Prgm.zip file:

- 1.) This readme file
- 2.) Circuit schematic (PDF) for wiring to the GPIO header.
- 3.) The necessary demo bitfile for the MachXO2 FPGA itself


How the FM Radio example works:

Basically, this example attempts to recreate (successfully) the inner 
workings of a classic single-conversion superhet receiver with the 
following internal stages implemented using VHDL:
- 1.) RF Mixer and local oscillator (Converts the incoming ~100MHz down to 500kHz)
- 2.) IF stage (Essentially a bandpass filter with a center frequency of 500kHz)
- 3.) PLL demodulator stage 
- 4.) Audio low-pass filter stage
- 5.) PWM output stage


How to use the FleaFPGA FM Radio (Assuming you have constructed the circuit
outlined in the schematic PDF):

- User Button#1 = Increments Local oscillator frequency
- User Button#2 = Decrements Local oscillator frequency

Notes:
- Upon power-up/reset, the FM radio defaults to (roughly) around 91.3MHz
- Some adjustment of the air-core inductor L1 (by gently separating the turns)
may be required to get the right bandpass characteristics on the receiver
front-end.
- In it's current form, manual tuning is quite slow, there is definitely
some room for improvement here..
- Mains hum induced distortion - note that receiver is quite sensitive! so 
much so that all efforts to minimize any stray hum from entering the receiver
front-end (or any other part of FleaFPGA for that matter!) in order to 
obtain best results.


What's on the to-do list for later:
-----------------------------------
- Possibly add a coarse/fine tuning mechanism
- Possible front-end circuit fixes to improve hum/noise rejection
- Include some form of VGA output of the current frequency selected


Anyway, that's all for now.. Happy Experimenting! :-D

Best regards,
Valentin Angelovski
