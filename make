
setcpm(30)

// Part 1: Melodic stack
stack(
  note("<[c2 g2 c3]*4 [bb1 f2 bb2]*4 [f2 c3 f3]*4 [eb2 bb2 eb3]*4>")
    .scale("C:minor")
    .jux(rev)
    .sound("sawtooth")
    .lpf(sine.range(200, 1200).slow(8))
    .gain(0.25)
)

// Part 2: Drum stack
stack(
  sound("bd bd bd bd")
    .bank("bossdr110")
    .gain(0.35)
)
