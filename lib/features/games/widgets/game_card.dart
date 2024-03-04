import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/utils/extensions/navigator.dart';
import 'package:futurstore/core/utils/extensions/theme_on_build_context.dart';
import 'package:futurstore/features/games/data/models/game.dart';
import 'package:futurstore/features/packages/providers/is_package_installed_func_provider.dart';

import '../pages/game_detail_screen.dart';

class GameCard extends ConsumerWidget {
  const GameCard({required this.data, super.key});
  final GameModel data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () async {
        await context.pushTo(GameDetailScreen(data));
      },
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          children: [
            SizedBox(
              width: 200,
              height: 90,
              child: Card(
                elevation: 9,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    data.logoImageSquareUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    data.name,
                    style: context.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    data.categoryName,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.primary,
                    ),
                  ),
                ),
                if (data.notesAverage != null)
                  SizedBox(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              data.notesAverage!.toString(),
                              style: context.textTheme.bodySmall,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 3, bottom: 0.6),
                              child: Icon(
                                Icons.star,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                        FutureBuilder(
                          // ignore: discarded_futures
                          future: ref.read(
                            isPackageInstalledProvider(data.packageName).future,
                          ),
                          builder: (_, snapshot) {
                            if (!snapshot.hasData) {
                              return const SizedBox();
                            }

                            final installed = snapshot.data!;

                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                installed
                                    ? Icons.check
                                    : Icons.download_for_offline_outlined,
                                size: 18,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
