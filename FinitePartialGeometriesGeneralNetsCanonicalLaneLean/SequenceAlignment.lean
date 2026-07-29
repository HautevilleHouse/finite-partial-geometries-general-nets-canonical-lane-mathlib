import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FinitePartialGeometriesGeneralNetsCanonicalLaneLean.LinkageAnalysis

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure SequenceAlignment {G : FinitePartialGeometry} {N : GeneralNet G} {H : HardyWeinbergEquilibrium N} (L : LinkageAnalysis H) where
  alignmentScore : G.pointSet → G.pointSet → ℝ
  gapPenalty : ℝ
  substitutionMatrix : G.pointSet → G.pointSet → ℝ
  optimalAlignment : G.pointSet → G.pointSet → List (G.pointSet × G.pointSet)
  alignmentConsistency : Prop

structure SequenceAlignmentEvidence {G : FinitePartialGeometry} {N : GeneralNet G} {H : HardyWeinbergEquilibrium N} {L : LinkageAnalysis H} (S : SequenceAlignment L) where
  alignmentConsistencyClosed : S.alignmentConsistency

def SequenceAlignmentClosed {G : FinitePartialGeometry} {N : GeneralNet G} {H : HardyWeinbergEquilibrium N} {L : LinkageAnalysis H} (S : SequenceAlignment L) : Prop :=
  S.alignmentConsistency

theorem sequence_alignment_closed_from_evidence {G : FinitePartialGeometry} {N : GeneralNet G} {H : HardyWeinbergEquilibrium N} {L : LinkageAnalysis H} (S : SequenceAlignment L) (E : SequenceAlignmentEvidence S) :
    SequenceAlignmentClosed S := by
  exact E.alignmentConsistencyClosed

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse