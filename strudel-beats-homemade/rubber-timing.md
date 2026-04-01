setcpm(30)

let drums =
  sound("<bd bd bd bd>")
    .bank("bossdr110")
    .gain(0.35)

let drums2 =
  sound("<bd bd bd bd>*2")
    .bank("akaimpc60")
    .gain(0.55)

let drums2by2 =
  sound("<bd*2 bd*2 bd*2 bd*2>*2")
    .bank("akaimpc60")
    .gain(0.75)

let drums4by2 =
  sound("<bd*2 bd*2 bd*2 bd*2>*4")
    .bank("akaimpc60")
    .gain(0.75)

let melody =
  note("<[c2*2 eb3]*2 [g2 c4*2]*2 [c2 eb3]*2 [bb1 d3*2]*2 [f2 bb3]*2 [c2*2 eb3]*2>*2")
    .scale("C:minor")
    .sound("ace_ht")
    .lpf(sine.range(200, 1200).slow(8))
    .gain(0.25)

let melodyintro =
  note("<[c2 eb3]*2 [g2 c4]*2 [bb1 d3]*2 [f2 bb3]*2>*2")
    .scale("C:minor")
    .jux(rev)
    .sound("ace_ht")
    .lpf(sine.range(200, 1200).slow(8))
    .gain(0.25)

let melodyintro2 =
  note("<[c2*2 eb3]*2 [g2 c4]*2 [bb1*2 d3]*2 [f2 bb3]*2>*2")
    .scale("C:minor")
    .jux(rev)
    .sound("ace_ht")
    .lpf(sine.range(200, 1200).slow(8))
    .gain(0.25)

let hum =
  note("<[c1 g1] [eb1 bb1] [f1 c2] [g1 d2]>")
    .sound("sine")
    .gain(0.47)
    .jux(rev)
    .lpf(sine.range(120, 350).slow(12))

let funkKit =
  stack(
    sound("[bd ~ [~ bd] ~] [~ bd ~ bd]")
      .bank("RolandTR808")
      .gain(0.8),
    sound("~ sd ~ sd")
      .bank("RolandTR808")
      .gain("0.7 0.75 0.7 0.8"),
    sound("[sd sd sd sd]*2")
      .bank("RolandTR808")
      .gain("0.18 0.22 0.15 0.2 0.18 0.2 0.15 0.22"),
    sound("hh*8")
      .bank("RolandTR808")
      .gain(".35 .7 .35 .7 .35 .7 .35 .7")
  )

stack(
  arrange(
    [1, silence],
    [999, hum]
  ),
  arrange(
    [2, melodyintro],
    [2, melodyintro2],
    [4, melody],
    [2, melodyintro2],
    [2, melodyintro]
  ),
  arrange(
    [2, silence],
    [2, drums],
    [2, drums2],
    [4, drums2by2],
    [999, drums4by2]
  ),
  arrange(
    [4, silence],
    [999, funkKit]
  )
)