import pigpio
import time

servoPIN = 17
pi = pigpio.pi()
pi.set_mode(servoPIN, pigpio.OUTPUT)

try:
  while True:
    print("Enter desired angle: ")
    desired_angle = int(input())
    pulsewidth = int((desired_angle / 180) * 2000) + 500
    pi.set_servo_pulsewidth(servoPIN, pulsewidth)
    print('')
    print('Turning')
except KeyboardInterrupt:
  p.stop()
  GPIO.cleanup()
