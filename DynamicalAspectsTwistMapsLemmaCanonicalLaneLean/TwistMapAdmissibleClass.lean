import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure TwistMapSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TwistMapAdmittedObject where
  space : TwistMapSpace
  areaPreserving : Prop
  twistCondition : Prop
  invariantCirclesExist : Prop
  conclusion : invariantCirclesExist

structure TwistMapEndgameState where
  object : TwistMapAdmittedObject

def TwistMapWitnessClosed (O : TwistMapAdmittedObject) : Prop :=
  O.invariantCirclesExist

structure AdmissibleClass where
  object : TwistMapAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TwistMapWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
