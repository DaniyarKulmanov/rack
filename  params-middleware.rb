# frozen_string_literal: true

query_to_params = ->(q) { Rack::Utils.parse_nested_query(q) }
query_from_env = ->(env) { env['QUERY_STRING'] }
env_to_params = comp[query_to_params, query_from_env]
env_with_params = ->(env) { env.merge(params: env_to_params[env]) }
params_middleware = ->(handler) { comp[handler, env_with_params] }

APP = params_middleware[router]
