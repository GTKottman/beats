

// Halloween Theme — John Carpenter (5/4 time)

setcpm(26)

// right hand ostinato patterns: high-low-low high-low-low high-low step-low
let rhA = note("c#5 f#4 f#4 c#5 f#4 f#4 c#5 f#4 d5 f#4")   // intro & part 1 upper
let rhB = note("c5 f4 f4 c5 f4 f4 c5 f4 c#5 f4")            // part 1 lower
let rhC = note("b4 e4 e4 b4 e4 e4 b4 e4 c5 e4")             // part 2 upper
let rhD = note("a#4 d#4 d#4 a#4 d#4 d#4 a#4 d#4 b4 d#4")    // part 2 lower
let rhE = note("f#4 b3 b3 f#4 b3 b3 f#4 b3 g4 b3")          // part 3

// accent: high notes loud, low notes soft (10 eighth notes per bar)
let accent = "0.8 0.45 0.45 0.8 0.45 0.45 0.8 0.45 0.8 0.45"

// left hand: single note or chord held for a full bar
let lh = n => note(n).gain(0.5)

stack(
  // ——— right hand ———
  arrange(
    [7, rhA],                          // intro (7 bars, RH only)
    [2, rhA], [2, rhB],                // part 1
    [2, rhA], [2, rhB],                // part 1 repeat
    [2, rhC], [2, rhD],                // part 2
    [2, rhC], [2, rhD],                // part 2 repeat
    [4, rhE], [4, rhE], [1, rhE],      // part 3 x2 + interlude
    [4, rhA]                           // outro
  ).s("piano").gain(accent).sustain(0.5).room(0.4),

  // ——— left hand ———
  arrange(
    [7, silence],                                  // intro
    [1, lh("f#2")], [1, lh("a2")],                // part 1 upper
    [2, lh("[f2,a#2]")],                           // part 1 lower
    [1, lh("f#2")], [1, lh("a2")],                // part 1 repeat upper
    [2, lh("[f2,a#2]")],                           // part 1 repeat lower
    [1, lh("e2")], [1, lh("g2")],                 // part 2 upper
    [2, lh("[d#2,g#2]")],                          // part 2 lower
    [1, lh("e2")], [1, lh("g2")],                 // part 2 repeat upper
    [2, lh("[d#2,g#2]")],                          // part 2 repeat lower
    [1, lh("b1")], [1, lh("d2")],                 // part 3 (B → D → E → F#)
    [1, lh("e2")], [1, lh("f#2")],
    [1, lh("b1")], [1, lh("d2")],                 // part 3 repeat
    [1, lh("e2")], [1, lh("f#2")],
    [1, lh("b1")],                                 // interlude hit
    [4, silence]                                    // outro
  ).s("piano").sustain(2.5).room(0.4),

  // ——— the iconic 5/4 kick ———
  sound("bd*5").bank("RolandTR808").gain(0.3)
)
