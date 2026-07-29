import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure BoundsCodesDomain where
  alphabet : Type u
  codeWords : List alphabet
  blockLength : Nat
  dimension : Nat
  minimumDistance : Nat
  alphabetSize : Nat
  isLinear : Prop
  generatorMatrix : Option (List (List alphabet))
  parityCheckMatrix : Option (List (List alphabet))

def domainIsLinear (D : BoundsCodesDomain) : Prop :=
  D.isLinear ∧ D.generatorMatrix.isSome ∧ D.parityCheckMatrix.isSome

structure CodingParameters where
  blockLength : Nat
  dimension : Nat
  minimumDistance : Nat
  alphabetSize : Nat

def codingParameters (D : BoundsCodesDomain) : CodingParameters :=
  { blockLength := D.blockLength
    dimension := D.dimension
    minimumDistance := D.minimumDistance
    alphabetSize := D.alphabetSize }

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse