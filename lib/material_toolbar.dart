library material_toolbar;

import 'dart:async';
import 'dart:html' show Event;
import 'package:angular2/core.dart' show Component, Input, OnDestroy, Output;
import 'package:angular_components/angular_components.dart'
    show GlyphComponent, MaterialButtonComponent;
import 'package:angular_components/src/utils/async/src/lazy_stream_controller.dart';

///
/// Material toolbar for Angular2.
/// Essentially a port of the Polymer [paper-toolbar](https://github.com/PolymerElements/paper-toolbar).
///
/// ```html
/// <!-- Standard size -->
/// <material-toolbar icon="menu" (iconClick)="toggleSidenav()" title="Title">
///   <div class="right-content">
///     <!-- Right-side content -->
///     <material-button icon>
///       <glyph icon="search"></glyph>
///     </material-button>
///   </div>
/// </material-toolbar>
///
/// <!-- Medium -->
/// <material-toolbar icon="menu" (iconClick)="toggleSidenav()" middleTitle="Middle Title" mediumTall>
///   <div class="right-content">
///     <!-- Right-side content -->
///     <material-button icon>
///       <glyph icon="search"></glyph>
///     </material-button>
///   </div>
///   <div class="middle-content">
///     Appears in the middle row
///   </div>
/// </material-toolbar>
///
/// <!-- Tall -->
/// <material-toolbar icon="menu" (iconClick)="toggleSidenav()" bottomTitle="Bottom Title" tall>
///   <div class="right-content">
///     <!-- Right-side content -->
///     <material-button icon>
///       <glyph icon="search"></glyph>
///     </material-button>
///   </div>
/// <div class="middle-content">
///   Appears in the middle row
/// </div>
/// <div class="bottom-content">
///   Appears in the bottom row
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
class MaterialToolbarComponent implements OnDestroy {
  int _elevation = 2;

  @Input()
  String background = '#4285f4';

  @Input()
  void set elevation(int v) {
    if (v <= 0)
      _elevation = 0;
    else
      _elevation = v;
  }

  int get elevation => _elevation;

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

  String get boxShadow => elevation <= 0
      ? 'none'
      : '0 ${elevation}px 6px rgba(0,0,0,0.16), 0 ${elevation}px 6px rgba(0,0,0,0.23)';

  final StreamController<Event> _iconClick = new LazyStreamController<Event>.broadcast();

  @Output()
  Stream<Event> get iconClick => _iconClick.stream;

  void handleClick(Event e) => _iconClick.add(e);

  @override
  ngOnDestroy() {
    _iconClick.close();
  }
}
