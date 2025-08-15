// lib/main.dart

import 'dart:developer'; // log 사용을 위해 import

import 'package:core_data/core_data.dart';
import 'package:core_designsystem/core_designsystem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:router/router.dart';
import 'package:shared_common/shared_common.dart';

@pragma('vm:entry-point')
void mainForWidget() async {
  await dotenv.load(fileName: ".env");
  final container = ProviderContainer();
  _initializeMethodChannel(container);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  final container = ProviderContainer();
  _initializeMethodChannel(container);

  runApp(UncontrolledProviderScope(container: container, child: const MyApp()));
}

void _initializeMethodChannel(ProviderContainer container) {
  const channel = MethodChannel('com.tedd.search_favorites.widget');
  channel.setMethodCallHandler((call) async {
    if (call.method == 'getLatestFavorite') {
      final usecase = container.read(
        getLatestFavoriteRepositoryUseCaseProvider,
      );
      final result = await usecase();
      return result.when(
        success: (repo) {
          if (repo != null) {
            final data = {'name': repo.name, 'description': repo.description};
            return data;
          }
          return null;
        },
        error: (e) {
          return null;
        },
      );
    }
  });
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: router,
      title: 'Search Favorites',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
