import HautevilleHouse.FinitePartialGeometriesGeneralNetsCanonicalLaneLean.NetAdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

def bridgeClosed (A : AdmissibleNetClass) : Prop :=
  NetWitnessClosed A.object

theorem bridge_from_admissible_net_class (A : AdmissibleNetClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse