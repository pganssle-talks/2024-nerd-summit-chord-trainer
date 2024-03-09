# Building an MVP

## Requirements:

1. Play the first few chords
2. Show colored flags

## Design constraints:

1. No login required
2. Easy to maintain and deploy
3. No backend
4. Cross-platform

## Approach:

1. Use an online keyboard to record audio files for the relevant chords
2. Build a static site with `jekyll` and host on GitHub Pages

--

# First pass

<div class="fragment disappearing-fragment fade-out" data-fragment-index="0">
    <img src="images/v000-mvp-yellow.png"
         class="screenshot splash"
         style="height: 75dvh"
         alt="A screenshot of a simple website with a dark background and two
              colored rectangles — a red one on the left and a yellow on the right.
              Beneath it is text that says 0/0 and a pulldown that says 'Yellow (CFA)'"
              />
</div>
<div class="gallery two-wide two-high fragment fade-in" data-fragment-index="0" >
    <div class="gallery-item">
        <img src="images/v000-mvp-blue.png"
             class="screenshot"
             alt="Same screenshot as before, but with three rectangles: red, yellow and blue, aligned in a single row"
                  />
    </div>
    <div class="gallery-item">
        <img src="images/v000-mvp-green.png"
             class="screenshot"
             alt="Same screenshot as before, but with five rectangles: red, yellow and blue, black and green aligned in a two rows, one row of 3 and one of 2."
                  />
    </div>
    <div class="gallery-item">
        <img src="images/v000-mvp-brown.png"
             class="screenshot"
             alt="Same screenshot as before, but with nine rectangles: red, yellow, blue, black, green, orange, purple, pink and brown, aligned in a 3x3 grid"
                  />
    </div>
    <div class="gallery-item">
        <img src="images/v000-mvp-red.png"
             class="screenshot"
             alt="Same screenshot as before, but with just one red rectangle."
                  />
    </div>
</div>

Notes:

- Found an online piano website and used a loopback device to record the chords
- Stored some information in `localStorage` to persist a session if the page is refreshed

**Feedback:**

- Needed a way to play chords manually
- Son had basically no motivation to pay attention or get correct answers

--

# Manual chord player

<img src="images/v001-trainer.png"
     class="splash screenshot"
     style="height: 75dvh"
     alt="A screenshot of a simple website with a dark background and two
          colored rectangles — a red one on the left and a yellow on the right.
          Beneath it is text that says 0/0 and a pulldown that says 'Yellow (CFA)'"
          />

--

# Need motivation? Bring in the cats

<div class="fragment disappearing-fragment nospace-fragment fade-out" data-fragment-index="0">
    <img src="images/v002-cat-faces.png"
         style="height: 75dvh"
         class="splash screenshot"
         alt="Screenshot of the application which now has a neutral cat emoji next to the progress numbers."
              />
</div>

<div class="gallery two-high nospace-fragment fragment fade-in" data-fragment-index="0">
<div class="gallery-item">
    <img src="images/v002-cat-hearts.png" class="screenshot"/>
</div>
<div class="gallery-item">
    <img src="images/v002-cat-eek.png" class="screenshot"/>
</div>
</div>

--

# Need motivation? Bring in the cats

<div class="gallery two-wide two-high">
    <div class="gallery-item">
        <img src="images/v002-cat-faces-0-happy.png"
             class="screenshot"
        />
    </div>
    <div class="gallery-item">
        <img src="images/v002-cat-faces-1-neutral.png"
             class="screenshot"
             />
    </div>
    <div class="gallery-item">
        <img src="images/v002-cat-faces-2-mad.png"
             class="screenshot"
        />
    </div>
    <div class="gallery-item">
        <img src="images/v002-cat-faces-3-sad.png"
             class="screenshot"
             />
    </div>
<div>

--

# Color-coded Done Indicator

<img src="images/v003-done-indicator.png"
     class="splash screenshot fragment disappearing-fragment nospace-fragment fade-out"
     style="height: 75dvh"
     data-fragment-index="0"
          />

<img src="images/v003-done-indicator-perfect-score.png"
     class="splash screenshot fragment fade-in"
     style="height: 75dvh"
     data-fragment-index="0"
          />

--

# Demo
