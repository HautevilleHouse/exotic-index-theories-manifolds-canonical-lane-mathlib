import ExoticIndexTheoriesManifoldsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ExoticIndexTheoriesManifoldsCanonicalLaneLean

structure AdmissibleClass where
  object : ExoticIndexAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ExoticIndexWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExoticIndexTheoriesManifoldsCanonicalLaneLean
end HautevilleHouse