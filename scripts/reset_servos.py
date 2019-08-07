import RPi.GPIO as GPIO
import pigpio
import time

pi = pigpio.pi()
servoPINS = [17, 27, 22]

for servoPIN in servoPINS:
    pi.set_mode(servoPIN, pigpio.OUTPUT)

try:
  for servoPIN in servoPINS:
      pi.set_servo_pulsewidth(servoPIN, 0)
  time.sleep(0.5)

except KeyboardInterrupt:
    for servoPIN in servoPINS:
        pi.set_servo_pulsewidth(servoPIN, 0)
    time.sleep(1)
    pi.stop()
