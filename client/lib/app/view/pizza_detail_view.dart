// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:meetup_demo/protos/generated/protos/pizza.pb.dart';

class PizzaDetailView extends StatelessWidget {
  final Pizza pizza;
  const PizzaDetailView({
    required this.pizza,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.local_pizza),
      title: Text(pizza.name),
      subtitle: Text(pizza.description),
    );
  }
}
