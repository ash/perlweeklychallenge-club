# Challenge 2
# generate Hofstadter Female and Male sequences
# F ( 0 ) = 1   ;   M ( 0 ) = 0
# F ( n ) = n − M ( F ( n − 1 ) ) , n > 0
# M ( n ) = n − F ( M ( n − 1 ) ) , n > 0.
n←40
mv‿fv←⋈˜>⋈˜¨(n⥊0)
mv 1‿0⌾(0⊸⊏)↩
fv 1‿1⌾(0⊸⊏)↩
F←{((𝕩‿0)⊑fv)?((𝕩‿1)⊑fv);(𝕩‿1)⊑fv (1≍𝕩-M(F(𝕩-1)))⌾(𝕩⊸⊏)↩}
M←{((𝕩‿0)⊑mv)?((𝕩‿1)⊑mv);(𝕩‿1)⊑mv (1≍𝕩-F(M(𝕩-1)))⌾(𝕩⊸⊏)↩}
F 39
⍉(↕1⊑≢)⊸∾1⊑⎉1>mv‿fv
