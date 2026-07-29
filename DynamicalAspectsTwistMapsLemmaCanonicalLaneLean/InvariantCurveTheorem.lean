import HautevilleHouse.DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapObject

/-!
# Invariant Curve Theorem Package
-/

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure InvariantCurvePackage where
  twistMap : TwistMap
  rotationNumber : ℝ
  existenceCondition : Prop
  curveSmoothness : Prop
  persistenceUnderPerturbation : Prop

structure InvariantCurveEvidence (I : InvariantCurvePackage) where
  existenceConditionClosed : I.existenceCondition
  curveSmoothnessClosed : I.curveSmoothness
  persistenceUnderPerturbationClosed : I.persistenceUnderPerturbation

def InvariantCurveClosed (I : InvariantCurvePackage) : Prop :=
  I.existenceCondition ∧ I.curveSmoothness ∧ I.persistenceUnderPerturbation

theorem invariant_curve_closed_from_evidence (I : InvariantCurvePackage)
    (E : InvariantCurveEvidence I) : InvariantCurveClosed I := by
  exact And.intro E.existenceConditionClosed
    (And.intro E.curveSmoothnessClosed E.persistenceUnderPerturbationClosed)

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
