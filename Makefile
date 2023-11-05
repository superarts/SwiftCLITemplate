NAME=swift-cli-template

all: clean debug
	./$(NAME)

debug:
	swift build
	cp ./.build/debug/$(NAME) .

release:
	swift build -c release
	cp ./.build/release/$(NAME) .

clean:
	rm -rf $(NAME)
