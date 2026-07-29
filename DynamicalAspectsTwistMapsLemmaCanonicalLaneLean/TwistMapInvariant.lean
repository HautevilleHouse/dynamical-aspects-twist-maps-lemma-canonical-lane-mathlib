import DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapGeneratedFunction

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure InvariantCurvePackage {P : GeneratingFunctionPackage} where
  curve : P.ambientSpace → P.ambientSpace
  invariantUnderMap : Prop
  rotationNumber : ℝ
  lipschitzBound : ℝ
  graphProperty : Prop
  invariantUnderMapClosed : invariantUnderMap
  graphPropertyClosed : graphProperty

structure InvariantCurveEvidence {P : GeneratingFunctionPackage} (C : InvariantCurvePackage P) where
  invariantUnderMapClosed : C.invariantUnderMap
  graphPropertyClosed : C.graphProperty

def InvariantCurveClosed {P : GeneratingFunctionPackage} (C : InvariantCurvePackage P) : Prop :=
  C.invariantUnderMap ∧ C.graphProperty

theorem invariant_curve_closed_from_evidence {P : GeneratingFunctionPackage}
    (C : InvariantCurvePackage P) (E : InvariantCurveEvidence C) :
    InvariantCurveClosed C := by
  exact And.intro E.invariantUnderMapClosed E.graphPropertyClosed

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
