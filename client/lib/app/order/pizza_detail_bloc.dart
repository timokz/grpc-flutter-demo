import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meetup_demo/protos/generated/protos.dart';
import 'package:meetup_demo/service/grcp_service.dart';
import 'package:meetup_demo/service/pizzeria_interface.dart';

class PizzaDetailBloc extends Bloc<PizzaDetailEvent, PizzaDetailState> {
  PizzaDetailBloc(this.pizza) : super(PizzaDetailState(quantity: 1)) {
    on<IncrementQuantity>((event, emit) {
      print('PizzaDetailBloc: IncrementQuantity');
      final newQuantity = state.quantity + 1;
      emit(PizzaDetailState(quantity: newQuantity));

/*       final response = _grpcService.updatePizzaQuantity(
        PizzaQuantityUpdateRequest(
          pizzaId: pizza.id,
          newQuantity: newQuantity,
        ),
      ); 

      response.then(print); */
      _quantityController.add(newQuantity);
    });
  }
  final Pizza pizza;
  final _quantityController = StreamController<int>.broadcast();

  Stream<int> get quantity => _quantityController.stream;
  final PizzeriaInterface _grpcService = GRPCService();

  @override
  Stream<PizzaDetailState> mapEventToState(PizzaDetailEvent event) async* {
    {
      if (event is IncrementQuantity) {
        final newQuantity = state.quantity + 1;
        yield state.copyWith(quantity: newQuantity);
        _quantityController.add(newQuantity);
      }
    }
  }

  @override
  Future<void> close() {
    _quantityController.close();
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

class AddToCart extends PizzaDetailEvent {}
