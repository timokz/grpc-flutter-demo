///
//  Generated code. Do not modify.
//  source: protos/pizza.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'pizza.pb.dart' as $0;
export 'pizza.pb.dart';

class PizzeriaClient extends $grpc.Client {
  static final _$listPizzas =
      $grpc.ClientMethod<$0.OrderRequest, $0.PizzaListResponse>(
          '/Pizzeria/ListPizzas',
          ($0.OrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PizzaListResponse.fromBuffer(value));
  static final _$getOrder =
      $grpc.ClientMethod<$0.OrderRequest, $0.OrderResponse>(
          '/Pizzeria/GetOrder',
          ($0.OrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.OrderResponse.fromBuffer(value));
  static final _$listOrders =
      $grpc.ClientMethod<$0.OrderRequest, $0.OrderListResponse>(
          '/Pizzeria/ListOrders',
          ($0.OrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.OrderListResponse.fromBuffer(value));
  static final _$createOrder = $grpc.ClientMethod<$0.Order, $0.OrderResponse>(
      '/Pizzeria/CreateOrder',
      ($0.Order value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OrderResponse.fromBuffer(value));
  static final _$updateOrder = $grpc.ClientMethod<$0.Order, $0.OrderResponse>(
      '/Pizzeria/UpdateOrder',
      ($0.Order value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OrderResponse.fromBuffer(value));
  static final _$deleteOrder =
      $grpc.ClientMethod<$0.OrderRequest, $0.OrderResponse>(
          '/Pizzeria/DeleteOrder',
          ($0.OrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.OrderResponse.fromBuffer(value));
  static final _$subscribeToPizza =
      $grpc.ClientMethod<$0.PizzaUpdateRequest, $0.PizzaUpdateResponse>(
          '/Pizzeria/SubscribeToPizza',
          ($0.PizzaUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PizzaUpdateResponse.fromBuffer(value));
  static final _$updatePizzaQuantity = $grpc.ClientMethod<
          $0.PizzaQuantityUpdateRequest, $0.PizzaQuantityUpdateResponse>(
      '/Pizzeria/UpdatePizzaQuantity',
      ($0.PizzaQuantityUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.PizzaQuantityUpdateResponse.fromBuffer(value));

  PizzeriaClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PizzaListResponse> listPizzas($0.OrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPizzas, request, options: options);
  }

  $grpc.ResponseFuture<$0.OrderResponse> getOrder($0.OrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrder, request, options: options);
  }

  $grpc.ResponseFuture<$0.OrderListResponse> listOrders($0.OrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listOrders, request, options: options);
  }

  $grpc.ResponseFuture<$0.OrderResponse> createOrder($0.Order request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrder, request, options: options);
  }

  $grpc.ResponseFuture<$0.OrderResponse> updateOrder($0.Order request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrder, request, options: options);
  }

  $grpc.ResponseFuture<$0.OrderResponse> deleteOrder($0.OrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrder, request, options: options);
  }

  $grpc.ResponseStream<$0.PizzaUpdateResponse> subscribeToPizza(
      $0.PizzaUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$subscribeToPizza, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.PizzaQuantityUpdateResponse> updatePizzaQuantity(
      $0.PizzaQuantityUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePizzaQuantity, request, options: options);
  }
}

abstract class PizzeriaServiceBase extends $grpc.Service {
  $core.String get $name => 'Pizzeria';

  PizzeriaServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.OrderRequest, $0.PizzaListResponse>(
        'ListPizzas',
        listPizzas_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OrderRequest.fromBuffer(value),
        ($0.PizzaListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OrderRequest, $0.OrderResponse>(
        'GetOrder',
        getOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OrderRequest.fromBuffer(value),
        ($0.OrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OrderRequest, $0.OrderListResponse>(
        'ListOrders',
        listOrders_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OrderRequest.fromBuffer(value),
        ($0.OrderListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Order, $0.OrderResponse>(
        'CreateOrder',
        createOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Order.fromBuffer(value),
        ($0.OrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Order, $0.OrderResponse>(
        'UpdateOrder',
        updateOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Order.fromBuffer(value),
        ($0.OrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OrderRequest, $0.OrderResponse>(
        'DeleteOrder',
        deleteOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OrderRequest.fromBuffer(value),
        ($0.OrderResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.PizzaUpdateRequest, $0.PizzaUpdateResponse>(
            'SubscribeToPizza',
            subscribeToPizza_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.PizzaUpdateRequest.fromBuffer(value),
            ($0.PizzaUpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PizzaQuantityUpdateRequest,
            $0.PizzaQuantityUpdateResponse>(
        'UpdatePizzaQuantity',
        updatePizzaQuantity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PizzaQuantityUpdateRequest.fromBuffer(value),
        ($0.PizzaQuantityUpdateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PizzaListResponse> listPizzas_Pre(
      $grpc.ServiceCall call, $async.Future<$0.OrderRequest> request) async {
    return listPizzas(call, await request);
  }

  $async.Future<$0.OrderResponse> getOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$0.OrderRequest> request) async {
    return getOrder(call, await request);
  }

  $async.Future<$0.OrderListResponse> listOrders_Pre(
      $grpc.ServiceCall call, $async.Future<$0.OrderRequest> request) async {
    return listOrders(call, await request);
  }

  $async.Future<$0.OrderResponse> createOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Order> request) async {
    return createOrder(call, await request);
  }

  $async.Future<$0.OrderResponse> updateOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Order> request) async {
    return updateOrder(call, await request);
  }

  $async.Future<$0.OrderResponse> deleteOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$0.OrderRequest> request) async {
    return deleteOrder(call, await request);
  }

  $async.Stream<$0.PizzaUpdateResponse> subscribeToPizza_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.PizzaUpdateRequest> request) async* {
    yield* subscribeToPizza(call, await request);
  }

  $async.Future<$0.PizzaQuantityUpdateResponse> updatePizzaQuantity_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.PizzaQuantityUpdateRequest> request) async {
    return updatePizzaQuantity(call, await request);
  }

  $async.Future<$0.PizzaListResponse> listPizzas(
      $grpc.ServiceCall call, $0.OrderRequest request);
  $async.Future<$0.OrderResponse> getOrder(
      $grpc.ServiceCall call, $0.OrderRequest request);
  $async.Future<$0.OrderListResponse> listOrders(
      $grpc.ServiceCall call, $0.OrderRequest request);
  $async.Future<$0.OrderResponse> createOrder(
      $grpc.ServiceCall call, $0.Order request);
  $async.Future<$0.OrderResponse> updateOrder(
      $grpc.ServiceCall call, $0.Order request);
  $async.Future<$0.OrderResponse> deleteOrder(
      $grpc.ServiceCall call, $0.OrderRequest request);
  $async.Stream<$0.PizzaUpdateResponse> subscribeToPizza(
      $grpc.ServiceCall call, $0.PizzaUpdateRequest request);
  $async.Future<$0.PizzaQuantityUpdateResponse> updatePizzaQuantity(
      $grpc.ServiceCall call, $0.PizzaQuantityUpdateRequest request);
}
