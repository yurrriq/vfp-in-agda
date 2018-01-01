module ch1 where

open import bool hiding ( _nand_ )


-- Exercise 1.1
-- (a) tt == tt && (ff xor ~ ff)
-- (b) ff == ~ tt && (ff imp ff)
-- (c) ff == if tt xor tt then ff else ff


-- Exercise 1.2
-- (a) tt : 𝔹
-- (b) if tt then ff else tt : 𝔹
-- (c) _&&_ : 𝔹 → 𝔹 → 𝔹
-- (d) 𝔹 : Set


-- Exercise 1.3
_nand_ : 𝔹 → 𝔹 → 𝔹
tt nand tt = ff
tt nand ff = tt
ff nand tt = tt
ff nand ff = tt


-- Exercise 1.4
data day    : Set where
  Monday    : day
  Tuesday   : day
  Wednesday : day
  Thursday  : day
  Friday    : day
  Saturday  : day
  Sunday    : day


-- Exercise 1.5
nextday : day → day
nextday Monday    = Tuesday
nextday Tuesday   = Wednesday
nextday Wednesday = Thursday
nextday Thursday  = Friday
nextday Friday    = Saturday
nextday Saturday  = Sunday
nextday Sunday    = Monday


-- Exercise 1.6
data suit  : Set where
  hearts   : suit
  spades   : suit
  diamonds : suit
  clubs    : suit


is-red : suit → 𝔹
is-red hearts   = tt
is-red diamonds = tt
is-red _        = ff
