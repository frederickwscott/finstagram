get '/' do
    username = "frederick_s"
    avatar_url = "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAssAAAAJDE1ODI2N2M1LTYwOTgtNDY2YS04YTdmLTEyMmY1Yzk1YzlmYQ.jpg"
    photo_url = "http://static1.squarespace.com/static/56e0f44160b5e96aec2019f3/t/5704feaa7da24f6f4e0265de/1459945131814/espresso-09.jpg?format=1000w"
    time_ago_in_minutes = 120
    like_count = 0
    comments = [
    "frederick_s: Espresso is coffee brewed by forcing a small amount of nearly boiling water under pressure through finely ground coffee beans."
    ]

    if time_ago_in_minutes >= 60
        "#{time_ago_in_minutes / 60} hours ago"
    else 
        "#{time_ago_in_minutes} minutes ago"
    end
end