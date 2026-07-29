import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FinitePartialGeometriesGeneralNetsCanonicalLaneLean.HardyWeinbergEquilibrium

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure LinkageAnalysis {G : FinitePartialGeometry} {N : GeneralNet G} (H : HardyWeinbergEquilibrium N) where
  recombinationFraction : G.pointSet → G.pointSet → ℝ
  lodScore : G.pointSet → G.pointSet → ℝ
  linkagePhase : Prop
  linkageDisequilibrium : Prop

structure LinkageAnalysisEvidence {G : FinitePartialGeometry} {N : GeneralNet G} {H : HardyWeinbergEquilibrium N} (L : LinkageAnalysis H) where
  linkagePhaseClosed : L.linkagePhase
  linkageDisequilibriumClosed : L.linkageDisequilibrium

def LinkageAnalysisClosed {G : FinitePartialGeometry} {N : GeneralNet G} {H : HardyWeinbergEquilibrium N} (L : LinkageAnalysis H) : Prop :=
  L.linkagePhase ∧ L.linkageDisequilibrium

theorem linkage_analysis_closed_from_evidence {G : FinitePartialGeometry} {N : GeneralNet G} {H : HardyWeinbergEquilibrium N} (L : LinkageAnalysis H) (E : LinkageAnalysisEvidence L) :
    LinkageAnalysisClosed L := by
  exact And.intro E.linkagePhaseClosed E.linkageDisequilibriumClosed

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse