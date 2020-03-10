# it3038c-scripts

First you have to create a virtual Enviroment in python and call it something. Here is the code to do so.

virtualenv ~/venv/pillow
Source ~/venv/(the name you called the folder)/bin/activate

Second you have to install pillow 

type pip install pillow

Here are some different thing you can do in pillow but first you have to load the image
from PIL import Image, Image Filter
Try:
orginal = image.open(filename)

This script will get the size of the image for you
print "Your image is"
print:(original.format, original.size)


here is how to blur an image 
from PIL import Image, Image Filter
blurred = orignal.filter(ImageFilter.BLUR)


