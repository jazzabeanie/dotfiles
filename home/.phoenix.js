Phoenix.set({
  openAtLogin: true
});

// Maximize window
Key.on('return', ['control', 'option'], () => {
  Window.focused().maximize();
});

// Move window to left half
Key.on('h', ['control', 'option'], () => {
  const screen = Screen.main();
  const window = Window.focused();
  if (window) {
    const screenWidth = screen.frame().width;
    const halfWidth = screenWidth / 2;
    window.setFrame({
      x: 0,
      y: 0,
      width: halfWidth,
      height: screen.frame().height
    });
  }
});

// Move window to right half
Key.on('l', ['control', 'option'], () => {
  const screen = Screen.main();
  const window = Window.focused();
  if (window) {
    const screenWidth = screen.frame().width;
    const halfWidth = screenWidth / 2;
    window.setFrame({
      x: halfWidth,
      y: 0,
      width: halfWidth,
      height: screen.frame().height
    });
  }
});
