import 'package:flutter/material.dart';
import 'package:flutter_vehicle_makes/models/vehicle_manufacturer.dart';

class ManufacturerCard extends StatelessWidget {
  const ManufacturerCard({
    super.key,
    required this.vehicleManufacturer,
  });

  final VehicleManufacturer vehicleManufacturer;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 7,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF8672F3),
                Color(0xFF7763DC),
                Colors.purpleAccent,
                Colors.amber,
              ]),
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
    );
  }
}
