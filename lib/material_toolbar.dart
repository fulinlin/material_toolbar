library material_toolbar;

import 'dart:html' show Event;
import 'package:angular2/core.dart'
    show Component, EventEmitter, Input, Output;
import 'package:angular2_components/angular2_components.dart'
    show GlyphComponent, MaterialButtonComponent;

/// 
/// Material toolbar for Angular2. 
/// Essentially a port of the Polymer [paper-toolbar](https://github.com/PolymerElements/paper-toolbar).
///
/// ```html
/// <!-- Standard size -->
/// <material-toolbar icon="menu" (iconClick)="toggleSidenav()" title="Title">
/// <div class="right-content">
/// <!-- Right-side content -->
/// <material-button icon>
/// <glyph icon="search"></glyph>
/// </material-button>
/// </div>
/// </material-toolbar>
/// 
/// <!-- Medium -->
/// <material-toolbar icon="menu" (iconClick)="toggleSidenav()" middleTitle="Middle Title" mediumTall>
/// <div class="right-content">
/// <!-- Right-side content -->
/// <material-button icon>
/// <glyph icon="search"></glyph>
/// </material-button>
/// </div>
/// <div class="middle-content">
/// Appears in the middle row
/// </div>
/// </material-toolbar>
/// 
/// <!-- Tall -->
/// <material-toolbar icon="menu" (iconClick)="toggleSidenav()" bottomTitle="Bottom Title" tall>
/// <div class="right-content">
/// <!-- Right-side content -->
/// <material-button icon>
/// <glyph icon="search"></glyph>
/// </material-button>
/// </div>
/// <div class="middle-content">
/// Appears in the middle row
/// </div>
/// <div class="bottom-content">
/// Appears in the bottom row
/// </div>
/// 
/// <!-- Attach content to the bottom -->
/// <material-progress class="fit" [indeterminate]="true"></material-progress>
/// </material-toolbar>
/// ```
@Component(
    selector: 'material-toolbar',
    templateUrl: 'material_toolbar.html',
    styleUrls: const ['material_toolbar.css'],
    directives: const [GlyphComponent, MaterialButtonComponent])
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
  String title, middleTitle, bottomTitle;

  @Input()
  String width = '100%';

  String get boxShadow =>
      '0 ${elevation}px 6px rgba(0,0,0,0.16), 0 ${elevation}px 6px rgba(0,0,0,0.23)';

  @Output()
  final EventEmitter<Event> iconClick = new EventEmitter<Event>();

  void handleClick(Event e) => iconClick.add(e);
}
