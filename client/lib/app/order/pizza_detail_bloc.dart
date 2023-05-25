import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meetup_demo/protos/generated/protos.dart';
import 'package:meetup_demo/service/grcp_service.dart';
import 'package:meetup_demo/service/pizzeria_interface.dart';

class PizzaDetailBloc extends Bloc<PizzaDetailEvent, PizzaDetailState> {
  PizzaDetailBloc(this.pizza) : super(PizzaDetailState(quantity: 1)) {
    subscribeToPizzaUpdates();
    on<PizzaDetailEvent>((event, emit) {
      if (event is IncrementQuantity) {
        final newQuantity = state.quantity + 1;
        emit(PizzaDetailState(quantity: newQuantity));
      } else if (event is UpdatePizzaQuantity) {
        final newQuantity = event.quantity;
        emit(PizzaDetailState(quantity: newQuantity));
      }
    });
  }
  final Pizza pizza;
  final PizzeriaInterface _grpcService = GRPCService();
  late StreamSubscription<PizzaUpdateResponse> _updateSubscription;

  Stream<PizzaUpdateRequest> get pizzaUpdateStream =>
      _updateSubscription as Stream<PizzaUpdateRequest>;

  void subscribeToPizzaUpdates() {
    final request = PizzaUpdateRequest(id: pizza.id);
    _updateSubscription = _grpcService.subscribeToPizzas(request).listen(
      (update) {
        if (update.pizza.id == pizza.id) {
          add(UpdatePizzaQuantity(update.pizza.quantity));
        }
      },
      onError: (error) {
        log('Error receiving pizza update: $error');
      },
    );
  }

  @override
  void add(PizzaDetailEvent event) {
    if (event is IncrementQuantity) {
      final newQuantity = state.quantity + 1;

      final request = _grpcService.updatePizzaQuantity(
        PizzaUpdateRequest(
          id: pizza.name,
          newQuantity: newQuantity,
        ),
      );

      request.then((update) {
        print(
          'Received pizza update after increment: ${update.pizza.quantity}',
        );
        add(UpdatePizzaQuantity(update.pizza.quantity));
      }).catchError((error) {
        log('Error updating pizza quantity: $error');
      });
    } else if (event is UpdatePizzaQuantity) {
      final newQuantity = event.quantity;
      pizza.quantity = newQuantity;
    }
    super.add(event);
  }

  @override
  Future<void> close() {
    _updateSubscription.cancel();
    return super.close();
  }
}

class PizzaDetailState {
  PizzaDetailState({required this.quantity});
  final int quantity;

  PizzaDetailState copyWith({int? quantity}) {
    return PizzaDetailState(quantity: quantity ?? this.quantity);
  }
}

abstract class PizzaDetailEvent {}

class IncrementQuantity extends PizzaDetailEvent {}

class UpdatePizzaQuantity extends PizzaDetailEvent {
  UpdatePizzaQuantity(this.quantity);
  final int quantity;
}
