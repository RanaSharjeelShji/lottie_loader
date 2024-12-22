library lottie_loader;

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// Controller to manage the visibility of the loader.
class LoaderController extends ChangeNotifier {
  bool _isVisible = false;

  /// Indicates whether the loader is visible.
  bool get isVisible => _isVisible;

  /// Shows the loader by setting `_isVisible` to `true` and notifying listeners.
  void showLoader() {
    _isVisible = true;
    notifyListeners();
  }

  /// Hides the loader by setting `_isVisible` to `false` and notifying listeners.
  void hideLoader() {
    _isVisible = false;
    notifyListeners();
  }
}

/// Widget for displaying a Lottie animation loader with overlay settings.
class LottieLoaderOverlay extends StatelessWidget {
  final Widget child;
  final Color overlayColor;
  final double overlayOpacity;

  const LottieLoaderOverlay({
    Key? key,
    required this.child,
    this.overlayColor = Colors.black,
    this.overlayOpacity = 0.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned.fill(
          child: Container(
            color: overlayColor.withOpacity(overlayOpacity),
          ),
        ),
      ],
    );
  }
}

/// A widget to display the Lottie animation loader.
class LoaderWidget extends StatelessWidget {
  final String lottieAnimationPath;
  final bool isNetwork;
  final double width;
  final double height;

  const LoaderWidget({
    Key? key,
    required this.lottieAnimationPath,
    this.isNetwork = false,
    this.width = 100,
    this.height = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isNetwork
          ? Lottie.network(
              lottieAnimationPath,
              width: width,
              height: height,
            )
          : Lottie.asset(
              lottieAnimationPath,
              width: width,
              height: height,
            ),
    );
  }
}
