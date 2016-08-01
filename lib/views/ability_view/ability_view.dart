import 'package:angular2/angular2.dart';
//import 'dart:html';
import 'package:polymer/polymer.dart';
import '../../model/ability.dart';
import '../../model/newCharacter.dart';
import '../../model/global.dart';


@Component(
    selector: 'ability-view',
    encapsulation: ViewEncapsulation.Native,
    templateUrl: 'ability_view.html'
)
class AbilityView {
  Ability ability;

  String abilityScore;
  int score;

  //abilityScore = (ability.score == null ? 0 : ability.score).toString();

  AbilityView() {
    if (abilityScore != null) {
      ability = new Ability(abilityScore);
    }
    if (score != null && score > 0) {
      ability.setAbilityScore(score);
    }
    else {
      /// Setting default scores to 8 for now.
      ability.setAbilityScore(8);
    }
  }



  void onAbilityScoreChange(oldValue) {
    log.info("$runtimeType::abilityScoreChanged()");
    // Do validation on the parsed string (inputValue)
    if (oldValue != null) {
      if (int.parse(oldValue) == int) {
        int val = int.parse(oldValue);
        if (val < 20 && val >= 0) {
          ability.setAbilityScore(val);
        }
      }
    }
    // if it passes, set the ability.score to that value.
    // otherwise... eat a butt.
    //
  }

//  void setName(Event event, var detail, Element target) {
//    log.info("$runtimeType::setName()");
//    ability.setName(abilityName);
//  }

//  void keySubmit(KeyboardEvent event, var detail, Element target) {
//    log.info("$runtimeType::keySubmit()");
//    if (event.keyCode == KeyCode.ENTER) {
//      document.getElementById('abilityBox');
//
//      //    ability.setAbilityScore(abilityScore);
//    }
//  }
}