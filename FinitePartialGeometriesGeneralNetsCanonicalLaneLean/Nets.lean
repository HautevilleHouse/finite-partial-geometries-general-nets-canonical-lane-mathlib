import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure Net where
  pointSet : Type u
  parallelClasses : List (Set (Set pointSet))
  eachClassPartitionsPoints : Prop
  anyTwoLinesIntersectAtMostOnePoint : Prop
  netProperties : Prop

structure NetEvidence (N : Net) where
  eachClassPartitionsPointsClosed : N.eachClassPartitionsPoints
  anyTwoLinesIntersectAtMostOnePointClosed : N.anyTwoLinesIntersectAtMostOnePoint
  netPropertiesClosed : N.netProperties

def NetClosed (N : Net) : Prop :=
  N.eachClassPartitionsPoints ∧ N.anyTwoLinesIntersectAtMostOnePoint ∧ N.netProperties

theorem net_closed_from_evidence (N : Net) (E : NetEvidence N) : NetClosed N := by
  exact And.intro E.eachClassPartitionsPointsClosed (And.intro E.anyTwoLinesIntersectAtMostOnePointClosed E.netPropertiesClosed)

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse