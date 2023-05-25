import 'package:freezed_annotation/freezed_annotation.dart';

part 'pizza.freezed.dart';
part 'pizza.g.dart';

@freezed
class Pizza with _$Pizza {
  const factory Pizza({
    required String name,
    required String description,
    required double price,
    required bool vegetarian,
    required String imageURL,
  }) = _Pizza;

  factory Pizza.fromJson(Map<String, Object?> json) => _$PizzaFromJson(json);
}
