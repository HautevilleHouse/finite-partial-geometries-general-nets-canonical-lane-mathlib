import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FinitePartialGeometriesGeneralNetsCanonicalLaneLean.GeneralNet

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure HardyWeinbergEquilibrium {G : FinitePartialGeometry} (N : GeneralNet G) where
  alleleFrequencies : G.pointSet → ℝ
  genotypeFrequencies : G.pointSet → G.pointSet → ℝ
  equilibriumCondition : Prop
  punnettSquareConsistency : Prop

structure HardyWeinbergEquilibriumEvidence {G : FinitePartialGeometry} {N : GeneralNet G} (H : HardyWeinbergEquilibrium N) where
  equilibriumConditionClosed : H.equilibriumCondition
  punnettSquareConsistencyClosed : H.punnettSquareConsistency

def HardyWeinbergEquilibriumClosed {G : FinitePartialGeometry} {N : GeneralNet G} (H : HardyWeinbergEquilibrium N) : Prop :=
  H.equilibriumCondition ∧ H.punnettSquareConsistency

theorem hardy_weinberg_equilibrium_closed_from_evidence {G : FinitePartialGeometry} {N : GeneralNet G} (H : HardyWeinbergEquilibrium N) (E : HardyWeinbergEquilibriumEvidence H) :
    HardyWeinbergEquilibriumClosed H := by
  exact And.intro E.equilibriumConditionClosed E.punnettSquareConsistencyClosed

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse