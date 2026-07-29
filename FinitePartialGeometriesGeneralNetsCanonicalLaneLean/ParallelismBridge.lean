import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FinitePartialGeometriesGeneralNetsCanonicalLaneLean.GeneralNetDecomposition

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure ParallelismBridgePackage {G : PartialGeometryNet}
    {D : GeneralNetDecomposition G} where
  euclideanParallel : Prop
  netParallel : Prop
  parallelRelationEquivalence : Prop
  bridgeConsistent : Prop

structure ParallelismBridgeEvidence {G : PartialGeometryNet}
    {D : GeneralNetDecomposition G} (P : ParallelismBridgePackage D) where
  euclideanParallelClosed : P.euclideanParallel
  netParallelClosed : P.netParallel
  parallelRelationEquivalenceClosed : P.parallelRelationEquivalence
  bridgeConsistentClosed : P.bridgeConsistent

def ParallelismBridgeClosed {G : PartialGeometryNet}
    {D : GeneralNetDecomposition G} (P : ParallelismBridgePackage D) : Prop :=
  P.euclideanParallel ∧ P.netParallel ∧ P.parallelRelationEquivalence ∧ P.bridgeConsistent

theorem parallelism_bridge_closed_from_evidence {G : PartialGeometryNet}
    {D : GeneralNetDecomposition G} (P : ParallelismBridgePackage D)
    (E : ParallelismBridgeEvidence P) : ParallelismBridgeClosed P :=
  by
    exact And.intro E.euclideanParallelClosed
      (And.intro E.netParallelClosed
        (And.intro E.parallelRelationEquivalenceClosed E.bridgeConsistentClosed))

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse