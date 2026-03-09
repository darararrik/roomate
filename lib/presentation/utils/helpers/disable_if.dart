import 'dart:ui';

VoidCallback? disableIf(bool condition, VoidCallback action) =>
    condition ? action : null;
