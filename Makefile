# variable for app name
APP_NAME = game.bin

# variable for flags
FLAGS = -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

# path to the source files
SRC_PATH = ./src

# path to the bin directory
BIN_PATH = ./bin

build:./$(SRC_PATH)/main.cpp
	mkdir -p $(BIN_PATH)
	g++ -c $(SRC_PATH)/main.cpp -o $(BIN_PATH)/main.o
	g++ $(BIN_PATH)/main.o -o $(APP_NAME) $(FLAGS)

run:
	./$(APP_NAME)

build-run: build run

clean:
	rm -f $(BIN_PATH)/*.o $(APP_NAME)