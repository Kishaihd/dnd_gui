/// Necessary?
library views.abilities;

import 'package:angular2/angular2.dart';
import 'dart:html';
import 'package:polymer/polymer.dart';
import '../../model/global.dart';
//import '../../model/entity.dart';
import '../../model/ability.dart';
import '../../views/ability_view/ability_view.dart';
//import '../../model/newCharacter.dart';
import 'package:polymer_elements/paper_toast.dart';

// To use!
//<abilities-view abList = {{model.player.abilitiesList}}></abilities-view>


@Component(
    selector: 'abilities-view',
    encapsulation: ViewEncapsulation.Native,
    directives: const [AbilityView],
    templateUrl: 'abilities_view.html'
)
class AbilitiesView {
  List<Ability> abList; // = newCharacter.abilitiesList;

  PaperToast pt;

  AbilitiesView() {
    log.info("${runtimeType}::attached()");
    //pt = $['acceptedToast'];
  }

//  // a sample event handler function
//  void eventHandler(Event event, var detail, Element target) {
//    log.info("$runtimeType::eventHandler()");
//  }

  void randStats(Event event, var detail, Element target) {
    log.info("$runtimeType::randStat()");
    abList.forEach((Ability ab) {
      ab.setAbilityScore(ab.roll());
    });
  }

  void abilitiesSubmit() {
    log.info("$runtimeType::abilitiesSubmit()");
    pt.toggle();

//    model.character.setAbilitiesByList(model.character.ab abList);
    // If they're updating/setting in real-time,
    //do I need to do anything here?
    //pt.show();
  }


  void closeToast() {
    if (pt.opened == true) {
      pt.toggle();
    }
  }

}