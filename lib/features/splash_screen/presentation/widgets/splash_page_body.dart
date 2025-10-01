import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/config/app_text_style.dart';
import 'package:movies_app/core/helper/assets.dart';
import 'package:movies_app/core/routing/page_name.dart';

class SplashPageBody extends StatefulWidget {
  const SplashPageBody({super.key});

  @override
  State<SplashPageBody> createState() => _SplashPageBodyState();
}

class _SplashPageBodyState extends State<SplashPageBody>
    with TickerProviderStateMixin {
  late AnimationController _imageAnimationController;
  late Animation<Offset> _imageAnimation;
  late AnimationController _textAnimationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    _initImageAnimation();
    _initTextAnimation();
    _startAnimationsAndNavigate();
  }

  @override
  void dispose() {
    _imageAnimationController.dispose();
    _textAnimationController.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  void _initImageAnimation() {
    _imageAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _imageAnimation =
        Tween<Offset>(begin: const Offset(0, -5), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _imageAnimationController,
            curve: Curves.bounceOut,
          ),
        );
  }

  void _initTextAnimation() {
    _textAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_textAnimationController);
  }

  void _startAnimationsAndNavigate() {
    _imageAnimationController.forward().whenComplete(() {
      _textAnimationController.forward().whenComplete(() {
        Future.delayed(const Duration(milliseconds: 800), () {
          if (mounted) {
            context.go(PageName.login);
          }
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildAnimatedImage(),
          const SizedBox(height: 10),
          _buildAnimatedText(),
        ],
      ),
    );
  }

  Widget _buildAnimatedImage() {
    return SlideTransition(
      position: _imageAnimation,
      child: Image.asset(Assets.iconsPopcorn),
    );
  }

  Widget _buildAnimatedText() {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Text(
        "Movies App",
        style: AppTextStyle.semiBold28(context).copyWith(color: Colors.white),
      ),
    );
  }
}
