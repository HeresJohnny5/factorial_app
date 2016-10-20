require_relative 'functions.rb'
require 'minitest/autorun'

class TestFactorial < Minitest::Test

	def test_factorial_1_returns_1
		operation = Algorithm.new
		assert_equal(1, operation.factorial(1))
	end

	def test_factorial_2_returns_2
		operation = Algorithm.new
		assert_equal(2, operation.factorial(2))
	end

	def test_factorial_3_returns_6
		operation = Algorithm.new
		assert_equal(6, operation.factorial(3))
	end

	def test_factorial_4_returns_24
		operation = Algorithm.new
		assert_equal(24, operation.factorial(4))
	end

	def test_factorial_5_returns_120
		operation = Algorithm.new
		assert_equal(120, operation.factorial(5))
	end

	def test_factorial_6_returns_
		operation = Algorithm.new
		assert_equal(720, operation.factorial(6))
	end

end