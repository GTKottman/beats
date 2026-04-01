# Funky Beats in Strudel — Master Knowledge

---

## 1. Funk Rhythm Foundations

### Beat 1 is God

Every funk groove anchors hard on beat 1 of each measure. The kick and bass land together on the downbeat to establish the pocket. Everything else can float, syncopate, and dodge — but beat 1 stays planted.

### Syncopation

Funk lives between the beats. Displacing notes to the "and" or the "e" and "a" of a 16th-note grid creates tension against the pulse. The listener feels pulled forward because accents land where they don't expect them.

Common placements that feel funky:
- Kick on the "and" of beat 2 or 4
- Snare slightly before or after the expected backbeat
- Bass notes landing on 16th-note offbeats

### Ghost Notes

Quiet, barely audible snare or percussion hits between the main strokes. They fill the rhythmic space without competing for attention. In programming terms, ghost notes sit at roughly 30-50% of the main hit's volume. They transform a stiff pattern into something that breathes.

### 16th-Note Grid

Funk subdivides time into 16th notes across all instruments. Hi-hats play steady 16ths (or 8ths with 16th accents), the snare fills gaps with ghost strokes, and the kick peppers offbeat 16ths between its strong hits. This constant motion is what makes funk feel "busy but locked."

### Swing and Micro-Timing

Straight 16ths work, but slightly delaying the second note of each 16th-note pair (the "lazy" feel) adds warmth. In live playing this is natural; in programming you can approximate it with subtle timing offsets or by choosing sample banks with inherent swing.

### Tempo Range

Classic funk sits between 90-110 BPM. Slower tempos (around 80-95) give more room for ghost notes and bass detail. Faster tempos (100-120) push toward disco-funk energy.

---

## 2. Drum Programming in Strudel

### Sound Abbreviations

| Sound        | Code  |
|-------------|-------|
| Bass drum   | `bd`  |
| Snare       | `sd`  |
| Closed hat  | `hh`  |
| Open hat    | `oh`  |
| Clap        | `cp`  |
| Rimshot     | `rim` |
| High tom    | `ht`  |
| Low tom     | `lt`  |
| Cowbell     | `cb`  |
| Crash       | `cr`  |

### Useful Banks for Funk

- `RolandTR808` — deep, boomy kick and snappy snare (hip-hop, classic funk)
- `RolandTR909` — punchy kick and crisp hats (house-funk, disco)
- `RolandTR707` — bright, clean (electro-funk)
- `LinnDrum` — 80s funk/pop classic
- `RhythmAce` — vintage lo-fi character

Select a bank with `.bank("RolandTR808")`.

### Basic Funk Kick Pattern

A four-on-the-floor kick is too straight for funk. Instead, place kicks on beat 1 and syncopated offbeats:

```js
sound("bd ~ ~ bd ~ bd ~ ~")
  .bank("RolandTR808")
  .gain(0.8)
```

Or use Euclidean rhythms for instant funk clave:

```js
sound("bd(3,8)")
  .bank("RolandTR808")
  .gain(0.8)
```

The `(3,8)` Euclidean pattern distributes 3 hits across 8 slots — a rhythm found in Afro-Cuban music and classic funk.

### Snare with Backbeat + Ghost Notes

Use gain patterns to create loud backbeats with quiet ghost strokes between them:

```js
sound("~ sd ~ sd")
  .bank("RolandTR808")
  .gain(0.85)
```

Add ghost notes by layering a second snare pattern at low volume:

```js
sound("[~ sd] [sd ~] [~ sd] [sd ~]")
  .bank("RolandTR808")
  .gain("0.2 0.8 0.2 0.8 0.15 0.85 0.2 0.8")
```

The low-gain hits (0.15-0.2) are the ghost notes. They add rhythmic depth without dominating.

### Hi-Hat Patterns

Steady 8th notes with accent variation:

```js
sound("hh*8")
  .bank("RolandTR808")
  .gain(".4 .8 .4 .8 .4 .8 .4 .8")
```

16th hi-hats with open hat on the "and":

```js
sound("[hh hh hh oh]*4")
  .bank("RolandTR808")
  .gain(".4 .4 .4 .7")
```

Add randomness with `?` for humanization:

```js
sound("hh*16?0.15")
  .bank("RolandTR808")
  .gain(sine.range(0.3, 0.7).fast(4))
```

### Euclidean Rhythms for Funk

| Pattern | Name | Feel |
|---------|------|------|
| `(3,8)` | Pop Clave | Classic funk bounce |
| `(5,8)` | Cinquillo | Busy, driving |
| `(3,8,2)` | Shifted Clave | Offbeat tension |
| `(5,16)` | Sparse 16th | Spacious groove |
| `(7,16)` | Dense 16th | Full funk kit feel |

Example — layered Euclidean funk kit:

```js
stack(
  sound("bd(3,8)").bank("RolandTR808").gain(0.8),
  sound("sd(2,8,1)").bank("RolandTR808").gain(0.7),
  sound("hh(5,8)").bank("RolandTR808").gain(0.45),
  sound("oh(1,8,3)").bank("RolandTR808").gain(0.35)
)
```

---

## 3. Funk Harmony

### Dorian Mode — The Funk Default

Most funk lives in Dorian mode. Dorian is a minor scale with a raised 6th degree, giving it a brighter, more optimistic darkness than natural minor. The raised 6th enables the characteristic i-IV chord movement.

Eb Dorian: Eb F Gb Ab Bb C Db

### Key Chord Progressions

| Progression | Feeling | Classic Example |
|------------|---------|-----------------|
| i - IV | Hypnotic groove loop | "Chameleon" (Herbie Hancock) |
| i - bVII | Dark, driving | "Flashlight" (Parliament) |
| i7 - IV7 | Jazzy warmth | "Superstition" (Stevie Wonder) |
| i - IV - V | Full movement | "Get Up Offa That Thing" |
| i - ii | Subtle tension | Sly Stone style |

### Extended Chords

Funk rarely uses plain triads. The essential voicings:
- **Minor 7th** (i7): dark, soulful foundation
- **Dominant 9th** (IV9): the single most important funk chord shape
- **Dominant 7th #9** (the "Hendrix chord"): aggressive, biting
- **Minor 9th**: smooth, modern funk

In Strudel you build these with stacked notes or comma-separated chords:

```js
note("[eb2,gb2,bb2,db3]")
  .sound("sawtooth")
  .lpf(800)
```

### Using `.scale()` in Strudel

Lock all notes to a scale to avoid wrong notes:

```js
note("<0 3 4 1>")
  .scale("Eb:dorian")
  .sound("sawtooth")
```

Numbers become scale degrees: 0 = root, 1 = 2nd, 2 = 3rd, etc.

---

## 4. Funk Bass Lines

### Lock With the Kick

The bass and kick drum should hit together on strong beats. This synchronization is the rhythmic spine of funk. Between those anchor points, the bass fills with syncopated 16th-note runs.

### Syncopated Rhythm with `.struct()`

```js
note("<Eb1 Ab1 Bb1 F1>")
  .struct("x ~ x [~ x] x ~ [x x] ~")
  .sound("sawtooth")
  .decay(0.22).sustain(0.02)
  .lpf(200)
  .gain(0.7)
```

The `x` and `~` pattern shapes rhythm independently from the note sequence.

### Octave Jumps

Jumping between low root notes and their octave adds energy without changing harmony:

```js
note("<Eb1 Eb2 Ab1 Ab2 Bb1 Bb2 F1 F2>")
  .sound("sawtooth")
  .lpf(300)
  .gain(0.65)
```

### Tone Shaping for Bass

- `.lpf(100-250)` — deep sub weight, felt more than heard
- `.lpf(250-500)` — defined bass with some bite
- `.decay(0.15-0.3)` + `.sustain(0.01-0.05)` — tight, punchy envelope
- `.distort("2:0.4")` — adds harmonic grit for speaker presence

---

## 5. Strudel Effects for Funk

### Low-Pass Filter Sweeps

Automate filter cutoff with an LFO for that classic "opening up" feel:

```js
.lpf(sine.range(200, 1200).slow(8))
```

`sine.range(low, high)` creates a smooth oscillation. `.slow(8)` makes it take 8 cycles to complete one sweep. Great for pads and chords that breathe.

### Phaser — Funky Wah Approximation

The phaser effect approximates the classic funk wah-wah guitar pedal:

```js
.phaser(2)
.phaserdepth(0.7)
.phasercenter(1200)
```

Speed of 2 = moderate sweep rate. Higher depth = more pronounced. Center frequency controls the sweet spot of the sweep.

### Delay for Dub/Funk Echoes

```js
.delay(0.3)
.delaytime(0.125)
.delayfeedback(0.4)
```

Short delay times (0.125 = 16th note at moderate tempo) create rhythmic echoes that thicken the groove. Keep feedback below 0.6 to avoid runaway buildup.

### Reverb for Space

```js
.room(0.3)
.roomsize(2)
```

Funk generally uses less reverb than other genres — the groove needs to stay tight. Use small room sizes for drum kits and moderate reverb for pads/keys.

### Stereo Width with `jux`

```js
.jux(rev)
```

Applies `rev` (reverse pattern) to only the right channel, creating wide stereo separation. Other useful jux transforms:
- `.jux(fast(2))` — right channel plays double time
- `.juxBy(0.5, rev)` — partial stereo width (0 = mono, 1 = full)

### Vowel Filter — Funky Formant

Makes synths sound like they're "talking":

```js
.vowel("<a e i o u>")
```

Rotates through vowel shapes each cycle. Pairs well with sawtooth or square wave bass for P-Funk style effects.

### Humanization

Remove events randomly to break mechanical perfection:

```js
.degradeBy(0.1)
```

Or use `?` in mini-notation:

```js
sound("hh*16?0.1")
```

Both randomly remove ~10% of hits per cycle, preventing the pattern from sounding robotic.

### Velocity Variation

Pattern the gain to simulate human dynamics:

```js
.gain(".4!2 1 .4!2 1 .4 1")
```

The `!` replicates without speeding up. This creates accented and unaccented hits in a repeating dynamic shape.

### Sidechain Ducking

Make pads pump against the kick for modern funk-electronic hybrid:

```js
$: note("eb3,gb3,bb3").sound("sawtooth").lpf(800).orbit(2)
$: sound("bd(3,8)").bank("RolandTR808").duckorbit(2).duckattack(0.2)
```

---

## 6. Arrangement in Strudel

### `stack()` — Layering

Combine independent patterns (drums, bass, melody, pads) that play simultaneously:

```js
stack(
  drumPattern,
  bassPattern,
  melodyPattern
)
```

### `arrange()` — Sectional Form

Play different patterns for specified numbers of cycles:

```js
arrange(
  [4, introPattern],
  [8, mainPattern],
  [4, outroPattern]
)
```

The first number is the cycle count, the second is the pattern. When one section ends, the next begins seamlessly.

### Building Density Over Time

The core arrangement trick: start sparse, add layers, increase rhythmic density.

```js
stack(
  arrange(
    [4, silence],
    [999, bassHum]
  ),
  arrange(
    [4, sparseChords],
    [4, busyChords],
    [8, fullChords]
  ),
  arrange(
    [8, silence],
    [4, simpleDrums],
    [4, fullDrums],
    [999, funkDrums]
  )
)
```

Each `arrange()` inside the `stack()` operates independently, so layers enter at different times. Use `silence` as a placeholder for empty bars.

### Section Contrast

Create distinct pattern variables for different energy levels, then arrange them:

- **Intro**: one layer, sparse, filtered
- **Verse**: drums enter, bass anchors
- **Chorus/Build**: full kit, open filters, more voices
- **Break**: strip back to one or two layers
- **Drop**: everything hits at once

---

## 7. Quick Reference Cheat Sheet

### Mini-Notation Operators

| Operator | Meaning | Example |
|----------|---------|---------|
| (space) | Sequence in one cycle | `"bd sd hh"` |
| `*` | Speed up / multiply | `"hh*4"` |
| `/` | Slow down / divide | `"[c d e]/2"` |
| `<>` | One event per cycle | `"<c d e f>"` |
| `[]` | Subdivide time | `"[bd sd]"` |
| `~` | Rest / silence | `"bd ~ sd ~"` |
| `,` | Play simultaneously | `"[c3,e3,g3]"` |
| `@` | Elongate (weight) | `"[c@2 d e]"` |
| `!` | Replicate (no speedup) | `"c!3 d"` |
| `?` | Random removal (50%) | `"hh*8?"` |
| `?0.2` | Random removal (20%) | `"hh*8?0.2"` |
| `\|` | Random choice | `"bd \| sd"` |
| `(n,m)` | Euclidean rhythm | `"bd(3,8)"` |
| `(n,m,o)` | Euclidean + offset | `"bd(3,8,2)"` |

### Common Effect Chains

```
Tight Funk Bass:  .sound("sawtooth").decay(.2).sustain(.02).lpf(200).gain(.7)
Warm Pad:         .sound("sawtooth").lpf(sine.range(300,1200).slow(8)).gain(.3).room(.2)
Punchy Kick:      .bank("RolandTR808").gain(.85)
Ghost Snare:      .bank("RolandTR808").gain(.2)
Wah Synth:        .sound("sawtooth").phaser(2).phaserdepth(.7)
Wide Stereo:      .jux(rev)
Breathing Filter:  .lpf(sine.range(200,2000).slow(8))
Humanized Hats:   .gain(sine.range(.3,.7).fast(4)).degradeBy(.1)
```

### Signal Flow Reminder

```
Pattern triggers → Sound generated → Gain/ADSR → Effects (lpf/hpf/distort/phaser)
→ Split: Dry + Delay + Reverb → Orbit mixer → Stereo output
```

### Funk Beat Construction Order

1. Start with the kick pattern — plant beat 1, syncopate the rest
2. Add snare backbeat on 2 and 4, then ghost notes between
3. Layer hi-hats (8ths or 16ths) with accent patterns
4. Write bass line that locks with kick on strong beats, fills with syncopation
5. Add chords/keys — extended voicings, filtered, rhythmic strumming feel
6. Build arrangement: sparse intro → full groove → breakdown → return
7. Season with effects: filter sweeps, phaser, delay, stereo width
