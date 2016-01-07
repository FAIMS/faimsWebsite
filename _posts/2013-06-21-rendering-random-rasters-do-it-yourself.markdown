---
author: adela
comments: true
date: 2013-06-21 00:15:13+00:00
layout: post
slug: rendering-random-rasters-do-it-yourself
title: Rendering Random Rasters  - Do It Yourself
wordpress_id: 983
categories:
- News
---

You probably already know that the FAIMS app can render random geotifs (a geotiff is a scanned map or aerial image in .tiff or .tif format that has been georeferenced and has coordinates embedded within in). You may not know that you can prepare and load your rasters into the app yourself. The way to do it is to pick a geotif of your choosing and run the following line of code in your command line:

gdalwarp -t_srs EPSG:3785 -CO TILED=YES vk_09s.tif andesTest.tif

This script basically tells our app to tile and display the picture in Popular Visualisation CRS / Mercator projection. The last two names vk_09s.tif and andesTest.tif are merely original and target filenames, which you need to edit to suit your purposes.  This code transforms the geotif in a way that is easy to load and render in the FAIMS app.

Here is an example of an aerial photo converted to a basemap for an architectural survey in the Andes:

[![AndesRaster](http://www.fedarch.org/wordpress/wp-content/uploads//2013/06/AndesRaster-576x1024.png)](wp-content/uploads//2013/06/AndesRaster.png)

We are currently helping our partners in the Andes display all the imagery that they capture with the help of flying drones.

You can preload the app with a whole archive of your geotiffs ( provided your device has enough memory) and then choose which ones you want to display when in the field.  Make the most of the resources you have available!
