PseudoCode Activity: Closet-Organization Machine

Make a machine that organizes a pile of clothes on your bed and then determines which shelf in your closet to put it on based on color.

Things to know:

Top Shelf can include only Green Shirts
Middle Shelf can include only Blue Shirts
Bottom Shelf can include only pants.

Core Library of Objects: Let's imagine that the machine has a few core objects:

Scanner
Mover
These two components or "objects" receive messages and are capable of various procedures and operations. For example, the mover can move things from one place to another and the scanner can scan other objects and return data about their attributes. For example, it could scan a shirt object and tell you its color.
You may need to add more objects to complete this assignment.



Scanner determines value of each piece
Mover moves around pieces between the 3 possible places: pile, scanner, shelves
Pile of clothes with "n" amount of pieces

Object shelves
  shelf1 = upper level
  shelf2 = middle level
  shelf3 = upper level
endObject

Object mover

single_piece = located on bed

option1 = greenShirt
option2 = blueShirt
option3 = pants
option4 = all other pieces

If single_piece > 0
  then pick up 1 piece and move to scanner
else
  print "Error 404: No pieces of clothes found"
end

endObject


Object scanner
  if
    single_piece
   = option1
  then
    send message to scanner "option1"

  elseif
    single_piece
   = option2
  then
    send message to scanner "option2"

  elseif
    single_piece
   = option3
  then
    send message to scanner "option3"

  elseif
    single_piece
   = option4
  then
    send message to scanner "option4"

endObject

Object mover
  if
    scanner_message = option1
  then
    move single_piece to shelf1

  elseif
    scanner_message = option2
  then
    move single piece to shelf2

  elseif
    scanner_message = option3
  then
    move single_piece to shelf3

  elseif
    scanner_message = option4
  then
    move single_piece back to bed

  endif
endObject
