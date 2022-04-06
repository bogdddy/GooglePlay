<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
<?php

$app = \App\Models\App::find(1);
$history = \App\Models\History::where('package', $app->google_play_id)->first();

$array = json_decode($history->dataInstalls);
?>
<div id="myfirstchart" style="height: 250px;"></div>
<script>
    new Morris.Line({
        // ID of the element in which to draw the chart.
        element: 'myfirstchart',
        // Chart data records -- each entry in this array corresponds to a point on
        // the chart.
        data: [
            <?php
                foreach ($array as $key => $value) {
                    echo "{dia: '" . implode('-', array_reverse(explode('-', $key))) . "' , installs: " . $value . "},";
                }
            ?>
        ],
        // The name of the data record attribute that contains x-values.
        xkey: ['dia'],
        // A list of names of data record attributes that contain y-values.
        ykeys: ['installs'],
        // Labels for the ykeys -- will be displayed when you hover over the
        // chart.
        labels: ['Installs']
    });
</script>
