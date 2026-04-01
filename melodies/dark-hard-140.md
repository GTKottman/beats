# Dark Hard 140

Paste the setup block into [strudel.cc](https://strudel.cc/) first, then swap in any melody below.

## Quick Setup

```js
setcpm(35) // 140 BPM in 4/4
```

## How To Make Hard Melodies In Strudel

- Keep the note count low so the line feels sharp instead of busy.
- Phrygian and minor usually hit harder than brighter scales.
- Short motifs leave more room for 808 and drums.
- Rhythmic shape matters as much as pitch shape.

## Core Templates

```js
"0 ~ 3 [1 0]"
  .scale('F4 phrygian')
  .note()
  .s('sawtooth')
  .decay(.12).sustain(.03)
  .gain(.18)
```

```js
"0"
  .off(1/4, add(3))
  .off(1/2, add(7))
  .scale('F4 minor')
  .note()
  .s('square')
  .decay(.1).sustain(.02)
  .gain(.14)
```

## Knife Hooks

### 1. Horn Cut
Short and mean. Good for a lead stab layer.

```js
"0 ~ 3 1 ~ 0 4 ~"
  .scale('F4 phrygian')
  .note()
  .struct("x ~ x [~ x] ~ x x ~")
  .s('sawtooth')
  .decay(.1).sustain(.02)
  .cutoff(2200)
  .gain(.16)
```

### 2. Iron Reply
Works as a chorus answer phrase.

```js
"0 0 ~ 1 3 ~ 1 ~"
  .scale('F4 minor')
  .note()
  .struct("x ~ [x x] ~ x ~ x ~")
  .s('square')
  .decay(.09).sustain(.02)
  .gain(.15)
```

### 3. Razor Step
Rigid and mechanical.

```js
"0 1 0 4"
  .scale('F4 phrygian')
  .note()
  .struct("x(5,8,1)")
  .s('sawtooth')
  .decay(.08).sustain(.01)
  .gain(.14)
```

## Pressure Lifts

### 4. Siren Rise
Use for a pre or late-bar lift.

```js
"0 1 3 4 7"
  .scale('F4 phrygian')
  .note()
  .struct("x ~ x ~ [x x] ~ x ~")
  .s('triangle')
  .attack(.01).decay(.16).sustain(.03)
  .room(.25)
  .gain(.15)
```

### 5. Upper Threat
Adds height without going cheerful.

```js
note("<F4 Ab4 C5 Db5 C5 Ab4 F4 Eb4>")
  .struct("x ~ x [x x] ~ x ~ x")
  .s('sawtooth')
  .decay(.11).sustain(.02)
  .cutoff(2600)
  .gain(.17)
```

### 6. Bent Window
Good for a tense repeated loop.

```js
"0 ~ 4 ~ 3 [1 0] ~"
  .scale('F4 locrian')
  .note()
  .struct("x ~ ~ x ~ [x x] x ~")
  .s('square')
  .decay(.1).sustain(.01)
  .gain(.14)
```

## Quick Tweaks

- Swap `'phrygian'` to `'minor'` for a less evil version
- Drop everything one octave if the lead is too bright
- Add `.off(1/8, add(12))` if you want a sharper top layer
- Remove some hits from `struct(...)` if vocals need more space
