import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../common/data/datasource/local/theme_local_datasource.dart';
import '../../../common/data/repositories/theme_repository_impl.dart';
import '../../../common/domain/repositories/theme_repository.dart';

// --- StateNotifier ---
class ThemeModeNotifier extends StateNotifier<AsyncValue<ThemeMode>> {
  final ThemeRepository repository;

  ThemeModeNotifier(this.repository) : super(const AsyncLoading()) {
    _loadThemeMode();
  }

  Future<void> _loadThemeMode() async {
    final mode = await repository.getSavedThemeMode();
    state = AsyncData(mode);
  }

  Future<void> updateThemeMode(ThemeMode newMode) async {
    state = AsyncData(newMode);
    await repository.saveThemeMode(newMode);
  }
}

// --- Provider ---
final themeStateProvider =
    StateNotifierProvider<ThemeModeNotifier, AsyncValue<ThemeMode>>(
  (ref) {
    final repo = ThemeRepositoryImpl(ThemeLocalDataSource());
    return ThemeModeNotifier(repo);
  },
);
