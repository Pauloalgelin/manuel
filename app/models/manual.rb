class Manual < ApplicationRecord
	has_one_attached :path

	def self.search(search)
		variable = search
		if search

			Manual.where('tipo LIKE :search OR marca LIKE :search OR codigo LIKE :search OR modelo LIKE :search', search: "%#{search}%")
			# Manual.where(tipo: search)
			# Manual.where(marca: search)
			# Manual.where(codigo: search)
			# Manual.where(modelo: search)
			# Manual.where(path: search)
		else
			return nil
		# 	Manual.all
		end
	end
end
