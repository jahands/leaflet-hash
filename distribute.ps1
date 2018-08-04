bash -c "uglifyjs leaflet-hash.js --compress --mangle -o leaflet-hash.min.js"
$dest = "/assets/js/leaflet/plugins/leaflet-hash/$((Get-Content .\package.json|ConvertFrom-Json).version)/leaflet-hash.min.js"
rclone copyto leaflet-hash.min.js "b2:factoriomaps$dest"
Remove-Item leaflet-hash.min.js
Write-Output "https://factoriomaps.com$dest"
