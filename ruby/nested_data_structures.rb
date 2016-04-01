restaurant = {
    dining_room: {
        seating: [
            "tables", 
            "bar", 
            "boothes",
            ],
        seating_info: {
            total_tables: 10,
            total_boothes: 4,
            bar_stools: 12,
        },
        appetizers: [
            "escargo", 
            "chopped salad",
            "mussels",
            "caesar salad",
        ],
    
    entress: [
        "braised lamb shank",
        "filet medllions",
        "stuffed lobster",
        
        ],
    
    cocktails: {
        vodka: 'moscow mule',
        gin: 'dirty martini',
        bourbon: 'manhatten',
        rum: 'mai tai',
        },
        desserts: [
            "creme brulee",
            "key lime pie",
            "espresso cake",
            ],
    }
}

restaurant[:dining_room][:seating]
restaurant[:dining_room][:seating].push("standing room")
p restaurant


