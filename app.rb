# frozen_string_literal: true

APP = ->(env) { [200, {}, [env.inspect]] }
