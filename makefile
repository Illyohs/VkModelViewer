NAME=VkModleViewer
MAJOR=0
MINOR=0
PATCH=0
VERSION=$(MAJOR).$(MINOR).$(PATCH)
BIN=Build/$(VERSION)

SRC=src/*.cpp
LDFLAGS =`pkg-config --static --libs glfw3` -lvulkan -std=c++11

build: makebin
	g++ $(SRC) $(LDFLAGS) -o $(BIN)/$(NAME)-$(VERSION)


makebin:
	mkdir -p $(BIN)