# Strudel Melodies Folder

This folder is a reusable melody library for Strudel, built to match the style of your existing bass and beat packs.

## Start Here

- Use these files as snippet packs, not full songs.
- Copy one melody into your Strudel patch, then shape the synth, rhythm, and octave to fit the beat.
- If your beat is in 4/4, convert BPM to Strudel with `setcpm(BPM / 4)`.

## Common Tempo Examples

```js
setcpm(35) // 140 BPM in 4/4
setcpm(30) // 120 BPM in 4/4
setcpm(22.5) // 90 BPM in 4/4
```

## How To Choose A Pack

- `dark-hard-140.md`: short, aggressive motifs for hard trap, rage, and industrial ideas
- `emotional-cinematic.md`: narrower intimate lines plus bigger lift melodies
- `hooks-and-motifs.md`: memorable phrases, answer lines, and repeat-with-variation ideas

## Melody Building Blocks

- `note("F4 Ab4 C5")` for exact notes
- `"0 2 4 2".scale('F4 minor').note()` for scale-degree writing
- `.struct("x ~ x [~ x]")` for rhythmic phrasing
- `.off(...)` to build stacked or echoed interval shapes
- Smaller range feels tighter and more intimate
- Wider leaps feel bigger and more anthemic

## Quick Theory Moves

- Change the root by swapping `F4`, `D4`, or any other tonic note
- Swap `'minor'` to `'phrygian'` for more tension
- Use fewer notes for a stronger hook
- Raise the octave for lift, or drop it for a moodier verse line
- If the melody is fighting the vocal, add more gaps instead of more notes
