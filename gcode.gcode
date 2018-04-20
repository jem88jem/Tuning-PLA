; top infill extrusion width = 0.42mm
; first layer extrusion width = 0.42mm

M107 ; disable fan
M115 U3.1.0 ; tell printer latest fw version
M83  ; extruder relative mode
M104 S215 ; set extruder temp
M140 S55 ; set bed temp
M190 S55 ; wait for bed temp
M109 S215 ; wait for extruder temp
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling
G1 Y-3.0 F1000.0 ; go outside pritn area
G1 X60.0 E9.0  F1000.0 ; intro line
G1 X100.0 E12.5  F1000.0 ; intro line
G92 E0.0
M900 K30
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
;BEFORE_LAYER_CHANGE
;0.2


G1 E-0.80000 F2100.00000 ; retract
G1 Z0.600 F7200.000 ; lift Z
;AFTER_LAYER_CHANGE
;0.2
G1 X112.471 Y69.072 F7200.000 ; move to first skirt point
G1 Z0.200 F7200.000 ; restore layer Z
G1 E0.80000 F2100.00000 ; unretract
M204 S1000 ; adjust acceleration
G1 F1800