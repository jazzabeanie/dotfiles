Phoenix.set({
  openAtLogin: true
});

// Maximize window
Key.on('return', ['control', 'option'], () => {
  Window.focused().maximize();
});

// Define a variable to keep track of the window position
let windowPositionL = 0; // 0: initial, 1: top right, 2: bottom right

Key.on('l', ['control', 'option'], () => {
  const screen = Screen.main();
  const window = Window.focused();
  
  if (window) {
    const screenWidth = screen.frame().width;
    const halfWidth = screenWidth / 2;
    const halfHeight = screen.frame().height / 2;

    if (
      window.size().width != halfWidth ||
      window.topLeft().x != halfWidth
    ) {
      windowPositionL = 0
    }

    switch (windowPositionL) {
      case 0: // Initial position (left half)
        window.setFrame({
          x: halfWidth,
          y: 0,
          width: halfWidth,
          height: screen.frame().height
        });
        windowPositionL = 1; // Update position to top right
        break;
      case 1: // Top right position
        window.setFrame({
          x: halfWidth,
          y: halfHeight,
          width: halfWidth,
          height: halfHeight
        });
        windowPositionL = 2; // Update position to bottom right
        break;
      case 2: // Bottom right position
        window.setFrame({
          x: halfWidth,
          y: 0,
          width: halfWidth,
          height: halfHeight
        });
        windowPositionL = 0; // Update position back to initial (left half)
        break;
      default:
        break;
    }
  }
});

// Define a variable to keep track of the window position for 'h' key binding
let windowPositionH = 0; // 0: initial (left half)

Key.on('h', ['control', 'option'], () => {
  // console.log("setting left")
  const screen = Screen.main();
  const window = Window.focused();
  
  if (window) {
    const screenWidth = screen.frame().width;
    const halfWidth = screenWidth / 2;
    const halfHeight = screen.frame().height / 2;

    // console.log(`window.size().width  = ${window.size().width}`)
    // console.log(`halfWidth = ${halfWidth}`)
    // console.log(`window.topLeft().x = ${window.topLeft().x}`)
    // console.log("-----")
    // console.log(`window.size().width != halfWidth = ${window.size().width != halfWidth}`)
    // console.log(`window.topLeft().x != 0 = ${window.topLeft().x != 0}`)
    
    if (
      window.size().width != halfWidth ||
      window.topLeft().x != 0
    ) {
      // console.log("setting windowPositionH = 0")
      windowPositionH = 0
    } else {
      // console.log("not setting")
    }
    // console.log(`windowPositionH = ${windowPositionH}`)
    switch (windowPositionH) {
      case 0: // Initial position (left half)
        window.setFrame({
          x: 0,
          y: 0,
          width: halfWidth,
          height: screen.frame().height
        });
        windowPositionH = 1; // Update position to top right
        break;
      case 1: // Top right position
        window.setFrame({
          x: 0,
          y: halfHeight,
          width: halfWidth,
          height: halfHeight
        });
        windowPositionH = 2; // Update position to bottom right
        break;
      case 2: // Bottom right position
        window.setFrame({
          x: 0,
          y: 0,
          width: halfWidth,
          height: halfHeight
        });
        windowPositionH = 0; // Update position back to initial (left half)
        break;
      default:
        break;
    }
  }
});
