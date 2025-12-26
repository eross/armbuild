10 s=54272
20 for i=s to s+24:poke i,0:next   :rem clear sid registers
30 poke s+24,15                     :rem master volume full (15)
40 poke s+5,9                       :rem attack/decay (a=0, d=9)
50 poke s+6,144                     :rem sustain/release (s=9, r=0)
60 for f=0 to 255                   :rem loop through frequencies
70 poke s+0,f                       :rem freq low byte
80 poke s+1,int(f/8)                :rem freq high byte (simple approx)
90 poke s+4,17                      :rem triangle wave + gate on
100 for d=1 to 30:next d            :rem short note duration
110 poke s+4,16                     :rem gate off (stop note)
120 next f
130 goto 60                         :rem repeat forever