import HautevilleHouse.FinitePartialGeometriesGeneralNetsCanonicalLaneLean.NetAdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure NetReconstruction where
  baseNet : NetObject
  parameters : List Nat
  reconstructedLines : Set (Set (pointSet baseNet))
  reconstructionValid : Prop
  closureCondition : Prop
  reconstructionValidTerm : reconstructionValid
  closureConditionTerm : closureCondition

def NetReconstructionClosed (R : NetReconstruction) : Prop :=
  R.reconstructionValid ∧ R.closureCondition

theorem net_reconstruction_closed_from_evidence (R : NetReconstruction) :
    NetReconstructionClosed R := by
  exact And.intro R.reconstructionValidTerm R.closureConditionTerm

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse