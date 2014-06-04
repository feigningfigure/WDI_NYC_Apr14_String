require 'sinatra'
require 'sinatra/reloader'

$all_quizzes = [
    {
        :id => 1,
        :name => "What Game of Thrones character are you?",
        :questions => [
            {
                :id => 1,
                :text => "What would you rather do?",
                :choices => [
                    "Drink and make merry",
                    "Have, like, a ton of honor",
                    "Be a terrible person",
                    "Swear a lot and bathe rarely"
                ]
            },
            {
                :id => 2,
                :text => "Are you all about family events?",
                :choices => ["Yes", "No"]
            }
        ]
    },
    {
        :id => 2,
        :name => "Which consumer energy-saving lightbulb are you?",
        :questions => []
    }
]

get '/quizzes' do
html = ""

$all_quizzes.each do |quiz|
    html << "<h1> #{quiz[:name]}</h1> "
end
return html
end
