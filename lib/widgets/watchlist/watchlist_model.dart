// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'watchlist_model.freezed.dart';

@freezed
class WatchlistModel with _$WatchlistModel {
  const factory WatchlistModel({
    required bool switchTree,
  }) = _WatchlistModel;
}