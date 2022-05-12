
import 'package:crypto_tracker/widgets/watchlist/watchlist_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WatchlistView extends ConsumerWidget {
  const WatchlistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: Text("Trackers"),
    );
  }
}

abstract class WatchlistController extends StateNotifier<WatchlistModel> {
  WatchlistController(WatchlistModel state) : super(state);

  void switchtTree();
}
