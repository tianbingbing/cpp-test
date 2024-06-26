TARGET = main_test
CXX=g++

SRCS = $(wildcard *.cpp)

# CXXFLAGS=-std=c++11 -Wall -ggdb -O2
CXXFLAGS+=-I/opt/homebrew/Cellar/boost/1.85.0/include
# LDFLAGS+=-g -fPIC -ggdb3
LDFLAGS+=-L/opt/homebrew/Cellar/boost/1.85.0/lib

OBJECTS = $(SRCS:.cpp=.o)
$(TARGET): $(OBJECTS)
	$(CXX) -o $(TARGET) $(OBJECTS)

.PHONY:clean

clean:
	-rm -f $(TARGET) $(OBJECTS)