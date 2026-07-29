import DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapObjects

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure InvariantCurvesPackage where
  rotationNumberDefined : Prop
  invariantCurveExists : Prop
  lipschitzEstimate : Prop
  cantorSetStructure : Prop

structure InvariantCurvesEvidence (I : InvariantCurvesPackage) where
  rotationNumberDefinedClosed : I.rotationNumberDefined
  invariantCurveExistsClosed : I.invariantCurveExists
  lipschitzEstimateClosed : I.lipschitzEstimate
  cantorSetStructureClosed : I.cantorSetStructure

def InvariantCurvesClosed (I : InvariantCurvesPackage) : Prop :=
  I.rotationNumberDefined ∧ I.invariantCurveExists ∧ I.lipschitzEstimate ∧ I.cantorSetStructure

theorem invariant_curves_closed_from_evidence (I : InvariantCurvesPackage) (E : InvariantCurvesEvidence I) : InvariantCurvesClosed I := by
  exact And.intro E.rotationNumberDefinedClosed (And.intro E.invariantCurveExistsClosed (And.intro E.lipschitzEstimateClosed E.cantorSetStructureClosed))

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse