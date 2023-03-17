import 'package:doctor_appoinment_app/model/medicine_model.dart';
import 'package:get/get.dart';
class MedicineController extends GetxController{
  // var isFavorite = false.obs;

  List<MedicineModel> medicineList = [];

  loadMedicineModel(){
    for(int i = 0; i<medicineDataList.length; i++){
      medicineList.add(medicineDataList[i]);
    }
  }
  // void setFavorite(MedicineModel medicineModel){
  //   medicineModel.favorite = !medicineModel.favorite;
  //   update();
  // }
  void setFavorite(int index){
    medicineList[index].favorite = !medicineList[index].favorite;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadMedicineModel();
  }

}