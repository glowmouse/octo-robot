from pyjoystick.sdl2 import Key, Joystick, run_event_loop

def print_add(joy):
    print('Added', joy)

def print_remove(joy):
    print('Removed', joy)

def key_received(key):
    print('received', key)
    if key.value == Key.HAT_UP:
        print("hat up")
    elif key.value == Key.HAT_DOWN:
        print("hat down")
    if key.value == Key.HAT_LEFT:
        print("hat updown")
    elif key.value == Key.HAT_UPLEFT:
        print("hat downleft")
    elif key.value == Key.HAT_DOWNLEFT:
        print("hat hatright")
    elif key.value == Key.HAT_RIGHT:
        print("hat hatright")
    elif key.value == Key.HAT_UPRIGHT:
        print("hat upright")
    elif key.value == Key.HAT_DOWNRIGHT:
        print("hat downright")

run_event_loop(print_add, print_remove, key_received)

