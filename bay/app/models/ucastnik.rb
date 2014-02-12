class Ucastnik < ActiveRecord::Base
    belongs_to :c_narodnost
    belongs_to :c_povolani
    belongs_to :c_rodinny_stav
    belongs_to :c_titul
    belongs_to :c_vzdelani
end
