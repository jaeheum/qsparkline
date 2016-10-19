spark:{
    sm:{x-min x}; nr:{y*x%max y}; / http://code.kx.com/wiki/Qidioms#156
    -1 sparkline:$[min x=max x;
	(3*count x)#"▅"til 3; / 3-byte UTF-8 http://code.kx.com/wiki/Cookbook/Unicode
	ticks raze (3*floor nr[-1+(count ticks:"▁▂▃▄▅▆▇█")div 3; sm x])+\:til 3];}
\
- The MIT License (same as the original's: https://github.com/holman/spark)

q)spark 1 5 22 13 53
▁▁▃▂█
q)spark 0,30,55,80,33,150
▁▂▃▄▂█
q)spark 9 13 5 17 1
▄▆▂█▁
q)spark 10#123
▅▅▅▅▅▅▅▅▅▅
q)spark 01011100001b
▁█▁███▁▁▁▁█
q)spark 0x01234567890abcdeffedcba0
▁▁▂▃▄▁▆▇█▇▆▅
q)spark 10#.z.z
▅▅▅▅▅▅▅▅▅▅
q)spark .z.z+til 16
▁▁▁▂▂▃▃▄▄▅▅▆▆▇▇█
q)spark .z.z+(-16?16)
▆▄█▅▆▃▁▂▃▇▅▄▂▇▁▁
q)spark (-16?16)
▁▄▁▆█▇▅▇▄▃▁▆▂▃▂▅

