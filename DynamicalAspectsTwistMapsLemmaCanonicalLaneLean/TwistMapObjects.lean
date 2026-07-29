import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Dynamics.AreaPreserving

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure TwistMapSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TwistMapAdmittedObject where
  space : TwistMapSpace
  annulus : Prop
  areaPreserving : Prop
  monotoneTwist : Prop
  invariantCurvesSet : Type
  conclusion : invariantCurvesSet

def TwistMapWitnessClosed (O : TwistMapAdmittedObject) : Prop :=
  O.invariantCurvesSet

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse