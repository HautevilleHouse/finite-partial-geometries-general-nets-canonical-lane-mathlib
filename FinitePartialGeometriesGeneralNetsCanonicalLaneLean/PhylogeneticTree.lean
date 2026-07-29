import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FinitePartialGeometriesGeneralNetsCanonicalLaneLean.SequenceAlignment

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure PhylogeneticTree {G : FinitePartialGeometry} {N : GeneralNet G} {H : HardyWeinbergEquilibrium N} {L : LinkageAnalysis H} (S : SequenceAlignment L) where
  treeStructure : Type u
  branchLengths : treeStructure → ℝ
  leafLabeling : G.pointSet → treeStructure
  molecularClock : Prop
  treeLikelihood : Prop

structure PhylogeneticTreeEvidence {G : FinitePartialGeometry} {N : GeneralNet G} {H : HardyWeinbergEquilibrium N} {L : LinkageAnalysis H} {S : SequenceAlignment L} (P : PhylogeneticTree S) where
  molecularClockClosed : P.molecularClock
  treeLikelihoodClosed : P.treeLikelihood

def PhylogeneticTreeClosed {G : FinitePartialGeometry} {N : GeneralNet G} {H : HardyWeinbergEquilibrium N} {L : LinkageAnalysis H} {S : SequenceAlignment L} (P : PhylogeneticTree S) : Prop :=
  P.molecularClock ∧ P.treeLikelihood

theorem phylogenetic_tree_closed_from_evidence {G : FinitePartialGeometry} {N : GeneralNet G} {H : HardyWeinbergEquilibrium N} {L : LinkageAnalysis H} {S : SequenceAlignment L} (P : PhylogeneticTree S) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.molecularClockClosed E.treeLikelihoodClosed

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse