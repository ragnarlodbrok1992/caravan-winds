// Standard includes
#include <stdio.h>

// Raylib includes
#include <raylib.h>
#include <raymath.h>
#include <rlgl.h>

// Constants
const char* WELCOME_MESSAGE = "Caravan Winds - developer version.\n";
const char* LAST_MESSAGE    = "Program exited successfully.\n";
const char* TITLE_BAR       = "Caravan Winds - in-development engine version.\n";

const int SCREEN_WIDTH = 1024;
const int SCREEN_HEIGHT = 768;

int main(int argc, char* argv[]) {
  printf(WELCOME_MESSAGE);

  // Initializing window
  InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, TITLE_BAR);

  // Last thing before returning to OS - if this message prints
  // everything went well
  printf(LAST_MESSAGE);

  return 0;
}
