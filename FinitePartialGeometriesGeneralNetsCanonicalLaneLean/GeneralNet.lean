import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FinitePartialGeometriesGeneralNetsCanonicalLaneLean.FinitePartialGeometry

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure GeneralNet (G : FinitePartialGeometry) where
  netPartition : G.pointSet → G.lineSet → Prop
  parallelism : G.lineSet → G.lineSet → Prop
  netAxioms : Prop
  parallelismEquivalence : Prop

structure GeneralNetEvidence {G : FinitePartialGeometry} (N : GeneralNet G) where
  netAxiomsClosed : N.netAxioms
  parallelismEquivalenceClosed : N.parallelismEquivalence

def GeneralNetClosed {G : FinitePartialGeometry} (N : GeneralNet G) : Prop :=
  N.netAxioms ∧ N.parallelismEquivalence

theorem general_net_closed_from_evidence {G : FinitePartialGeometry} (N : GeneralNet G) (E : GeneralNetEvidence N) :
    GeneralNetClosed N := by
  exact And.intro E.netAxiomsClosed E.parallelismEquivalenceClosed

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse