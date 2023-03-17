import 'package:doctor_appoinment_app/controller/medicine_controller.dart';
import 'package:doctor_appoinment_app/model/medicine_model.dart';
import 'package:doctor_appoinment_app/widget/custom_color.dart';
import 'package:doctor_appoinment_app/widget/search_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/medicine_controller.dart';
class MedicineListPage extends StatelessWidget {
  MedicineListPage({Key? key}) : super(key: key);

  MedicineController medicineController = Get.put(MedicineController());
  TextEditingController searchController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: tealColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 5,),
            SearchField(formKey: _formKey, searchController: searchController,labelText: "Search Medicine",),
            SizedBox(height: 10,),
            Expanded(child: GridView.builder(
              itemCount: medicineDataList.length,
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: .7), itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  // color: Colors.grey,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: tealColor)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: .95,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(medicineDataList[index].img.toString()),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ),
                      // Image.asset(medicineDataList[index].img.toString(),width: 150,),
                      Text(medicineDataList[index].name.toString(),style: TextStyle(color: titleTxtColor,fontSize: 18,fontWeight: FontWeight.w500),),
                      Row(
                        children: [
                          Text("\$${medicineDataList[index].price}",style: TextStyle(color: titleTxtColor,fontSize: 16),),
                          Spacer(),
                          IconButton(onPressed: (){
                            // favoriteController.isFavorite.value = !favoriteController.isFavorite.value;
                            // medicineController.setFavorite(medicineDataList[index]);
                            medicineController.setFavorite(index);
                          }, icon: GetBuilder<MedicineController>(builder: (controller) {
                            return Icon(medicineController.medicineList[index].favorite == true? Icons.favorite:Icons.favorite_border,color: Colors.red,);
                          },)
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },))
          ],
        ),
      ),
    );
  }
}
