import 'package:flutter/material.dart';

class AvatarAnimation extends StatefulWidget {
  const AvatarAnimation({super.key});

  @override
  _AvatarAnimationState createState() => _AvatarAnimationState();
}

class _AvatarAnimationState extends State<AvatarAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _rotateAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotateAnimationAvatar;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(1, 0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _rotateAnimation = Tween<double>(
      begin: 0,
      end: 2 * 3.14,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _rotateAnimationAvatar = Tween<double>(
      begin: 0,
      end: 0, // 0.1 * 2 * 3.14 //, only use when Simon needs spinning
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _scaleAnimation = Tween<double>(
      begin: 1,
      end: 1.5,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      })
      ..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _scaleAnimation,
              child: RotationTransition(
                turns: _rotateAnimationAvatar,
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/simong_avatar.png'),
                  radius: 64,
                ),
              ),
            ),
            const SizedBox(width: 16),
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _rotateAnimation.value,
                  child: child,
                );
              },
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: const Icon(
                  Icons.local_pizza,
                  color: Colors.red,
                  size: 64,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
