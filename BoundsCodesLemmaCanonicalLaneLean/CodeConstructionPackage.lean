import BoundsCodesLemmaCanonicalLaneLean.CodingBoundsPackage

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure CodeConstructionPackage {C : CodingBoundsPackage} where
  linearCodeConstruction : Prop
  cyclicCodeConstruction : Prop
  reedSolomonConstruction : Prop
  concatenatedCodeConstruction : Prop
  explicitCodeReachingBound : Prop

structure CodeConstructionEvidence {C : CodingBoundsPackage}
    (P : CodeConstructionPackage C) where
  linearCodeConstructionClosed : P.linearCodeConstruction
  cyclicCodeConstructionClosed : P.cyclicCodeConstruction
  reedSolomonConstructionClosed : P.reedSolomonConstruction
  concatenatedCodeConstructionClosed : P.concatenatedCodeConstruction
  explicitCodeReachingBoundClosed : P.explicitCodeReachingBound

def CodeConstructionClosed {C : CodingBoundsPackage}
    (P : CodeConstructionPackage C) : Prop :=
  P.linearCodeConstruction ∧ P.cyclicCodeConstruction ∧
  P.reedSolomonConstruction ∧ P.concatenatedCodeConstruction ∧
  P.explicitCodeReachingBound

theorem code_construction_closed_from_evidence {C : CodingBoundsPackage}
    (P : CodeConstructionPackage C) (E : CodeConstructionEvidence P) :
    CodeConstructionClosed P := by
  exact And.intro E.linearCodeConstructionClosed
    (And.intro E.cyclicCodeConstructionClosed
      (And.intro E.reedSolomonConstructionClosed
        (And.intro E.concatenatedCodeConstructionClosed
          E.explicitCodeReachingBoundClosed)))

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse