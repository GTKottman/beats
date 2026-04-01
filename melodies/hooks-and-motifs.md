# Hooks And Motifs

Paste the setup block into [strudel.cc](https://strudel.cc/) first, then swap in any melody below.

## Quick Setup

```js
setcpm(35) // 140 BPM in 4/4
```

## How To Build Hooks In Strudel

- Hooks usually win with fewer notes, not more.
- Repetition with one small change is stronger than random variation.
- Call-and-response shapes help a loop feel like a conversation.
- Use rhythmic contrast before adding more pitch movement.

## Core Templates

```js
"0 0 3 1"
  .scale('F4 minor')
  .note()
  .s('triangle')
  .decay(.12).sustain(.03)
  .gain(.14)
```

```js
"0 ~ 3 ~"
  .off(1/2, add(2))
  .scale('F4 phrygian')
  .note()
  .s('square')
  .decay(.1).sustain(.02)
  .gain(.13)
```

## Repeat With Variation

### 1. Four Word Hook
Simple and sticky.

```js
"0 0 3 1 0 0 4 1"
  .scale('F4 minor')
  .note()
  .struct("x ~ x ~ x ~ [x x] ~")
  .s('triangle')
  .decay(.11).sustain(.03)
  .gain(.14)
```

### 2. Turned Answer
Same idea, slightly darker second half.

```js
"0 2 3 2 0 2 4 1"
  .scale('F4 phrygian')
  .note()
  .struct("x ~ x ~ x ~ x [~ x]")
  .s('sawtooth')
  .decay(.1).sustain(.02)
  .gain(.15)
```

### 3. Hook Drop
Leaves a gap that helps the phrase hit harder.

```js
"0 3 ~ 1 0 ~ 4 ~"
  .scale('F4 minor')
  .note()
  .struct("x ~ x ~ x ~ x ~")
  .s('square')
  .decay(.09).sustain(.02)
  .gain(.14)
```

## Call And Response

### 4. Ask Then Bite
Front phrase asks, back phrase lands.

```js
"0 2 3 ~ 4 3 1 ~"
  .scale('F4 phrygian')
  .note()
  .struct("x ~ [x x] ~ x ~ x ~")
  .s('triangle')
  .decay(.12).sustain(.03)
  .gain(.14)
```

### 5. High Then Low
Good when the first half needs lift and the second half needs resolve.

```js
note("<F4 Ab4 C5 ~ Eb5 C5 Ab4 F4>")
  .struct("x ~ x ~ x ~ [x x] ~")
  .s('sawtooth')
  .decay(.12).sustain(.03)
  .gain(.15)
```

### 6. Window Reply
Leaves more space for vocals.

```js
"0 ~ 2 ~ 3 ~ 1 ~"
  .scale('F4 minor')
  .note()
  .struct("x ~ ~ x x ~ ~ x")
  .s('triangle')
  .decay(.12).sustain(.03)
  .gain(.13)
```

## Motif Expansion

### 7. One Shape Higher
A motif repeated one step up.

```js
"0 2 0 2 1 3 1 3"
  .scale('F4 dorian')
  .note()
  .struct("x ~ x ~ x ~ x ~")
  .s('triangle')
  .decay(.11).sustain(.03)
  .gain(.13)
```

### 8. Octave Mirror
Same contour, bigger emotion.

```js
"0 3 1 0"
  .off(1/2, add(12))
  .scale('F4 minor')
  .note()
  .struct("x ~ x [~ x]")
  .s('sawtooth')
  .decay(.1).sustain(.02)
  .gain(.14)
```

## Quick Tweaks

- Repeat the first 3 or 4 notes if you want the hook to feel more immediate
- Change only the last note for easy variation
- Use `.off(...)` for width, not for clutter
- If a motif feels weak, simplify the rhythm before changing the scale
