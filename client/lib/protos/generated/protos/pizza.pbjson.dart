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
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'price', '3': 3, '4': 1, '5': 1, '10': 'price'},
    const {'1': 'vegetarian', '3': 4, '4': 1, '5': 8, '10': 'vegetarian'},
    const {'1': 'imageURL', '3': 5, '4': 1, '5': 9, '10': 'imageURL'},
  ],
};

/// Descriptor for `Pizza`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pizzaDescriptor = $convert.base64Decode('CgVQaXp6YRISCgRuYW1lGAEgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIUCgVwcmljZRgDIAEoAVIFcHJpY2USHgoKdmVnZXRhcmlhbhgEIAEoCFIKdmVnZXRhcmlhbhIaCghpbWFnZVVSTBgFIAEoCVIIaW1hZ2VVUkw=');
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
