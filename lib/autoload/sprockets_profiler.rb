module SprocketsProfiler
  class << self
    def profile(extname)
      start_at = Time.now
      yield
    ensure
      end_at = Time.now
      result[extname] += end_at - start_at
    end

    def result
      @result ||= Hash.new { |h, k| h[k] = 0.0 }
    end
  end
end
