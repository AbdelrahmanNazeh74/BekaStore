import 'package:beka_store/core/widgets/Spaces.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/normal_text.dart';
import '../../../Customer/ui/customer_page.dart';
import '../../../Reports/ui/late_installment_reports_page.dart';
import '../../../Reports/ui/reports_page.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Drawer(
      width: screenWidth * 0.65,
      child: Container(
        color: AppColors.mainColor,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              height: screenHeight * 0.2,
              decoration: BoxDecoration(
                color: AppColors.darkPurple,
              ),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.darkPurple,
                        child: SizedBox(
                          height: screenHeight * 0.045,
                          width: screenWidth * 0.25,
                          child: Center(
                            child: NormalTextWidget(
                              text: "View Profile",
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.redAccent,
                        child: SizedBox(
                          height: screenHeight * 0.045,
                          width: screenWidth * 0.25,
                          child: Center(
                            child: NormalTextWidget(
                              text: "Logout",
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            VerticalSpace(height: screenHeight * 0.02),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LateInstallmentsReportPage(),
                  ),
                );
              },
              child: Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.6,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.darkPurple,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.payment,
                      color: AppColors.mainColor,
                      size: 20,
                    ),
                    HorizontalSpace(width: screenWidth * 0.03),
                    NormalTextWidget(
                      text: "Installments",
                      color: AppColors.mainColor,
                    )
                  ],
                ),
              ),
            ),
            VerticalSpace(height: screenHeight * 0.02),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CustomersPage(),
                  ),
                );
              },
              child: Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.6,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.darkPurple,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.people,
                      color: AppColors.mainColor,
                      size: 20,
                    ),
                    HorizontalSpace(width: screenWidth * 0.03),
                    NormalTextWidget(
                      text: "Customers",
                      color: AppColors.mainColor,
                    )
                  ],
                ),
              ),
            ),
            VerticalSpace(height: screenHeight * 0.02),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReportsPage(),
                  ),
                );
              },
              child: Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.6,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.darkPurple,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.report,
                      color: AppColors.mainColor,
                      size: 20,
                    ),
                    HorizontalSpace(width: screenWidth * 0.03),
                    NormalTextWidget(
                      text: "Reports",
                      color: AppColors.mainColor,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
