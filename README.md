# minimal-swiftUI

# build && run
```zsh
make
```

# about
this is a minimal swiftUI app example for **bloated** xcode haters.  
*(i made this in terminal using vim to test if it is possible to make a GUI app without xcode)*  
i hope this brings the better future for mac GUI developement.

# how it works
### `entry.swift`
an entry point file with `@main` attribute of any name except for `main.swift`.
### `content.swift`
a separate file for `@main` attribute to work.  
you need at least two files for `@main`.
### `makefile`
a makefile that packages a macOS app to run cleanly  
by just moving the compiled execution file to `example.app/Contents/MacOS`.  

however, running a plain executable also works:
```zsh
swiftc src/*.swift && ./main
```
still, running a binary file directly in macOS opens up a terminal  
and focuses on that window instead of the intended program window.
`.onDisappear { exit(0) }` in `entry.swift` is only required for binary file execution.
