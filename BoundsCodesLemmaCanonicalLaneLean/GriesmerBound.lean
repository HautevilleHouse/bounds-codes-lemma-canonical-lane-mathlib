import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure GriesmerBoundPackage (B : CodingBoundsPackage) where
  linearCodeAssumed : Prop
  sumFormula : Nat
  boundInequality : Prop

structure GriesmerBoundEvidence {B : CodingBoundsPackage}
    (G : GriesmerBoundPackage B) where
  linearCodeAssumedClosed : G.linearCodeAssumed
  sumFormulaClosed : G.sumFormula
  boundInequalityClosed : G.boundInequality

def GriesmerBoundClosed {B : CodingBoundsPackage}
    (G : GriesmerBoundPackage B) : Prop :=
  G.linearCodeAssumed ∧ G.sumFormula ∧ G.boundInequality

theorem griesmer_bound_closed_from_evidence {B : CodingBoundsPackage}
    (G : GriesmerBoundPackage B) (E : GriesmerBoundEvidence G) :
    GriesmerBoundClosed G := by
  exact And.intro E.linearCodeAssumedClosed
    (And.intro E.sumFormulaClosed E.boundInequalityClosed)

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse