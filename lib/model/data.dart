import 'package:challenge_deux/model/shoe_model.dart';
import 'package:challenge_deux/model/user_model.dart';



final currentUser = UserModel(
    id: 1,
    nom: "Joseph Ikinda",
    adresse:"56070 Koblenz, Johannesstr. 16",
    shoes:[
      ShoeModel(
          nom: "Air one",
          prix: 200.0,
          description:
          'Lorem ipsum dolor',
          imgPath: 'rouge.png',
          like: true
      ),
      ShoeModel(
          nom: "Air second",
          prix: 200.0,
          description:
          'Lorem ipsum dolor sit amet consectetur',
          imgPath: 'shoees.png',
          like: true
      ),
      ShoeModel(
          nom: "Papa Ikos",
          prix: 200.0,
          description:
          'Lorem ipsum dolor ',
          imgPath: 'shooe_tilt_1.png',
          like: true

      ),
      ShoeModel(
          nom: "Air third",
          prix: 200.0,
          description:
          'Lorem ipsum dolor',
          imgPath: 'revolt.png',
          like: true

      ),
      ShoeModel(
          nom: "Air fourth",
          prix: 200.0,
          description:
          'Lorem ipsum dolor',
          imgPath: 'blue.png',
          like: true
      ),
    ]



);
