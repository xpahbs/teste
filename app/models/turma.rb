class Turma < ActiveRecord::Base
  belongs_to :curso
  belongs_to :escola
end
