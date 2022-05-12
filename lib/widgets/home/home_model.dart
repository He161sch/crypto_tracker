// This file is "main.dart"
import 'package:crypto_tracker/backend/ui-kit/currency_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'home_model.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    required List<CurrencyModel> currencies,
    required bool searchedCurrency,
    required bool isLoading,
    required bool hasError,
  }) = _HomeModel;
}
