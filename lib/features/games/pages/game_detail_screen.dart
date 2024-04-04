// ignore_for_file: avoid_redundant_argument_values

import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/presentation/components/gap.dart';
import 'package:futurstore/core/presentation/components/vertical_divider.dart';
import 'package:futurstore/core/presentation/theming/configs/app_colors.dart';
import 'package:futurstore/core/presentation/theming/configs/app_spacing.dart';
import 'package:futurstore/core/utils/extensions/build_context.dart';
import 'package:futurstore/core/utils/extensions/navigator.dart';
import 'package:futurstore/core/utils/extensions/theme_on_build_context.dart';
import 'package:futurstore/core/utils/mixins/form_mixin.dart';
import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:futurstore/features/games/widgets/install_button.dart';

import '../../wallets/controllers/services/app_reviews.dart';
import '../../wallets/controllers/services/assets.dart';

class GameDetailScreen extends StatefulWidget {
  const GameDetailScreen(this.data, {super.key});

  static const String id = 'game_details';

  final ApplicationModel data;

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
                  height: 100,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: context.width * 0.7,
                            child: Text(
                              widget.data.title,
                              style: context.textTheme.headlineSmall?.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Gap(),
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
                  child: InstallGameButton(widget.data),
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
                _ReviewRatingBar(
                  applicationId: widget.data.id,
                  assetId: widget.data.assetId,
                ),
                const _Gap(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ReviewRatingBar extends ConsumerStatefulWidget {
  const _ReviewRatingBar({
    required this.applicationId,
    required this.assetId,
  });

  final String applicationId;
  final String? assetId;

  @override
  ConsumerState<_ReviewRatingBar> createState() => _ReviewRatingBarState();
}

class _ReviewRatingBarState extends ConsumerState<_ReviewRatingBar> {
  AppReview? _review;

  bool _boughtThisAsset = false;
  bool _loadingReview = true;

  Future<AppReview?> _haveAddedReview() async {
    try {
      return ref.read(
        myAppReviewProvider(
          applicationId: widget.applicationId,
        ).future,
      );
    } catch (e) {
      debugPrint(e.toString());

      return null;
    }
  }

  Future<bool> _hasThisAsset() async {
    try {
      return ref.read(
        hasThisAssetProvider(
          assetId: int.parse(widget.assetId!),
        ).future,
      );
    } catch (e) {
      debugPrint(e.toString());

      return false;
    }
  }

  @override
  void initState() {
    super.initState();

    unawaited(
      _hasThisAsset().then((value) {
        setState(() {
          _boughtThisAsset = value;
        });

        if (value) {
          _haveAddedReview().then((value) {
            setState(() {
              _loadingReview = false;

              _review = value;
            });
          });
        }

        setState(() {
          _loadingReview = false;
        });
      }),
    );
  }

  Future<void> _openReviewForm(double rating) async {
    final appReview = await showModalBottomSheet<AppReview>(
      context: context,
      isScrollControlled: true,
      builder: (_) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BottomSheet(
          onClosing: () {},
          builder: (_) {
            final l10n = _.l10n;

            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.lg,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        l10n.addReviewApp,
                        style: context.textTheme.titleLarge,
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                  _AddReviewForm(
                    widget.applicationId,
                    rating,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );

    setState(() {
      _review = appReview;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _loadingReview
        ? const Center(child: CircularProgressIndicator.adaptive())
        : Column(
            children: [
              RatingBar.builder(
                ignoreGestures: _review != null || !_boughtThisAsset,
                initialRating: _review?.rating ?? 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 10),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: _openReviewForm,
              ),
              if (_review != null && _review!.comment != null) ...[
                const _Gap(
                  height: 10,
                ),
                Text(
                  _review!.comment!,
                  style: context.textTheme.labelLarge,
                ),
              ],
            ],
          );
  }
}

class _AddReviewForm extends ConsumerStatefulWidget {
  // ignore: unused_element
  const _AddReviewForm(this.applicationId, this.rating);

  final String applicationId;
  final double rating;

  @override
  ConsumerState<_AddReviewForm> createState() => __AddReviewFormState();
}

class __AddReviewFormState extends ConsumerState<_AddReviewForm>
    with FormMixin {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Gap(
            height: AppSpacing.xlg,
          ),
          RatingBar.builder(
            initialRating: widget.rating,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 5),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) => onChange<double>('rating', rating),
          ),
          const Gap(),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Comment',
            ),
            minLines: 3,
            maxLines: 6,
            onChanged: (value) {
              onChange<String>('comment', value);
            },
          ),
          const Gap(),
          if (hasError)
            Column(
              children: [
                Text(
                  errorMessage,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.theme.colorScheme.error,
                  ),
                ),
                const Gap(),
              ],
            ),
          SizedBox(
            width: double.infinity,
            child: loading
                ? const Center(child: CircularProgressIndicator.adaptive())
                : ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState?.validate() ?? false) {
                        loading = true;

                        try {
                          final result = await ref.watch(
                            addAppReviewProvider(
                              applicationId: widget.applicationId,
                              rating: value<double>('rating') ?? widget.rating,
                              comment: value<String>('comment')?.trim(),
                            ).future,
                          );

                          if (result.success) {
                            if (context.mounted) {
                              context.pop(result.data);
                            }

                            loading = false;
                          } else {
                            loading = false;
                            error = result.error!;
                          }
                        } catch (e) {
                          loading = false;

                          debugPrint(e.toString());

                          error = l10n.unknownError;
                        }
                      }
                    },
                    child: Text(
                      l10n.submitReview,
                    ),
                  ),
          ),
        ],
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
