import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class NetworkAvatar extends StatelessWidget {
  const NetworkAvatar({
    super.key,
    required this.imageUrl,
    required this.size,
    this.shape = BoxShape.rectangle,
    this.borderRadius = BorderRadius.zero,
    this.backgroundColor,
    this.border,
    this.fit = BoxFit.cover,
  });

  final String imageUrl;
  final double size;
  final BoxShape shape;
  final BorderRadius borderRadius;
  final Color? backgroundColor;
  final BoxBorder? border;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final hasImage = imageUrl.trim().isNotEmpty;
    final child = SizedBox.square(
      dimension: size,
      child: hasImage
          ? CachedNetworkImage(
              imageUrl: imageUrl,
              fit: fit,
              fadeInDuration: Duration.zero,
              fadeOutDuration: Duration.zero,
              errorWidget: (_, _, _) => _fallback(context),
            )
          : _fallback(context),
    );

    return DecoratedBox(
      decoration: BoxDecoration(
        shape: shape,
        border: border,
        borderRadius: shape == BoxShape.circle ? null : borderRadius,
      ),
      child: shape == BoxShape.circle ? ClipOval(child: child) : ClipRRect(borderRadius: borderRadius, child: child),
    );
  }

  Widget _fallback(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: context.colors.orange, borderRadius: BorderRadius.circular(S.p12)),
      child: const AppIcon(AppIcons.defaultAvatar),
    );
  }
}
