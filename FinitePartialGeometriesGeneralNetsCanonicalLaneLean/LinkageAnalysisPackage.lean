import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure LinkageAnalysisPackage where
  markerPair : Type u
  recombinationFraction : ℝ
  lodScore : ℝ
  linkageEvidence : lodScore > 0
  recombinationValid : 0 ≤ recombinationFraction ∧ recombinationFraction ≤ 0.5

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkageEvidence ∧ L.recombinationValid.1 ∧ L.recombinationValid.2

theorem linkage_analysis_bridge_closed (L : LinkageAnalysisPackage) : LinkageAnalysisClosed L := by
  exact And.intro L.linkageEvidence (And.intro L.recombinationValid.1 L.recombinationValid.2)

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse
