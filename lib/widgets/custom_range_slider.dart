import 'package:flutter/material.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({super.key});

  static const name = "custom_range_slider";

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues selectedRange = RangeValues(0, .8);
  String values = "\$200";

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: selectedRange,
      min: 0,
      max: 1,
      divisions: 10,
      onChanged: (value) {
        setState(() {
          selectedRange = value;

          switch (value.end) {
            case 1.0:
              values = "\$200";
              break;
            case 0.9:
              values = "\$190";
              break;
            case 0.8:
              values = "\$180";
              break;
            case 0.7:
              values = "\$170";
              break;
            case 0.6:
              values = "\$160";
              break;
            case 0.5:
              values = "\$150";
              break;
            case 0.4:
              values = "\$140";
              break;
            case 0.3:
              values = "\$130";
              break;
            case 0.2:
              values = "\$120";
              break;
            case 0.1:
              values = "\$110";
              break;

            default:
          }
        });
      },
      labels: RangeLabels("\$50", values),
    );
  }
}
