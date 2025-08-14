import 'package:flutter/material.dart';

class RepositoryCard extends StatelessWidget {
  final String name;
  final String? description;
  final int stargazersCount;
  final int forksCount;
  final bool isFavorite;
  final VoidCallback onFavoritePressed;

  const RepositoryCard({
    super.key,
    required this.name,
    this.description,
    required this.stargazersCount,
    required this.forksCount,
    required this.isFavorite,
    required this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Repository Name
                  Text(
                    name,
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6.0),

                  // Description
                  if (description != null && description!.isNotEmpty)
                    Text(
                      description!,
                      style: textTheme.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  const SizedBox(height: 8.0),

                  // Star & Fork Counts
                  Row(
                    children: [
                      const Icon(Icons.star_border, size: 16.0),
                      const SizedBox(width: 4.0),
                      Text('$stargazersCount', style: textTheme.bodySmall),
                      const SizedBox(width: 12.0),
                      const Icon(Icons.fork_right, size: 16.0),
                      const SizedBox(width: 4.0),
                      Text('$forksCount', style: textTheme.bodySmall),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12.0),

            // Favorite Button
            IconButton(
              icon: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  key: ValueKey<bool>(isFavorite),
                  color: isFavorite ? color.tertiary : color.scrim,
                ),
              ),
              onPressed: onFavoritePressed,
            ),
          ],
        ),
      ),
    );
  }
}
