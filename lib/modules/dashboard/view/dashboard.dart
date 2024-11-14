import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiral/core/utils/app_colors.dart';
import 'package:spiral/modules/dashboard/view/widgets/categories.dart';
import 'package:spiral/modules/dashboard/view/widgets/doc_appointment.dart';
import 'package:spiral/modules/dashboard/view/widgets/financial_services.dart';
import 'package:spiral/modules/dashboard/view/widgets/frequently_used.dart';
import 'package:spiral/modules/dashboard/view/widgets/story_updates.dart';
import 'package:spiral/modules/dashboard/view/widgets/welcome_bar.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 56.h),
          const WelcomeBar(),
          SizedBox(height: 15.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 16.h),
                  StoryUpdates(),
                  SizedBox(height: 15.h),
                  const DocAppointment(),
                  SizedBox(height: 24.h),
                  Categories(),
                  SizedBox(height: 24.h),
                  FrequentlyUsed(),
                  SizedBox(height: 24.h),
                  FinancialServices(),
                  SizedBox(height: 32.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
