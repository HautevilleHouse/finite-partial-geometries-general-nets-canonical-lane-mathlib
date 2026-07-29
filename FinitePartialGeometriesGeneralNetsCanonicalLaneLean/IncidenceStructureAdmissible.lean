import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure IncidenceStructureAdmissible where
  pointSet : Type u
  lineSet : Type v
  incidenceRelation : pointSet → lineSet → Prop
  regularity : Prop
  pointCountAdmissible : ℕ
  lineCountAdmissible : ℕ
  pointDegreeAdmissible : ℕ
  lineDegreeAdmissible : ℕ
  admissibleConditions : Prop

structure IncidenceStructureAdmissibleEvidence (I : IncidenceStructureAdmissible) where
  regularityClosed : I.regularity
  admissibleConditionsClosed : I.admissibleConditions

def IncidenceStructureAdmissibleClosed (I : IncidenceStructureAdmissible) : Prop :=
  I.regularity ∧ I.admissibleConditions

theorem incidence_structure_admissible_closed_from_evidence
    (I : IncidenceStructureAdmissible) (E : IncidenceStructureAdmissibleEvidence I) :
    IncidenceStructureAdmissibleClosed I :=
  by
    exact And.intro E.regularityClosed E.admissibleConditionsClosed

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse