# material_toolbar
Material toolbar for Angular2. 
Essentially a port of the Polymer [paper-toolbar](https://github.com/PolymerElements/paper-toolbar).

```html
<!-- Standard size -->
<material-toolbar icon="menu" (iconClick)="toggleSidenav()" title="Title">
    <div class="right-content">
        <!-- Right-side content -->
          <material-button icon>
            <glyph icon="search"></glyph>
          </material-button>
    </div>
</material-toolbar>

<!-- Medium -->
<material-toolbar icon="menu" (iconClick)="toggleSidenav()" middleTitle="Middle Title" mediumTall>
    <div class="right-content">
        <!-- Right-side content -->
          <material-button icon>
            <glyph icon="search"></glyph>
          </material-button>
    </div>
    <div class="middle-content">
        Appears in the middle row
    </div>
</material-toolbar>

<!-- Tall -->
<material-toolbar icon="menu" (iconClick)="toggleSidenav()" bottomTitle="Bottom Title" tall>
    <div class="right-content">
        <!-- Right-side content -->
          <material-button icon>
            <glyph icon="search"></glyph>
          </material-button>
    </div>
    <div class="middle-content">
        Appears in the middle row
    </div>
    <div class="bottom-content">
        Appears in the bottom row
    </div>
    
    <!-- Attach content to the bottom -->
    <material-progress class="fit" [indeterminate]="true"></material-progress>
</material-toolbar>
```
