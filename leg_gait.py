import pigpio
import time

pi = pigpio.pi()
servo_pins = [17, 27]

for servo_pin in servo_pins:
    pi.set_mode(servo_pin, pigpio.OUTPUT)

positions = [[0,0], [30, -30]]

def move_to_angle(pi, pin, angle):
    pwm_range = 2000
    duty_cycle = (angle / 90) * pwm_range + pwm_range / 2
    duty_cycle += 500
    pi.set_servo_pulsewidth(pin, duty_cycle)

try:
    # Each position
    for i in range(2):
        # Each servo
        for j in range(2):
            move_to_angle(pi, servo_pins[j], position[i][j])
        time.sleep(5)
except Exception as e:
    print(str(e))
    for servo_pin in servo_pins:
        pi.set_servo_pulsewidth(servo_pin, 0)
    time.sleep(1)
    pi.stop()
