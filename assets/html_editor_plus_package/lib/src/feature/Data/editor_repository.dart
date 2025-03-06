import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'editor_repository.g.dart';

class EditorRepository {
  const EditorRepository();

  Future<String> getJavaScriptFunctions() async {
    String response;
    if (kIsWeb) {
      response = await rootBundle.loadString(
          "html_editor_plus_package/lib/assets/scripts/custom_quill.js");
    } else {
      response = await rootBundle.loadString(
          "assets/html_editor_plus_package/lib/assets/scripts/custom_quill.js");
    }
    return response;
  }
}

@riverpod
EditorRepository editorRepository(Ref ref) => const EditorRepository();
