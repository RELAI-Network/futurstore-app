import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/models/item_category.dart';

import '../controllers/providers/apps_state_provider.dart';
import '../controllers/providers/selected_category_provider.dart';
import '../widgets/app_card.dart';
import '../widgets/categories_tab_bar.dart';
import '../widgets/category_tab.dart';

class AppsView extends ConsumerStatefulWidget {
  const AppsView({
    required this.categories,
    super.key,
    this.selectedCategory,
  });

  final List<ItemCategory> categories;
  final ItemCategory? selectedCategory;

  @override
  ConsumerState<AppsView> createState() => _AppsViewState();
}

class _AppsViewState extends ConsumerState<AppsView>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  static const _categoryScrollToTopDuration = Duration(milliseconds: 300);
  late ProviderSubscription<ItemCategory?> _onTabChangedSubs;

  final Map<ItemCategory?, ScrollController> _controllers =
      <ItemCategory?, ScrollController>{};

  late final TabController _tabController;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // ignore: discarded_futures
      ref.read(appsStateProvider).onResumed(
            widget.categories[_tabController.index],
          );
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controllers.forEach((_, controller) => controller.dispose());
    _tabController
      ..removeListener(_onTabChanged)
      ..dispose();
    _onTabChangedSubs.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _tabController = TabController(
      length: widget.categories.length,
      vsync: this,
    )..addListener(_onTabChanged);
    for (final category in widget.categories) {
      _controllers[category] = ScrollController();
    }
    if (widget.categories.isNotEmpty) {
      Future.delayed(Duration.zero, _onTabChanged);
    }
    _onTabChangedSubs = ref.listenManual(
      selectedCategoryProvider,
      (previous, next) {
        final selectedCategory = next;

        if (selectedCategory != previous && selectedCategory != null) {
          final index = widget.categories.indexOf(selectedCategory);
          if (index != -1 && index != _tabController.index) {
            _tabController.animateTo(
              widget.categories.indexOf(selectedCategory),
              duration: _categoryScrollToTopDuration,
            );
          }
        }
      },
    );
  }

  void _onTabChanged() {
    ref.read(selectedCategoryProvider.notifier).state =
        widget.categories[_tabController.index];
    // ignore: discarded_futures
    ref.read(appsStateProvider).onAppsRequested(
          widget.categories[_tabController.index],
        );
  }

  @override
  Widget build(BuildContext context) {
    final appsState = ref.watch(appsStateProvider);

    return Column(
      children: [
        CategoriesTabBar(
          controller: _tabController,
          tabs: widget.categories
              .map(
                (category) => CategoryTab(
                  categoryName: category.label,
                  onDoubleTap: () async {
                    await _controllers[category]?.animateTo(
                      0,
                      duration: _categoryScrollToTopDuration,
                      curve: Curves.ease,
                    );
                  },
                ),
              )
              .toList(),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: widget.categories.map(
              (category) {
                if (appsState.state.status == AppsStatus.loading) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }

                return GridView.count(
                  controller: _controllers[category],
                  crossAxisCount: 3,
                  children: (appsState.state.apps[category] ?? []).map(
                    (a) {
                      return Padding(
                        padding: const EdgeInsets.all(2),
                        child: AppCard(
                          appData: a,
                        ),
                      );
                    },
                  ).toList(),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
