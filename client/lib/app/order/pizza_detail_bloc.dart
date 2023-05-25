/* import 'dart:async';

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

      final response = _grpcService.updatePizzaQuantity(
        PizzaQuantityUpdateRequest(
          pizzaId: pizza.id,
          newQuantity: newQuantity,
        ),
      );

      _quantityController.add(newQuantity);
    });
  }
  final Pizza pizza;
  final _quantityController = StreamController<int>.broadcast();

  Stream<int> get quantity => _quantityController.stream;
  final PizzeriaInterface _grpcService = GRPCService();

  void subscribeToPizzaUpdates(String pizzaId) {
    final request = PizzaUpdateRequest(id: pizzaId);
    final pizzaUpdatesStream =
        _grpcService.subscribeToPizzas(PizzaUpdateRequest(id: pizzaId));
    pizzaUpdatesStream.listen(
      (update) {
        if (update.pizza.id == pizzaId) {
          final newQuantity = update.pizza.quantity;
          add(UpdateQuantity(newQuantity));
        }
      },
      onError: (error) {
        print('Error subscribing to pizza updates: $error');
      },
    );
  }

  @override
  Stream<PizzaDetailState> mapEventToState(PizzaDetailEvent event) async* {
    {
      if (event is IncrementQuantity) {
        final newQuantity = state.quantity + 1;
        yield state.copyWith(quantity: newQuantity);
        _quantityController.add(newQuantity);
      }

      if (event is UpdateQuantity) {
        yield state.copyWith(quantity: event.newQuantity);
      }
      // Han
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

class UpdateQuantity extends PizzaDetailEvent {
  UpdateQuantity(this.newQuantity);
  final int newQuantity;
}
 */

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meetup_demo/protos/generated/protos.dart';
import 'package:meetup_demo/service/grcp_service.dart';
import 'package:meetup_demo/service/pizzeria_interface.dart';

class PizzaDetailBloc extends Bloc<PizzaDetailEvent, PizzaDetailState> {
  PizzaDetailBloc(this.pizza)
      : _grpcService = GRPCService(),
        super(PizzaDetailState(quantity: 1)) {
    subscribeToPizzaUpdates();
  }
  final Pizza pizza;
  final PizzeriaInterface _grpcService;
  late StreamSubscription<PizzaUpdateResponse> _updateSubscription;

  Stream<PizzaUpdate> get pizzaUpdateStream =>
      _updateSubscription as Stream<PizzaUpdate>;

  void subscribeToPizzaUpdates() {
    final request = PizzaUpdateRequest(id: pizza.id);
    _updateSubscription = _grpcService.subscribeToPizzas(request).listen(
      (update) {
        print('Received pizza update: $update');
        add(UpdatePizzaQuantity(update.pizza.quantity));
      },
      onError: (error) {
        print('Error receiving pizza update: $error');
      },
    );
  }

  void _onIncrementQuantity(
      IncrementQuantity event, Emitter<PizzaDetailState> emit) {
    final newQuantity = state.quantity + 1;
    emit(PizzaDetailState(quantity: newQuantity));

    // Handle pizza quantity update logic here
    // ...

    _quantityController.add(newQuants
  }

  @override
  Stream<PizzaDetailState> mapEventToState(PizzaDetailEvent event) async* {
    if (event is IncrementQuantity) {
      final newQuantity = state.quantity + 1;
      yield state.copyWith(quantity: newQuantity);

      final response = _grpcService.updatePizzaQuantity(
        PizzaQuantityUpdateRequest(
          pizzaId: pizza.id,
          newQuantity: newQuantity,
        ),
      );

      await response.then((update) {
        print('Received pizza update after increment: $update');
        add(UpdatePizzaQuantity(update.pizza.quantity));
      }).catchError((error) {
        print('Error updating pizza quantity: $error');
      });
    } else if (event is UpdatePizzaQuantity) {
      final newQuantity = event.quantity;
      yield state.copyWith(quantity: newQuantity);
    }
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
