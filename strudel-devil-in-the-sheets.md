# "Devil in the Sheets" - Midnight Trap Noir

Paste this into [strudel.cc](https://strudel.cc/) and hit play.

```js
// "Devil in the Sheets" - Midnight Trap Noir
// dark r&b x trap x industrial pop

samples('github:tidalcycles/dirt-samples')

stack(
  // DRUMS
  stack(
    s("bd ~ ~ [bd bd]").gain(.95),
    s("~ ~ sd ~").gain(.7),
    s("[~ hh]*8")
      .gain(.28)
      .sometimesBy(.3, x => x.ply("2"))
      .speed(perlin.range(.92, 1.08)),
    s("~ cp ~ ~").gain(.2).room(.8).delay(.25).delaytime(.33),
    s("~ ~ [lt mt] ~")
      .degradeBy(.45)
      .gain(.16)
      .room(.6)
  ),

  // SUB BASS
  note("<D1 D1 F1 C1>")
    .struct("x ~ x [~ x]")
    .s("sawtooth")
    .decay(.12).sustain(.05)
    .lpf(sine.slow(8).range(110, 240))
    .resonance(10)
    .gain(.5),

  // BELL LEAD
  "0 ~ 7 [10 7] 5 ~ [3 2]"
    .scale("D4 minor")
    .note()
    .s("triangle")
    .attack(.01).decay(.16).sustain(.04)
    .room(.75)
    .delay(.4).delaytime(.25).delayfeedback(.45)
    .gain(.16)
    .mask("<x ~ x ~ x ~ ~ ~>"),

  // GLASS PAD
  chord("<Dm9!2 <Bbmaj7 Am7>>")
    .voicing()
    .s("sawtooth")
    .attack(1.2)
    .release(2.8)
    .lpf(perlin.slow(6).range(300, 1200))
    .room(1)
    .gain(.14),

  // WHISPER TEXTURE
  s("breath")
    .chop(8)
    .rev()
    .speed(.75)
    .room(1.2)
    .gain(.1)
    .mask("<~ ~ ~ x>"),

  // EDGE SPARKS
  n("0 2 4 7")
    .s("east")
    .struct("x(3,8,1)")
    .degradeBy(.55)
    .speed(rand.range(.7, 1.3))
    .pan(sine.range(.2, .8))
    .gain(.08)
).slow(2)
```

## Vibe

- Cold, intimate, after-midnight energy
- Minimal trap drums with eerie space
- Enough melody for a hook, but still tense

## Tweaks to try

- Change `slow(2)` to `slow(7/4)` for slightly more motion
- Swap `"D4 minor"` to `"D4 phrygian"` for a meaner feel
- Raise the sub gain from `.5` to `.62` if you want more weight
- Remove the lead `mask(...)` if you want the melody to stay up front the whole time
