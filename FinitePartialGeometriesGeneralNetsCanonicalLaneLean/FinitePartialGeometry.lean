import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure FinitePartialGeometry where
  pointSet : Type u
  lineSet : Type v
  incidence : pointSet → lineSet → Prop
  pointCount : Nat
  lineCount : Nat
  regularity : pointSet → Nat
  dualRegularity : lineSet → Nat
  partialGeometryAxioms : Prop
  finiteAxiom : pointCount = pointSet.size ∧ lineCount = lineSet.size

structure FinitePartialGeometryEvidence (G : FinitePartialGeometry) where
  partialGeometryAxiomsClosed : G.partialGeometryAxioms
  finiteAxiomClosed : G.finiteAxiom

def FinitePartialGeometryClosed (G : FinitePartialGeometry) : Prop :=
  G.partialGeometryAxioms ∧ G.finiteAxiom

theorem finite_partial_geometry_closed_from_evidence (G : FinitePartialGeometry) (E : FinitePartialGeometryEvidence G) :
    FinitePartialGeometryClosed G := by
  exact And.intro E.partialGeometryAxiomsClosed E.finiteAxiomClosed

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse