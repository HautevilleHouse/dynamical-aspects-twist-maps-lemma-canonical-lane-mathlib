import DynamicalAspectsTwistMapsLemmaCanonicalLaneLean.TwistMapAubryMather

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsLemmaCanonicalLaneLean

structure LinkingNumberPackage {P : GeneratingFunctionPackage} where
  twistMap : P.ambientSpace → P.ambientSpace
  periodicPoints : Set (P.ambientSpace)
  crossingNumber : ℕ
  topologicalEntropy : ℝ
  linkingNumberDefined : Prop
  entropyLowerBound : Prop
  linkingNumberDefinedClosed : linkingNumberDefined
  entropyLowerBoundClosed : entropyLowerBound

structure LinkingNumberEvidence {P : GeneratingFunctionPackage}
    (L : LinkingNumberPackage P) where
  linkingNumberDefinedClosed : L.linkingNumberDefined
  entropyLowerBoundClosed : L.entropyLowerBound

def LinkingNumberClosed {P : GeneratingFunctionPackage} (L : LinkingNumberPackage P) : Prop :=
  L.linkingNumberDefined ∧ L.entropyLowerBound

theorem linking_number_closed_from_evidence {P : GeneratingFunctionPackage}
    (L : LinkingNumberPackage P) (E : LinkingNumberEvidence L) :
    LinkingNumberClosed L := by
  exact And.intro E.linkingNumberDefinedClosed E.entropyLowerBoundClosed

end DynamicalAspectsTwistMapsLemmaCanonicalLaneLean
end HautevilleHouse
