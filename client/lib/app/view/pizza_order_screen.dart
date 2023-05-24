import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meetup_demo/service/grpc_service.dart';
import 'package:models/models.dart';

class PizzaOrderScreen extends StatelessWidget {
  const PizzaOrderScreen({super.key});

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
                return ListTile(
                  leading: const Icon(Icons.local_pizza),
                  title: Text(pizza.name),
                  subtitle: Text(pizza.description),
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

  Future<List<Pizza>> loadPizza() async {
    final jsonString = await File('assets/sample_data.json').readAsString();
    print(jsonString);
    final jsonList = jsonDecode(jsonString);
    final pizzaList = jsonList.map(Pizza.fromJson).toList();

    return pizzaList;
    final pizzas = await GRPCService().loadPizzas();
    return pizzas;
  }
}
