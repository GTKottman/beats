# "Gotta Be Cautious" — Darkwave Glitch Intro

Paste this into [strudel.cc](https://strudel.cc/) and hit play.

```js
// "Gotta Be Cautious" — Darkwave Glitch Intro
// darkwave × rumba glitch × horrorcore × techno × j-pop × chicago blues

samples('github:tidalcycles/dirt-samples')

stack(
  // ▓▓ DRUMS — techno four-on-the-floor + rumba ghost hits + disco hats ▓▓
  stack(
    s("bd*4").gain(.85),
    s("~ <sd:1!3 sd:1(3,4,2)>").gain(.5),
    s("[~ hh:1]*4")
      .sometimesBy(.35, ply("2"))
      .speed(perlin.range(.85, 1.15))
      .end(perlin.range(.02, .07))
      .gain(.4),
    s("~ ~ ~ [cp ~]").gain(.25).room(.7)
      .delay(.4).delaytime(.33)
  ),

  // ▓▓ BASS — ominous chicago blues sub crawl ▓▓
  note("<A1 [A1 G1] F1 [E1 A1]>")
    .struct("x(5,8,-1)")
    .superimpose(add(.05))
    .s('sawtooth')
    .decay(.15).sustain(0)
    .cutoff(sine.slow(8).range(120, 500))
    .resonance(12)
    .gain(.45)
    .lpa(.06).lpenv(-4),

  // ▓▓ LEAD — soaring j-pop phrygian riff ▓▓
  "0 3 7 [5 3]"
    .off(1/8, add(5))
    .off(1/4, x=>x.add(12).degradeBy(.5))
    .scale('A4 phrygian')
    .superimpose(add(.04))
    .note().s('sawtooth')
    .cutoff(sine.range(1200, 5000).slow(16))
    .resonance(6)
    .decay(.18).sustain(.35)
    .delay(.35).delaytime(1/6).delayfeedback(.5)
    .room(.5).gain(.22)
    .mask("<~ x>/8"),

  // ▓▓ CHORDS — darkwave ominous pads ▓▓
  chord("<Am7!3 <Em7 E7b13 Em7 Ebm7b5>>")
    .dict('lefthand').voicing()
    .superimpose(x=>x.add(.04))
    .add(note(perlin.range(0, .4)))
    .s('sawtooth')
    .cutoff(perlin.range(350, 1800).slow(16))
    .attack(.8)
    .gain(.14)
    .room(1).delay(.5).delaytime(.33),

  // ▓▓ GLITCH STABS — rumba-phrygian rhythmic hits ▓▓
  "0 4 1 5"
    .struct("x(3,8,2)".fast(2))
    .scale('A4 phrygian').note()
    .s('square')
    .decay(.03).sustain(0)
    .cutoff(2500)
    .delay(.5).delaytime(.125).delayfeedback(.65)
    .gain(.15).degradeBy(.4)
    .pan(rand),

  // ▓▓ HORROR TEXTURE — eerie reversed breath ▓▓
  s("breath").room(1.5).shape(.5)
    .chop(16).rev().speed(.5)
    .gain(.12).mask("<x ~@7>/8"),

  // ▓▓ BLEEPS — horrorcore tension hits ▓▓
  n("0 1").s("east")
    .delay(.5).degradeBy(.8)
    .speed(rand.range(.5, 1.5))
    .gain(.12).room(.8)

).slow(2)
```

## What's happening

| Layer | Genre DNA | What it does |
|---|---|---|
| **Kick** `bd*4` | Techno / disco | Straight four-on-the-floor drive |
| **Snare** | Rumba glitch | Euclidean `(3,4,2)` pattern on 4th bar for rhythmic surprise |
| **Hi-hats** | Disco pop / glitch | Random stutters via `ply("2")`, micro-length variation |
| **Clap** | Techno | Delayed tail-end hit, spacious reverb |
| **Bass** | Chicago blues / darkwave | A phrygian root motion, Euclidean `(5,8)` hits, detuned unison, filter sweep |
| **Lead** | J-pop / soaring guitar | Phrygian scale degrees with octave jumps, offset echoes, delayed shimmer |
| **Chords** | Darkwave | Am7 → Em7 → E7b13 voice-led pads with slow attack and perlin drift |
| **Glitch stabs** | Rumba glitch | Euclidean `(3,8,2)` doubled, random panning, heavy delay feedback |
| **Breath** | Horrorcore | Reversed, chopped, drenched in reverb — creeps in every 8 bars |
| **Bleeps** | Horrorcore / techno | Sparse random-speed "east" samples, 80% degraded for tension |

## Tweaks to try

- Change `slow(2)` to `slow(3/2)` for a faster, more aggressive tempo
- Swap `'A4 phrygian'` to `'A4 minor'` for less darkness, or `'A4 locrian'` for maximum dread
- Change the bass line `"<A1 [A1 G1] F1 [E1 A1]>"` to taste
- Remove `.mask("<~ x>/8")` on the lead to let it rip from bar 1
- Add `.pianoroll()` at the end to see the notes visually




