import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meetup_demo/app/view/components/avatar_animation.dart';

class PostOrderScreen extends StatefulWidget {
  const PostOrderScreen({super.key});

  @override
  State<PostOrderScreen> createState() => _PostOrderScreenState();
}

class _PostOrderScreenState extends State<PostOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        leading: IconButton(
          onPressed: () => context.go('/'),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(child: AvatarAnimation()),
            ),
          ],
        ),
      ),
    );
  }
}
