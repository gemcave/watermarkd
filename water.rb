require 'mini_magick'

img = MiniMagick::Image.open("pic.jpg")

img.draw 'image Over 0,0 0,0 "logo.png"'

img.combine_options do |i|
	i.draw 'text 100,80 "SKLADCHIK"'
	i.pointsize 100
	i.fill("#FFFFFF")
end

img.write("watermarked_image.jpg")