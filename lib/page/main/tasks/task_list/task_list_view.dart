import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:todoapp/assets/app_colors.dart';
import 'package:todoapp/assets/app_text_styles.dart';
import 'package:todoapp/model/tasks_model.dart';
import 'package:todoapp/page/main/tasks/task_list/task_list_controller.dart';
import 'package:todoapp/src/auth/fire_auth_src.dart';
import 'package:todoapp/src/firestore/firestore_db.dart';
import 'package:intl/intl.dart' as intl;

class TaskListView extends GetView<TaskListController> {
  const TaskListView({super.key, this.listName, required this.isEdit});

  final String? listName;
  final bool? isEdit;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: controller,
        builder: (_) {
          return AnimationLimiter(
            child: FirestoreQueryBuilder<Map<String, dynamic>>(
              query: FirestoreDb.firestore
                  .collection('users')
                  .doc(FireAuth.auth.currentUser!.uid)
                  .collection(listName!)
                  .orderBy('publishDate', descending: false),
              builder: (context, snapshot, _) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('You have an error'),
                  );
                }

                if (!snapshot.hasData) {
                  return const Center(
                    child: Text('You have not data'),
                  );
                }

                return ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 5.h,
                  ),
                  itemCount: snapshot.docs.length,
                  itemBuilder: (context, index) {
                    // if we reached the end of the currently obtained items, we try to
                    // obtain more items
                    if (snapshot.hasMore && index + 1 == snapshot.docs.length) {
                      // Tell FirestoreQueryBuilder to try to obtain more items.
                      // It is safe to call this function from within the build method.
                      snapshot.fetchMore();
                    }

                    final taskData = snapshot.docs[index].data();

                    TasksModel? task = TasksModel.fromJson(taskData);

                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 350),
                      child: ScaleAnimation(
                        child: Slidable(
                            endActionPane: ActionPane(
                              extentRatio: 0.2,
                              motion: const BehindMotion(),
                              children: [
                                SlidableAction(
                                  onPressed: (context) {
                                    controller.deleteTask(task: task);
                                  },
                                  borderRadius: BorderRadius.circular(10.w),
                                  backgroundColor: const Color(0xFFFE4A49),
                                  foregroundColor: Colors.white,
                                  icon: Icons.delete,
                                ),
                              ],
                            ),
                            child: Card(
                              margin: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.w)),
                              child: ListTile(
                                minLeadingWidth: 40.w,
                                horizontalTitleGap: 5.w,
                                leading: isEdit!
                                    ? Checkbox(
                                        value: task.isSelected,
                                        onChanged: (value) =>
                                            controller.updateTask(
                                                updateTask: task,
                                                isSelected: value),
                                      )
                                    : IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.book,
                                          color: AppColors.backgroundColorTasks,
                                        )),
                                subtitle: Text(
                                  intl.DateFormat.MEd()
                                      .format(task.publishDate!),
                                  style: AppTextStyle.primaryTextstyle!
                                      .copyWith(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500),
                                ),
                                trailing: IconButton(
                                  onPressed: () {
                                    controller.updateTask(
                                        updateTask: task,
                                        isFavourite: !task.isFavourite!);
                                  },
                                  icon: Icon(task.isFavourite!
                                      ? Icons.star
                                      : Icons.star_border),
                                ),
                                title: Text(
                                  task.title ?? 'task',
                                  style: AppTextStyle.primaryTextstyle!
                                      .copyWith(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                ),
                              ),
                            )),
                      ),
                    );
                  },
                );
              },
            ),
          );
        });
  }
}
