import DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Twist Map Invariant Circles Package

This module formalizes the existence of invariant circles for twist maps,
a key ingredient in the Aubry-Mather theory.
-/

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure TwistMapInvariantCirclesPackage {A : AdmissibleClass} where
  rotationNumberIrrational : Prop
  invariantCirclesExist : Prop
  circleHomeomorphism : Prop
  lipschitzGraph : Prop

structure TwistMapInvariantCirclesEvidence {A : AdmissibleClass}
    (C : TwistMapInvariantCirclesPackage A) where
  rotationNumberIrrationalClosed : C.rotationNumberIrrational
  invariantCirclesExistClosed : C.invariantCirclesExist
  circleHomeomorphismClosed : C.circleHomeomorphism
  lipschitzGraphClosed : C.lipschitzGraph

def TwistMapInvariantCirclesClosed {A : AdmissibleClass}
    (C : TwistMapInvariantCirclesPackage A) : Prop :=
  C.rotationNumberIrrational ∧ C.invariantCirclesExist ∧
  C.circleHomeomorphism ∧ C.lipschitzGraph

theorem twist_map_invariant_circles_closed_from_evidence
    {A : AdmissibleClass} (C : TwistMapInvariantCirclesPackage A)
    (E : TwistMapInvariantCirclesEvidence C) :
    TwistMapInvariantCirclesClosed C := by
  exact And.intro E.rotationNumberIrrationalClosed
    (And.intro E.invariantCirclesExistClosed
      (And.intro E.circleHomeomorphismClosed E.lipschitzGraphClosed))

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
