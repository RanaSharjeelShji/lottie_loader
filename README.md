# Lottie Loader

A Flutter library for displaying Lottie animations as loaders, with support for both local asset files and network-based Lottie animations. This package includes a customizable overlay and a simple controller to manage the visibility of the loader.

## Features

- Display Lottie animations from local assets or network URLs.
- Add an overlay with customizable color and opacity.
- Easily manage loader visibility using `LoaderController`.
- Configurable width and height for the loader animation.

## Installation

Add the following line to your `pubspec.yaml` under `dependencies`:

```yaml
dependencies:
  lottie: ^2.3.2
  lottie_loader: ^0.0.1
```
``` 
 final LoaderController _controller = LoaderController();
```
```  
            const LottieLoaderOverlay(
                  overlayOpacity: 0.6,
                  child: LoaderWidget(
                    height: 300,
                    width: 300,
                    lottieAnimationPath: 'assets/Animation - 1734834675750.json',
                    isNetwork: false,
                  ),
                ),
```

[![Learn More](https://github.com/RanaSharjeelShji/equal_space/blob/main/example/asset/banner.jpg?raw=true)](https://www.youtube.com/channel/UCnM_HfTRzP_XRdyYmfvTsGQ)
### Contributors


[![Learn More](https://yt3.googleusercontent.com/9A0wEzTcikgC4mV4t0wfGrEQUWuKqcPI_thgqBGkRlDpRSbMHwAnKoAl0HmEoVoikNs7CgCGpg=s176-c-k-c0x00ffffff-no-rj)](https://www.youtube.com/channel/UCnM_HfTRzP_XRdyYmfvTsGQ)
[![Learn More](https://github.com/RanaSharjeelShji/equal_space/blob/main/example/asset/image%20(4).png?raw=true)](https://github.com/RanaSharjeelShji)
- **Rana Sharjeel Ali Flutter Developer** 