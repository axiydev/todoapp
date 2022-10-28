import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/assets/app_colors.dart';
import 'package:todoapp/assets/app_text_styles.dart';
import 'package:todoapp/page/main/tasks/task_controller.dart';
import 'package:todoapp/page/main/tasks/task_list/task_list_view.dart';
import 'package:get/get.dart';

class TaskView extends GetView<TaskController> {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColorTasks,
          elevation: .0,
          title: GetBuilder(
              init: controller,
              builder: (_) {
                return Text(
                  controller.taskListName,
                  style: AppTextStyle.primaryTextstyle!
                      .copyWith(fontSize: 22.sp, fontWeight: FontWeight.w400),
                );
              }),
          actions: [
            GetBuilder(
                init: controller,
                builder: (_) {
                  return IconButton(
                      onPressed: controller.changeEdit,
                      icon: const Icon(Icons.edit));
                }),
            GetBuilder(
                init: controller,
                builder: (_) {
                  return IconButton(
                      onPressed: () {}, icon: const Icon(Icons.delete));
                }),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'To Do',
                  style: AppTextStyle.primaryTextstyle!.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Completed',
                  style: AppTextStyle.primaryTextstyle!.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: AppColors.backgroundColorTasks,
        body: GetBuilder<TaskController>(
            init: controller,
            builder: (_) {
              return Stack(
                children: [
                  TabBarView(
                    children: [
                      TaskListView(
                        listName: controller.taskListName,
                        isEdit: true,
                      ),
                      TaskListView(
                        listName: 'completed',
                        isEdit: controller.isEdit,
                      )
                    ],
                  ),
                  if (controller.isVisible!)
                    Positioned(
                      bottom: 0.1.h,
                      left: .0,
                      right: .0,
                      child: Container(
                        height: 71.h,
                        alignment: Alignment.center,
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: TextField(
                          textInputAction: TextInputAction.done,
                          controller: controller.taskTextController,
                          focusNode: controller.focusNode,
                          onSubmitted: (value) {
                            controller.createTask();
                            controller.closeTheKeyboard(context);
                            controller.changeSelect(false);
                          },
                          onEditingComplete: () =>
                              controller.closeTheKeyboard(context),
                          decoration: InputDecoration(
                            hintText: 'Add a task',
                            prefixIcon: Checkbox(
                                value: controller.isSelected,
                                onChanged: (value) =>
                                    controller.changeSelect(value!)),
                          ),
                        ),
                      ),
                    ),
                  if (!controller.isVisible!)
                    Positioned(
                        left: 20.w,
                        right: 20.h,
                        bottom: 34.h,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20.h),
                          onTap: () {
                            controller.openAKeyboard(context);
                          },
                          child: Container(
                              width: context.mediaQuerySize.width,
                              alignment: FractionalOffset.centerLeft,
                              height: 40.h,
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(28, 27, 31, 0.16),
                                  borderRadius: BorderRadius.circular(20.h)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Icon(Icons.add),
                                  Text('Add a Task')
                                ],
                              )),
                        ))
                ],
              );
            }),
      ),
    );
  }
}
