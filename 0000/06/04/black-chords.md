# Black Chords

<img src="images/gh_issue_08_black_chords.png"
     class="splash"/>

Notes:

--

<style>
table.email {
    width: 60dvw;
    font-size: 0.8em;
    background-color: #f4f4f4;
}

table.email tr.body {
    font-size: 1.2em;
}

table.email tr.body td {
    padding-top: 1em;
}

table.email tr.recipient th,
table.email tr.recipient td
{
    border: none;
}

table.email tr th {
    width: 10%;
}

table.email tr th {
    font-weight: bold;
}
</style>

<table class="email">
    <tr>
    </tr>
    <tr class="recipient">
        <th>To</th>
        <td>paul@...</td>
    </tr>
    <tr class="subject">
        <th>Subject</th>
        <td>Chord Identification Method project</td>
    </tr>
    <tr class="body">
        <td colspan="2">
Hello Paul,<br/>

I am writing as a big fan of your Chord Identification Method project -- forgive the long email. As some background, I had been using the Eguchi method with my 5 year old daughter for <span class="fragment disappearing-fragment fade-out" data-fragment-index="0">\~8 months</span><span class="fragment nospace-fragment appear" style="text-decoration:underline; text-decoration-color: red; text-decoration-thickness: 3px; font-weight:bold;" data-fragment-index="0">~8 months</span>  alternating between the keyboard and a crude app I built using a soundboard builder app (screenshot attached). I was considering building a commercial version and had mocked up some (probably too) complex wireframes with some gaming elements, when I stumbled on your project. You mentioned somewhere that you were "no UX guy," but as a product manager, I was really impressed by how you stripped the UX down to the perfect set of critical components including the emoji cat reactions.
        </td>
    </tr>
</table>
<br/>

<div class="fragment appear" data-fragment-index="0" style="font-size: 3rem; font-weight: bold">Project was only 4 months old at the time!</div>

--

# Black Chord Implementation

<div style="height: 15dvh">
<ul>
<li>Notes are called out by name, but the names don't matter</li>
<li class="fragment appear" data-fragment-index="0">Colors are assigned to the black chords, <i>but only the main sequence ones</i></li>
</ul>
</div>

<img src="external-images/eguchi-note-names-us.png"
    class="fragment disappearing-fragment nospace-fragment fade-out"
    style="max-height: 40dvh"
    data-fragment-index="0"
    />

<img src="external-images/eguchi-black-chords-us.png"
    class="fragment fade-in"
    style="max-height: 60dvh"
    data-fragment-index="0"
    />

--

<style>
table.black-chord-colors td.color-bg {
    width: 12dvw;
}

table.black-chord-colors tr {
    height: 12dvh;
}

table.black-chord-colors th {
    text-align: center;
}

table.black-chord-colors td {
    text-align: center;
}
</style>

<table class="black-chord-colors">
<tr>
    <th>Notes</th>
    <th>Name</th>
    <th colspan="2">Color (Eguchi)</th>
    <th colspan="2">Color (App)</th>
</tr>
<tr>
    <td class="chord-notes">A C♯ E</td>
    <td class="chord-name">A Major</td>
    <td class="chord-color-name">黄緑 - Chartruse</td>
    <td class="color-bg" style="background-color:#cbff00"></td>
    <td class="chord-color-name">Gray</td>
    <td class="color-bg" style="background-color:gray"></td>
</tr>
<tr>
    <td class="chord-notes">D F♯ A</td>
    <td class="chord-name">D Major</td>
    <td class="chord-color-name">肌色 - "Skin Color"</td>
    <td class="color-bg" style="background-color:#ffdebf"></td>
    <td class="chord-color-name">Tan</td>
    <td class="color-bg" style="background-color:#f0e68c"></td>
</tr>
<tr>
    <td class="chord-notes">E G♯ B</td>
    <td class="chord-name">E Major</td>
    <td class="chord-color-name">藤色 - Grey-blue</td>
    <td class="color-bg" style="background-color:#b3bcff"></td>
    <td class="chord-color-name">Light Green</td>
    <td class="color-bg" style="background-color:#7FFF00"></td>
</tr>
<tr>
    <td class="chord-notes">B♭ D F</td>
    <td class="chord-name">B♭ Major</td>
    <td class="chord-color-name">灰色 - Ash</td>
    <td class="color-bg" style="background-color:#595959"></td>
    <td class="chord-color-name">Light Purple / Lilac</td>
    <td class="color-bg" style="background-color:#DCD0FF"></td>
</tr>
<tr>
    <td class="chord-notes">E♭ G B♭</td>
    <td class="chord-name">E♭ Major</td>
    <td class="chord-color-name">水色 - Water</td>
    <td class="color-bg" style="background-color:#b3f8ff"></td>
    <td class="chord-color-name">Sky Blue</td>
    <td class="color-bg" style="background-color:#87CEFA"></td>
</tr>
</table>

Notes:

黄緑 = kimidori → kiiro (yellow) + midori (blue)
Gray = GrAy major

肌色 - hadairo

藤色 - fujiiro
Green = GrEen major (color is actually chartruse!)

灰色 = haiiro

水色 = mizuiro

--

<img src="images/v004-all-colors-no-annotations.png"
    class="splash screenshot fragment disappearing-fragment fade-out nospace-fragment"
    data-fragment-index="0"
/>
<img src="images/v004-all-colors-letters-only.png"
    class="splash screenshot fragment disappearing-fragment fade-in-and-out nospace-fragment"
    data-fragment-index="0"
/>
<img src="images/v004-all-colors-shapes.png"
    class="splash screenshot fragment disappearing-fragment fade-in-and-out nospace-fragment"
    data-fragment-index="1"
/>
<img src="images/v004-all-colors-shapes-and-letters.png"
    class="splash screenshot fragment disappearing-fragment fade-in-and-out nospace-fragment"
    data-fragment-index="2"
/>
<img src="images/v004-pink-shapes-and-letters.png"
    class="splash screenshot fragment disappearing-fragment fade-in-and-out nospace-fragment"
    data-fragment-index="3"
/>
