import 'package:flutter/material.dart';
import 'package:lottie_loader/lottie_loader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lottie Loader Example',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LoaderController _controller = LoaderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lottie Loader Example')),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return Stack(
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    _controller.showLoader();
                    await Future.delayed(const Duration(seconds: 3));
                    _controller.hideLoader();
                  },
                  child: const Text('Show Loader'),
                ),
              ),
              if (_controller.isVisible)
                const LottieLoaderOverlay(
                  overlayOpacity: 0.6,
                  child: LoaderWidget(
                    height: 300,
                    width: 300,
                    lottieAnimationPath: 'assets/Animation - 1734834675750.json',
                    isNetwork: false,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
