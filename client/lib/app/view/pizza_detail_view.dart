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
    final bloc = PizzaDetailBloc(widget.pizza);

    return BlocProvider(
      create: (_) => bloc,
      child: ListTile(
        leading: const Icon(Icons.local_pizza),
        title: Text(widget.pizza.name),
        subtitle: Text(widget.pizza.description),
        trailing: BlocBuilder<PizzaDetailBloc, PizzaDetailState>(
          bloc: bloc,
          builder: (context, snapshot) {
            return IconButton(
              onPressed: () => bloc.add(IncrementQuantity()),
              icon: LayoutBuilder(
                builder: (context, constraints) {
                  return FittedBox(
                    child: Row(
                      children: [
                        const Icon(Icons.add),
                        Text('Quantity: ${bloc.pizza.quantity}'),
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
