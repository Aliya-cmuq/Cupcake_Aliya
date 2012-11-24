module ApplicationHelper
  
  # def title 
  #   if @title.nil?
  #     @til = "Customers"
  #   else
  #     @til = @title
  # 
  #   end
  #   end


  	def title
  		@title ? "Cupcakes #{@title}" : "Cupcakes Doha"
  	end		

end
