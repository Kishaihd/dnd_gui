import 'package:angular2/angular2.dart';
import 'package:polymer_elements/iron_flex_layout/classes/iron_flex_layout.dart';
import 'package:polymer_elements/iron_icons.dart';
import 'package:polymer_elements/paper_header_panel.dart';
import 'package:polymer_elements/paper_toolbar.dart';
import 'package:polymer_elements/paper_icon_button.dart';

/// Are all of these Unnecessary?
//import '../../views/ability_view/ability_view.dart';
import '../../views/abilities_view/abilities_view.dart';
import '../../model/newCharacter.dart';
//import '../../model/ability.dart';
//import '../../model/alignment.dart';
//import '../../model/background.dart';
//import '../../model/character_class.dart';
//import '../../model/conditions.dart';
//import '../../model/dice.dart';
//import '../../model/entity.dart';
//import '../../model/equipment.dart';
//import '../../model/features.dart';
//import '../../model/global.dart';
//import '../../model/modify.dart';
//import '../../model/race.dart';
//import '../../model/skill.dart';
//import '../../model/speed.dart';
//import '../../model/stats.dart';
//import '../../model/trait.dart';



@Component(
    selector: 'main-app',
    encapsulation: ViewEncapsulation.Native,
    directives: const [AbilitiesView],
    templateUrl: 'main_app.html'
)
class MainApp {
  //Stats stats;
  //String name;
  bool done;
  String message;

  MainApp() {
    reset();
  }

  void reset() {
    //stats = new Stats();
    done = false;
  }

//  void setStat(String st, int val) {
//    stats.abilities.forEach((k, v) {
//      if (k == st) {
//        v = val;
//        return v;
//      }
//      else {
//        return -1;
//      }
//    });
//    done = checkForDone();
//  }

//  bool checkForDone() {
//    int done = 1;
//    if (stats.hitPoints <= 0) {
//      done = stats.hitPoints;
//    }
//    stats.abilities.forEach((k, v) {
//      if (v <= 0) {
//        done = v;
//      }
//    });
//    if (done > 0) {
//      return true;
//    }
//    else {
//      return false;
//    }
//  }

}
