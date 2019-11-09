require 'mini_magick'

img = MiniMagick::Image.open("pic.jpg")

# 0,0 0,0 = add the watermark at coordinates: x, y, set watermark size to auto with 0,0
img.draw 'image Over 0,0 0,0 "logo.png"'
img.combine_options do |i|
	i.draw 'text 100,80 "SKLADCHIK"'
	i.pointsize 100
	i.fill("#FFFFFF")
end

img.write("watermarked_image.jpg")