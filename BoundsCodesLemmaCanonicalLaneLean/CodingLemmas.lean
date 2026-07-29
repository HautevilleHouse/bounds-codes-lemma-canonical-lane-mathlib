import canonicalLaneMathlib.BoundEstimates

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure CodingLemmasPackage (B : BoundEstimatesPackage) where
  shannonBound : Prop
  huffmanOptimality : Prop
  spherePackingBound : Prop
  codeConstruction : Prop

structure CodingLemmasEvidence {B : BoundEstimatesPackage} (C : CodingLemmasPackage B) where
  shannonBoundClosed : C.shannonBound
  huffmanOptimalityClosed : C.huffmanOptimality
  spherePackingBoundClosed : C.spherePackingBound
  codeConstructionClosed : C.codeConstruction

def CodingLemmasClosed {B : BoundEstimatesPackage} (C : CodingLemmasPackage B) : Prop :=
  C.shannonBound ∧ C.huffmanOptimality ∧ C.spherePackingBound ∧ C.codeConstruction

theorem coding_lemmas_closed_from_evidence {B : BoundEstimatesPackage} (C : CodingLemmasPackage B) (E : CodingLemmasEvidence C) :
    CodingLemmasClosed C := by
  exact And.intro E.shannonBoundClosed (And.intro E.huffmanOptimalityClosed (And.intro E.spherePackingBoundClosed E.codeConstructionClosed))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse