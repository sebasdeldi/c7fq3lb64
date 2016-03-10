class ExpensesController < ApplicationController

  def index
  


	if params[:concept].blank? || params[:category_id].blank?
		@expenses = Expense.where("category_id = ?", -9999 )
	else
		@expenses= Expense.where("concept like ?", "%#{params[:concept]}%" ).where("category_id = ?", params[:category_id] )

	end



  end
end
