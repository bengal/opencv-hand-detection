OBJS := hand.o
TARGET := hand
CFLAGS := -Wall
#LDFLAGS := -lm -lcv -lhighgui -lcvaux
LDFLAGS := -lm -lstdc++ -I/usr/include/opencv -I/usr/include/opencv2 -lopencv_calib3d -lopencv_imgproc -lopencv_contrib -lopencv_legacy -lopencv_core -lopencv_ml -lopencv_features2d -lopencv_objdetect -lopencv_flann -lopencv_video -lopencv_highgui

all: $(OBJS)
	$(CC) -o $(TARGET) $(OBJS) $(LDFLAGS)

clean:
	rm -f $(OBJS) $(TARGET) video.avi

