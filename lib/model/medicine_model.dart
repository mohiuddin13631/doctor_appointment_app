class MedicineModel {
  int? quantity = 1;
  var favorite = false;
  String? img;
  String? name;
  int? price;
  String? description;
  int? number_of_tablets;

  MedicineModel({required this.img, required this.name, required this.price,
    required this.description, this.number_of_tablets});
}

List<MedicineModel> medicineDataList = [
  MedicineModel(
    img: "assets/images/medicine/medicine1.png",
    name: "molcoluck",
    price: 250,
    number_of_tablets: 0,
    description: "Magnesium is a cofactor in more than 300 enzyme systems that regulate diverse biochemical reactions in the body, including protein synthesis, muscle and nerve function, blood glucose control, and blood pressure regulation [1-3]. Magnesium is required for energy production, oxidative phosphorylation, and glycolysis.",

  ),
  MedicineModel(
    img: "assets/images/medicine/medicine2.png",
    name: "Iron Gold",
    price: 300,
    number_of_tablets: 0,
    description: "Magnesium is a cofactor in more than 300 enzyme systems that regulate diverse biochemical reactions in the body, including protein synthesis, muscle and nerve function, blood glucose control, and blood pressure regulation [1-3]. Magnesium is required for energy production, oxidative phosphorylation, and glycolysis.",

  ),
  MedicineModel(
    img: "assets/images/medicine/medicine3.png",
    name: "Cough Syroup",
    price: 200,
    number_of_tablets: 0,
    description: "Magnesium is a cofactor in more than 300 enzyme systems that regulate diverse biochemical reactions in the body, including protein synthesis, muscle and nerve function, blood glucose control, and blood pressure regulation [1-3]. Magnesium is required for energy production, oxidative phosphorylation, and glycolysis.",

  ),
  MedicineModel(
    img: "assets/images/medicine/medicine4.png",
    name: "Agavit",
    price: 400,
    number_of_tablets: 0,
    description: "Magnesium is a cofactor in more than 300 enzyme systems that regulate diverse biochemical reactions in the body, including protein synthesis, muscle and nerve function, blood glucose control, and blood pressure regulation [1-3]. Magnesium is required for energy production, oxidative phosphorylation, and glycolysis.",

  ),
  MedicineModel(
    img: "assets/images/medicine/medicine5.png",
    name: "Paracetamal",
    price: 430,
    number_of_tablets: 100,
    description: "Magnesium is a cofactor in more than 300 enzyme systems that regulate diverse biochemical reactions in the body, including protein synthesis, muscle and nerve function, blood glucose control, and blood pressure regulation [1-3]. Magnesium is required for energy production, oxidative phosphorylation, and glycolysis.",
  ),
];