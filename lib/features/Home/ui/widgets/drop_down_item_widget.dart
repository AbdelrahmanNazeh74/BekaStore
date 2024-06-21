import 'package:beka_store/core/constants/colors.dart';
import 'package:beka_store/core/widgets/normal_text.dart';
import 'package:beka_store/features/Home/data/filter_response.dart';
import 'package:flutter/material.dart';

class DropdownItemWidget extends StatefulWidget {
  final FilterResponse filterResponse;
  final int index;

  const DropdownItemWidget(
      {super.key, required this.filterResponse, required this.index});

  @override
  _DropdownItemWidgetState createState() => _DropdownItemWidgetState();
}

class _DropdownItemWidgetState extends State<DropdownItemWidget> {
  String? selectedItem;

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: widget.filterResponse.options.map((option) {
            return ListTile(
              title: Text(option),
              onTap: () {
                setState(() {
                  selectedItem = option;
                });
                Navigator.pop(context);
              },
            );
          }).toList(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showBottomSheet(context);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.light3Purple,
        ),
        child: Center(
          child: NormalTextWidget(
            text: selectedItem ?? widget.filterResponse.name,
            color: AppColors.mainColor,
          ),
        ),
      ),
    );
  }
}
