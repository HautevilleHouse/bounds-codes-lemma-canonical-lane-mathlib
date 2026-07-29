import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesLemmaCanonicalLaneLean.CodeBounds

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure BoundsCodeLemmaPackage where
  boundType : String
  inequality : ℚ
  proofAvailable : Prop

structure BoundsCodeLemmaEvidence (L : BoundsCodeLemmaPackage) where
  boundTypeClosed : L.boundType = "Hamming" ∨ L.boundType = "Plotkin"
  inequalityClosed : L.inequality > 0
  proofAvailableClosed : L.proofAvailable

def BoundsCodeLemmaClosed (L : BoundsCodeLemmaPackage) : Prop :=
  L.boundType = "Hamming" ∨ L.boundType = "Plotkin"

theorem bounds_code_lemma_closed_from_evidence (L : BoundsCodeLemmaPackage) (E : BoundsCodeLemmaEvidence L) : BoundsCodeLemmaClosed L := by
  exact E.boundTypeClosed

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse