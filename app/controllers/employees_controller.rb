class EmployeesController < ApplicationController
   before_action :set_store_list

def create
 @employee= @store_list.employees.create(todo_item_params)
 redirect_to @store_list
end

def destroy
 @employee = @store_list.employees.find(params[:id])
 if @employee.destroy
  flash[:success] = "Store List item was deleted."
 else
  flash[:error] = "Store List item could not be deleted."
 end
 redirect_to @store_list
end

private

def set_store_list
 @store_list = StoreList.find(params[:store_list_id])
end
def employee_params
 params[:employee].permit(:content)
end
end
