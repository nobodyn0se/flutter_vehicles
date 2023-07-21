import 'package:flutter/material.dart';
import 'package:flutter_vehicle_makes/theme/app_theme.dart';

class VehicleDetailsCard extends StatelessWidget {
  const VehicleDetailsCard(
      {super.key,
      this.color,
      required this.titleTextColor,
      required this.subtitleTextColor,
      required this.title,
      required this.subtitle,
      required this.onClick});

  final Color? color;
  final Color titleTextColor, subtitleTextColor;
  final String title, subtitle;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5,
      color: color ?? Colors.cyan.shade100,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.cyan,
          onTap: onClick,
          child: Container(
            // inner content padding
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextTheme.textTitleLight,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextTheme.textSubtitleLight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
