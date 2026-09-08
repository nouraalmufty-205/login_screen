import 'package:custom_checkbox_plus/custom_checkbox_plus.dart';
import 'package:flutter/material.dart';

class FilterScreenState extends StatefulWidget {
  final List<String> labels;
  const FilterScreenState({super.key, required this.labels});

  @override
  State<FilterScreenState> createState() => _FilterScreenStateState();
}

class _FilterScreenStateState extends State<FilterScreenState> {
  Set<String> selectedCategories = {};
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.labels.map((label) {
        final checked = selectedCategories.contains(label);
        return Row(
          children: [
            CustomCheckBox(
              activeBorderColor: Colors.transparent,
              activeFillColor: Color(0xff53B175),
              value: checked,
              onChanged: (v) {
                setState(() {
                  if (v) {
                    selectedCategories.add(label);
                  } else {
                    selectedCategories.remove(label);
                  }
                });
              },
            ),
            const SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(
                color: checked ? Color(0xff53B175) : Colors.black,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
