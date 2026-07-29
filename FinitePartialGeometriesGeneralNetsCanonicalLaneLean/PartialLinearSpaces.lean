import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure PartialLinearSpace where
  pointSet : Type u
  lineSet : Type v
  incidence : pointSet → lineSet → Prop
  atMostOneLineThroughTwoPoints : Prop
  lineSizeAtLeastTwo : Prop
  spaceProperties : Prop

structure PartialLinearSpaceEvidence (P : PartialLinearSpace) where
  atMostOneLineThroughTwoPointsClosed : P.atMostOneLineThroughTwoPoints
  lineSizeAtLeastTwoClosed : P.lineSizeAtLeastTwo
  spacePropertiesClosed : P.spaceProperties

def PartialLinearSpaceClosed (P : PartialLinearSpace) : Prop :=
  P.atMostOneLineThroughTwoPoints ∧ P.lineSizeAtLeastTwo ∧ P.spaceProperties

theorem partial_linear_space_closed_from_evidence (P : PartialLinearSpace) (E : PartialLinearSpaceEvidence P) :
    PartialLinearSpaceClosed P := by
  exact And.intro E.atMostOneLineThroughTwoPointsClosed (And.intro E.lineSizeAtLeastTwoClosed E.spacePropertiesClosed)

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse