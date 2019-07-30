import RPi.GPIO as GPIO
import pigpio
import time

pi = pigpio.pi()
servoPINS = [17, 27, 22]

for servoPIN in servoPINS:
    pi.set_mode(servoPIN, pigpio.OUTPUT)

try:
  while True:
      for servoPIN in servoPINS:
          pi.set_servo_pulsewidth(servoPIN, 2500)
      time.sleep(0.5)
      for servoPIN in servoPINS:
          pi.set_servo_pulsewidth(servoPIN, 500)
      time.sleep(0.5)
except KeyboardInterrupt:
    for servoPIN in servoPINS:
        pi.set_servo_pulsewidth(servoPIN, 0)
    time.sleep(1)
    pi.stop()
