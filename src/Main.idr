module Main

import System.FFI

%foreign "C:arr,libconflict"
mkArray : PrimIO AnyPtr

%foreign "C:my_index,libconflict"
myindex : Bits64 -> AnyPtr -> Int

%foreign "C:index,libconflict"
index : Bits64 -> AnyPtr -> Int

main : IO ()
main = do
  arr <- primIO mkArray
  let value = myindex (cast 0) arr
  printLn value
  let value = index (cast 0) arr
  printLn value
  free arr
 