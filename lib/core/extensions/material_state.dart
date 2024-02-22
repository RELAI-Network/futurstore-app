import 'package:flutter/material.dart';

/// MaterialStateExtension on MaterialState.
extension MaterialStateExtension on Iterable<MaterialState> {
  /// Get if the state is hovered.
  bool get isHovered => contains(MaterialState.hovered);

  /// Get if the state is focused.
  bool get isFocused => contains(MaterialState.focused);

  /// Get if the state is pressed.
  bool get isPressed => contains(MaterialState.pressed);

  /// Get if the state is dragged.
  bool get isDragged => contains(MaterialState.dragged);

  /// Get if the state is selected.
  bool get isSelected => contains(MaterialState.selected);

  /// Get if the state is scrolledUnder.
  bool get isScrolledUnder => contains(MaterialState.scrolledUnder);

  /// Get if the state is disabled.
  bool get isDisabled => contains(MaterialState.disabled);

  /// Get if the state is error.
  bool get isError => contains(MaterialState.error);
}
