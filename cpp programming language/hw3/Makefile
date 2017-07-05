CC := cl
CFLAGS := /EHsc 
SRCS := $(wildcard *.cpp)

main:
	$(CC) $(CFLAGS) $(SRCS) /Femain

test:
	$(CC) $(CFLAGS) $(SRCS)  /DTEST /Femain

.PHONY: main
