import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meetup_demo/app/view/pizza_detail_view.dart';
import 'package:meetup_demo/protos/generated/protos/pizza.pb.dart';
import 'package:meetup_demo/service/grcp_service.dart';
import 'package:meetup_demo/service/pizza_repo.dart';

class PizzaOrderScreen extends StatefulWidget {
  const PizzaOrderScreen({super.key});

  @override
  _PizzaOrderScreenState createState() => _PizzaOrderScreenState();
}

class _PizzaOrderScreenState extends State<PizzaOrderScreen> {
  StreamSubscription<PizzaUpdateResponse>? _subscription;

  @override
  void initState() {
    super.initState();
  }

  Future<List<Pizza>> loadPizza() async {
    final pizzas = await PizzaRepo(grpcService: GRPCService()).loadPizzas();
    print('pizzas: $pizzas');
    return pizzas;
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza Order Screen'),
        leading: IconButton(
          onPressed: () => context.go('/'),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: FutureBuilder<List<Pizza>>(
        future: loadPizza(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final pizza = snapshot.data![index];
                return PizzaDetailView(
                  pizza: pizza,
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
