// ignore_for_file: avoid_redundant_argument_values

import 'package:background_downloader/background_downloader.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/presentation/components/vertical_divider.dart';
import 'package:futurstore/core/presentation/theming/configs/app_colors.dart';
import 'package:futurstore/core/presentation/theming/configs/app_spacing.dart';
import 'package:futurstore/core/utils/extensions/build_context.dart';
import 'package:futurstore/core/utils/extensions/theme_on_build_context.dart';

import '../data/models/game.dart';

class GameDetailScreen extends StatefulWidget {
  const GameDetailScreen(this.data, {super.key});

  static const String id = 'game_details';

  final GameModel data;

  @override
  State<GameDetailScreen> createState() => _GameDetailScreenState();
}

class _GameDetailScreenState extends State<GameDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 75,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 75,
                        height: 75,
                        child: Card(
                          elevation: 9,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              widget.data.logoImageSquareUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: AppSpacing.lg,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.data.title,
                            style: context.textTheme.headlineSmall?.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            widget.data.publisherName,
                            style: context.textTheme.bodySmall?.copyWith(
                              color: AppColors.darkAqua,
                            ),
                          ),
                          Text(
                            [
                              if (widget.data.containsAds) l10n.adsSupported,
                              if (widget.data.hasInAppPurchases)
                                l10n.purchasesInAppsSupported,
                            ].join(' - '),
                            style: context.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const _Gap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (widget.data.notesAverage != null) ...[
                      Column(
                        children: [
                          Text(
                            widget.data.notesAverage!.toString(),
                          ),
                          Text(
                            '${widget.data.notesCount ?? 0} ${l10n.appReviews}',
                          ),
                        ],
                      ),
                      const CustomVerticalDivider(
                        margin: EdgeInsets.all(3),
                        color: Colors.black,
                        height: 18,
                      ),
                    ],
                    Column(
                      children: [
                        const Icon(Icons.download_for_offline_outlined),
                        Text(widget.data.appSize),
                      ],
                    ),
                    const CustomVerticalDivider(
                      margin: EdgeInsets.all(10),
                      color: Colors.black,
                      height: 18,
                    ),
                    Column(
                      children: [
                        ColoredBox(
                          color: context.colorScheme.inverseSurface
                              .withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Text(
                              '${widget.data.minAgeRequirement}+',
                              style: context.textTheme.bodyMedium?.copyWith(
                                color: context.colorScheme.surface,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '${l10n.ratedFor} ${widget.data.minAgeRequirement}+',
                        ),
                      ],
                    ),
                  ],
                ),
                const _Gap(),
                SizedBox(
                  width: context.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        final task = DownloadTask(
                          url: widget.data.releaseFileMainUrl,
                          filename: '${widget.data.packageName}.apk',
                          // directory: '',
                          updates: Updates.statusAndProgress,
                          requiresWiFi: false,
                          // requiresWiFi: true,
                          retries: 5,
                          allowPause: true,
                        );

                        await FileDownloader().download(
                          task,
                          onProgress: (progress) =>
                              debugPrint('Progress: ${progress * 100}%'),
                          onStatus: (status) => debugPrint('Status: $status'),
                        );
                      } catch (e) {
                        debugPrint(e.toString());
                      }
                    },
                    child: Text(
                      l10n.installApp,
                    ),
                  ),
                ),
                const _Gap(),
                CarouselSlider(
                  options: CarouselOptions(
                    // height: 250,
                    padEnds: false,
                    enableInfiniteScroll: false,
                    aspectRatio: 16 / 9,
                  ),
                  items: widget.data.screenshots.map(
                    (url) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(url),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              url,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
                const _Gap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l10n.aboutThisGame,
                      style: context.textTheme.titleLarge,
                    ),
                    const Icon(
                      Icons.arrow_right_alt,
                      size: 30,
                    ),
                  ],
                ),
                const _Gap(
                  height: 10,
                ),
                Text(
                  widget.data.description,
                  style: context.textTheme.labelLarge,
                ),
                const _Gap(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (final tag in widget.data.tags)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: context.colorScheme.inverseSurface,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Text(tag),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const _Gap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l10n.ratingsAndReview,
                      style: context.textTheme.titleLarge,
                    ),
                    const Icon(
                      Icons.arrow_right_alt,
                      size: 30,
                    ),
                  ],
                ),
                const _Gap(),
                const _Gap(),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Version: X'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('Size: ${widget.data.appSize}'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Gap extends StatelessWidget {
  const _Gap({this.height = 30});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
