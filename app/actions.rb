def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >= 60
        "#{time_ago_in_minutes / 60} hours ago"
    else
        "#{time_ago_in_minutes} minutes ago"
    end
end

get '/' do
    @post_frederick = {
        username: "frederick_s",
        avatar_url: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAssAAAAJDE1ODI2N2M1LTYwOTgtNDY2YS04YTdmLTEyMmY1Yzk1YzlmYQ.jpg",
        photo_url: "http://static1.squarespace.com/static/56e0f44160b5e96aec2019f3/t/5704feaa7da24f6f4e0265de/1459945131814/espresso-09.jpg?format=1000w",
        humanized_time_ago: humanized_time_ago(15),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "frederick_s",
            text: "Espresso is coffee brewed by forcing a small amount of nearly boiling water under pressure through finely ground coffee beans."
        }]
    }
    
    @post_whale = {
        username: "kirk_whalum",
        avatar_url: "https://naserca.com/images/kirk_whalum.jpg",
        photo_url: "http://naserca.com/images/whale.jpg",
        humanized_time_ago: humanized_time_ago(65),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "kirk_whalum",
            text: "#weekendvibes"
        }]
    }
    
    @post_marlin = {
        username: "marlin_peppa",
        avatar_url: "https://naserca.com/images/marlin_peppa.jpg",
        photo_url: "http://naserca.com/images/marlin.jpg",
        humanized_time_ago: humanized_time_ago(190),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "marlin_peppa",
            text: "lunchtime! ;)"
        }]
    }
    
    [@post_frederick, @post_whale, @post_marlin].to_s
erb :index
end

