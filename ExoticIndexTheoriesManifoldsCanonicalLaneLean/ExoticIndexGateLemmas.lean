import ExoticIndexTheoriesManifoldsCanonicalLaneLean.ExoticIndexBridgeLemmas

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.indexTheorySatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse