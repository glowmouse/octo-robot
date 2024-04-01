import pygame
import sys
import socket
import fcntl, os
from pygame.locals import *

class joystick_handler(object):
    def __init__(self, id):
        self.id = id
        self.joy = pygame.joystick.Joystick(id)
        self.name = self.joy.get_name()
        self.joy.init()
        self.numaxes    = self.joy.get_numaxes()
        self.numballs   = self.joy.get_numballs()
        self.numbuttons = self.joy.get_numbuttons()
        self.numhats    = self.joy.get_numhats()

        self.axis = []
        for i in range(self.numaxes):
            self.axis.append(self.joy.get_axis(i))

        self.ball = []
        for i in range(self.numballs):
            self.ball.append(self.joy.get_ball(i))

        self.button = []
        for i in range(self.numbuttons):
            self.button.append(self.joy.get_button(i))

        self.hat = []
        for i in range(self.numhats):
            self.hat.append(self.joy.get_hat(i))

class robot_driver:

  def init(self):
    pygame.init()
    pygame.event.set_blocked((MOUSEMOTION, MOUSEBUTTONUP, MOUSEBUTTONDOWN))
    timer_event = pygame.USEREVENT + 1
    pygame.time.set_timer(timer_event, 100)
    print(pygame.joystick.get_count())
    self.joycount = pygame.joystick.get_count()
    self.joy = []
    for i in range(self.joycount):
      self.joy.append(joystick_handler(i))
    self.screen = pygame.display.set_mode((800, 800), RESIZABLE)

    HOST = "192.168.4.1"
    PORT = 4999

    self.s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    self.s.connect((HOST, PORT ))
    fcntl.fcntl(self.s, fcntl.F_SETFL, os.O_NONBLOCK)
    self.s.sendall(b"motorl 0\n")
    self.s.sendall(b"motorr 0\n")
    self.s.sendall(b"datasend 0\n")

  def run(self):
    count = 0
    direction = 1

    while True:

      data = ""
      try:
        data = self.s.recv(16384).decode()
      except socket.error as e:
        e = e
        # do nothing
        # print(e)

      for line in data.splitlines():
        if line.find( "GYR ") == 0:
          angle = int(line.split()[1])
          print(angle)
          if angle > 0 and angle < 200:
            direction = 1
          if angle > 2048 and angle < 2048+200:
            direction = -1

      output = str(count) + " "
      count = count + 1

      left  = int(self.joy[0].axis[4] * 100)
      right = int(self.joy[0].axis[1] * 100)

      if abs(left) < 30:
        left = 0
      if abs(right) < 30:
        right = 0

      left_cmd  = "motorl " + str(left)  + "\n"
      right_cmd = "motorr " + str(-right) + "\n"
      self.s.sendall(bytes( left_cmd , 'ascii'))
      self.s.sendall(bytes( right_cmd, 'ascii'))

      print(f"{output} {left} {right}")

      for event in [pygame.event.wait(), ] + pygame.event.get():
        if event.type == QUIT:
          self.quit
        elif event.type == KEYDOWN and event.key in [K_ESCAPE, K_q]:
          self.quit()
        elif event.type == VIDEORESIZE:
          self.screen = pygame.display.set_mode(event.size, RESIZABLE)
        elif event.type == JOYAXISMOTION:
          self.joy[event.joy].axis[event.axis] = event.value
        elif event.type == JOYBALLMOTION:
          self.joy[event.joy].ball[event.ball] = event.rel
        elif event.type == JOYHATMOTION:
          self.joy[event.joy].hat[event.hat] = event.value
        elif event.type == JOYBUTTONUP:
          self.joy[event.joy].button[event.button] = 0
        elif event.type == JOYBUTTONDOWN:
          self.joy[event.joy].button[event.button] = 1

      pygame.display.flip()

if __name__ == "__main__":
    driver = robot_driver()
    driver.init()
    driver.run()

