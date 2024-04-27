[led_effect logo_idle]
autostart:              false
frame_rate:             24
leds:
    neopixel:caselight (1-6)
layers:
    breathing  10 1 top (0,0,.7)

[led_effect critical_error]
leds:
    #neopixel:mmu_leds
    neopixel:caselight
layers:
    strobe         1  1.5   add        (1.0,  1.0, 1.0)
    breathing      2  0     difference (0.95, 0.0, 0.0)
    static         1  0     top        (1.0,  0.0, 0.0)
autostart:                             false
frame_rate:                            24
run_on_error:                          true

[led_effect logo_bed_temp]
leds:
    neopixel:caselight (1-6)
autostart:                          false
frame_rate:                         24
heater:                             heater_bed
layers:
    heater  50 0 add    (1,1,0),(1,0,0)
    static  0  0 top    (0,.7,0)

[led_effect progress_bar]
leds:
    neopixel:caselight (1-6)
autostart:                          false
frame_rate:                         24
layers:
    progress  -1  0 add         ( 0, 0,   1),( 0, 0.1, 0.6)
    static     0  0 top         ( 0, 0, 0.1)

[led_effect loading]
leds:
    neopixel:caselight (1,3,5,2,4,6)
autostart:                          false
frame_rate:                         24
layers:
    comet  0.3  0 add (0, 0, 1)

[led_effect rainbow]
leds:
    neopixel:caselight
autostart:                          false
frame_rate:                         24
layers:
    gradient  0.3  1 add (0.3, 0.0, 0.0),(0.0, 0.3, 0.0),(0.0, 0.0, 0.3)

[led_effect rainbow_high]
leds:
    neopixel:caselight
    #neopixel:mmu_leds
autostart:                          false
frame_rate:                         24
layers:
    gradient  1  1 add (1.0, 0.0, 0.0),(0.0, 1.0, 0.0),(0.0, 0.0, 1.0)

[led_effect epilepsie]
leds:
    #neopixel:mmu_leds
    neopixel:caselight
autostart:                          false
frame_rate:                         24
layers:
    blink  .2  1 add (1.0, 0.0, 0.0),(0.0, 1.0, 0.0),(0.0, 0.0, 1.0)