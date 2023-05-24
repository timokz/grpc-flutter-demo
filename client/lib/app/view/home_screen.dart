import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meetup_demo/service/grpc_service.dart';
import 'package:meetup_demo/service/pizza_repo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        //ctor returns the singleton instance of GRPCService

        RepositoryProvider.value(value: PizzaRepo(grpcService: GRPCService())),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Go to Pizza Order Screen'),
            onPressed: () => context.go('/pizza_order'),
          ),
        ),
      ),
    );
  }
}
