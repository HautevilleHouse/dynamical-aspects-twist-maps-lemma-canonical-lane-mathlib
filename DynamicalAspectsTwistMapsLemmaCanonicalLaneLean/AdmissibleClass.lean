import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure TwistMapAdmissibleObject where
  space : Type u
  topology : TopologicalSpace space
  areaPreserving : Prop
  twistCondition : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : TwistMapAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
