import FinitePartialGeometriesGeneralNetsCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  netConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse