import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'loading_error_screen_view.dart';

extension LoadingAsyncDataScreenX<T> on AsyncValue<T> {
  Widget loading() {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }

  Widget error(String error, {required VoidCallback retry}) {
    return LoadingErrorScreenView(
      error: error,
      retry: retry,
    );
  }

  Widget build({
    required Widget Function(T data) builder,
    required VoidCallback retryOnError,
    String? error,
  }) {
    if (isLoading || isRefreshing || isReloading) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    if (hasError || value == null) {
      return LoadingErrorScreenView(
        error: error ?? this.error.toString(),
        retry: retryOnError,
      );
    }

    return builder(value as T);
  }
}
