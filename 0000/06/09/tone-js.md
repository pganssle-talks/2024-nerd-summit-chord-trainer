# Expanding the Chord Set

```bash
$ cd static_files/chords
$ ls *.mp3 | wc -l
```

```txt
81
```

```bash
$ list_mp3s *.mp3  # Custom function
```

```txt
acf_black_01.mp3            20K   1.4s
acf_black_02.mp3            12K   0.9s
acf_black_03.mp3            18K   1.3s
...
acf_black_09.mp3            12K   0.9s
ceg_red_01.mp3              28K   1.9s
ceg_red_02.mp3              16K   1.1s
...
ceg_red_09.mp3              25K   1.6s
cfa_yellow_01.mp3           18K   1.2s
...
cfa_yellow_09.mp3           15K   1.1s
dgh_green_01.mp3            23K   1.5s
...
hdg_blue_09.mp3             13K   0.9s
```

--

# Expanding the Chord Set

```js

function audio_file_elem(audio_file) {
    /* Cached function to create an <audio> element from a file struct. */
    if (audio_file.elem === null) {
        audio_file.elem = document.createElement("audio");
        audio_file.elem.classList.add("chord");
        audio_file.elem.controls = true;
        audio_file.elem.src = "static_files/chords/" + audio_file.filename;
        audio_file.elem.onended = () => {
            _AUDIO_PLAYED = true;
        };
    }

    return audio_file.elem;
}


function play_chord_files(color) {
    /* Play a random file corresponding to a chord with color `color`. */
    const audio_files = get_audio_files();  // Load files from disk
    const audio_file = random_elem(audio_files["mp3"].get(color));
    audio_file_elem(audio_file).play();
}
```

--

# Expanding the Chord Set: Tone.js

```bash
$ cd static_files/samples
$ ls
```

```text
piano_1
```

```bash
$ list_mp3s piano_1/*.mp3
```

```txt
piano_1/A3v11.mp3          297K  15.4s
piano_1/A4v11.mp3          252K  13.8s
piano_1/A5v11.mp3          188K  10.4s
piano_1/A6v11.mp3          108K   6.6s
piano_1/C3v11.mp3          292K  16.0s
piano_1/C4v11.mp3          282K  16.2s
piano_1/C4v5.mp3           393K  15.6s
piano_1/C5v11.mp3          247K  14.8s
piano_1/C6v11.mp3          126K   6.3s
piano_1/D#3v11.mp3         300K  16.3s
piano_1/D#4v11.mp3         260K  14.9s
piano_1/D#5v11.mp3         215K  13.3s
piano_1/F#3v11.mp3         298K  15.9s
piano_1/F#4v11.mp3         248K  14.4s
piano_1/F#5v11.mp3         194K  11.8s
```

--

# Expanding the Chord Set: Tone.js

```js
function start_tone() {
    if (!_TONE_STARTED) {
        Tone.start();
        Tone.loaded().then(() => _TONE_STARTED = true);
    }
}

function get_sampler(instrument) {
    if (TONE_SAMPLERS[instrument] === undefined) {
        const instrument_info = INSTRUMENT_INFO[instrument];
        if (instrument_info.legacy) {
            TONE_SAMPLERS[instrument] = get_sampler(instrument_info.fallback);
        } else {
            const sampler = new Tone.Sampler({
                urls: instrument_info.sample_files,
                release: 1,
                baseUrl: instrument_info.base_url,
            }).toDestination();
            TONE_SAMPLERS[instrument] = sampler;
            Tone.loaded().then(() => sampler.volume.value = 0);
        }
    }

    start_tone();
    return TONE_SAMPLERS[instrument];
}

```
<!-- .element: class="fragment disappearing-fragment nospace-fragment fade-out" data-fragment-index="0"-->

```js

function play_chord_tone(chord_name, duration) {
    const chord = CHORDS_TONE[chord_name];

    if (duration === null) {
        duration = random_duration();
    }
    Tone.loaded().then(() => {
        get_sampler(STATE.current_instrument).triggerAttackRelease(chord, duration);
    });
}
```
<br/>

<div class="fragment disappearing-fragment nospace-fragment fade-in"
     data-fragment-index="0">
<b><tt>_includes/variables.js</tt></b>


```js
// Jekyll-generated mapping object
const CHORDS_TONE = {
{{%- for color in site.data.chords -%}
    "{{ color.name }}": [{%-for chord in color.notes-%}"{{chord}}",{%-endfor-%}],
{%- endfor -%}
};

```

</div>
<br/>

<div class="fragment disappearing-fragment nospace-fragment fade-in"
     data-fragment-index="0">
<b><tt>_data/chords.yml</tt></b>

```yaml
- name: "red"
  display: "Red"
  chord: "C"
  notes: ["C4", "E4", "G4"]
- name: "yellow"
  display: "Yellow"
  chord: "F/C"
  notes: ["C4", "F4", "A4"]
...
```
</div>

<div style="margin-top: 2em">Tone.js: <a href="https://tonejs.github.io/">https://tonejs.github.io</a></div>

--

# Tone.js

## Downsides:

- Chords sound different on different devices / browsers
- Bigger files to load

## Benefits

- Can adjust chord characteristics easily:
    - Chord notes
    - Durations
- Can expand to include other instruments
- Could be used to generate single notes for a "pitch test" mode

<div style="margin-top:2em">Tone.js: <a href="https://tonejs.github.io/">https://tonejs.github.io</a></div>

--

# Demo
