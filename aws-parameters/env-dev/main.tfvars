parameters = [

  { name: "dev.frontend.catalogue_url", value = "https://catalogue-dev.devopscourse.online:8080/", type : "String"},
  { name: "dev.frontend.user_url", value = "https://user-dev.devopscourse.online:8080/", type : "String"},
  { name: "dev.frontend.cart_url", value = "https://cart-dev.devopscourse.online:8080/", type : "String"},
  { name: "dev.frontend.shipping_url", value = "https://shipping-dev.devopscourse.online:8080/", type : "String"},
  { name: "dev.frontend.payment_url", value = "https://payment-dev.devopscourse.online:8080/", type : "String"},
  { name: "dev.user.mongo", value = "true", type : "String"},
  { name: "dev.user.redis_host", value = "redis-dev.devopscourse.online", type : "String"},
  { name: "dev.user.mongo_url", value = "mongodb://mongodb-dev.devopscourse.online:27017/catalogue", type : "String"},
  { name: "dev.shipping.cart_endpoint", value = "cart-dev.devopscourse.online", type : "String"},
  { name: "dev.shipping.db_host", value = "shipping-dev.devopscourse.online", type : "String"},

  { name: "dev.payment.cart_host", value = "cart-dev.devopscourse.online", type : "String"},
  { name: "dev.payment.cart_port", value = "8080", type : "String"},
  { name: "dev.payment.user_host", value = "user-dev.devopscourse.online", type : "String"},
  { name: "dev.payment.user_port", value = "8080", type : "String"},
  { name: "dev.payment.amqp_host", value = "rabbitmq-dev.devopscourse.online", type : "String"},
  { name: "dev.catalogue.mongo", value = "true", type : "String"},
  { name: "dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.devopscourse.online:27017/users", type : "String"},

  { name: "dev.cart.redis_host", value = "redis-dev.devopscourse.online", type : "String"},
  { name: "dev.cart.catalogue_host", value = "catalogue-dev.devopscourse.online", type : "String"},
  { name: "dev.cart.catalogue_port", value = "8080", type : "String"}


]
