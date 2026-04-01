# Strudel Dark Bassline Pack

Paste the setup block into [strudel.cc](https://strudel.cc/) first, then swap in any bassline below.

## Quick Setup

```js
setcpm(35) // 140 BPM in 4/4: 140 / 4 beats per cycle
```

## How To Make Bass In Strudel

- `note("F1 Eb1 C1 Db1")` lets you type exact bass notes.
- `"0 0 3 1".scale('F2 phrygian').note()` lets you work in scale degrees.
- `.struct("x ~ x [~ x]")` shapes the rhythm without changing the note order.
- `s('sawtooth')`, `decay(...)`, `sustain(...)`, `lpf(...)`, and `gain(...)` do most of the heavy lifting for dark bass.

## Core Templates

```js
note("<F1 Eb1 C1 Db1>")
  .struct("x ~ x [~ x]")
  .s('sawtooth')
  .decay(.22).sustain(.02)
  .lpf(140)
  .gain(.72)
```

```js
"0 0 3 1"
  .scale('F2 phrygian')
  .note()
  .s('sawtooth')
  .decay(.22).sustain(.02)
  .lpf(140)
  .gain(.72)
```

## Slow Menace

### 1. Root Dip
Heavy and simple. Good when the drums already do a lot.

```js
note("<F1 [F1 Eb1] C1 [Db1 C1]>")
  .struct("x ~ [x x] ~ x ~ [~ x] x")
  .s('sawtooth')
  .decay(.28).sustain(.02)
  .lpf(135)
  .gain(.76)
```

### 2. Locrian Crawl
Feels tense and unresolved.

```js
note("<F1 Gb1 C1 B0>")
  .struct("x ~ x ~ x ~ [x x] ~")
  .s('sawtooth')
  .superimpose(add(.03))
  .decay(.24).sustain(.01)
  .lpf(145)
  .gain(.7)
```

### 3. Empty Hall
Longer gaps make it feel bigger and colder.

```js
note("<F1 ~ Eb1 ~ C1 ~ Db1 ~>")
  .struct("x ~ ~ ~ x ~ [~ x] ~")
  .s('sawtooth')
  .decay(.32).sustain(.03)
  .lpf(120)
  .gain(.74)
```

### 4. Grave Step
A slow stomp with a bar-end bite.

```js
note("<F1 F1 C1 Eb1>")
  .struct("x ~ x ~ x ~ ~ [x x]")
  .s('sawtooth')
  .decay(.26).sustain(.02)
  .lpf(150)
  .gain(.73)
```

## Hard Trap And Rage

### 5. Teeth
Fast punches with a nasty bounce.

```js
note("<F1 F1 ~ Eb1 F1 ~ C1 Eb1>")
  .struct("[x ~] [x x] ~ x [x ~] ~ [~ x] x")
  .s('sawtooth')
  .decay(.3).sustain(.02)
  .lpf(140)
  .gain(.8)
```

### 6. Double Jab
Hits hard on the front half of the bar.

```js
note("<F1 [F1 F1] Eb1 C1 [F1 Eb1] C1>")
  .struct("x [x x] ~ x x ~ [x x] ~")
  .s('sawtooth')
  .decay(.22).sustain(.01)
  .lpf(150)
  .gain(.79)
```

### 7. Late Swing
Leaves room, then snaps back in.

```js
note("<F1 ~ Eb1 C1 ~ F1 Db1 ~>")
  .struct("x ~ ~ x [~ x] ~ x [x x]")
  .s('sawtooth')
  .decay(.24).sustain(.01)
  .lpf(145)
  .gain(.77)
```

### 8. Octave Threat
Adds upper hits without turning melodic.

```js
note("<F1 F2 Eb1 F1 C2 C1 Eb1 F1>")
  .struct("x ~ [x x] ~ x ~ x [~ x]")
  .s('sawtooth')
  .decay(.2).sustain(.01)
  .lpf(155)
  .gain(.75)
```

## Industrial Pulse

### 9. Machine Stomp
Rigid and mechanical.

```js
note("<F1 C1 F1 Db1>")
  .struct("x(5,8,0)")
  .s('sawtooth')
  .decay(.18).sustain(0)
  .lpf(130)
  .gain(.72)
```

### 10. Press Line
Even hits with just enough motion to stay alive.

```js
note("<F1 Eb1 F1 C1>")
  .struct("x(3,8,1)")
  .superimpose(add(.02))
  .s('sawtooth')
  .decay(.16).sustain(0)
  .lpf(150)
  .gain(.71)
```

### 11. Conveyor
Feels like metal dragging forward.

```js
note("<F1 [F1 C1] Eb1 [Db1 C1]>")
  .struct("x x ~ [x x] ~ x ~ x")
  .s('sawtooth')
  .decay(.17).sustain(0)
  .lpf(160)
  .gain(.74)
```

### 12. Alarm Floor
More movement, still cold.

```js
"0 0 1 0 3 1 0 1"
  .scale('F2 phrygian')
  .note()
  .s('sawtooth')
  .decay(.18).sustain(.01)
  .lpf(150)
  .gain(.72)
```

## Stalking Syncopation

### 13. Back Alley
Avoids the obvious downbeats.

```js
note("<~ F1 Eb1 ~ C1 Db1 ~ F1>")
  .struct("~ x ~ x [~ x] ~ x ~")
  .s('sawtooth')
  .decay(.25).sustain(.01)
  .lpf(135)
  .gain(.73)
```

### 14. Shoulder Check
Good for verses with more vocal space.

```js
note("<F1 ~ C1 Eb1 ~ Db1 F1 ~>")
  .struct("x ~ ~ x ~ [x x] ~ x")
  .s('sawtooth')
  .decay(.21).sustain(.01)
  .lpf(145)
  .gain(.71)
```

### 15. Slipped Step
The rhythm keeps ducking the grid.

```js
note("<F1 Eb1 ~ C1 Db1 ~ C1 Eb1>")
  .struct("x [~ x] ~ x ~ x [x x] ~")
  .s('sawtooth')
  .decay(.22).sustain(.01)
  .lpf(140)
  .gain(.74)
```

### 16. Hunter
Simple note set, more nervous rhythm.

```js
"0 3 1 0 4 1 0 3"
  .scale('F2 locrian')
  .note()
  .struct("x ~ [x x] ~ x ~ x [~ x]")
  .s('sawtooth')
  .decay(.2).sustain(.01)
  .lpf(135)
  .gain(.72)
```

## Rolling And Sliding Feel

### 17. Coil
Continuous motion for busier drum patterns.

```js
note("<F1 [F1 Eb1 C1] Db1 [C1 Db1] Eb1 [F1 C1]>")
  .struct("x [x x] x [x x] x [x x] ~ x")
  .s('sawtooth')
  .decay(.19).sustain(.01)
  .lpf(155)
  .gain(.76)
```

### 18. Undertow
Feels like it keeps dragging downward.

```js
note("<F1 Eb1 Db1 C1 [Db1 C1] Bb0 C1 Eb1>")
  .struct("x ~ x [x x] ~ x ~ [x x]")
  .s('sawtooth')
  .decay(.23).sustain(.01)
  .lpf(145)
  .gain(.75)
```

### 19. Triplet Teeth
Good for more frantic sections.

```js
note("<F1 [F1 Eb1 C1] F1 [Eb1 C1 Db1] C1 [Db1 Eb1 F1] Eb1>")
  .struct("x [x x x] ~ x [x x x] ~ x")
  .s('sawtooth')
  .decay(.16).sustain(0)
  .lpf(160)
  .gain(.77)
```

### 20. Collapse Return
Falls apart, then lands back on the root.

```js
note("<F1 Eb1 Db1 [C1 B0] C1 [Eb1 Db1] F1>")
  .struct("x ~ x [x x] ~ x [~ x] x")
  .s('sawtooth')
  .decay(.22).sustain(.01)
  .lpf(150)
  .gain(.74)
```

## Quick Tweaks

- Change the root by swapping `F1` or `F2` to another key center.
- Swap `'phrygian'` to `'minor'` if you want less evil and more standard dark trap.
- Raise `gain(...)` a little if the line feels too small, but keep headroom for drums.
- Lower `lpf(...)` for murkier sub weight, or raise it for more speaker bite.
- Add `.superimpose(add(.03))` when you want a wider, meaner bass tone.
