import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FinitePartialGeometriesGeneralNetsCanonicalLaneLean.PartialGeometryNet

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure GeneralNetDecomposition {G : PartialGeometryNet} where
  affinePlaneDecomposition : Prop
  netStructure : Prop
  parallelism : Prop
  parallelClassesCount : ℕ
  residueNet : PartialGeometryNet
  decompositionConsistent : Prop

structure GeneralNetDecompositionEvidence {G : PartialGeometryNet}
    (D : GeneralNetDecomposition G) where
  affinePlaneDecompositionClosed : D.affinePlaneDecomposition
  netStructureClosed : D.netStructure
  parallelismClosed : D.parallelism
  decompositionConsistentClosed : D.decompositionConsistent

def GeneralNetDecompositionClosed {G : PartialGeometryNet}
    (D : GeneralNetDecomposition G) : Prop :=
  D.affinePlaneDecomposition ∧ D.netStructure ∧ D.parallelism ∧ D.decompositionConsistent

theorem general_net_decomposition_closed_from_evidence {G : PartialGeometryNet}
    (D : GeneralNetDecomposition G) (E : GeneralNetDecompositionEvidence D) :
    GeneralNetDecompositionClosed D :=
  by
    exact And.intro E.affinePlaneDecompositionClosed
      (And.intro E.netStructureClosed
        (And.intro E.parallelismClosed E.decompositionConsistentClosed))

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse