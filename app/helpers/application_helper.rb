module ApplicationHelper
	def myquery(value_array, selector, search)
		str = []
		value_array.each do |a|
			str << "#{a} LIKE '%#{search}%'"
		end
		str.join(" #{selector} ")
	end

	def purchase_opend(cname)
		['vendors'].include?(cname)
	end
end
