# Battle-testing the App

Son was very distracted by zooming the app way in, so...

<div class="fragment fade-in">

```html
<!-- Disable zoom -->
<meta name="viewport"
      content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
```

</div>

<br/>

<div class="fragment fade-in">

```javascript
function is_ios() {
  return [
    'iPad Simulator',
    'iPhone Simulator',
    'iPod Simulator',
    'iPad',
    'iPhone',
    'iPod'
  ].includes(navigator.platform)
  // iPad on iOS 13 detection
  || (navigator.userAgent.includes("Mac") && "ontouchend" in document)
}

// Disable zoom on iOS 10+ (normally I would be against this, but it's
// causing usability problems)
if (is_ios()) {
    document.addEventListener('gesturestart', function (e) {
        e.preventDefault();
    });
}
```

</div>

--

# Hacking the System

<img src="images/stock/hacker_kid.png"
     alt="A generated image of a kid in a hoodie sitting in a dark room working on a computer with green screen on black text"
     class="splash fragment disappearing-fragment nospace-fragment fade-out"
     data-fragment-index="0">

<video controls autoplay muted class="fragment disappearing-fragment nospace-fragment fade-in-and-out" data-fragment-index="0">
    <source src="videos/color_change_hack.webm"
            type="video/webm">
</video>

<video controls autoplay muted class="fragment nospace-fragment fade-in" data-fragment-index="1">
    <source src="videos/color_change_hack_fix.webm"
            type="video/webm">
</video>

Notes:

After a few months using the application, we got comfortable letting my son do practice by himself, and he was doing really well. Suspiciously well, in fact. I think the biggest clue was when he came out one day and had been able to get 100 right in a row, which was too big of a leap in ability.

As it turns out, he was exploiting a bug that I knew about but hadn't fixed yet (because the app was designed to be run by the adult, and I didn't think he'd have such a hacker spirit at this age) — if you changed the level, it kept the stats the same, you had to manually reset the stats for each session.

--

# Hacking the System: Part II

<video controls autoplay muted class="fragment disappearing-fragment nospace-fragment fade-out" data-fragment-index="0">
    <source src="videos/reset_hack.webm"
            type="video/webm">
</video>

<img src="images/v003-session-history-viewer.png"
     class="splash screenshot nospace-fragment fragment fade-in"
     data-fragment-index="0"
     alt="A screenshot of the 'Session History Viewer', which shows the stats for each
         recent session."/>

Notes:
