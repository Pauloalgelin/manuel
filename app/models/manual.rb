class Manual < ApplicationRecord
	def self.search(search)
		if search
			Manual.where(tipo: search)
			Manual.where(marca: search)
			Manual.where(codigo: search)
			Manual.where(modelo: search)
		else
			Manual.all
		end
	end
end
