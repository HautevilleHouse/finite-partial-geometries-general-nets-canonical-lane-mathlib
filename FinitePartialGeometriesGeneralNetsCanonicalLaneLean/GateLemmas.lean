import HautevilleHouse.FinitePartialGeometriesGeneralNetsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

def gateClosed (A : AdmissibleNetClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_net_class (A : AdmissibleNetClass) :
    gateClosed A := by
  exact A.gateWitness

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse