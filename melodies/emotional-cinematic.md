# Emotional Cinematic

Paste the setup block into [strudel.cc](https://strudel.cc/) first, then swap in any melody below.

## Quick Setup

```js
setcpm(30) // 120 BPM in 4/4
```

## How To Make Emotional Melodies In Strudel

- Tighter range feels intimate.
- Wider leaps feel bigger and more cinematic.
- Let the phrase breathe instead of filling every slot.
- Minor and dorian are useful when you want emotion without cartoon darkness.

## Core Templates

```js
"0 2 3 2 0"
  .scale('D4 minor')
  .note()
  .s('triangle')
  .decay(.18).sustain(.06)
  .room(.5)
  .gain(.15)
```

```js
"0"
  .off(1/3, add(2))
  .off(2/3, add(4))
  .scale('D4 dorian')
  .note()
  .s('sawtooth')
  .attack(.02).decay(.15).sustain(.04)
  .gain(.12)
```

## Intimate Lines

### 1. Quiet Hall
Narrow range for a verse or intro.

```js
"0 2 3 2 0 ~ 2 ~"
  .scale('D4 minor')
  .note()
  .struct("x ~ x ~ x ~ x ~")
  .s('triangle')
  .decay(.16).sustain(.05)
  .room(.45)
  .gain(.14)
```

### 2. Afterlight
Soft and suspended.

```js
note("<D4 F4 G4 F4 D4 A3 C4 D4>")
  .struct("x ~ [x x] ~ x ~ x ~")
  .s('triangle')
  .attack(.02).decay(.2).sustain(.05)
  .room(.55)
  .gain(.13)
```

### 3. Close Voice
Good under a lyric-heavy section.

```js
"0 ~ 1 2 ~ 1 0 ~"
  .scale('D4 dorian')
  .note()
  .struct("x ~ ~ x ~ x x ~")
  .s('sawtooth')
  .decay(.14).sustain(.04)
  .gain(.12)
```

## Lift Melodies

### 4. Open Sky
Wider intervals for a chorus lift.

```js
"0 3 5 7 5 3 2 0"
  .scale('D4 minor')
  .note()
  .struct("x ~ x ~ x ~ [x x] ~")
  .s('triangle')
  .attack(.02).decay(.18).sustain(.05)
  .room(.6)
  .gain(.15)
```

### 5. Silver Arc
A cinematic rise and return.

```js
note("<D4 F4 A4 C5 A4 F4 E4 D4>")
  .struct("x ~ x [x x] ~ x ~ x")
  .s('sawtooth')
  .attack(.02).decay(.16).sustain(.04)
  .room(.45)
  .gain(.14)
```

### 6. Last Window
Melancholy but still strong.

```js
"0 2 4 5 4 2 1 0"
  .scale('D4 dorian')
  .note()
  .struct("x ~ x ~ [x x] ~ x x")
  .s('triangle')
  .decay(.18).sustain(.05)
  .gain(.14)
```

## Quick Tweaks

- Swap `'minor'` to `'dorian'` for a little more lift
- Raise the root note if the melody feels buried
- Delete every other hit if you want more emotional space
- Add `.off(1/2, add(12))` for a faint octave echo
