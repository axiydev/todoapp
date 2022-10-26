import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:todoapp/assets/app_text_styles.dart';
import 'package:todoapp/page/main/tasks/task_list/task_list_controller.dart';

class TaskListView extends GetView<TaskListController> {
  const TaskListView({super.key, this.listName});

  final String? listName;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: controller,
        builder: (_) {
          return AnimationLimiter(
            child: ListView.separated(
              itemCount: 5,
              shrinkWrap: true,
              primary: false,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              // query: FirestoreDb.firestore
              //     .collection('users')
              //     .doc(FireAuth.auth.currentUser!.uid)
              //     .collection(listName!)
              //     .orderBy('publishDate', descending: false),
              separatorBuilder: (context, index) => SizedBox(
                height: 5.h,
              ),
              itemBuilder: (context, doc) {
                return AnimationConfiguration.staggeredList(
                  position: doc,
                  duration: const Duration(milliseconds: 350),
                  child: ScaleAnimation(
                    child: Slidable(
                        endActionPane: ActionPane(
                          extentRatio: 0.2,
                          motion: const BehindMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {},
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
                          child: CheckboxListTile(
                              value: true,
                              subtitle: Text(
                                'Today-Note',
                                style: AppTextStyle.primaryTextstyle!.copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              secondary: const Icon(Icons.star),
                              controlAffinity: ListTileControlAffinity.leading,
                              title: Text(
                                'Homework',
                                style: AppTextStyle.primaryTextstyle!.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              onChanged: (value) {}),
                        )),
                  ),
                );
              },
            ),
          );
        });
  }
}
