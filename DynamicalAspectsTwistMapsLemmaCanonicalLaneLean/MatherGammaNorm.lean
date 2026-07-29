import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure MatherGammaNormPackage where
  functionSpace : Type u
  normDefinition : (functionSpace → ℝ) → ℝ
  normProperties : Prop
  convexity : Prop
  normPropertiesTerm : normProperties
  convexityTerm : convexity

structure MatherGammaNormEvidence (N : MatherGammaNormPackage) where
  normPropertiesClosed : N.normProperties
  convexityClosed : N.convexity

def MatherGammaNormClosed (N : MatherGammaNormPackage) : Prop :=
  N.normProperties ∧ N.convexity

theorem mather_gamma_norm_closed_from_evidence (N : MatherGammaNormPackage)
    (E : MatherGammaNormEvidence N) : MatherGammaNormClosed N := by
  exact And.intro E.normPropertiesClosed E.convexityClosed

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse