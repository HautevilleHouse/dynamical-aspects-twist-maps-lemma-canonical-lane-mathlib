import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapPhaseSpace

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure BirkhoffPackage {P : TwistMapPhaseSpace} where
  periodicOrbitSet : Set (P.annulus × P.angleCoordinate)
  rotationNumberValues : Set ℝ
  orbitType : Prop
  monotoneVariational : Prop
  orbitTypeTerm : orbitType
  monotoneVariationalTerm : monotoneVariational

structure BirkhoffEvidence {P : TwistMapPhaseSpace} (B : BirkhoffPackage P) where
  orbitTypeClosed : B.orbitType
  monotoneVariationalClosed : B.monotoneVariational

def BirkhoffClosed {P : TwistMapPhaseSpace} (B : BirkhoffPackage P) : Prop :=
  B.orbitType ∧ B.monotoneVariational

theorem birkhoff_closed_from_evidence {P : TwistMapPhaseSpace}
    (B : BirkhoffPackage P) (E : BirkhoffEvidence B) : BirkhoffClosed B := by
  exact And.intro E.orbitTypeClosed E.monotoneVariationalClosed

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse