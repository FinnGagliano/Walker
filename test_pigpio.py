import RPi.GPIO as GPIO
import pigpio
import time

pi = pigpio.pi()
servoPIN = 17

pi.set_mode(servoPIN, pigpio.OUTPUT)

try:
  while True:
      pi.set_servo_pulsewidth(servoPIN, 2500)
      time.sleep(0.5)
      pi.set_servo_pulsewidth(servoPIN, 500)
      time.sleep(0.5)
except KeyboardInterrupt:
    pi.set_servo_pulsewidth(servoPIN, 0)
    time.sleep(1)
    pi.stop()
