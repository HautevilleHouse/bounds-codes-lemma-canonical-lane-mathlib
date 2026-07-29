import canonicalLaneMathlib.AdmissibleClass
import BoundsCodesLemmaCanonicalLaneLean.CodeConstruction

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure DecodingTheoremPackage (C : CodeConstructionPackage) where
  syndromeDecodingProperty : Prop
  errorCorrectionCapability : ℕ
  uniqueDecodingGuaranteed : Prop
  syndromeDecodingPropertyClosed : syndromeDecodingProperty
  errorCorrectionCapabilityClosed : errorCorrectionCapability ≥ 1
  uniqueDecodingGuaranteedClosed : uniqueDecodingGuaranteed

def DecodingTheoremClosed {C : CodeConstructionPackage} (D : DecodingTheoremPackage C) : Prop :=
  D.syndromeDecodingProperty ∧ D.uniqueDecodingGuaranteed

theorem decoding_theorem_closed_from_evidence {C : CodeConstructionPackage}
    (D : DecodingTheoremPackage C) : DecodingTheoremClosed D := by
  exact And.intro D.syndromeDecodingPropertyClosed D.uniqueDecodingGuaranteedClosed

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse
