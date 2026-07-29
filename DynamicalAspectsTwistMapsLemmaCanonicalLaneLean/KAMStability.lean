import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapPhaseSpace

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure KAMPackage {P : TwistMapPhaseSpace} where
  invariantTorusPersistence : Prop
  diophantineCondition : P.angleCoordinate → Prop
  analyticPerturbation : Prop
  smallDivisorEstimate : Prop
  invariantTorusPersistenceTerm : invariantTorusPersistence
  analyticPerturbationTerm : analyticPerturbation
  smallDivisorEstimateTerm : smallDivisorEstimate

structure KAMEvidence {P : TwistMapPhaseSpace} (K : KAMPackage P) where
  invariantTorusPersistenceClosed : K.invariantTorusPersistence
  analyticPerturbationClosed : K.analyticPerturbation
  smallDivisorEstimateClosed : K.smallDivisorEstimate

def KAMClosed {P : TwistMapPhaseSpace} (K : KAMPackage P) : Prop :=
  K.invariantTorusPersistence ∧ K.analyticPerturbation ∧ K.smallDivisorEstimate

theorem kam_closed_from_evidence {P : TwistMapPhaseSpace}
    (K : KAMPackage P) (E : KAMEvidence K) : KAMClosed K := by
  exact And.intro E.invariantTorusPersistenceClosed
    (And.intro E.analyticPerturbationClosed E.smallDivisorEstimateClosed)

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse