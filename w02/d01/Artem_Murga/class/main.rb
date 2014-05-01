require 'sinatra'
require 'sinatra/reloader'

# get '/' do 
# 	"Hello World!"
# end
#will outcome I'm joe and I love salad from http://localhost:4567/joe/salad

# get '/:name/:meal' do 
# 	"I'm #{params[:name]} and I love #{params[:meal]}" 
# end

# get '/:operation/:num1/:num2' do
# 	case params[:operation]

# 	when "add"
# 		"#{params[:num1].to_i + params[:num2].to_i}"
# 	else
# 		"sdf"
# 	end


	

# 	# "params[:num1] + params[:num2]"
# 	#  # if :operation == add

# 	 # "#{:num1 + :num2}" #{}"#{:num1 + :num2}" 
# end
$students = [{"Name"=>"Joe Park", "Email"=>"parkj1120@gmail.com", "GitHub"=>"jpark1120"}, {"Name"=>"Artem Murga", "Email"=>"art.incoming@gmail.com", "GitHub"=>"fertingoff"}, {"Name"=>"John Randall ", "Email"=>"john@johnrandall.com", "GitHub"=>"johntrandall"}, {"Name"=>"Wilson Chan", "Email"=>"wilson@mrwilsondj.com", "GitHub"=>"MRWILSONDJ"}, {"Name"=>"Nelson Schubart ", "Email"=>"nelson.schubart@gmail.com", "GitHub"=>"NSCHUB01"}, {"Name"=>"Christopher Bajorin", "Email"=>"christopher.bajorin@gmail.com", "GitHub"=>"cdbajorin"}, {"Name"=>"Christopher Lee ", "Email"=>"lee.christophermark@gmail.com", "GitHub"=>"ChrisMLee"}, {"Name"=>"Ben Ticsay", "Email"=>"benticsay@gmail.com", "GitHub"=>"benticsay"}, {"Name"=>"Joel Rosenblatt ", "Email"=>"jojoel10@gmail.com", "GitHub"=>"KLIMTHAUS"}, {"Name"=>"\nDeclan Van Welie", "Email"=>"declanv@gmail.com", "GitHub"=>"declanv"}, {"Name"=>"Andrew Wallace", "Email"=>"andrew.g.wallace@gmail.com", "GitHub"=>"feigningfigure"}, {"Name"=>" Emmanuel Tucker ", "Email"=>"mannymin@gmail.com", "GitHub"=>"mannymin"}, {"Name"=>" Nancy Ko", "Email"=>"konancys@gmail.com", "GitHub"=>"NancyKo"}, {"Name"=>"Dara Mao ", "Email"=>"dara.mao@gmail.com", "GitHub"=>"daramao"}, {"Name"=>"Jonathan Milgrom", "Email"=>"jbmilgrom@gmail.com", "GitHub"=>"jbmilgrom"}, {"Name"=>"Liz Goldstein", "Email"=>"liz.cira.goldstein@gmail.com", "GitHub"=>"LizCira"}, {"Name"=>"Ranny Ma", "Email"=>"ranma08@gmail.com", "GitHub"=>"ranma08"}, {"Name"=>"Jane Shin", "Email"=>"mlle.jihshin@gmail.com", "GitHub"=>"Janeplural"}, {"Name"=>"Victor Rodriguez \n", "Email"=>"rodriguezva@hotmail.com", "GitHub"=>"VictorARodriguez"}, {"Name"=>"David Montricher", "Email"=>"montricher@icloud.com", "GitHub"=>"montricher"}, {"Name"=>"Kyle Sweet", "Email"=>"kssweet@gmail.com", "GitHub"=>"kssweet"}, {"Name"=>"Keyan Bagheri ", "Email"=>"keyanbagheri@gmail.com", "GitHub"=>"keyanbagheri"}, {"Name"=>"Mason Tang", "Email"=>"mwillistang@gmail.com", "GitHub"=>"masewillis"}, {"Name"=>"Sophie Laffont", "Email"=>"slaffont@gmail.com", "GitHub"=>"slaffont"}, {"Name"=>"Zack Levine", "Email"=>"zackn9ne@gmail.com", "GitHub"=>"zackn9ne"}]


get "/students/:student_index" do 
	student_index = params[:student_index].to_i
	$students[student_index]["Name"]
end


