import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure FinitePartialGeometryPackage where
  pointSet : Type u
  lineSet : Type v
  incidenceRel : pointSet → lineSet → Prop
  finitePoints : Fintype pointSet
  partialLineAxiom : ∀ p : pointSet, ∀ l1 l2 : lineSet, p ∈ l1 ∧ p ∈ l2 → l1 = l2
  nondegenerate : ∃ p q : pointSet, p ≠ q
  netStructure : Prop
  parallelismEquivalence : Equiv lineSet lineSet

def FinitePartialGeometryClosed (pkg : FinitePartialGeometryPackage) : Prop :=
  pkg.netStructure ∧ pkg.partialLineAxiom ∧ pkg.finitePoints.card > 0

theorem finite_partial_geometry_net_closed (pkg : FinitePartialGeometryPackage) : FinitePartialGeometryClosed pkg := by
  exact And.intro pkg.netStructure (And.intro pkg.partialLineAxiom (by exact Fintype.card_pos.mp (by exact pkg.finitePoints.card_pos)))

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse
