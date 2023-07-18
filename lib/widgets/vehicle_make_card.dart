import 'package:flutter/material.dart';

import '../models/vehicle_make.dart';

class VehicleMakeCard extends StatelessWidget {
  const VehicleMakeCard({
    super.key,
    required this.vehicleMake,
  });

  final VehicleMake vehicleMake;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5,
      color: Colors.cyan.shade100,
      child: Container(
        // inner content padding
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              vehicleMake.makeName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              vehicleMake.manufacturerName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
