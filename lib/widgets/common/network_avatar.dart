import 'package:flutter/material.dart';

class NetworkAvatar extends StatelessWidget {
  const NetworkAvatar({
    super.key,
    required this.imageUrl,
    required this.size,
    this.shape = BoxShape.rectangle,
    this.borderRadius = BorderRadius.zero,
    this.backgroundColor,
    this.placeholder,
    this.border,
    this.fit = BoxFit.cover,
  });

  final String imageUrl;
  final double size;
  final BoxShape shape;
  final BorderRadius borderRadius;
  final Color? backgroundColor;
  final Widget? placeholder;
  final BoxBorder? border;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final hasImage = imageUrl.trim().isNotEmpty;
    final child = SizedBox.square(
      dimension: size,
      child: hasImage
          ? Image.network(
              imageUrl,
              fit: fit,
              errorBuilder: (_, _, _) => _placeholder(),
            )
          : _placeholder(),
    );

    return DecoratedBox(
      decoration: BoxDecoration(
        shape: shape,
        border: border,
        borderRadius: shape == BoxShape.circle ? null : borderRadius,
      ),
      child: shape == BoxShape.circle
          ? ClipOval(child: child)
          : ClipRRect(borderRadius: borderRadius, child: child),
    );
  }

  Widget _placeholder() {
    return ColoredBox(
      color: backgroundColor ?? Colors.transparent,
      child: placeholder ?? const SizedBox.expand(),
    );
  }
}
