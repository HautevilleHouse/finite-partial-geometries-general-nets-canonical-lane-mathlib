import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure NetObject where
  pointSet : Type
  lineSet : Type
  incidence : pointSet → lineSet → Prop
  regularity : Nat
  deficiency : Nat
  netAxioms : Prop
  conclusion : netAxioms

def NetWitnessClosed (O : NetObject) : Prop :=
  O.netAxioms

structure AdmissibleNetClass where
  object : NetObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleNetClass) : Prop :=
  NetWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse