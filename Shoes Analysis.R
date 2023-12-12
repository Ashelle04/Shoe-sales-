



#1.1) Which shoe that has the color black either partially 
# or full, is the most expensive shoe # give me the cost and the shoe?
unique(shoes$color2)
shoes[color2=='black']  #ONY HAS BLACK
b= shoes[grepl('black',color2)] # HAS COMBINATION COLORS 
b
b= b[order(-prices.amountMax)]   
b[1:3, .(brand,color2,prices.amountMax)]


#2.2Which brand on average, had the most expensive shoe? (use tolower())
shoes[grepl('steve',brand),unique(brand)]
shoes[grepl('steve',brand),brand:='steve madden']
shoes[grepl('steve',brand),unique(brand)]
shoes
shoes[grepl('madden',brand) & !grepl('girl', brand), unique(brand)]
Shoes[grepl('madden',brand) & !grepl('girl', brand),brand:='steve madden']
Shoes[grepl('madden',brand),unique(brand)]
s=shoes[,mean(prices.amountMax),by=brand]
a=s[order(-V1)]
a

shoes[grepl('faux',brand) | grepl('suede',brand)  ,unique(brand)]

#3.3) Out of the colors, red, blue, and white.  Which color was associated with the lowest average price of the shoes? (either partially or fully).


s = shoes[grepl('red',color2) | grepl('blue',color2) | grepl('white',color2),mean(prices.amountMax),by=color2]
s=s[,mean(prices.amountMax),by=color2]

s
s=s[order(V1)]
s