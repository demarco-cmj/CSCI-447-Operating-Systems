code aFunProgram

  -- This is the a program that calls GetCh infinitly until reaching a 'q'
  -- Written for HW1 by Connor DeMarco

  var c: int --Used to keep track of where in the line the current char belongs. Global variable is easier to modify once in foo

  function main ()  
      c = 0
      while true --While loop that goes through one char at a tim e
  
      foo(GetCh()) -- call foo function and call GetCh as an argument
      
      c = c + 1 -- iterate c
      endWhile
    endFunction

  function foo (x: char)
    if c == 0
    	if x == 'q'
    		debug --if x is the first letter in the line AND is == 'q', then go to debug
    	endIf
    endIf
    
    if x == '\n' --if the character is newline, then reset c for next use
    	c = -1
    endIf
    	
    printChar (x)   --print char if not in debug
    endFunction
    
endCode
