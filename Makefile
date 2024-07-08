# variable for app name
APP_NAME = game.bin

# variable for flags
FLAGS = -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

# path to the source files
SRC_PATH = ./src

build:./$(SRC_PATH)/main.cpp
	g++ -c $(SRC_PATH)/main.cpp -o main.o
	g++ main.o -o $(APP_NAME) $(FLAGS)

run:
	./$(APP_NAME)

build-run: build run

clean:
	rm -f *.o $(APP_NAME)