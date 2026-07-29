import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure TwistMapSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TwistMap where
  domain : TwistMapSpace
  codomain : TwistMapSpace
  map : domain.carrier → codomain.carrier
  twistCondition : Prop
  areaPreserving : Prop

structure TwistMapAdmittedObject where
  space : TwistMapSpace
  twistMap : TwistMap
  invariantCurveExists : Prop
  conclusion : invariantCurveExists

def TwistMapWitnessClosed (O : TwistMapAdmittedObject) : Prop :=
  O.invariantCurveExists

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
