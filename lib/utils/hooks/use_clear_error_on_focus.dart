import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

void useClearErrorOnFocus(
  FocusNode focusNode,
  VoidCallback clearErrorCallback,
) {
  useEffect(() {
    void listener() {
      if (focusNode.hasFocus) {
        clearErrorCallback();
      }
    }

    focusNode.addListener(listener);
    return () => focusNode.removeListener(listener);
  }, [focusNode]);
}
