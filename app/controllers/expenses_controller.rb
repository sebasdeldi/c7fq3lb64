class ExpensesController < ApplicationController
  attr_accessor :input_cate

  def index
     # @expenses = Expense.order("date DESC")
     input_cate = params[:category_id]
     input_conc = params[:concept]

 	

	exp1= Expense.where("concept like ?", "%#{input_conc}%")
	exp2= Expense.where(category_id: params[:category_id])

	@expenses = (exp1 << exp2).flatten!.uniq
  end

end

