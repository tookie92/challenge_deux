import 'package:challenge_deux/model/shoe_model.dart';
import 'package:challenge_deux/model/user_model.dart';



final currentUser = UserModel(
    id: 1,
    nom: "Joseph Ikinda",
    adresse:"Koblenz",
    shoes:[
      ShoeModel(
          nom: "Air one",
          prix: 200.0,
          description:
          'Lorem ipsum dolor',
          imgPath: 'assets/images/rouge.png',
        
      ),
      ShoeModel(
          nom: "Air second",
          prix: 200.0,
          description:
          'Lorem ipsum dolor sit amet consectetur',
          imgPath: 'assets/images/rouge.png',

      ),
      ShoeModel(
          nom: "Papa Ikos",
          prix: 200.0,
          description:
          'Lorem ipsum dolor ',
          imgPath: 'assets/images/shoe_tilt_2.png',

      ),
      ShoeModel(
          nom: "Air third",
          prix: 200.0,
          description:
          'Lorem ipsum dolor',
          imgPath: 'assets/images/rouge.png',

      ),
      ShoeModel(
          nom: "Air fourth",
          prix: 200.0,
          description:
          'Lorem ipsum dolor',
          imgPath: 'assets/images/blue.png',
      ),
    ]



);
