import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FinitePartialGeometryClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse
