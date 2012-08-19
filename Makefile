OBJS := hand.o
TARGET := hand
CFLAGS := -Wall
LDFLAGS := -lm -lcv -lhighgui -lcvaux

all: $(OBJS)
	$(CC) -o $(TARGET) $(OBJS) $(LDFLAGS)

clean:
	rm -f $(OBJS) $(TARGET) video.avi

