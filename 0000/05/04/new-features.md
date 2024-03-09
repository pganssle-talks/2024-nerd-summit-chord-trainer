# Profiles

<div class="gallery two-wide">
<div class="gallery-item">
    <img src="images/v003-profile-picker-unselected.png"
         class="splash screenshot"/>
</div>

<div class="gallery-item">
    <img src="images/v003-profile-picker-selected.png"
         class="splash screenshot"/>
</div>
</div>

<img src="images/v003-profile-editor.png"
     class="splash screenshot nospace-fragment fragment disappearing-fragment fade-out"
     data-fragment-index="0"
     />

<img src="images/v00x-profile-editor-current.png"
     class="splash screenshot fragment fade-in"
     data-fragment-index="0"
     />

--

# Adaptive mode

### Random choice weights are adjusted based on the confusion matrix:

`$$ c_i = \left(\Sigma_{k} M_{i,k}\right) \cdot \left(M_{i,i} + w_w\cdot\left(\Sigma_{k\neq i}M_{i,k}\right) + w_m\cdot\left(\Sigma_{k\neq i}M_{k,i}\right)\right) $$`

<table>
<tr>
    <td>$c_i$</td>
    <td>Chance of selecting color $i$</td>
</tr>
<tr>
    <td>$M_{i,k}$</td>
    <td>Number of times $i$ was selected when $k$ was the correct answer.</td>
</tr>
<tr>
    <td>$w_w$</td>
    <td>Weight associated with being wrong when presented with a given color</td>
</tr>
<tr>
    <td>$w_m$</td>
    <td>Weight associated with choosing a given color when presented with a different color</td>
</tr>
</table>
<br/><br/>

### Constraints added and vector is normalized iteratively

--

<table style="border: none">
<tr>
    <td style="border-bottom: none"><img class="splash" src="images/adaptive_example_cm_0.png"></td>
    <td style="border-bottom: none"><img class="splash" src="images/adaptive_example_pie_0.png"></td>
</tr>
<tr>
    <td>
        <img class="splash fragment disappearing-fragment fade-out" data-fragment-index="0" src="images/adaptive_example_cm_2.png">
        <img class="splash fragment nospace-fragment fade-in" data-fragment-index="0" src="images/adaptive_example_cm_1.png">
    </td>
    <td>
        <img class="splash fragment disappearing-fragment fade-out" data-fragment-index="0" src="images/adaptive_example_pie_2.png">
        <img class="splash fragment nospace-fragment fade-in" data-fragment-index="0" src="images/adaptive_example_pie_1.png">
    </td>
</tr>
</table>
