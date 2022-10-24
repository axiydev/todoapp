import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:todoapp/assets/app_colors.dart';
import 'package:todoapp/assets/app_text_styles.dart';
import 'package:todoapp/page/main/main_controller.dart';
import 'package:todoapp/page/main/widget/custom_tile_widget.dart';

class MainView extends GetView<MainController> {
  MainView({super.key});
  @override
  final controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 26.w, right: 20.w, top: 14.h),
              child: Card(
                margin: EdgeInsets.zero,
                color: Colors.transparent,
                elevation: .0,
                child: ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
                  horizontalTitleGap: 10.w,
                  minVerticalPadding: 0.0,
                  minLeadingWidth: 32.w,
                  leading: const CircleAvatar(
                    backgroundColor: AppColors.primary,
                    child: Text('AB'),
                  ),
                  title: Text(
                    'Antnio Bonilla',
                    style: AppTextStyle.primaryTextstyle,
                  ),
                  trailing: const Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
              ),
              child: CustomTile(
                  title: 'Important',
                  onTap: () {},
                  leading: Icons.star,
                  trailing: Icons.arrow_forward_ios),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
              ),
              child: CustomTile(
                  title: 'Tasks',
                  onTap: () {},
                  leading: Icons.task,
                  trailing: Icons.arrow_forward_ios),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
                child: const Divider(
                  color: Colors.black,
                )),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
              ),
              child: CustomTile(
                  title: 'Task List',
                  onTap: () {},
                  leading: Icons.menu,
                  trailing: Icons.arrow_forward_ios),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
              ),
              child: CustomTile(
                  title: 'House List',
                  onTap: () {},
                  leading: Icons.menu,
                  trailing: Icons.arrow_forward_ios),
            ),
          ],
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => controller.showAlertDiologApp(context),
          backgroundColor: Colors.transparent,
          foregroundColor: const Color(0xFF5946D2),
          splashColor: AppColors.primary.withOpacity(0.2),
          hoverColor: AppColors.primary.withOpacity(0.2),
          focusColor: AppColors.primary.withOpacity(0.2),
          elevation: .0,
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [Icon(Icons.add), Text('New List')],
          )),
    );
  }
}
