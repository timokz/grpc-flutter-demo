// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pizza.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pizza _$$_PizzaFromJson(Map<String, dynamic> json) => _$_Pizza(
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      vegetarian: json['vegetarian'] as bool,
      imageURL: json['imageURL'] as String,
    );

Map<String, dynamic> _$$_PizzaToJson(_$_Pizza instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'vegetarian': instance.vegetarian,
      'imageURL': instance.imageURL,
    };
