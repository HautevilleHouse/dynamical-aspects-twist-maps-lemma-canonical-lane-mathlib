import DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapGateLemmas

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

def ConstrainedTwistMapClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_twist_map_endgame (A : AdmissibleClass) :
    ConstrainedTwistMapClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
