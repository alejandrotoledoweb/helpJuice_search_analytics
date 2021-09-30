class FormValidations::SearchesController < SearchesController

  def update
    @search.assign_attributes(search_params)
    @search.valid?
    respond_to do |format|
      format.text { render partial: 'searches/form', locals: { search: @search }, formats: [:html] } 
    end
  end
  
  def create
    @search = Search.new(search_params)
    @search.validate
    respond_to do |format|
      format.text { render partial: 'searches/form', locals: { search: @search }, formats: [:html] } 
    end
  end
end
