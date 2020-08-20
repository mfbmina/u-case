# frozen_string_literal: true

module MultiplyWith
  class MicroCaseStrict < Micro::Case::Strict
    attributes :a, :b

    def call!
      if a.is_a?(Numeric) && b.is_a?(Numeric)
        Success result: { number: a * b }
      else
        Failure(:invalid_data)
      end
    end
  end
end
