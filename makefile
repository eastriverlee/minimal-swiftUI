NAME=example
SRC=src/*.swift

$(NAME): $(SRC)
	swiftc -o $(NAME) $(SRC)
	mkdir -p $(NAME).app/Contents/MacOS/
	mv $(NAME) $(NAME).app/Contents/MacOS/
	open -a $(NAME)

clean:
	rm -rf $(NAME).app

.PHONY: clean
