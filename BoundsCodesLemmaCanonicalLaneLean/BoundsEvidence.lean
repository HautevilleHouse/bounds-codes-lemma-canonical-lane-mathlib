import canonicalLaneMathlib.AdmissibleClass
import BoundsCodesLemmaCanonicalLaneLean.CodingBounds
import BoundsCodesLemmaCanonicalLaneLean.CodeConstraints
import BoundsCodesLemmaCanonicalLaneLean.ErrorCorrectionBounds

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure BoundsAnalyticFoundation where
  hamming : HammingBoundPackage
  singleton : SingletonBoundPackage
  plotkin : PlotkinBoundPackage
  gilbertVarshamov : GilbertVarshamovBoundPackage
  constraints : CodeConstraintsPackage
  hammingEvidence : HammingBoundEvidence hamming singleton
  singletonEvidence : SingletonBoundEvidence hamming singleton
  plotkinEvidence : ErrorCorrectionBoundsEvidence plotkin gilbertVarshamov
  gilbertVarshamovEvidence : ErrorCorrectionBoundsEvidence plotkin gilbertVarshamov
  constraintsEvidence : CodeConstraintsEvidence constraints

def BoundsAnalyticFoundationClosed (A : BoundsAnalyticFoundation) : Prop :=
  CodingBoundsClosed A.hamming A.singleton ∧
  ErrorCorrectionBoundsClosed A.plotkin A.gilbertVarshamov ∧
  CodeConstraintsClosed A.constraints

theorem bounds_analytic_foundation_closed_from_evidence (A : BoundsAnalyticFoundation) : BoundsAnalyticFoundationClosed A := by
  refine And.intro (coding_bounds_closed_from_evidence A.hamming A.singleton A.hammingEvidence) ?_
  refine And.intro (error_correction_bounds_closed_from_evidence A.plotkin A.gilbertVarshamov A.plotkinEvidence) ?_
  exact code_constraints_closed_from_evidence A.constraints A.constraintsEvidence

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse