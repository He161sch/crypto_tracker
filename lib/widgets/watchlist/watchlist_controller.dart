import 'package:crypto_tracker/widgets/watchlist/watchlist_model.dart';
import 'package:crypto_tracker/widgets/watchlist/watchlist_view.dart';


class WatchlistControllerImpl extends WatchlistController {
  WatchlistControllerImpl({
    WatchlistModel? model,
  }) : super(model ?? const WatchlistModel(switchTree: false));

  @override
  void switchtTree() {
    state = state.copyWith(switchTree: !state.switchTree);
  }
}
