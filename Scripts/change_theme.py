import os, shutil, keyboard, sys
from PyQt6.QtWidgets import QApplication, QWidget

PATH = "/home/vinzenz/Dateien/Themes/"

def main():
  app = QApplication(sys.argv)
  window = QWidget()
  window.show()
  sys.exit(app.exec())
  