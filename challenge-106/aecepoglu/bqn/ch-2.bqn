# Task 2 - decimal string

# Calls 𝕨𝔽𝕩 until 𝔽 is called with the same 𝔾𝕩
# returns ⟨𝕩_historical..⟩⋈𝕩_final
_MmRpt_←{f w _𝕣_ x g:h←⟨⟩⋄h⋈({w F 𝕩⊣h∾↩𝕩}○⊢) •_while_ {∧´h≢¨<G𝕩} x}

F←{d0 𝕊 n0:
   h‿a←{{d𝕊n‿f:(n×10)(|˜⋈f∾⌊∘÷)d}} d0 _MmRpt_ n0‿⟨⟩ {⊑}
   norep‿rep←'0'+(1⊑a)⊔˜∨`(⊑a)=(0=2|↕∘≠)⊸/h
   rep2←(0<≠)◶⟨⊢,'('∾⊢∾')'˙⟩ (∧`'0'≠⌽)⊸/rep
   "0."∾norep∾rep2}
   
7 F 1 # 1÷7
66 F 5 # 1÷7
