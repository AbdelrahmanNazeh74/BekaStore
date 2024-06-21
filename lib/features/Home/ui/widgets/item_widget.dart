import 'package:beka_store/features/Home/data/items_response.dart';
import 'package:flutter/material.dart';
import 'package:beka_store/core/constants/colors.dart';
import 'package:beka_store/core/widgets/normal_text.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ItemWidget extends StatefulWidget {
  final ItemResponse item;

  const ItemWidget({
    super.key,
    required this.item,
  });

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      width: screenWidth,
      height: screenHeight * 0.45,
      decoration: BoxDecoration(
        color: AppColors.darkPurple,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image slider
              Container(
                color: AppColors.mainColor,
                height: screenHeight * 0.25,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: screenHeight * 0.25,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                  ),
                  items: widget.item.imageUrl.map((url) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: screenWidth,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            image: DecorationImage(
                              image: AssetImage(url),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              // Product details
              Container(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NormalTextWidget(
                      text: widget.item.name,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.mainColor,
                    ),
                    NormalTextWidget(
                      text: '\$${widget.item.price}',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.mainColor,
                    ),
                    NormalTextWidget(
                      text: widget.item.details,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mainColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 12,
            right: 12,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: isSelected ? AppColors.darkPurple : Colors.transparent,
                ),
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: isSelected ? AppColors.mainColor : Colors.grey,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
