import 'dart:html' show Event;
import 'package:angular2/core.dart' show Component, EventEmitter, Input, Output;
import 'package:angular2_components/angular2_components.dart'
    show materialDirectives, materialProviders;

@Component(
    selector: 'material-toolbar',
    templateUrl: 'material_toolbar.html',
    styleUrls: const ['material_toolbar.css'],
    directives: const [materialDirectives],
    providers: const [materialProviders])
class MaterialToolbarComponent {
  @Input()
  String background = '#4285f4';

  @Input()
  int elevation = 2;

  @Input()
  String foreground = '#ffffff';

  @Input()
  String height = '64px;';

  @Input()
  String icon;

  @Input()
  bool mediumTall;

  @Input()
  bool tall;

  @Input()
  String title;

  @Input()
  String width = '100%';

  String get boxShadow =>
      '0 ${elevation}px 6px rgba(0,0,0,0.16), 0 ${elevation}px 6px rgba(0,0,0,0.23)';

  @Output()
  final EventEmitter<Event> iconClick = new EventEmitter<Event>();

  void handleClick(Event e) => iconClick.add(e);
}
