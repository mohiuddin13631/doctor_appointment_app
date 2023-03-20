import 'package:doctor_appoinment_app/controller/medicine_controller.dart';
import 'package:flutter/material.dart';

import '../../model/medicine_model.dart';
class DetailsPage extends StatelessWidget {
  List<MedicineModel> medicine;
  int index;
  DetailsPage({required this.medicine,required this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("${medicine[index].name}"),
      ),
    );
  }
}