import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure PhylogeneticTreePackage where
  speciesSet : Type u
  treeTopology : Type v
  geneticDistances : speciesSet → speciesSet → ℝ
  treeMetric : Prop
  distanceAxioms : treeAxiom.distanceAxioms geneticDistances
  treeConsistency : Prop

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeMetric ∧ P.distanceAxioms ∧ P.treeConsistency

theorem phylogenetic_tree_bridge_closed (P : PhylogeneticTreePackage) : PhylogeneticTreeClosed P := by
  exact And.intro P.treeMetric (And.intro P.distanceAxioms P.treeConsistency)

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse
