# minimal-swiftUI

# build && run
```zsh
make
```

# about
![screenshot of an application that says hello world](https://github.com/eastriverlee/minimal-swiftUI/blob/master/screenshot.png?raw=true)
this is a minimal swiftUI app example for **bloated** xcode haters.  
*(i made this in terminal using vim to test if it is manageable to make a GUI app without xcode)*  
i hope this brings the better future for mac GUI developement.

# how it works
### `entry.swift`
an entry point file with `@main` attribute of any name except for `main.swift`.
### `content.swift`
a separate file for `@main` attribute to work.  
you need at least two files for `@main`.
### `makefile`
a makefile that packages a macOS app to run cleanly  
by just moving the compiled execution file to `minimal-swiftUI.app/Contents/MacOS`.  

however, running a plain executable also works:
```zsh
swiftc src/*.swift && ./main
```
still, running a binary file directly in macOS opens up a terminal  
and focuses on that window instead of the intended program window.  
making it more suitable for debugging purpose instead.  
`.onDisappear { exit(0) }` in `entry.swift` is only required for binary file execution.

thus, makefile below can be the real-world example:
```makefile
NAME=minimal-swiftUI
SRC=src/*.swift

$(NAME): $(SRC)
	swiftc -o $(NAME) $(SRC)
	mkdir -p $(NAME).app/Contents/MacOS/
	mv $(NAME) $(NAME).app/Contents/MacOS/
	open $(NAME).app

debug: $(SRC)
	swiftc $(SRC) && ./main

clean:
	rm -rf $(NAME).app
	rm main

re: clean $(NAME)

.PHONY: debug clean re
```
