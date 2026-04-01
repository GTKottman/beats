# "Star-Spangled Bass" - Heavy Anthem Remix

Paste this into [strudel.cc](https://strudel.cc/) and hit play.

```js
// "Star-Spangled Bass" - Heavy Anthem Remix
// public-domain anthem melody x hard trap x heavy 808

samples('github:tidalcycles/dirt-samples')
setcpm(35) // 140 BPM in 4/4

stack(
  // DRUMS
  stack(
    s("[bd bd] ~ bd [~ bd] [bd ~] ~ bd [bd bd]").gain(1.05),
    s("~ ~ sd ~ ~ ~ sd [~ sd]").gain(.95),
    s("[hh hh hh hh hh [hh hh] hh hh]*2")
      .gain(.34)
      .sometimesBy(.4, x => x.ply("2"))
      .speed(perlin.range(.98, 1.05)),
    s("~ cp ~ ~ ~ ~ cp ~").gain(.18).room(.35),
    s("~ ~ ~ [lt mt] ~ ~ ~ [mt lt]")
      .degradeBy(.25)
      .gain(.12)
  ),

  // HEAVY BASSLINE
  note("<D1 ~ D1 A0 D1 ~ G0 A0>")
    .struct("[x ~] ~ [x x] ~ x ~ [~ x] x")
    .s('sawtooth')
    .decay(.34).sustain(.02)
    .lpf(125)
    .resonance(10)
    .gain(.8),

  // ANTHEM LEAD - more literal opening melody
  note("<D5@2 B4 G4 B4 D5@2 G5 B5@2 A5 G5 B4 C#5 D5 D5@2 B5 A5 G5 F#5 E5 F#5 G5@2 G5 D5 B4 G4@2>")
    .s('triangle')
    .attack(.01).decay(.16).sustain(.05)
    .cutoff(2800)
    .room(.35)
    .gain(.24)
    .slow(2),

  // OCTAVE SUPPORT
  note("<D4 ~ G4 ~ D4 ~ A4 ~>")
    .struct("x ~ ~ ~ x ~ ~ [x x]")
    .s('sawtooth')
    .attack(.01).decay(.1).sustain(.01)
    .cutoff(1800)
    .gain(.06),

  // DARK AIR
  s("breath")
    .chop(16)
    .speed(1.4)
    .gain(.05)
    .mask("<~ ~ ~ x>"),

  // METAL TOP
  n("0 1 2 3")
    .s("east")
    .struct("x(3,8,0)")
    .degradeBy(.35)
    .speed(rand.range(1, 1.8))
    .pan(rand)
    .gain(.05)
)
```

## Notes

- The anthem melody is public domain, and this version now keeps the opening phrase more literally so it reads faster to the ear
- The lead is slowed relative to the drums on purpose so the melody stays recognizable over the heavy bass
- `setcpm(35)` gives you 140 BPM in 4/4

## Tweaks To Try

- Raise the bass gain from `.8` to `.9` if you want it even uglier
- Drop the lead an octave if you want it darker and less ceremonial
- Delete the `OCTAVE SUPPORT` layer if you want a simpler arrangement
- Change the bass notes to `"<D1 C1 ~ B0 D1 ~ G0 A0>"` for a grimier pull
