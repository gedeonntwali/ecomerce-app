Image.create!([
  {url: "http://assets.ray-ban.com//is/image/RayBan/8053672666878_shad_qt?$594$", product_id: 10},
  {url: "http://s7d3.scene7.com/is/image/LuxotticaRetail/8053672251241_shad_qt??$m_pdpSet$&layer=0&color=F3F2F2&wid=1100", product_id: 10},
  {url: "http://www.sneakerpure.com/images/2015/Nike-Air-Max-2013-Mens-Black-Grey-Paint_3.jpg", product_id: 5},
  {url: "http://www.3dnity.nl/images/products2/Goedkoop%20Nederland%20Nike%20Air%20Max%20Mannen%20Zwart%20Grijze%20Verf%20Verkopen%20goed%20793_2.jpg", product_id: 5},
  {url: "http://www.alcatel-mobile.com/en/idol3/assets/idol3/img/reversible-idol-3-smartphone-1.png", product_id: 6},
  {url: "https://d3nevzfk7ii3be.cloudfront.net/igi/bcjQfOcKsLXbKFXX.large", product_id: 6},
  {url: "https://images.costco-static.com/ImageDelivery/imageService?profileId=12026540&itemId=919182-847&recipeName=680", product_id: 24},
  {url: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=32274340", product_id: 24},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/a3/b1/a9/a3b1a9dbb03964ef355a16e4acc5e9be.jpg", product_id: 25},
  {url: "http://static.highsnobiety.com/wp-content/uploads/2015/12/11022549/pigalle-beats-by-dre-studio-wireless-headphones-00.jpg", product_id: 25},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/5a/6c/95/5a6c95a35fce322246b10a39230a52ef.jpg", product_id: 8},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/5a/6c/95/5a6c95a35fce322246b10a39230a52ef.jpg", product_id: 8},
  {url: "http://www.immoscheers.be/pic/Adidas-Homme/Adidas-Superstar-Ii-Homme/Adidas-Allstar-Immoscheers-Be002.jpg", product_id: 8}
])
Product.create!([
  {name: "Idol phone", price: "250.0", size: "41' 51'", description: "Smartphone with Android 6.0", supplier_id: 2},
  {name: "Air Max Shoe", price: "300.0", size: "42", description: "It is the Nike shoes fabricated in 2013", supplier_id: 1},
  {name: "Beat Headset", price: "35.0", size: "Adjustable", description: "Original Headphone with the best quality of audio sound", supplier_id: 2},
  {name: "RayBan", price: "102.0", size: "M", description: "Best sunglasses with the mark of RayBan", supplier_id: 2},
  {name: "Adidas Shoes", price: "235.0", size: "42", description: "Adidas Superstar, Best shoes of Adidas Inc. fabricated in 2015", supplier_id: 1},
  {name: "Diamond Blacelet", price: "1000.0", size: "M", description: "Diamond Bracelet with the best quality of diamond ", supplier_id: 1}
])
Supplier.create!([
  {name: "Eric Bones", email: "eric@yahoo.com", phone: "0723452576"},
  {name: "John Don", email: "john@gmail.com", phone: "0783456734"}
])
User.create!([
  {name: "Gedeon", email: "ntwari@gmail.com", password_digest: "$2a$10$iwPorbpywWcMhJSfpyAJM.XtkxXcUR/sDgkezCoT9VKcGZUkxSf12"},
  {name: "Gedeon", email: "ntwari@gmail.com", password_digest: "$2a$10$.FYsBsmO7nGyLcYttHOE5OePwGI8/0F9h2/hOq/L296yuhfEKp5mS"},
  {name: "Gedeon", email: "gedeon.ntwari2015@kepler.org", password_digest: "$2a$10$9F.eoC6cG/0MfVqQbHX5WelA8ycLXSSgBfqQmLHuHmjanf.Hp6Mw."},
  {name: "Ntwari", email: "ged@gma", password_digest: "$2a$10$sae/w937WknVUXmDi3otlOtxJO8ayfFn0FZ2C/pRRJDPgzMYcjg7K"}
])
