import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/create/common/notifier/media_upload_notifier.dart';
import 'package:roomate/lib.dart';

class UploadImagesGrid extends ConsumerWidget {
  const UploadImagesGrid({super.key, required this.scope});

  final MediaUploadScope scope;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(mediaUploadProvider(scope));
    final baseUrl = ref.watch(configProvider).baseUrl;

    if (items.isEmpty) {
      return const SizedBox.shrink();
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        const spacing = S.p12;
        final tileSize = ((constraints.maxWidth - spacing * 2) / 3).clamp(
          96.0,
          140.0,
        );

        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: items.map((item) {
            return _UploadImageTile(
              item: item,
              imageUrl: _resolveImageUrl(baseUrl, item.remoteUrl),
              size: tileSize,
              onRemove: () =>
                  ref.read(mediaUploadProvider(scope).notifier).remove(item.id),
              onRetry: item.hasError
                  ? () => ref
                        .read(mediaUploadProvider(scope).notifier)
                        .retry(item.id)
                  : null,
            );
          }).toList(),
        );
      },
    );
  }

  String? _resolveImageUrl(String baseUrl, String? url) {
    if (url == null || url.trim().isEmpty) {
      return null;
    }

    if (url.startsWith('http://') || url.startsWith('https://')) {
      return url;
    }

    if (url.startsWith('/')) {
      return '$baseUrl$url';
    }

    return '$baseUrl/$url';
  }
}

class _UploadImageTile extends StatelessWidget {
  const _UploadImageTile({
    required this.item,
    required this.imageUrl,
    required this.size,
    required this.onRemove,
    this.onRetry,
  });

  final MediaUploadItem item;
  final String? imageUrl;
  final double size;
  final VoidCallback onRemove;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(S.p16),
                child: SizedBox(
                  width: size,
                  height: size,
                  child: _buildImage(context),
                ),
              ),
              Positioned(
                top: S.p4,
                right: S.p4,
                child: GestureDetector(
                  onTap: onRemove,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(S.p12),
                    ),
                    child: const Padding(
                      padding: P(all: S.p4),
                      child: Icon(Icons.close, color: Colors.white, size: 16),
                    ),
                  ),
                ),
              ),
              if (item.isUploading)
                const Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.black38),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),
            ],
          ),
          if (item.hasError) ...[
            const SizedBox(height: S.p8),
            Text(
              item.errorMessage,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.typography.bodySmall.copyWith(
                color: context.colors.red,
              ),
            ),
            if (onRetry != null)
              TextButton(
                onPressed: onRetry,
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(context.l10n.retry),
              ),
          ],
        ],
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    if (item.localPath != null && item.localPath!.trim().isNotEmpty) {
      return Image.file(
        File(item.localPath!),
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => _placeholder(context),
      );
    }

    if (imageUrl != null && imageUrl!.trim().isNotEmpty) {
      return Image.network(
        imageUrl!,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => _placeholder(context),
      );
    }

    return _placeholder(context);
  }

  Widget _placeholder(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: context.colors.graysLight100),
      child: Center(
        child: AppIcon(
          AppIcons.camera,
          color: context.colors.lightOrange100,
          width: S.p24,
          height: S.p24,
        ),
      ),
    );
  }
}
