CC := g++
INCLUDE := include/mavlink/v1.0

all: mavlink_control

mavlink_control: mavlink_control.cpp
	@ $(CC) -I $(INCLUDE) serial_port.cpp autopilot_interface.cpp $< -o $@ -lpthread

clean:
	@ rm -rf *o mavlink_control
