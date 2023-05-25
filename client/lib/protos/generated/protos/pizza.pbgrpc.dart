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
  static final _$subscribeToPizza =
      $grpc.ClientMethod<$0.PizzaUpdateRequest, $0.PizzaUpdateResponse>(
          '/Pizzeria/SubscribeToPizza',
          ($0.PizzaUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PizzaUpdateResponse.fromBuffer(value));
  static final _$updatePizzaQuantity =
      $grpc.ClientMethod<$0.PizzaUpdateRequest, $0.PizzaUpdateResponse>(
          '/Pizzeria/UpdatePizzaQuantity',
          ($0.PizzaUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PizzaUpdateResponse.fromBuffer(value));

  PizzeriaClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PizzaListResponse> listPizzas($0.OrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPizzas, request, options: options);
  }

  $grpc.ResponseStream<$0.PizzaUpdateResponse> subscribeToPizza(
      $0.PizzaUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$subscribeToPizza, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.PizzaUpdateResponse> updatePizzaQuantity(
      $0.PizzaUpdateRequest request,
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
    $addMethod(
        $grpc.ServiceMethod<$0.PizzaUpdateRequest, $0.PizzaUpdateResponse>(
            'SubscribeToPizza',
            subscribeToPizza_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.PizzaUpdateRequest.fromBuffer(value),
            ($0.PizzaUpdateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.PizzaUpdateRequest, $0.PizzaUpdateResponse>(
            'UpdatePizzaQuantity',
            updatePizzaQuantity_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.PizzaUpdateRequest.fromBuffer(value),
            ($0.PizzaUpdateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PizzaListResponse> listPizzas_Pre(
      $grpc.ServiceCall call, $async.Future<$0.OrderRequest> request) async {
    return listPizzas(call, await request);
  }

  $async.Stream<$0.PizzaUpdateResponse> subscribeToPizza_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.PizzaUpdateRequest> request) async* {
    yield* subscribeToPizza(call, await request);
  }

  $async.Future<$0.PizzaUpdateResponse> updatePizzaQuantity_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.PizzaUpdateRequest> request) async {
    return updatePizzaQuantity(call, await request);
  }

  $async.Future<$0.PizzaListResponse> listPizzas(
      $grpc.ServiceCall call, $0.OrderRequest request);
  $async.Stream<$0.PizzaUpdateResponse> subscribeToPizza(
      $grpc.ServiceCall call, $0.PizzaUpdateRequest request);
  $async.Future<$0.PizzaUpdateResponse> updatePizzaQuantity(
      $grpc.ServiceCall call, $0.PizzaUpdateRequest request);
}
