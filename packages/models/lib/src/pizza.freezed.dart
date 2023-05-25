// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pizza.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pizza _$PizzaFromJson(Map<String, dynamic> json) {
  return _Pizza.fromJson(json);
}

/// @nodoc
mixin _$Pizza {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  bool get vegetarian => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PizzaCopyWith<Pizza> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PizzaCopyWith<$Res> {
  factory $PizzaCopyWith(Pizza value, $Res Function(Pizza) then) =
      _$PizzaCopyWithImpl<$Res, Pizza>;
  @useResult
  $Res call(
      {String name,
      String description,
      double price,
      bool vegetarian,
      String imageURL});
}

/// @nodoc
class _$PizzaCopyWithImpl<$Res, $Val extends Pizza>
    implements $PizzaCopyWith<$Res> {
  _$PizzaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? vegetarian = null,
    Object? imageURL = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      vegetarian: null == vegetarian
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PizzaCopyWith<$Res> implements $PizzaCopyWith<$Res> {
  factory _$$_PizzaCopyWith(_$_Pizza value, $Res Function(_$_Pizza) then) =
      __$$_PizzaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      double price,
      bool vegetarian,
      String imageURL});
}

/// @nodoc
class __$$_PizzaCopyWithImpl<$Res> extends _$PizzaCopyWithImpl<$Res, _$_Pizza>
    implements _$$_PizzaCopyWith<$Res> {
  __$$_PizzaCopyWithImpl(_$_Pizza _value, $Res Function(_$_Pizza) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? vegetarian = null,
    Object? imageURL = null,
  }) {
    return _then(_$_Pizza(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      vegetarian: null == vegetarian
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pizza implements _Pizza {
  const _$_Pizza(
      {required this.name,
      required this.description,
      required this.price,
      required this.vegetarian,
      required this.imageURL});

  factory _$_Pizza.fromJson(Map<String, dynamic> json) =>
      _$$_PizzaFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final bool vegetarian;
  @override
  final String imageURL;

  @override
  String toString() {
    return 'Pizza(name: $name, description: $description, price: $price, vegetarian: $vegetarian, imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pizza &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.vegetarian, vegetarian) ||
                other.vegetarian == vegetarian) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, price, vegetarian, imageURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PizzaCopyWith<_$_Pizza> get copyWith =>
      __$$_PizzaCopyWithImpl<_$_Pizza>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PizzaToJson(
      this,
    );
  }
}

abstract class _Pizza implements Pizza {
  const factory _Pizza(
      {required final String name,
      required final String description,
      required final double price,
      required final bool vegetarian,
      required final String imageURL}) = _$_Pizza;

  factory _Pizza.fromJson(Map<String, dynamic> json) = _$_Pizza.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  double get price;
  @override
  bool get vegetarian;
  @override
  String get imageURL;
  @override
  @JsonKey(ignore: true)
  _$$_PizzaCopyWith<_$_Pizza> get copyWith =>
      throw _privateConstructorUsedError;
}
