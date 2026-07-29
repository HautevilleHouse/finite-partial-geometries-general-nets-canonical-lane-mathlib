import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure BlockDesign where
  pointSet : Type u
  blockSet : Type v
  incidence : pointSet → blockSet → Prop
  constantBlockSize : Nat
  constantReplication : Nat
  designProperties : Prop

structure BlockDesignEvidence (D : BlockDesign) where
  constantBlockSizeClosed : D.constantBlockSize > 0
  constantReplicationClosed : D.constantReplication > 0
  designPropertiesClosed : D.designProperties

def BlockDesignClosed (D : BlockDesign) : Prop :=
  D.constantBlockSize > 0 ∧ D.constantReplication > 0 ∧ D.designProperties

theorem block_design_closed_from_evidence (D : BlockDesign) (E : BlockDesignEvidence D) :
    BlockDesignClosed D := by
  exact And.intro E.constantBlockSizeClosed (And.intro E.constantReplicationClosed E.designPropertiesClosed)

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse