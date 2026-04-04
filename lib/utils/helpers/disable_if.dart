import 'dart:ui';

import 'package:flutter/material.dart';

VoidCallback? disableIf(bool condition, VoidCallback action) =>
    condition ? action : null;
