import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure HardyWeinbergEquilibrium where
  dominantAlleleFreq : ℝ
  recessiveAlleleFreq : ℝ
  equilibriumCondition : dominantAlleleFreq + recessiveAlleleFreq = 1
  genotypeFrequencies : Prop
  equilibriumReached : Prop

def HardyWeinbergClosed (hw : HardyWeinbergEquilibrium) : Prop :=
  hw.equilibriumCondition ∧ hw.genotypeFrequencies ∧ hw.equilibriumReached

theorem hardy_weinberg_bridge_closed (hw : HardyWeinbergEquilibrium) : HardyWeinbergClosed hw := by
  exact And.intro hw.equilibriumCondition (And.intro hw.genotypeFrequencies hw.equilibriumReached)

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse
