# Creating map

View SVG in browser and print to PDF with A0 size.

then:

`gs -sDEVICE=png16m -r600 -o output.png input.pdf`

## Interactive map at:

- https://dhammacharts.org/map/map.html?n=images/NT.png

## Simplify map at:

- https://dhammacharts.org/map/m.html?n=images/4NT2.png
- https://dhammacharts.org/map/m.html?n=images/parallels2.png

# Tiling

` vips dzsave 'images/4NT.png'  'tiles/4NT'  --layout google --centre --suffix .png --tile-size 256 --vips-progress ` 

to create tiles

`file imageName.png` will give you the size of the original image

Use the script to generate tiles and add the link below

## Tiled map at:

- https://dhammacharts.org/map/w-t.html?n=tiles/budDict&w=14034&h=14030
- https://dhammacharts.org/map/m-t.html?n=tiles/4NT&w=7170&h=7170
- https://dhammacharts.org/map/m-t.html?n=tiles/4NT2&w=7170&h=7170
- https://dhammacharts.org/map/w-t.html?n=tiles/parallels2&w=5500&h=5504
- https://dhammacharts.org/map/m-t.html?n=tiles/parallels&w=9933&h=14042
- https://dhammacharts.org/map/m-t.html?n=tiles/parallels3&w=19866&h=28084
