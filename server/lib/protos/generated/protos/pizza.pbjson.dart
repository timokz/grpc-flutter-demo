///
//  Generated code. Do not modify.
//  source: protos/pizza.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pizzaDescriptor instead')
const Pizza$json = const {
  '1': 'Pizza',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'price', '3': 4, '4': 1, '5': 1, '10': 'price'},
    const {'1': 'vegetarian', '3': 5, '4': 1, '5': 8, '10': 'vegetarian'},
    const {'1': 'imageURL', '3': 6, '4': 1, '5': 9, '10': 'imageURL'},
    const {'1': 'quantity', '3': 7, '4': 1, '5': 5, '10': 'quantity'},
  ],
};

/// Descriptor for `Pizza`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pizzaDescriptor = $convert.base64Decode('CgVQaXp6YRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SFAoFcHJpY2UYBCABKAFSBXByaWNlEh4KCnZlZ2V0YXJpYW4YBSABKAhSCnZlZ2V0YXJpYW4SGgoIaW1hZ2VVUkwYBiABKAlSCGltYWdlVVJMEhoKCHF1YW50aXR5GAcgASgFUghxdWFudGl0eQ==');
@$core.Deprecated('Use orderDescriptor instead')
const Order$json = const {
  '1': 'Order',
  '2': const [
    const {'1': 'orderId', '3': 1, '4': 1, '5': 9, '10': 'orderId'},
    const {'1': 'pizza', '3': 2, '4': 3, '5': 11, '6': '.Pizza', '10': 'pizza'},
  ],
};

/// Descriptor for `Order`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderDescriptor = $convert.base64Decode('CgVPcmRlchIYCgdvcmRlcklkGAEgASgJUgdvcmRlcklkEhwKBXBpenphGAIgAygLMgYuUGl6emFSBXBpenph');
@$core.Deprecated('Use pizzaUpdateRequestDescriptor instead')
const PizzaUpdateRequest$json = const {
  '1': 'PizzaUpdateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `PizzaUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pizzaUpdateRequestDescriptor = $convert.base64Decode('ChJQaXp6YVVwZGF0ZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use pizzaUpdateDescriptor instead')
const PizzaUpdate$json = const {
  '1': 'PizzaUpdate',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'quantity', '3': 2, '4': 1, '5': 5, '10': 'quantity'},
  ],
};

/// Descriptor for `PizzaUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pizzaUpdateDescriptor = $convert.base64Decode('CgtQaXp6YVVwZGF0ZRIOCgJpZBgBIAEoCVICaWQSGgoIcXVhbnRpdHkYAiABKAVSCHF1YW50aXR5');
@$core.Deprecated('Use pizzaUpdateResponseDescriptor instead')
const PizzaUpdateResponse$json = const {
  '1': 'PizzaUpdateResponse',
  '2': const [
    const {'1': 'pizza', '3': 1, '4': 1, '5': 11, '6': '.Pizza', '10': 'pizza'},
  ],
};

/// Descriptor for `PizzaUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pizzaUpdateResponseDescriptor = $convert.base64Decode('ChNQaXp6YVVwZGF0ZVJlc3BvbnNlEhwKBXBpenphGAEgASgLMgYuUGl6emFSBXBpenph');
@$core.Deprecated('Use orderRequestDescriptor instead')
const OrderRequest$json = const {
  '1': 'OrderRequest',
  '2': const [
    const {'1': 'orderId', '3': 1, '4': 1, '5': 9, '10': 'orderId'},
  ],
};

/// Descriptor for `OrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderRequestDescriptor = $convert.base64Decode('CgxPcmRlclJlcXVlc3QSGAoHb3JkZXJJZBgBIAEoCVIHb3JkZXJJZA==');
@$core.Deprecated('Use orderResponseDescriptor instead')
const OrderResponse$json = const {
  '1': 'OrderResponse',
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.Order', '10': 'order'},
  ],
};

/// Descriptor for `OrderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderResponseDescriptor = $convert.base64Decode('Cg1PcmRlclJlc3BvbnNlEhwKBW9yZGVyGAEgASgLMgYuT3JkZXJSBW9yZGVy');
@$core.Deprecated('Use pizzaListResponseDescriptor instead')
const PizzaListResponse$json = const {
  '1': 'PizzaListResponse',
  '2': const [
    const {'1': 'pizzas', '3': 1, '4': 3, '5': 11, '6': '.Pizza', '10': 'pizzas'},
  ],
};

/// Descriptor for `PizzaListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pizzaListResponseDescriptor = $convert.base64Decode('ChFQaXp6YUxpc3RSZXNwb25zZRIeCgZwaXp6YXMYASADKAsyBi5QaXp6YVIGcGl6emFz');
@$core.Deprecated('Use orderListResponseDescriptor instead')
const OrderListResponse$json = const {
  '1': 'OrderListResponse',
  '2': const [
    const {'1': 'orders', '3': 1, '4': 3, '5': 11, '6': '.Order', '10': 'orders'},
  ],
};

/// Descriptor for `OrderListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderListResponseDescriptor = $convert.base64Decode('ChFPcmRlckxpc3RSZXNwb25zZRIeCgZvcmRlcnMYASADKAsyBi5PcmRlclIGb3JkZXJz');
@$core.Deprecated('Use pizzaQuantityUpdateRequestDescriptor instead')
const PizzaQuantityUpdateRequest$json = const {
  '1': 'PizzaQuantityUpdateRequest',
  '2': const [
    const {'1': 'pizza_id', '3': 1, '4': 1, '5': 9, '10': 'pizzaId'},
    const {'1': 'new_quantity', '3': 2, '4': 1, '5': 5, '10': 'newQuantity'},
  ],
};

/// Descriptor for `PizzaQuantityUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pizzaQuantityUpdateRequestDescriptor = $convert.base64Decode('ChpQaXp6YVF1YW50aXR5VXBkYXRlUmVxdWVzdBIZCghwaXp6YV9pZBgBIAEoCVIHcGl6emFJZBIhCgxuZXdfcXVhbnRpdHkYAiABKAVSC25ld1F1YW50aXR5');
@$core.Deprecated('Use pizzaQuantityUpdateResponseDescriptor instead')
const PizzaQuantityUpdateResponse$json = const {
  '1': 'PizzaQuantityUpdateResponse',
  '2': const [
    const {'1': 'pizza', '3': 1, '4': 1, '5': 11, '6': '.Pizza', '10': 'pizza'},
  ],
};

/// Descriptor for `PizzaQuantityUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pizzaQuantityUpdateResponseDescriptor = $convert.base64Decode('ChtQaXp6YVF1YW50aXR5VXBkYXRlUmVzcG9uc2USHAoFcGl6emEYASABKAsyBi5QaXp6YVIFcGl6emE=');
