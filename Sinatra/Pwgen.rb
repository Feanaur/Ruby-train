require 'sinatra'

get '/' do
  <<-HTML
    <form method="post" action="/result">
      <p><textarea rows="1" cols="5" name="dimension"></textarea> - Password length</p> 
      <p><input type="checkbox" name="check[]" value="1" />  - check here if password should contain capital letters</p> 
      <p><input type="checkbox" name="check[]" value="2" /> - check here if password should contain digits</p> 
      <p><input type="checkbox" name="check[]" value="3" /> - don't include ambiguous characters</p> 
      <input type="submit" value="Generate!"/>
    </form>
  HTML
end

post '/result' do
  if params[:dimension] == params[:dimension].to_i.to_s || params[:dimension].to_s == ""
    passString = 'pwgen '
    passLength = params[:dimension]
    checkboxes = params['check']
    if checkboxes.kind_of?(Array)
      checkboxes.each do |n|
        if n=="1" then passString+=' -c ' end
        if n=="2" then passString+=' -n ' end
        if n=="3" then passString+=' -B ' end
      end
    end
    passString+=passLength.to_s+" 1"
    result = `#{passString}`
    p "Here is your password: "+result
  else
    p "Length value is incorrect. Go back and rewrite it."
  end
end