import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure PartialGeometryNet where
  points : Type u
  lines : Type v
  incidence : points → lines → Prop
  pointCount : ℕ
  lineCount : ℕ
  pointDegree : ℕ
  lineDegree : ℕ
  partialLinear : Prop
  pointDegreeUniform : Prop
  lineDegreeUniform : Prop

structure PartialGeometryNetEvidence (G : PartialGeometryNet) where
  partialLinearClosed : G.partialLinear
  pointDegreeUniformClosed : G.pointDegreeUniform
  lineDegreeUniformClosed : G.lineDegreeUniform

def PartialGeometryNetClosed (G : PartialGeometryNet) : Prop :=
  G.partialLinear ∧ G.pointDegreeUniform ∧ G.lineDegreeUniform

theorem partial_geometry_net_closed_from_evidence (G : PartialGeometryNet)
    (E : PartialGeometryNetEvidence G) : PartialGeometryNetClosed G :=
  by
    exact And.intro E.partialLinearClosed
      (And.intro E.pointDegreeUniformClosed E.lineDegreeUniformClosed)

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse