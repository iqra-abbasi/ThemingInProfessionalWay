import 'package:flutter/material.dart';
import 'package:themingwithprofessionalway/utils/app_colors.dart';


class CustomSwitch extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final String? status;
  final String? imagePath;
  final bool value;
  final void Function(bool) onChanged;

  const CustomSwitch({
    super.key,
    required this.titleText,
    required this.subtitleText,
    required this.value,
    required this.onChanged,
    this.status,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleText,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color:  Theme.of(context).textTheme.bodySmall!.color,
              ),

            ),

           SizedBox(height: 4,),

            SizedBox(
              width: 200,
              child: Text(
                textAlign: TextAlign.justify,
                maxLines: 5,
                subtitleText,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color:  Theme.of(context).textTheme.bodySmall!.color,
                ),

              ),
            ),
          ],
        ),
        Column(
          children: [
            Switch(
              value: value,
              onChanged: onChanged,
              activeTrackColor: AppColors.blueBC,
              focusColor: AppColors.whiteFF,
              inactiveThumbColor: AppColors.whiteFF,
              inactiveTrackColor: Colors.white38,
              //  trackOutlineColor:
              // const WidgetStatePropertyAll(Color(0x00000000)),
              //  thumbColor: value
              //     ? WidgetStateProperty.all(Colors.white54)
              //      : WidgetStateProperty.all(Colors.white12),
            ),

            status != null
                ? Text(
              status!,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color:  Theme.of(context).textTheme.bodySmall!.color,
              ),
            )
                : const SizedBox.shrink()
          ],
        ),
      ],
    );
  }
}
