/*
 *  File: Simulation.c ... a skeleton file
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

/* If there are custom classes/source files that you write, with
   custom functions, and you want those functions available for use in
   THIS .c file, then include the header file for the custom .c
   file(s) you've written, using the #include directive. For example:

   #include "SomeFile.h"

 */

//Global Variables
int numFrames = 0;
int pageFaults = 0;
int victim = 0;

void Simulate(char* file, int memSize, int pgSize) {
	printf("Trace file name given: %s \n", file);
	printf("Memory size given: %d KB\n", memSize);
	printf("Page size given: %d KB\n", pgSize);
  
}

//Compares two pages, returns bool
bool cmprPage(char new[8], char old[8]){
  for(int i = 0; i < 8; i++){
    if(old[i] != new[i])
      return false;
  }
  return true;
}

//prints table to terminal
void printTbl(int m, int n, char table[m][n]){
  for(int row = 0; row < numFrames; row++){
    for(int col = 0; col < 9; col++)
      printf("%c ", table[row][col]);

    printf("\n");
  }
  printf("\n");
}

//Takes in page and adds to appropriate location in table, increments page fault count if needed
void addToTable(int m, int n, char table[m][n], char str[11]){
  // printf("ADDING: ");
  // for(int col = 0; col < 9; col++)
  //   printf("%c", str[col]);
  // printf("\n Current Victim: %d \n", victim);
  

  //Check all frames once, for being empty frame or page already in table
  for(int i = 0; i < numFrames; i++){ //loop through all frames top to bottom
    //if a frame is unused
    if(cmprPage(table[i], str)){ //if page is already in the table
      table[i][8] = '1';
      // printf("NO FAULT\n");
      // printTbl(m, n, table);
      return;
    }
    else if(table[i][0] == '-'){
      for(int j = 0; j < 8; j++){
        table[i][j] = str[j];
      }
      table[i][8] = '1'; //make last char the reference bit
      pageFaults++;
      // printf("FAULT\n");
      // printTbl(m, n, table);
      return;
    }

  }
  int start = victim;
  while(true){
    //if page is not in the table
    for(int i = start; i < numFrames; i++){ //walk through each frame swapping reference bit 1s to 0s, until 0 is found
      if(table[i][8] == '1'){ //if current frame has second chance, remove and move on
        table[i][8] = '0';
      }
      else if(table[i][8] == '0'){ //if current frame does not have second chance, replace
        
        for(int j = 0; j < 8; j++){ //Replace page
          table[i][j] = str[j];
        }
        table[i][8] = '1'; //Set reference bit, increment pageFault, move victim frame pointer
        pageFaults++;
        victim++;
        if(victim == numFrames - 1)
          victim = 0;

        // printf("FAULT\n");
        // printTbl(m, n, table);
        return;
      }
    }
    start = 0;
  }


}

int main(int argc, char *argv[]) {

  if(argc != 4){
  	printf("%s", "Error, incorrect number of arguments");
  	return 0;
  }
  char* end;
  char* file = argv[1];
  int memSize = strtol(argv[2], &end, 10);
  int pgSize = strtol(argv[3], &end, 10);
  Simulate(file, memSize, pgSize);

  //Local Variables

  //Open File
  FILE *fp;
  fp = fopen(file, "r");

  if(fp == NULL){
    printf("Error reading file.\n");
    return 0;
  }

  //Create table
  numFrames = memSize / pgSize;
  char table[numFrames][9];
  for(int row = 0; row < numFrames; row++){
    for(int col = 0; col < 9; col++)
      table[row][col] = '-';
  }

  printf("NUMBER OF FRAMES: %d\n", numFrames);

  //Move through trace file
  char line[11];
  while((line[0] = fgetc(fp)) != EOF){
    for(int i = 1; i < 11; i++){
      line[i] = fgetc(fp);
    }

    //add entries to table
    addToTable(numFrames, 9, table, line);
  }
  printf("PAGE FAULTS: %d \n", pageFaults);
}


