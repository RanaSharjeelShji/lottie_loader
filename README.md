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
  lottie_loader:
    git:
      url: https://github.com/yourusername/lottie_loader.git
