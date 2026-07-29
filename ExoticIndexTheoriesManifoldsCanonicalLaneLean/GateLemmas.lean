import ExoticIndexTheoriesManifoldsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse