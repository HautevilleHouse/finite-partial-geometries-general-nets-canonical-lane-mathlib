import HautevilleHouse.FinitePartialGeometriesGeneralNetsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

def ConstrainedNetClosure (A : AdmissibleNetClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_net_endgame (A : AdmissibleNetClass) :
    ConstrainedNetClosure A := by
  exact And.intro (bridge_from_admissible_net_class A) (gate_from_admissible_net_class A)

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse