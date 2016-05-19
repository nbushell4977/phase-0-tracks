# write a basic GET route
  # add a query parameter
  # GET /
 
 #take query params for name and age
 #return a string with them
 #else return hello you
  get '/' do
   if params[:name] || params[:age]
    "#{params[:name]} is #{params[:age]} years old."
 else
   "hello you!"
  end
end
  
 get '/:campus' do
   all_names = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]]) 
   string = ""
   all_names.each do |name|
      string << "#{name['name']} goes to San Francisco to learn coding. <br><br>"
 end
 
 
 #create address string for contact route
 get '/contact' do
   "1121 Bush St, 
   San Francisco, CA"
 end
 #congratulate if name exists
 #if not return good job
 get '/great_job/' do
  if params[:employee]
    "Good Job, #{params[:employee]}!"
     
  else
     "Good Job!"
  end
 string
end
 
 #set route params for adding two numbers
 #set  params as variables num1 and num2
 #return a string saying that they are added and add them
 get '/:num1/plus/:num2' do
   num1 = params[:num1]
   num2 = params[:num2]
   "#{num1} plus #{num2} equals #{num1.to_i + num2.to_i}"
end
  # write a GET route with route parameters
  get '/about/:person' do
 @@ -5,49 +21,49 @@
  
 # write a GET route that retrieves
 # all student data
 #print the output as strings
 #add those strings to the response string
 #use break tags to format data
  get '/students' do
    students = db.execute("SELECT * FROM students")
    response = ""
 
    students.each do |student|
      response << "ID: #{student['id']}<br>"
      response << "Name: #{student['name']}<br>"
      response << "Age: #{student['age']}<br>"
      response << "Campus: #{student['campus']}<br><br>"
    end
   response
   students.to_s
   response.to_s
  end
  
 # write a GET route that retrieves
 # a particular student
  
 get '/students/:id' do
   student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])
   p student.to_s
  
 #create campus route parameter
 #iterate through students db where the campus input matches
 #add the matches to a formatted string
 #search students by campus and list as strings
get '/:campus' do
   all_names = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]]) 
   string = ""
   all_names.each do |name|
      string << "#{name['name']} goes to SF to learn at DBC <br><br>"
   end
 string
end
  
 get '/contact' do
   address = "1300 McTree Ave, SF"
   address.to_s
 end
  
 get '/great_job/' do
   name = params[:name]
   if name
     return "Good Job, #{name}!"
     return name.to_s
   else
     return "Good Job!"
 
 # GET route that retrieves
 # a student by id
 et '/students/:id' do
   student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])
   str = ""
   student.each do |student|
     str << "name: #{student['name']} age: #{student['age']} campus: #{student['campus']}"
    end
  str
  end
  
   get '/:num1/plus/:num2' do
     "hello world"
     num1 = params[:num1]
     num2 = params[:num2]
   
     "#{num1} plus #{num2} = #{num1.to_i + num2.to_i}"
 
   end
 
