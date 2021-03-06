{- 
    language extension: Clear
    for simpler keywords and operators
-}

module FrPy.Monadic.Clear (
    PyExpr, PyStmtM,                 -- types may be used
    var, vI, vF, vB, vS, vL,        -- expression constructors
    pynot, (?||), (?&&), (?==), (?!=), (?<), (?<=), (?>), (?>=),         -- operators
    (<~), (<|), (|>), (-->),
    (?+), (?-), (?*), (?/), (?//), (?%), (?**),
    (?=), (?+=), (?-=), (?*=), (?/=), (?//=), (?%=), (?**=),  -- statement operators
    pyif, pyifelse, pydo, ignore, while, for, call, call_, pyMACRO, -- keywords
    def, ret, pylet, pylet',
    runScript   -- interface
) where

import FrPy.Monadic
import Control.Monad.Writer

call = pycall
ignore = pyignore

call_ :: PyExpr -> [PyExpr] -> PyStmtM
call_ x y = pyignore $ pycall x y

for = pyfor
while = pywhile
def = pydef
ret = pyret
var = pyvar
infixl 9 <~
(<~) = (?<~)
infixr 1 <|
(|>) = (?|>)
infixl 1 |>
(<|) = (?<|)
infixr 2 -->
(-->) = (?->)

