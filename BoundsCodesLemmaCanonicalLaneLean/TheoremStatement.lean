import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesLemmaCanonicalLaneLean

structure BoundsAdmittedObject where
  boundType : Type u
  boundValue : boundType
  boundValid : Prop
  conclusion : boundValid

structure BoundsWitnessClosed (O : BoundsAdmittedObject) : Prop where
  witness : O.boundValid

default

end BoundsCodesLemmaCanonicalLaneLean
end HautevilleHouse