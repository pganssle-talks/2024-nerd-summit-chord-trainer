# Relative and Absolute Pitch

<div class="gallery two-high fragment disappearing-fragment fade-out" data-fragment-index="0">
    <div class="gallery-item">
        <img src="images/frequencies.png"
          />
    </div>
    <div class="gallery-item">
        <img src="images/frequencies_fft.png"
          />
    </div>
</div>

<img src="images/stock/swatches.png"
     class="fragment"
     data-fragment-index="0"
     >

Notes:

To put everyone on the same page, most people have what's called relative pitch — you can tell if one sound is higher or lower than another sound, but you cannot hear a sound and say, "Oh, that's a middle C" without a known reference pitch — that is why, for example, the stereotypical barbershop quartet will have someone blowing into a pitch pipe before they start singing — they know what note that's supposed to be, and they know where they should be singing relative to it.


In contrast, absolute pitch (also sometimes called perfect pitch), is when you can identify notes without the nee
d of a reference pitch.

To visually demonstrate this, you can see if you look at these three waveforms at the top, it's pretty easy to see which ones are higher and lower frequency than the others, but it would be pretty difficult to estimate the actual frequencies at a glance, but if you were to plot in the fourier domain, you can pretty easily see what frequency each one is just by looking at it.

In some ways I've heard absolute pitch described as perceiving sound more like the way most of us perceive color — you can look at a color and know that it's red or yellow or blue or something, you don't need to compare objects to swatches to determine how red or blue they are, you just look at it and know what color it is.

--

# Teaching Absolute Pitch to Children

<img src="images/study_abstract_00.png"
     class="screenshot splash">

<!--
     alt="A screenshot of the abstract of a paper in Psychology of Music from 2012. The title is: A longitudinal study of the process of acquiring absolute pitch: A practical report of training with the ‘chord identification method’

The author is Ayako Sakakibara from the Ichionkai Music School, Tokyo, Japan

The abstract is:

The purpose of this study was to investigate longitudinally the process of acquiring absolute pitch (AP). Twenty-four young children (aged 2 to 6 years) without AP were trained to acquire AP using Eguchi’s (1991) Chord Identification Method (CIM). All children were able to acquire AP (except two who ceased training). Results suggest that, at a minimum, children younger than 6 years old are capable of acquiring AP through intentional training. Furthermore, children’s errors observed during training suggested the transition of different strategies relying respectively on tone height and tone chroma. Initially, children identified chords using a strategy depending primarily on tone height, then gradually they began to attend to tone chroma to identify chords and this process ultimately led to acquisition of AP.">
-->

Notes:

I knew about perfect pitch and thought it might be cool to have, but I had always been under the impression that it was not something you could learn — either your brain processes sound this way or it doesn't. But then I came across a paper from 2012 purporting that it is easier to learn perfect pitch in childhood, with enough training. It comes from a music school in Japan called the Ichionkai Music School. They claim to have a 90% success rate using their method to train children between ages 2 and 6, and conveniently they lay out the method in the paper.

--

## Reasons for Skepticism

- Baseline credence for psychology research should be extremely low
- Study was performed by the Ichionkai Music School
- The dropout rate was ridiculously low for this method

<br/>
<br/>

<div class="fragment disappearing-fragment nospace-fragment fade-out" data-fragment-index="0">
<img src="images/replication_crisis_wikipedia_ss.png">
</div>

<div class="fragment disappearing-fragment nospace-fragment fade-in-and-out" data-fragment-index="0">
<blockquote style="border: 1px solid black">
<b>Twenty-two participants out of 24</b> were able to conduct the amount of daily practice needed for
the chord identification method, 4–5 sessions a day, almost every day throughout the period of
the training. Two participants stopped the training for personal reasons unrelated to the current
project. <b>The remaining 22 participants who continued the training were able to acquire AP.</b>
</blockquote>
</div>

<div class="fragment appear" style="margin-top:2em" data-fragment-index="1">

## Reasons to Try Anyway

- Probably no one is really trying to teach kids perfect pitch
- Critical period effects are probably real
- Total time commitment isn't high (though distributed in an annoying way)
    - ~75-150 hours over 1-2 years
- It can be a bonding experience

</div>


Notes:

- The study was performed by someone whose affiliation was "Ichionkai Music School". I cannot find anything else published by this person except another article about perfect pitch in which their affiliation is also the Ichionkai Music school. This shouldn't immediately disqualify them, but assuming they actually work for the school, it seems very unlikely that they would be publishing studies that do not match their assertions.

- One thing that is very fishy about the study to me is that in the paper they say that they recruited 24 students and told the parents that they could stop at any time, then taught them the method and followed their progress. They claim that 2 students dropped out, and the remaining 22 *all* acquired absolute pitch.

- This method, as you will soon see, involves quizzing 2-6 year olds *five times a day* for *several years*. I built an app implementing this method and my son is unusually conscientious about these sorts of things and I had a lot of trouble getting him to do it even 4 times a day. I gave this app to many people — including musicians who want to foster an interest in music in their children — and as far as I know no one I've sent it to has made a regular habit of using it. It strains my credibility to think that there is not some sort of huge selection effect in play, unless Japanese culture and patterns of life are very different with regards to deliberate and regimented practice in very young children.

