NAME=swift-cli-template

all: clean debug
	./$(NAME)

debug:
	swift build
	cp ./.build/debug/$(NAME) .

release: clean
	swift build -c release
	cp ./.build/release/$(NAME) .

test:
	swift test

clean:
	rm -rf $(NAME)