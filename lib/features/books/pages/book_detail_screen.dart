import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/presentation/components/gap.dart';
import 'package:futurstore/core/presentation/components/linear_divider.dart';
import 'package:futurstore/core/presentation/theming/configs/app_spacing.dart';
import 'package:futurstore/core/utils/constants.dart';
import 'package:futurstore/core/utils/extensions/build_context.dart';
import 'package:futurstore/core/utils/extensions/navigator.dart';
import 'package:futurstore/core/utils/extensions/theme_on_build_context.dart';
import 'package:futurstore/core/utils/mixins/form_mixin.dart';

import '../../wallets/controllers/services/book_reviews.dart';
import '../data/models/book.dart';
import '../widgets/get_book_button.dart';

class BookDetailScreen extends StatefulWidget {
  const BookDetailScreen(this.data, {super.key});

  static const String id = 'book_details';

  final BookModel data;

  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.booksDetailsScreenTitle),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.lg,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(),
                        image: DecorationImage(
                          image: NetworkImage(
                            widget.data.coverUrl,
                          ),
                          scale: 2,
                          fit: BoxFit.fill,
                        ),
                      ),
                      width: context.width * 0.45,
                      height: context.height * 0.3,
                    ),
                    SizedBox(
                      width: context.width * 0.45,
                      height: context.height * 0.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.data.title,
                            style: context.textTheme.headlineLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '${widget.data.price} $kRelaiTokenSymbol',
                            style: context.textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            widget.data.publisherName,
                            style: context.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey[600],
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                for (final tag in [
                                  widget.data.genre,
                                  widget.data.categoryId,
                                ])
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                    ),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                          color: context
                                              .colorScheme.inverseSurface,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(
                height: AppSpacing.xxlg,
              ),
              Center(
                child: SizedBox(
                  width: context.width * 0.9,
                  height: AppSpacing.xxlg,
                  child: GetBookButton(
                    data: widget.data,
                  ),
                ),
              ),
              const Gap(
                height: AppSpacing.xlg,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.data.publicationLanguage,
                        style: context.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        context.l10n.accLangTitle,
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.data.publicationDate,
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        context.l10n.publishedTitle,
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(
                height: AppSpacing.xlg,
              ),
              const LinearHorizontalDivider(
                color: Colors.black,
              ),
              const Gap(
                height: AppSpacing.xlg,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
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
              ),
              const Gap(),
              _ReviewRatingBar(
                bookId: widget.data.id,
              ),
              const Gap(
                height: AppSpacing.xxlg,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                ),
                child: Text(
                  context.l10n.synopsis,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Gap(
                height: AppSpacing.sm,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  widget.data.resume,
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.08,
                  ),
                ),
              ),
              const Gap(
                height: AppSpacing.sm,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ReviewRatingBar extends ConsumerStatefulWidget {
  const _ReviewRatingBar({
    required this.bookId,
  });

  final String bookId;

  @override
  ConsumerState<_ReviewRatingBar> createState() => _ReviewRatingBarState();
}

class _ReviewRatingBarState extends ConsumerState<_ReviewRatingBar> {
  BookReview? _review;

  bool _loadingReview = true;

  Future<BookReview?> _haveAddedReview() async {
    try {
      return ref.read(
        myBookReviewProvider(
          bookId: widget.bookId,
        ).future,
      );
    } catch (e) {
      debugPrint(e.toString());

      return null;
    }
  }

  @override
  void initState() {
    super.initState();

    unawaited(
      _haveAddedReview().then((value) {
        setState(() {
          _loadingReview = false;

          _review = value;
        });
      }),
    );
  }

  Future<void> _openReviewForm(double rating) async {
    final bookReview = await showModalBottomSheet<BookReview>(
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
                        onPressed: context.pop,
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                  _AddReviewForm(
                    widget.bookId,
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
      _review = bookReview;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _loadingReview
        ? const Center(child: CircularProgressIndicator.adaptive())
        : Column(
            children: [
              RatingBar.builder(
                ignoreGestures: _review != null,
                initialRating: _review?.rating ?? 0,
                minRating: 1,
                allowHalfRating: true,
                itemPadding: const EdgeInsets.symmetric(horizontal: 10),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: _openReviewForm,
              ),
              if (_review != null && _review!.comment != null) ...[
                const Gap(
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
  const _AddReviewForm(this.bookId, this.rating);

  final String bookId;
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
            allowHalfRating: true,
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
                            addBookReviewProvider(
                              bookId: widget.bookId,
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
