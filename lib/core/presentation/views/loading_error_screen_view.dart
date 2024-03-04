import 'package:flutter/material.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/utils/extensions/build_context.dart';

class LoadingErrorScreenView extends StatelessWidget {
  const LoadingErrorScreenView({required this.retry, super.key, this.error});

  final String? error;

  final VoidCallback retry;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            error ?? context.l10n.loadingError,
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: retry,
              // style: ElevatedButton.styleFrom(backgroundColor: context.),
              child: SizedBox(
                width: context.width * 0.5,
                child: Text(context.l10n.retry, textAlign: TextAlign.center),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
