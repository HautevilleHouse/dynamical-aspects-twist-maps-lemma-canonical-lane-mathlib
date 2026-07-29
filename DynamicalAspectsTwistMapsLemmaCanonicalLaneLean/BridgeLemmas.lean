import DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
