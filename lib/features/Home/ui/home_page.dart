import 'package:beka_store/core/constants/colors.dart';
import 'package:beka_store/core/widgets/normal_text.dart';
import 'package:beka_store/features/Home/data/filter_response.dart';
import 'package:beka_store/features/Home/data/items_response.dart';
import 'package:beka_store/features/Home/ui/widgets/drop_down_item_widget.dart';
import 'package:beka_store/features/Home/ui/widgets/home_drawer.dart';
import 'package:beka_store/features/Home/ui/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/Spaces.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<FilterResponse> options = [
    FilterResponse('Option', ['installment', 'Buy']),
    FilterResponse('Price', ['\$0 - \$100', '\$100 - \$500', '\$500+']),
    FilterResponse('Category', ['Phone', 'Accessory']),
  ];

  final List<ItemResponse> items = [
    ItemResponse(
      imageUrl: [
        'assets/images/EbadElRahman_logo.png',
        'assets/images/EbadElRahman_logo.png',
        'assets/images/EbadElRahman_logo.png'
      ],
      name: 'Item 1',
      price: 99.99,
      category: 'Phone',
      option: 'installment',
      details: 'Details about Item 1',

    ),
    ItemResponse(
      imageUrl: [
        'assets/images/EbadElRahman_logo.png',
        'assets/images/EbadElRahman_logo.png',
        'assets/images/EbadElRahman_logo.png'
      ],
      name: 'Item 2',
      price: 99.99,
      category: 'Accessory',
      option: 'Buy',
      details: 'Details about Item 1',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: NormalTextWidget(
          text: 'Beka Store',
          fontSize: 16,
          color: AppColors.darkPurple,
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      drawer: const HomeDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenWidth * 0.75,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search, size: 20),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.darkPurple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.filter_list,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              VerticalSpace(height: screenHeight * 0.02),
              SizedBox(
                height: screenHeight * 0.05,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: options.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: screenWidth * 0.3,
                      margin: const EdgeInsets.only(right: 8.0),
                      child: DropdownItemWidget(
                          filterResponse: options[index], index: index),
                    );
                  },
                ),
              ),
              VerticalSpace(height: screenHeight * 0.02),
              const BuildHorizontalDivider(),
              VerticalSpace(height: screenHeight * 0.02),
              Column(
                children: [
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return ItemWidget(
                        item: item
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
