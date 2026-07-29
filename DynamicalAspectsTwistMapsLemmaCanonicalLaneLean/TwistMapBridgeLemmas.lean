import DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapAdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TwistMapWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
