import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_list_app/common/app_style.dart';
import 'package:task_list_app/pages/layout/responsive_ui.dart';
import 'package:task_list_app/model/task.dart';
import 'package:task_list_app/pages/tasks/_view/description_page.dart';
import 'package:task_list_app/service/data_provider.dart';

class TasksPage extends ConsumerWidget {
  TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _data = ref.watch(taskDataProvider);
    return _data.when(
      data: (_data) {
        List<Task> taskList = _data.map((e) => e).toList();
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Task',
                        style: TextStyle(
                          fontSize:
                              ResponsiveUI.isLargeScreen(context) ? 32 : 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Divider(color: AppStyle.mediumBlue),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: taskList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {

                                //Task Description
                                return DescriptionPage(
                                  descriptionText:
                                      taskList[index].description.toString(),
                                );
                              }),
                            ),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppStyle.lightTextColor,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              //Task Title
                              child: Text(
                                taskList[index].title.toString(),
                                style: TextStyle(
                                  fontSize: ResponsiveUI.isLargeScreen(context)
                                      ? 18
                                      : 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
      error: (error, stackTrace) => Text('$error'),
      loading: () => Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
