class Manual < ApplicationRecord
	has_one_attached :path
	validates_presence_of :tipo, :marca, :path


	def self.search(search)
		variable = search
		if search
			if search != ""
				Manual.where('tipo LIKE :search OR marca LIKE :search OR codigo LIKE :search OR modelo LIKE :search', search: "%#{search}%")
			end
		else
			return nil
		# 	Manual.all
		end
	end
end
