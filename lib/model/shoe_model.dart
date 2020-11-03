import 'package:challenge_deux/model/categorie_model.dart';

class ShoeModel{

  final int id;
  final String nom;
  final double prix;
  final String description;
  final String imgPath;
  final List<CategorieModel> categorie;



 ShoeModel({this.id, this.nom, this.prix, this.description, this.imgPath, this.categorie});


}