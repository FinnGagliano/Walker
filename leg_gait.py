import pigpio
import time

pi = pigpio.pi()
servo_pins = [17, 27]

for servo_pin in servo_pins:
    pi.set_mode(servo_pin, pigpio.OUTPUT)

positions = [[0,0], [45, -45]]

def move_to_angle(pi, pin, angle):
    pwm_range = 2000
    duty_cycle = (angle / 180) * pwm_range + pwm_range / 2
    duty_cycle += 500
    print(str(duty_cycle))
    pi.set_servo_pulsewidth(pin, duty_cycle)


try:
    while True:
        # Each position
        for position in positions:
            # Each servo
            move_to_angle(pi, servo_pins[1], position[1])
            move_to_angle(pi, servo_pins[0], position[0])
            time.sleep(1)
except Exception as e:
    print(str(e))
    for servo_pin in servo_pins:
        pi.set_servo_pulsewidth(servo_pin, 0)
    time.sleep(1)
    pi.stop()
