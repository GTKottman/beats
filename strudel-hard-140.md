# "Iron Teeth" - Hard 140 Beat

Paste this into [strudel.cc](https://strudel.cc/) and hit play.

```js
// "Iron Teeth" - Hard 140 Beat
// hard trap x industrial x rage

samples('github:tidalcycles/dirt-samples')
setcpm(35) // 140 BPM in 4/4: 4 beats per cycle

stack(
  // DRUM CORE
  stack(
    s("[bd bd] ~ bd [~ bd] [bd ~] ~ bd [bd bd]")
      .gain(1.05),
    s("~ ~ sd ~ ~ ~ sd [~ sd]")
      .gain(.95),
    s("[hh hh hh hh hh [hh hh] hh hh]*2")
      .gain(.34)
      .sometimesBy(.45, x => x.ply("2"))
      .speed(perlin.range(.98, 1.04)),
    s("~ cp ~ ~ ~ ~ cp ~")
      .gain(.18)
      .room(.45),
    s("~ ~ ~ [lt mt] ~ ~ ~ [mt lt]")
      .degradeBy(.25)
      .gain(.14)
  ),

  // 808
  note("<F1 F1 ~ Eb1 F1 ~ C1 Eb1>")
    .struct("[x ~] [x x] ~ x [x ~] ~ [~ x] x")
    .s("sawtooth")
    .decay(.3)
    .sustain(.02)
    .lpf(140)
    .resonance(9)
    .gain(.78),

  // HORN STAB
  note("<F3 ~ Eb3 ~ F3 ~ Ab3 ~>")
    .struct("x ~ ~ ~ x ~ ~ [x x]")
    .s("sawtooth")
    .attack(.01)
    .decay(.12)
    .sustain(.01)
    .cutoff(2200)
    .gain(.14)
    .room(.2),

  // AIR
  s("breath")
    .chop(32)
    .speed(2)
    .gain(.05)
    .mask("<~ ~ ~ x>"),

  // METAL
  n("0 1 2 3")
    .s("east")
    .struct("x(3,8,0)")
    .degradeBy(.35)
    .speed(rand.range(1, 1.8))
    .pan(rand)
    .gain(.06)
)
```

## Tempo

- `setcpm(35)` gives you 140 BPM when one cycle is a 4-beat bar
- Formula: `BPM / beats per cycle`

## Tweaks to try

- Raise the 808 from `.78` to `.9` if you want more sub
- Delete the `HORN STAB` layer if you want it even rawer
- Change the kick line if you want more space for vocals
- Add `.fast(2)` to the `east` layer for more manic top-end
