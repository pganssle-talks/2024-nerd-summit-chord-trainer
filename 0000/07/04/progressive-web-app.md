# Introducing the Progressive Web App
<div style="display: flex; flex-direction: row; align-items: center; margin-top:1.5em">

<div style="width: 75%">

<b><tt>manifest.json</tt></b>

```json
{
    "name": "Chord Identification Method Trainer",
    "description": "An application for training children to have perfect pitch.",
    "icons": [
        {
            "src": "images/cim_logo_512.png",
            "type": "image/png",
            "sizes": "512x512"
        },
        {
            "src": "images/cim_logo_64.png",
            "type": "image/png",
            "sizes": "64x64"
        }
    ],
    "display": "fullscreen",
    "start_url": "../index.html"
}

```

</div>

<img src="images/cim_logo_512.png"
    style="height: 20dvh"
/>
</div>

--

<div style="display: flex; flex-direction: rows; align-items: center; justify-content:space-around; height: 80dvh">
<img src="images/pwa-install-app.png" style="max-height:100%; max-width: 30dvh">
<img src="images/pwa-install-installing.png" style="max-height:100%; max-width: 30dvh">
<img src="images/pwa-install-icon.png" style="max-height:100%; max-width: 40dvh">



--

# Introducing the Progressive Web App

<br/>

```js
// In the main app (cim.js)

if ("serviceWorker" in navigator) {
    navigator.serviceWorker.register("../sw.js").then(
        (registration) => {
            console.log("Service worker successfully registered.");
        },
        (error) => {
            console.error(`Service worker registration failed: ${error}`);
        }
    );

}

```

--

# Progressive Web App: File Cache

```js
const APP_CACHE = "cim-cache-v0";
let APP_ASSETS = null;

function get_static_files() {
    if (APP_ASSETS === null) {
        function get_instrument_files(instrument) {
            if (instrument.legacy) {
                return [];
            } else {
                return Object.values(instrument.sample_files).map(
                    (filename) => (instrument.base_url + filename));
            }
        }

        const instrument_files = Object.values(INSTRUMENT_INFO).flatMap(get_instrument_files);
        const audio_files = UNSORTED_AUDIO_FILES.map((file) => "static_files/chords/" + file);
        const extras = [
            "index.html",
            "js/cim.js",
            "assets/css/style.css",
            "assets/fonts/forkawesome-webfont.woff2?v=1.2.0"
        ]

        APP_ASSETS = [];
        APP_ASSETS = APP_ASSETS.concat(instrument_files);
        APP_ASSETS = APP_ASSETS.concat(audio_files);
        APP_ASSETS = APP_ASSETS.concat(extras);
    }

    return APP_ASSETS;
}
```

--

# Progressive Web App: Event Listener

```js
self.addEventListener("install", event => {
    event.waitUntil(
        (async () => {
            const cache = await caches.open(APP_CACHE);
            console.log("[Service Worker] Caching all: app and shell content");
            await cache.addAll(get_static_files());
        })(),
    );
});

self.addEventListener("activate", (e) => {
    console.log("[Service Worker] Claiming control");
    return self.clients.claim();
});

self.addEventListener("fetch", (e) => {
  e.respondWith(
    (async () => {
      const r = await caches.match(e.request);
      console.log(`[Service Worker] Fetching resource: ${e.request.url}`);
      if (r) {
        return r;
      }
      const response = await fetch(e.request);
      const cache = await caches.open(APP_CACHE);
      console.log(`[Service Worker] Caching new resource: ${e.request.url}`);
      cache.put(e.request, response.clone());
      return response;
    })(),
  );
});
```



