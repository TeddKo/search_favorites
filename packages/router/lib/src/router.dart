import 'package:feature_favorites/feature_favorites.dart';
import 'package:feature_root/feature_root.dart';
import 'package:feature_search/feature_search.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
      initialLocation: '/search',
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return RootScreen(navigationShell: navigationShell);
          },
          branches: [
            StatefulShellBranch(
                routes: [
                  GoRoute(
                      path: '/search',
                      pageBuilder: (context, state) =>
                      const NoTransitionPage(child: SearchScreen())
                  )
                ]
            ),
            StatefulShellBranch(
                routes: [
                  GoRoute(
                      path: '/favorites',
                      pageBuilder: (context, state) =>
                      const NoTransitionPage(child: FavoritesScreen())
                  )
                ]
            )
          ],
        )
      ]
  );
}