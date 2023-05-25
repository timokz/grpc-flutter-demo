///
//  Generated code. Do not modify.
//  source: protos/pizza.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Pizza extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Pizza', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OD)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vegetarian')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageURL', protoName: 'imageURL')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Pizza._() : super();
  factory Pizza({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.double? price,
    $core.bool? vegetarian,
    $core.String? imageURL,
    $core.int? quantity,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (price != null) {
      _result.price = price;
    }
    if (vegetarian != null) {
      _result.vegetarian = vegetarian;
    }
    if (imageURL != null) {
      _result.imageURL = imageURL;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    return _result;
  }
  factory Pizza.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pizza.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pizza clone() => Pizza()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pizza copyWith(void Function(Pizza) updates) => super.copyWith((message) => updates(message as Pizza)) as Pizza; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pizza create() => Pizza._();
  Pizza createEmptyInstance() => create();
  static $pb.PbList<Pizza> createRepeated() => $pb.PbList<Pizza>();
  @$core.pragma('dart2js:noInline')
  static Pizza getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pizza>(create);
  static Pizza? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get vegetarian => $_getBF(4);
  @$pb.TagNumber(5)
  set vegetarian($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVegetarian() => $_has(4);
  @$pb.TagNumber(5)
  void clearVegetarian() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get imageURL => $_getSZ(5);
  @$pb.TagNumber(6)
  set imageURL($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImageURL() => $_has(5);
  @$pb.TagNumber(6)
  void clearImageURL() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get quantity => $_getIZ(6);
  @$pb.TagNumber(7)
  set quantity($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasQuantity() => $_has(6);
  @$pb.TagNumber(7)
  void clearQuantity() => clearField(7);
}

class PizzaUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PizzaUpdateRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  PizzaUpdateRequest._() : super();
  factory PizzaUpdateRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory PizzaUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PizzaUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PizzaUpdateRequest clone() => PizzaUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PizzaUpdateRequest copyWith(void Function(PizzaUpdateRequest) updates) => super.copyWith((message) => updates(message as PizzaUpdateRequest)) as PizzaUpdateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PizzaUpdateRequest create() => PizzaUpdateRequest._();
  PizzaUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<PizzaUpdateRequest> createRepeated() => $pb.PbList<PizzaUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static PizzaUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PizzaUpdateRequest>(create);
  static PizzaUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class OrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  OrderRequest._() : super();
  factory OrderRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory OrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderRequest clone() => OrderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderRequest copyWith(void Function(OrderRequest) updates) => super.copyWith((message) => updates(message as OrderRequest)) as OrderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderRequest create() => OrderRequest._();
  OrderRequest createEmptyInstance() => create();
  static $pb.PbList<OrderRequest> createRepeated() => $pb.PbList<OrderRequest>();
  @$core.pragma('dart2js:noInline')
  static OrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderRequest>(create);
  static OrderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class PizzaUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PizzaUpdate', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PizzaUpdate._() : super();
  factory PizzaUpdate({
    $core.String? id,
    $core.int? quantity,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    return _result;
  }
  factory PizzaUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PizzaUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PizzaUpdate clone() => PizzaUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PizzaUpdate copyWith(void Function(PizzaUpdate) updates) => super.copyWith((message) => updates(message as PizzaUpdate)) as PizzaUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PizzaUpdate create() => PizzaUpdate._();
  PizzaUpdate createEmptyInstance() => create();
  static $pb.PbList<PizzaUpdate> createRepeated() => $pb.PbList<PizzaUpdate>();
  @$core.pragma('dart2js:noInline')
  static PizzaUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PizzaUpdate>(create);
  static PizzaUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get quantity => $_getIZ(1);
  @$pb.TagNumber(2)
  set quantity($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuantity() => clearField(2);
}

class PizzaUpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PizzaUpdateResponse', createEmptyInstance: create)
    ..aOM<Pizza>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pizza', subBuilder: Pizza.create)
    ..hasRequiredFields = false
  ;

  PizzaUpdateResponse._() : super();
  factory PizzaUpdateResponse({
    Pizza? pizza,
  }) {
    final _result = create();
    if (pizza != null) {
      _result.pizza = pizza;
    }
    return _result;
  }
  factory PizzaUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PizzaUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PizzaUpdateResponse clone() => PizzaUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PizzaUpdateResponse copyWith(void Function(PizzaUpdateResponse) updates) => super.copyWith((message) => updates(message as PizzaUpdateResponse)) as PizzaUpdateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PizzaUpdateResponse create() => PizzaUpdateResponse._();
  PizzaUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<PizzaUpdateResponse> createRepeated() => $pb.PbList<PizzaUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static PizzaUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PizzaUpdateResponse>(create);
  static PizzaUpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Pizza get pizza => $_getN(0);
  @$pb.TagNumber(1)
  set pizza(Pizza v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPizza() => $_has(0);
  @$pb.TagNumber(1)
  void clearPizza() => clearField(1);
  @$pb.TagNumber(1)
  Pizza ensurePizza() => $_ensure(0);
}

class PizzaListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PizzaListResponse', createEmptyInstance: create)
    ..pc<Pizza>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pizzas', $pb.PbFieldType.PM, subBuilder: Pizza.create)
    ..hasRequiredFields = false
  ;

  PizzaListResponse._() : super();
  factory PizzaListResponse({
    $core.Iterable<Pizza>? pizzas,
  }) {
    final _result = create();
    if (pizzas != null) {
      _result.pizzas.addAll(pizzas);
    }
    return _result;
  }
  factory PizzaListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PizzaListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PizzaListResponse clone() => PizzaListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PizzaListResponse copyWith(void Function(PizzaListResponse) updates) => super.copyWith((message) => updates(message as PizzaListResponse)) as PizzaListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PizzaListResponse create() => PizzaListResponse._();
  PizzaListResponse createEmptyInstance() => create();
  static $pb.PbList<PizzaListResponse> createRepeated() => $pb.PbList<PizzaListResponse>();
  @$core.pragma('dart2js:noInline')
  static PizzaListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PizzaListResponse>(create);
  static PizzaListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Pizza> get pizzas => $_getList(0);
}

class PizzaQuantityUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PizzaQuantityUpdateRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pizzaId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newQuantity', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PizzaQuantityUpdateRequest._() : super();
  factory PizzaQuantityUpdateRequest({
    $core.String? pizzaId,
    $core.int? newQuantity,
  }) {
    final _result = create();
    if (pizzaId != null) {
      _result.pizzaId = pizzaId;
    }
    if (newQuantity != null) {
      _result.newQuantity = newQuantity;
    }
    return _result;
  }
  factory PizzaQuantityUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PizzaQuantityUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PizzaQuantityUpdateRequest clone() => PizzaQuantityUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PizzaQuantityUpdateRequest copyWith(void Function(PizzaQuantityUpdateRequest) updates) => super.copyWith((message) => updates(message as PizzaQuantityUpdateRequest)) as PizzaQuantityUpdateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PizzaQuantityUpdateRequest create() => PizzaQuantityUpdateRequest._();
  PizzaQuantityUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<PizzaQuantityUpdateRequest> createRepeated() => $pb.PbList<PizzaQuantityUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static PizzaQuantityUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PizzaQuantityUpdateRequest>(create);
  static PizzaQuantityUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pizzaId => $_getSZ(0);
  @$pb.TagNumber(1)
  set pizzaId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPizzaId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPizzaId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get newQuantity => $_getIZ(1);
  @$pb.TagNumber(2)
  set newQuantity($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewQuantity() => clearField(2);
}

class PizzaQuantityUpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PizzaQuantityUpdateResponse', createEmptyInstance: create)
    ..aOM<Pizza>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pizza', subBuilder: Pizza.create)
    ..hasRequiredFields = false
  ;

  PizzaQuantityUpdateResponse._() : super();
  factory PizzaQuantityUpdateResponse({
    Pizza? pizza,
  }) {
    final _result = create();
    if (pizza != null) {
      _result.pizza = pizza;
    }
    return _result;
  }
  factory PizzaQuantityUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PizzaQuantityUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PizzaQuantityUpdateResponse clone() => PizzaQuantityUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PizzaQuantityUpdateResponse copyWith(void Function(PizzaQuantityUpdateResponse) updates) => super.copyWith((message) => updates(message as PizzaQuantityUpdateResponse)) as PizzaQuantityUpdateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PizzaQuantityUpdateResponse create() => PizzaQuantityUpdateResponse._();
  PizzaQuantityUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<PizzaQuantityUpdateResponse> createRepeated() => $pb.PbList<PizzaQuantityUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static PizzaQuantityUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PizzaQuantityUpdateResponse>(create);
  static PizzaQuantityUpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Pizza get pizza => $_getN(0);
  @$pb.TagNumber(1)
  set pizza(Pizza v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPizza() => $_has(0);
  @$pb.TagNumber(1)
  void clearPizza() => clearField(1);
  @$pb.TagNumber(1)
  Pizza ensurePizza() => $_ensure(0);
}

