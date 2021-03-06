class Score < ApplicationRecord

    belongs_to :atleta
    belongs_to :competicao

    validates :competicao_id, presence: true
    validates :atleta_id, presence: true
    validates :value_1, presence: true
    validates :value_2, presence: false
    validates :value_3, presence: false
    validates :unidade, presence: false
end
