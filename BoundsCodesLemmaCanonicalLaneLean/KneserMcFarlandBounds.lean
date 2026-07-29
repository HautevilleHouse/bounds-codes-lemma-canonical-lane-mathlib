import canonicalLaneMathlib.AdmissibleClass
import BoundsCodesLemmaCanonicalLaneLean.AsymptoticBoundsAnalyticProof

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure KneserMcFarlandBounds {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} {S : SpherePackingBounds L D} {C : CodingBoundsEvidence L D S} (A : AsymptoticBoundsAnalyticProof L D S C) where
  kneserBound : ℝ
  mcfarlandBound : ℝ
  applicationToCodeSets : Prop

structure KneserMcFarlandEvidence {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} {S : SpherePackingBounds L D} {C : CodingBoundsEvidence L D S} {A : AsymptoticBoundsAnalyticProof L D S C} (K : KneserMcFarlandBounds L D S C A) where
  kneserBoundNonnegative : K.kneserBound ≥ 0
  mcfarlandBoundNonnegative : K.mcfarlandBound ≥ 0
  applicationToCodeSetsClosed : K.applicationToCodeSets

def KneserMcFarlandClosed {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} {S : SpherePackingBounds L D} {C : CodingBoundsEvidence L D S} {A : AsymptoticBoundsAnalyticProof L D S C} (K : KneserMcFarlandBounds L D S C A) : Prop :=
  (K.kneserBound ≥ 0) ∧ (K.mcfarlandBound ≥ 0) ∧ K.applicationToCodeSets

theorem kneser_mcfarland_closed_from_evidence {L : LinearProgrammingPackage} {D : DelsarteLinearProgramming L} {S : SpherePackingBounds L D} {C : CodingBoundsEvidence L D S} {A : AsymptoticBoundsAnalyticProof L D S C} (K : KneserMcFarlandBounds L D S C A) (E : KneserMcFarlandEvidence K) : KneserMcFarlandClosed K :=
  And.intro E.kneserBoundNonnegative (And.intro E.mcfarlandBoundNonnegative E.applicationToCodeSetsClosed)

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse