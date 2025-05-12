CXX      := g++
CXXFLAGS := -std=c++20 -Wall -Wextra -pedantic -O2

TARGET   := orderbook
SRCS     := orderbook.cpp
OBJS     := $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $^ -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
