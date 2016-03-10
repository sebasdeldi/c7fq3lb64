class ExpensesController < ApplicationController

  def index

	@expenses= Expense.where("concept like ?", "%#{params[:concept]}%" ).where(category_id: params[:category_id] )
  end
end
