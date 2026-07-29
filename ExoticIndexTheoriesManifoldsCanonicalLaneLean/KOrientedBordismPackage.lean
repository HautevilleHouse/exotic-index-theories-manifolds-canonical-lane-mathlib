import ExoticIndexTheoriesManifoldsCanonicalLaneLean.SignatureOperatorPackage

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure KOrientedBordismPackage {S : SignatureOperatorPackage} where
  bordismGroup : Type u
  orientation : Prop
  fundamentalClass : Type v
  indexHomomorphism : Prop
  isomorphismToZ : Prop

structure KOrientedBordismEvidence {S : SignatureOperatorPackage}
    (K : KOrientedBordismPackage S) where
  orientationClosed : K.orientation
  indexHomomorphismClosed : K.indexHomomorphism
  isomorphismToZClosed : K.isomorphismToZ

def KOrientedBordismClosed {S : SignatureOperatorPackage}
    (K : KOrientedBordismPackage S) : Prop :=
  K.orientation ∧ K.indexHomomorphism ∧ K.isomorphismToZ

theorem k_oriented_bordism_closed_from_evidence
    {S : SignatureOperatorPackage} (K : KOrientedBordismPackage S)
    (E : KOrientedBordismEvidence K) : KOrientedBordismClosed K := by
  exact And.intro E.orientationClosed
    (And.intro E.indexHomomorphismClosed E.isomorphismToZClosed)

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse