import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetup_demo/app/order/pizza_detail_bloc.dart';
import 'package:meetup_demo/protos/generated/protos/pizza.pb.dart';

class PizzaDetailView extends StatelessWidget {
  const PizzaDetailView({
    required this.pizza,
    super.key,
  });
  final Pizza pizza;

  @override
  Widget build(BuildContext context) {
    final bloc = PizzaDetailBloc(pizza);

    return BlocProvider(
      create: (_) => bloc,
      child: ListTile(
        leading: const Icon(Icons.local_pizza),
        title: Text(pizza.name),
        subtitle: Text(pizza.description),
        trailing: StreamBuilder<int>(
          builder: (context, snapshot) {
            return IconButton(
              onPressed: () => bloc.add(IncrementQuantity()),
              icon: Row(
                children: [
                  const Icon(Icons.add),
                  Text('${snapshot.data ?? 0}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
