<?php

function space($str, $step, $reverse = false)
{

    if ($reverse)
        return strrev(chunk_split(strrev($str), $step, ' '));

    return chunk_split($str, $step, ' ');
}

?>