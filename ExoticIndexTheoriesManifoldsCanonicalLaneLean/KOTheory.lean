import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure KOTheoryPackage where
  manifold : Type u
  kOGroups : Type u
  kOTheory : Prop
  bottPeriodicity : Prop
  exoticElement : Prop

structure KOTheoryEvidence (K : KOTheoryPackage) where
  kOTheoryClosed : K.kOTheory
  bottPeriodicityClosed : K.bottPeriodicity
  exoticElementClosed : K.exoticElement

def KOTheoryClosed (K : KOTheoryPackage) : Prop :=
  K.kOTheory ∧ K.bottPeriodicity ∧ K.exoticElement

theorem kO_theory_closed_from_evidence (K : KOTheoryPackage) (E : KOTheoryEvidence K) : KOTheoryClosed K := by
  exact And.intro E.kOTheoryClosed (And.intro E.bottPeriodicityClosed E.exoticElementClosed)

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse