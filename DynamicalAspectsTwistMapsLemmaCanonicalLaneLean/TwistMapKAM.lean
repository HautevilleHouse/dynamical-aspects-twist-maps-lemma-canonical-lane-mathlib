import DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapInvariant

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure KAMPersistencePackage {P : GeneratingFunctionPackage} where
  integrableSystem : Prop
  perturbation : Prop
  nondegeneracyCondition : Prop
  invariantTorusPersistence : Prop
  diophantineCondition : Prop
  invariantTorusPersistenceClosed : invariantTorusPersistence

structure KAMPersistenceEvidence {P : GeneratingFunctionPackage}
    (K : KAMPersistencePackage P) where
  invariantTorusPersistenceClosed : K.invariantTorusPersistence

def KAMPersistenceClosed {P : GeneratingFunctionPackage} (K : KAMPersistencePackage P) : Prop :=
  K.invariantTorusPersistence

theorem kam_persistence_closed_from_evidence {P : GeneratingFunctionPackage}
    (K : KAMPersistencePackage P) (E : KAMPersistenceEvidence K) :
    KAMPersistenceClosed K := by
  exact E.invariantTorusPersistenceClosed

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
