import 'package:flutter/material.dart';
import '../datasource/local/theme_local_datasource.dart';
import '../../domain/repositories/theme_repository.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeLocalDataSource localDataSource;

  ThemeRepositoryImpl(this.localDataSource);

  @override
  Future<void> saveThemeMode(ThemeMode mode) {
    return localDataSource
        .saveThemeMode(mode.name); // 'light', 'dark', 'system'
  }

  @override
  Future<ThemeMode> getSavedThemeMode() async {
    final saved = await localDataSource.getSavedThemeMode();

    switch (saved) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }
}
