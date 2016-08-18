//import 'package:angular2/core.dart';
import 'package:angular2/angular2.dart';
import 'package:polymer_elements/iron_flex_layout/classes/iron_flex_layout.dart';
import 'package:polymer_elements/iron_icons.dart';
import 'package:polymer_elements/paper_header_panel.dart';
import 'package:polymer_elements/paper_toolbar.dart';
import 'package:polymer_elements/paper_card.dart';

/// Are all of these Unnecessary?
//import '../../views/ability_view/ability_view.dart';
import '../../views/abilities_view/abilities_view.dart';
import '../../views/skills_view/skills_view.dart';
import '../../model/newCharacter.dart';
import '../../model/ability.dart';
import '../../model/alignment.dart';
import '../../model/background.dart';
import '../../model/character_class.dart';
import '../../model/conditions.dart';
import '../../model/dice.dart';
import '../../model/entity.dart';
import '../../model/equipment.dart';
import '../../model/features.dart';
import '../../model/global.dart';
import '../../model/modify.dart';
import '../../model/race.dart';
import '../../model/skill.dart';
import '../../model/speed.dart';
import '../../model/stats.dart';
import '../../model/trait.dart';


@Component(
    selector: 'character-view',
    encapsulation: ViewEncapsulation.Native,
    directives: const [AbilitiesView, SkillsView],
    templateUrl: 'character_view.html'
//    template: '''
//      <h1>{{name}}</h1>
//      <h2>{{cClass}}</h2>
//      <h2>{{cRace}}</h2>
//    '''
)
//class AppComponent {
class CharacterView {
  //@Input() Entity newCharacter;
  @Input() Entity model = new Entity(); // Necessary?
  @Input() String name = ""; // = newCharacter.name;
  @Input() int hp = 0;
  //List<Ability> abilitiesList = newCharacter.abilities;
  String myHero = 'Windstorm'; // Wtf?

  CharacterView();


}