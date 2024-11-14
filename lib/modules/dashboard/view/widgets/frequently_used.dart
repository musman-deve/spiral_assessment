import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spiral/core/utils/app_colors.dart';
import 'package:spiral/core/utils/app_text_styles.dart';

class FrequentlyUsed extends StatelessWidget {
  FrequentlyUsed({
    super.key,
  });

  final List frequentUsed = [
    {
      'type': 'caller_id',
      'image': 'assets/dummy/caller_id.svg',
      'name': 'Caller\nID',
    },
    {
      'type': 'credit_champ',
      'image': 'assets/dummy/credit_champ.svg',
      'name': 'Credit\nChamp',
    },
    {
      'type': 'bank_transfer',
      'image': 'assets/dummy/bank_transfer.svg',
      'name': 'Bank\nTransfer',
    },
    {
      'type': 'request_money',
      'image': 'assets/dummy/request_money.svg',
      'name': 'Request\nMoney',
    },
    {
      'type': 'transaction_history',
      'image': 'assets/dummy/transaction_history.svg',
      'name': 'Transaction\nHistory',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Frequently Used',
                style: AppTextStyles.title(fontSize: 16),
              ),
              Text(
                'View all',
                style: AppTextStyles.subtitle(
                  fontSize: 14,
                  color: AppColors.brightBlue,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 114.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            children: List.generate(
              frequentUsed.length,
              (index) {
                return Container(
                  width: 76.w,
                  margin: EdgeInsets.only(
                    right: (index + 1) == frequentUsed.length ? 0 : 6.w,
                  ),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        frequentUsed[index]['image'],
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        frequentUsed[index]['name'],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.subtitle(
                          fontSize: 13,
                          height: 1.15,
                          color: const Color(
                            0xff2F394E,
                          ).withOpacity(0.80),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
