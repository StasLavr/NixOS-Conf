
vol=$(wpctl get-volume "@DEFAULT_AUDIO_SINK@")
vol=${vol#* }
vol=$(echo "$vol" | tr -d ".")
while [[ ${vol:0:1} == "0" ]]; do vol=${vol:1}; done
TEXT="Volume: ${vol}%"
notify-send \
    --app-name sway \
    --expire-time 800 \
    --hint string:x-canonical-private-synchronous:volume \
    --hint "int:value:$vol" \
    --hint "int:transient:1" \
    -i audio-volume-high \
    "${TEXT}"