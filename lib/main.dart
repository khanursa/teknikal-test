import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:technical_test/app.dart';

void main() {
  runApp(
    ProviderScope(
      // Riverpod 3 otomatis me-retry provider yang error. Di sini dimatikan
      // supaya error langsung tampil dan user yang memilih "Coba lagi".
      retry: (retryCount, error) => null,
      child: const App(),
    ),
  );
}
