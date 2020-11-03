 import 'package:challenge_deux/model/shoe_model.dart';

class UserModel{

  final int id;
  final String nom;
  final String adresse;
  final List<ShoeModel> shoes;


  UserModel({this.id, this.nom, this.adresse, this.shoes});

  
}