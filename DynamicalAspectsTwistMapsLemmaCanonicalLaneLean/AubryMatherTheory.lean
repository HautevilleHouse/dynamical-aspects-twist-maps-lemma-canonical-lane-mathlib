import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapPhaseSpace

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure AubryMatherPackage {P : TwistMapPhaseSpace} where
  minimalConfigurations : Type u
  rotationNumber : P.angleCoordinate → ℝ
  actionMinimizing : Prop
  invariantCantors : Prop
  actionMinimizingTerm : actionMinimizing
  invariantCantorsTerm : invariantCantors

structure AubryMatherEvidence {P : TwistMapPhaseSpace} (A : AubryMatherPackage P) where
  actionMinimizingClosed : A.actionMinimizing
  invariantCantorsClosed : A.invariantCantors

def AubryMatherClosed {P : TwistMapPhaseSpace} (A : AubryMatherPackage P) : Prop :=
  A.actionMinimizing ∧ A.invariantCantors

theorem aubry_mather_closed_from_evidence {P : TwistMapPhaseSpace}
    (A : AubryMatherPackage P) (E : AubryMatherEvidence A) : AubryMatherClosed A := by
  exact And.intro E.actionMinimizingClosed E.invariantCantorsClosed

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse