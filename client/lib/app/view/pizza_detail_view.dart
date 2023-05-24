import 'package:flutter/material.dart';
import 'package:meetup_demo/protos/generated/protos/pizza.pb.dart';

class PizzaDetailView extends StatelessWidget {
  const PizzaDetailView({
    required this.pizza,
    super.key,
  });
  final Pizza pizza;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.local_pizza),
      title: Text(pizza.name),
      subtitle: Text(pizza.description),
      trailing: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}
