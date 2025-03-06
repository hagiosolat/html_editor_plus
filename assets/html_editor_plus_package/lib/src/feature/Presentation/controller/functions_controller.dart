import 'package:html_editor_plus_package/src/feature/Data/editor_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'functions_controller.g.dart';

@riverpod
class EditorController extends _$EditorController {
  @override
  FutureOr<String> build() {
    return getJavaScriptFunc();
  }

  FutureOr<String> getJavaScriptFunc() async {
    final functions = ref.read(editorRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(functions.getJavaScriptFunctions);
    return state.value!;
  }
}
