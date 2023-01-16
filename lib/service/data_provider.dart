import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_list_app/model/task.dart';
import 'package:task_list_app/service/network_service.dart';

final taskDataProvider = FutureProvider<List<Task>>((ref) async {
  return ref.watch(networkServiceProvider).getTasks();
});
