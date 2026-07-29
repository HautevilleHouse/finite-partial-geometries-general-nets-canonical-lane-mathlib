import FinitePartialGeometriesGeneralNetsCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure FPGNet where
  points : Type
  lines : Type
  incidence : points → lines → Prop
  partialGeometry : Prop
  netCondition : Prop
  finite : Prop

def FPGAdmittedObject where
  net : FPGNet
  balancedCondition : Prop
  conclusion : balancedCondition

def FPGWitnessClosed (O : FPGAdmittedObject) : Prop :=
  O.balancedCondition

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse