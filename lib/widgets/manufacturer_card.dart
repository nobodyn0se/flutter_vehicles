import 'package:flutter/material.dart';
import 'package:flutter_vehicle_makes/models/vehicle_manufacturer.dart';
import 'package:get/get.dart';

import '../theme/app_theme.dart';

class ManufacturerCard extends StatelessWidget {
  const ManufacturerCard({
    super.key,
    required this.vehicleManufacturer,
  });

  final VehicleManufacturer vehicleManufacturer;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 7,
      child: Material(
        // needed for InkWell ripple effects
        child: InkWell(
          onTap: () {
            // Route to show makes for a given manufacturer
            Get.toNamed('/details/${vehicleManufacturer.manufacturerID}',
                arguments: vehicleManufacturer.manufacturerCommonName ??
                    vehicleManufacturer.manufacturerName);
          },
          child: Ink(
            // replaces Container to display ripples
            decoration: const BoxDecoration(
              gradient: AppTheme.cardLinearGradient,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vehicleManufacturer.manufacturerCommonName ??
                        vehicleManufacturer.manufacturerName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      //fontFamily: "monospace",
                    ),
                  ),
                  Text(
                    vehicleManufacturer.country,
                    style: const TextStyle(
                      color: Color(0xFFDCCECE),
                      fontSize: 18,
                    ),
                  ),
                  Text('${vehicleManufacturer.manufacturerID}'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
