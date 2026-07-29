import DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapAdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure GeneratingFunctionPackage where
  ambientSpace : Type
  symplecticForm : ambientSpace → ambientSpace → ℝ
  twistGeneratingFunction : ambientSpace → ℝ
  mixedPartialNondegeneracy : Prop
  twistConditionFromGenFunc : Prop

structure GeneratingFunctionEvidence (P : GeneratingFunctionPackage) where
  mixedPartialNondegeneracyClosed : P.mixedPartialNondegeneracy
  twistConditionFromGenFuncClosed : P.twistConditionFromGenFunc

def GeneratingFunctionClosed (P : GeneratingFunctionPackage) : Prop :=
  P.mixedPartialNondegeneracy ∧ P.twistConditionFromGenFunc

theorem generating_function_closed_from_evidence (P : GeneratingFunctionPackage)
    (E : GeneratingFunctionEvidence P) : GeneratingFunctionClosed P := by
  exact And.intro E.mixedPartialNondegeneracyClosed E.twistConditionFromGenFuncClosed

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
