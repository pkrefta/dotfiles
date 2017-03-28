Key.on('1', [ 'cmd', 'shift', 'alt' ], function () {

  var screen = Screen.main().flippedVisibleFrame();
  var window = Window.focused();

  window.maximize();
});
