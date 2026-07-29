import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure MinimalDistanceBound where
  codeParameters : Type
  boundFunction : Type
  distanceBound : Prop
  tightness : Prop
  construction : Prop
  inverseInequalities : Prop

structure MinimalDistanceBoundEvidence (M : MinimalDistanceBound) where
  codeParametersClosed : M.codeParameters
  boundFunctionClosed : M.boundFunction
  distanceBoundClosed : M.distanceBound
  tightnessClosed : M.tightness
  constructionClosed : M.construction
  inverseInequalitiesClosed : M.inverseInequalities

def MinimalDistanceBoundClosed (M : MinimalDistanceBound) : Prop :=
  M.codeParameters ∧ M.boundFunction ∧ M.distanceBound ∧
  M.tightness ∧ M.construction ∧ M.inverseInequalities

theorem minimal_distance_bound_closed_from_evidence (M : MinimalDistanceBound)
    (E : MinimalDistanceBoundEvidence M) : MinimalDistanceBoundClosed M := by
  exact And.intro E.codeParametersClosed
    (And.intro E.boundFunctionClosed
      (And.intro E.distanceBoundClosed
        (And.intro E.tightnessClosed
          (And.intro E.constructionClosed E.inverseInequalitiesClosed))))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse