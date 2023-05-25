import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meetup_demo/app/view/pizza_detail_view.dart';
import 'package:meetup_demo/protos/generated/protos/pizza.pb.dart';
import 'package:meetup_demo/service/grcp_service.dart';

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
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final pizza = snapshot.data![index];
                      return PizzaDetailView(
                        pizza: pizza,
                      );
                    },
                  ),
                ),
                const Divider(),
                const SizedBox(height: 16),
              ],
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
    final pizzas = await GRPCService().loadPizzas();

    return pizzas;
  }
}
