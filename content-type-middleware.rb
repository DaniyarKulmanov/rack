content_type_middleware = ->(type) {
  ->(handler) {
    ->(env) {
      status, headers, body = handler[env]
      [status, headers.merge('Content-Type' => type), body]
    }
  }
}

html_content_type_middleware = content_type_middleware['text/html']
APP = html_content_type_middleware[params_middleware[router]]
