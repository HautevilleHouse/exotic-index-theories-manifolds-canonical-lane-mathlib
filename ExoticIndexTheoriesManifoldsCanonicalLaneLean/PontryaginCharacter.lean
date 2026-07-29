import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure PontryaginCharacterPackage where
  manifold : Type u
  tangentBundle : Type v
  pontryaginClasses : Nat → Type w
  rationalIsomorphism : Prop

structure PontryaginCharacterEvidence (P : PontryaginCharacterPackage) where
  rationalIsomorphismClosed : P.rationalIsomorphism

def PontryaginCharacterClosed (P : PontryaginCharacterPackage) : Prop :=
  P.rationalIsomorphism

theorem pontryagin_character_closed_from_evidence (P : PontryaginCharacterPackage)
    (Ev : PontryaginCharacterEvidence P) : PontryaginCharacterClosed P := by
  exact Ev.rationalIsomorphismClosed

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse