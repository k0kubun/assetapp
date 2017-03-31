module StackProfiler
  class StackFrame < Struct.new(:name, :started_at, :finished_at, :children)
    def initialize(*)
      super
      self.children ||= []
    end

    def elapsed_time
      (finished_at - started_at) - children.map(&:elapsed_time).sum
    end
  end

  class << self
    def start(name)
      frame = StackFrame.new(name)
      frame.started_at = Time.now
      stack.push(frame)
    end

    def finish
      frame = stack.pop
      frame.finished_at = Time.now
      result[frame.name] += frame.elapsed_time
      unless stack.empty?
        stack.last.children << frame
      end
    end

    def result
      @result ||= Hash.new { |h, k| h[k] = 0.0 }
    end

    private

    def stack
      @stack ||= []
    end
  end
end
