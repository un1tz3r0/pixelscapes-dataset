# pixelscapes-dataset

Images scraped from [eboy.com](https://www.eboy.com/pool/~Pixorama/1?q=project) for training my own StyleGAN3 model, inspired by eBoyGAN project, for which the model seems to no longer be available :(.

Also includes a script randomcrops.py that generates random NxN cropped images fom the images in a source directory, choosing the source image randomly weighted by the relative pixel-area, so as to evenly sample all available pixels in the source directory


TODO:
- Add color-metric wighting/targets so as to produce datasets with evenly distributed HSV histograms
- Other weighting schemes/criteria for rejecting/choosing cropped images, including frequency distribution, largest connected component, maximum distance to morphological skeleton of certain colors (i.e. black line width), local neighborhood limits. 

