class CircuitSimulation < ApplicationRecord
  belongs_to :user_prelab
  belongs_to :circuit
  has_one_attached :schematic
end
