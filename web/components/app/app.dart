import 'package:angular2/core.dart' show Component;
import 'package:angular_components/angular_components.dart'
    show materialDirectives;
import 'package:material_toolbar/material_toolbar.dart';

@Component(
    selector: 'example-app',
    templateUrl: 'app.html',
    styleUrls: const ['app.css'],
    directives: const [materialDirectives, MaterialToolbarComponent])
class AppComponent {
  int elevation = 2;
  String background = '#3f51b5',
      foreground = 'white',
      icon = 'menu',
      title = 'Material Toolbar Example';
  String middleText = 'Middle Text', bottomText = 'Bottom Text';
  String size = 'standard';

  void up() {
    elevation++;
  }

  void down() {
    if (elevation > 0) elevation--;
  }
}
