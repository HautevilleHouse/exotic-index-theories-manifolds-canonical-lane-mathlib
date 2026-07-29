import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

def ConstrainedExoticIndexClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_exotic_index_endgame (A : AdmissibleClass) :
    ConstrainedExoticIndexClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse