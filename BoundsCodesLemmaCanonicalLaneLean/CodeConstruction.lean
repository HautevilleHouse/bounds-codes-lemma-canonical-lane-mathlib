import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure CodeConstruction where
  alphabet : Type
  codewordSet : Type
  encodingDecoding : Type
  minimumDistance : Prop
  rateAchievability : Prop
  optimalityConditions : Prop
  constructionAlgorithm : Prop

structure CodeConstructionEvidence (C : CodeConstruction) where
  encodingDecodingClosed : C.encodingDecoding
  minimumDistanceClosed : C.minimumDistance
  rateAchievabilityClosed : C.rateAchievability
  optimalityConditionsClosed : C.optimalityConditions
  constructionAlgorithmClosed : C.constructionAlgorithm

def CodeConstructionClosed (C : CodeConstruction) : Prop :=
  C.encodingDecoding ∧ C.minimumDistance ∧ C.rateAchievability ∧
  C.optimalityConditions ∧ C.constructionAlgorithm

theorem code_construction_closed_from_evidence (C : CodeConstruction)
    (E : CodeConstructionEvidence C) : CodeConstructionClosed C := by
  exact And.intro E.encodingDecodingClosed
    (And.intro E.minimumDistanceClosed
      (And.intro E.rateAchievabilityClosed
        (And.intro E.optimalityConditionsClosed E.constructionAlgorithmClosed)))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse