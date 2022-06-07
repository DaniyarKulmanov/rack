hello_handler = ->(env) {
  [200, {}, ["Hello #{env[:params]['name']}"]]
}
