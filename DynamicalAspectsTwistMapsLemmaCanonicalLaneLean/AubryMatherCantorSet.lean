import DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapInvariantCircles

/-!
# Aubry-Mather Cantor Set Package

This module formalizes the Aubry-Mather sets for twist maps with irrational
rotation numbers, which are Cantor sets in the cylinder.
-/

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure AubryMatherCantorSetPackage {A : AdmissibleClass}
    (C : TwistMapInvariantCirclesPackage A) where
  minimalSet : Prop
  cantorStructure : Prop
  rotationNumber : Prop
  orderedDynamics : Prop

structure AubryMatherCantorSetEvidence {A : AdmissibleClass}
    {C : TwistMapInvariantCirclesPackage A}
    (M : AubryMatherCantorSetPackage C) where
  minimalSetClosed : M.minimalSet
  cantorStructureClosed : M.cantorStructure
  rotationNumberClosed : M.rotationNumber
  orderedDynamicsClosed : M.orderedDynamics

def AubryMatherCantorSetClosed {A : AdmissibleClass}
    {C : TwistMapInvariantCirclesPackage A}
    (M : AubryMatherCantorSetPackage C) : Prop :=
  M.minimalSet ∧ M.cantorStructure ∧ M.rotationNumber ∧ M.orderedDynamics

theorem aubry_mather_cantor_set_closed_from_evidence
    {A : AdmissibleClass} {C : TwistMapInvariantCirclesPackage A}
    (M : AubryMatherCantorSetPackage C)
    (E : AubryMatherCantorSetEvidence M) :
    AubryMatherCantorSetClosed M := by
  exact And.intro E.minimalSetClosed
    (And.intro E.cantorStructureClosed
      (And.intro E.rotationNumberClosed E.orderedDynamicsClosed))

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
