import canonicalLaneMathlib.AdmissibleClass
import BoundsCodesLemmaCanonicalLaneLean.SpherePackingBounds
import BoundsCodesLemmaCanonicalLaneLean.DelsarteLinearProgramming

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure CodingBoundsEvidence {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} {S : SpherePackingBounds L D} where
  codeExistence : Prop
  optimalCodeRate : ℝ
  hammingBound : Prop
  gilbertVarshamovBound : Prop

structure CodingBoundsEvidenceTerms {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} {S : SpherePackingBounds L D} (C : CodingBoundsEvidence L D S) where
  codeExistenceClosed : C.codeExistence
  optimalCodeRateNonnegative : C.optimalCodeRate ≥ 0
  hammingBoundClosed : C.hammingBound
  gilbertVarshamovBoundClosed : C.gilbertVarshamovBound

def CodingBoundsEvidenceClosed {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} {S : SpherePackingBounds L D} (C : CodingBoundsEvidence L D S) : Prop :=
  C.codeExistence ∧ (C.optimalCodeRate ≥ 0) ∧ C.hammingBound ∧ C.gilbertVarshamovBound

theorem coding_bounds_evidence_closed_from_terms {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} {S : SpherePackingBounds L D} (C : CodingBoundsEvidence L D S) (T : CodingBoundsEvidenceTerms C) : CodingBoundsEvidenceClosed C :=
  And.intro T.codeExistenceClosed (And.intro T.optimalCodeRateNonnegative (And.intro T.hammingBoundClosed T.gilbertVarshamovBoundClosed))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse