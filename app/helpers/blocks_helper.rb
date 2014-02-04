module BlocksHelper
  def placeholder_for_attr
    if @attr == 'title'
      'Inserir título do bloco'
    else
      'Inserir take-away'
    end
  end
end
