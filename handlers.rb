hello_handler = ->(env) { [200, {}, ["Hello world"]] }
env_inspect_handler = ->(env) { [200, {}, [env.inspect]] }
not_found_handler = ->(env) { [404, {}, ["404 Not found"]] }