import pigpio
import time

pi = pigpio.pi()
servo_pins = [17, 27]

for servo_pin in servo_pins:
    pi.set_mode(servo_pin, pigpio.OUTPUT)

positions = [[45, 0], [0, 45]]

def move_to_angle(pi, pin, angle):
    pwm_range = 2000
    duty_cycle = (angle / 180) * pwm_range + pwm_range / 2
    duty_cycle += 500
    print(str(duty_cycle))
    pi.set_servo_pulsewidth(pin, duty_cycle)


'''
try:
    while True:
        for pin in servo_pins:
            pi.set_servo_pulsewidth(pin, 1500)
        time.sleep(5)
        # Each position
        for i in range(2):
            # Each servo
            for j in range(2):
                move_to_angle(pi, servo_pins[j], positions[i][j])
            time.sleep(5)
except Exception as e:
    print(str(e))
    for servo_pin in servo_pins:
        pi.set_servo_pulsewidth(servo_pin, 0)
    time.sleep(1)
    pi.stop()
'''

try:
    while True:
        move_to_angle(pi, servo_pins[1], -45)
        move_to_angle(pi, servo_pins[0], 45)
        time.sleep(5)



except Exception as e:
    time.sleep(1)
    print(str(e))
    for servo_pin in servo_pins:
        pi.set_servo_pulsewidth(servo_pin, 0)
    time.sleep(1)
    pi.stop()
