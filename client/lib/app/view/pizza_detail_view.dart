import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetup_demo/app/order/pizza_detail_bloc.dart';
import 'package:meetup_demo/protos/generated/protos/pizza.pb.dart';

class PizzaDetailView extends StatefulWidget {
  const PizzaDetailView({
    required this.pizza,
    super.key,
  });

  final Pizza pizza;

  @override
  State<PizzaDetailView> createState() => _PizzaDetailViewState();
}

class _PizzaDetailViewState extends State<PizzaDetailView> {
  late PizzaDetailBloc _pizzaDetailBloc;

  @override
  void initState() {
    _pizzaDetailBloc = PizzaDetailBloc(widget.pizza);
    _pizzaDetailBloc.subscribeToPizzaUpdates();
    super.initState();
  }

  @override
  void dispose() {
    _pizzaDetailBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _pizzaDetailBloc,
      child: ListTile(
        leading: const Icon(Icons.local_pizza),
        title: Text(widget.pizza.name),
        subtitle: Text(widget.pizza.description),
        trailing: BlocBuilder<PizzaDetailBloc, PizzaDetailState>(
          builder: (context, state) {
            return IconButton(
              onPressed: () => _pizzaDetailBloc.add(IncrementQuantity()),
              icon: LayoutBuilder(
                builder: (context, constraints) {
                  final iconSize = constraints.maxHeight * 2;

                  return FittedBox(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () =>
                              _pizzaDetailBloc.add(IncrementQuantity()),
                          icon: const Icon(Icons.add),
                          iconSize: iconSize,
                        ),
                        Text(
                          '${state.quantity}',
                          style: const TextStyle(fontSize: 50), //demo purposes
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
