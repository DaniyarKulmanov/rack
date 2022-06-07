# frozen_string_literal: true
identity = ->(x) { x }

middleware_list = [
  params_middleware,
  html_content_type_middleware
]
app_middleware = middleware_list.reduce(identity, &comp)

APP = app_middleware[router]
