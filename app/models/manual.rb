class Manual < ApplicationRecord
	has_one_attached :path

	def self.search(search)
		if search
			Manual.where(tipo: search)
			Manual.where(marca: search)
			Manual.where(codigo: search)
			Manual.where(modelo: search)
			Manual.where(path: search)
		else
			Manual.all
		end
	end
end
