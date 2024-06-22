# pixelscapes-dataset

Images scraped from [eboy.com](https://www.eboy.com/pool/~Pixorama/1?q=project) for training [my own StyleGAN3](https://github.com/un1tz3r0/stylegan3.git) model, inspired by [eBoyGAN](https://braun.design/eBoyGAN) project, for which the model seems to no longer be available :(.

Also includes a [script](./randomcrops.py) that generates random NxN cropped images fom the images in a source directory, choosing the source image randomly weighted by the relative pixel-area, so as to evenly sample all available pixels in the source directory


TODO:
- Add color-metric wighting/targets so as to produce datasets with evenly distributed HSV histograms
- Other weighting schemes/criteria for rejecting/choosing cropped images, including frequency distribution, largest connected component, maximum distance to morphological skeleton of certain colors (i.e. black line width), local neighborhood limits.
- Multi-res/scaling, i.e. taking crops from upscaled 4x, upscaled 2x and original datasets. would be extra useful to have class labels associated with each scale too, so that training could include scale factor as a conditioning input (would require modifying the network architecture, but could be worthwhile)
- Segmentation, depth and normal mapping, but pixel perfect. Possibly using the full eboy database (transparent .pngs of objects, buildings and people that these are mostly composed of). Maybe use pix2pix or a GAN for this.
