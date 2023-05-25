import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meetup_demo/app/view/pizza_detail_view.dart';
import 'package:meetup_demo/protos/generated/protos/pizza.pb.dart';
import 'package:meetup_demo/service/grcp_service.dart';

class PizzaOrderScreen extends StatefulWidget {
  const PizzaOrderScreen({super.key});

  @override
  _PizzaOrderScreenState createState() => _PizzaOrderScreenState();
}

class _PizzaOrderScreenState extends State<PizzaOrderScreen> {
  Stream<PizzaUpdateResponse>? _pizzaUpdatesStream;
  StreamSubscription<PizzaUpdateResponse>? _subscription;
  List<Pizza> _pizzas = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _subscribeToPizzaUpdates();

    _loadPizza();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  Future<void> _loadPizza() async {
    try {
      final pizzaStream = await GRPCService().loadPizzas();

      print('pizzaStream: $pizzaStream');
      await pizzaStream!.isEmpty
          .then((value) => print('pizzaStream.isEmpty: $value'));

      pizzaStream.listen(
        (pizzaListResponse) {
          setState(() {
            _pizzas = pizzaListResponse.pizzas;
            print('pizzas: $_pizzas');
            _isLoading = false;
          });
        },
        onError: (error) {
          print('error: $error');
          setState(() {
            _isLoading = false;
          });
        },
      );
    } catch (e) {
      print('error: $e');

      setState(() {
        _isLoading = false;
      });
    }
  }

  void _subscribeToPizzaUpdates() {
    final request = PizzaUpdateRequest();
    _pizzaUpdatesStream =
        GRPCService().subscribeToPizzas(request).asBroadcastStream();
    _subscription = _pizzaUpdatesStream?.listen(
      (update) {
        print('update: $update');
      },
      onError: (error) {
        print('error: $error');
      },
    );
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
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _pizzas.length,
              itemBuilder: (context, index) {
                final pizza = _pizzas[index];
                return PizzaDetailView(pizza: pizza);
              },
            ),
    );
  }
}
