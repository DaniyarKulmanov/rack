comp = ->(f1, f2) { ->(x) { f1[f2[x]] } }
# Utility function to get the handler out of a route
second = ->((_a, b)) { b }

route_matcher = ->(env) { ->((cond, _handler)) { cond[env] } }
find_route = ->(env) { routes.find(&route_matcher[env]) }
find_handler = comp[second, find_route]
router = ->(env) { find_handler[env][env] }

APP = router
