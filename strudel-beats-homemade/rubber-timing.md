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

stack(
  arrange(
    [2, silence],
    [999, hum]
  ),
  arrange(
    [4, melodyintro],
    [4, melodyintro2],
    [8, melody],
    [4, melodyintro2],
    [4, melodyintro]
  ),
  arrange(
    [4, silence],
    [4, drums],
    [4, drums2],
    [8, drums2by2],
    [999, drums4by2]
  )
)