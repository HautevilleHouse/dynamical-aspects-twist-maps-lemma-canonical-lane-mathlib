import DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapKAM

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure AubryMatherPackage {P : GeneratingFunctionPackage} where
  minimaSet : P.ambientSpace → Prop
  periodicOrbitsDense : Prop
  actionMinimizingProperty : Prop
  cantorSetStructure : Prop
  minimaSetClosed : minimaSet P.ambientSpace
  periodicOrbitsDenseClosed : periodicOrbitsDense
  actionMinimizingPropertyClosed : actionMinimizingProperty
  cantorSetStructureClosed : cantorSetStructure

structure AubryMatherEvidence {P : GeneratingFunctionPackage}
    (A : AubryMatherPackage P) where
  minimaSetClosed : A.minimaSet A.ambientSpace
  periodicOrbitsDenseClosed : A.periodicOrbitsDense
  actionMinimizingPropertyClosed : A.actionMinimizingProperty
  cantorSetStructureClosed : A.cantorSetStructure

def AubryMatherClosed {P : GeneratingFunctionPackage} (A : AubryMatherPackage P) : Prop :=
  A.minimaSet A.ambientSpace ∧ A.periodicOrbitsDense ∧
  A.actionMinimizingProperty ∧ A.cantorSetStructure

theorem aubry_mather_closed_from_evidence {P : GeneratingFunctionPackage}
    (A : AubryMatherPackage P) (E : AubryMatherEvidence A) :
    AubryMatherClosed A := by
  exact And.intro E.minimaSetClosed (And.intro E.periodicOrbitsDenseClosed
    (And.intro E.actionMinimizingPropertyClosed E.cantorSetStructureClosed))

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
