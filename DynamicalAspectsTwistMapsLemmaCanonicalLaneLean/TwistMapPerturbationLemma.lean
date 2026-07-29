import DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapInvariantCircles

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure PerturbationLemmaPackage {A : AdmissibleClass}
    (I : InvariantCirclesPackage) where
  smallPerturbation : Prop
  invariantCirclePersistence : Prop
  destructionThreshold : Prop

structure PerturbationLemmaEvidence {A : AdmissibleClass}
    {I : InvariantCirclesPackage} (P : PerturbationLemmaPackage I) where
  smallPerturbationClosed : P.smallPerturbation
  invariantCirclePersistenceClosed : P.invariantCirclePersistence
  destructionThresholdClosed : P.destructionThreshold

def PerturbationLemmaClosed {A : AdmissibleClass}
    {I : InvariantCirclesPackage} (P : PerturbationLemmaPackage I) : Prop :=
  P.smallPerturbation ∧ P.invariantCirclePersistence ∧ P.destructionThreshold

theorem perturbation_lemma_closed_from_evidence
    {A : AdmissibleClass} {I : InvariantCirclesPackage}
    (P : PerturbationLemmaPackage I) (E : PerturbationLemmaEvidence P) :
    PerturbationLemmaClosed P := by
  exact And.intro E.smallPerturbationClosed
    (And.intro E.invariantCirclePersistenceClosed E.destructionThresholdClosed)

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
