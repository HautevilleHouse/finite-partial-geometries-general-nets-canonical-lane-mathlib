import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitePartialGeometriesGeneralNetsCanonicalLaneLean

structure GeneralizedQuadrangle where
  pointSet : Type u
  lineSet : Type v
  incidence : pointSet → lineSet → Prop
  twoPointsOnAtMostOneLine : Prop
  noTriangles : Prop
  gqProperties : Prop

structure GeneralizedQuadrangleEvidence (G : GeneralizedQuadrangle) where
  twoPointsOnAtMostOneLineClosed : G.twoPointsOnAtMostOneLine
  noTrianglesClosed : G.noTriangles
  gqPropertiesClosed : G.gqProperties

def GeneralizedQuadrangleClosed (G : GeneralizedQuadrangle) : Prop :=
  G.twoPointsOnAtMostOneLine ∧ G.noTriangles ∧ G.gqProperties

theorem generalized_quadrangle_closed_from_evidence (G : GeneralizedQuadrangle) (E : GeneralizedQuadrangleEvidence G) :
    GeneralizedQuadrangleClosed G := by
  exact And.intro E.twoPointsOnAtMostOneLineClosed (And.intro E.noTrianglesClosed E.gqPropertiesClosed)

end FinitePartialGeometriesGeneralNetsCanonicalLaneLean
end HautevilleHouse