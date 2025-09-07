CC=gcc
CFLAGS=-Wall -Wextra -g
SRC_DIR=src
BUILD_DIR=build
LDFLAGS=
LIBS=

all: $(BUILD_DIR)/main

$(BUILD_DIR)/main: $(SRC_DIR)/main.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS) $(LIBS)

build:
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)/*

.PHONY: all clean