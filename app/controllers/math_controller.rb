class MathController < ApplicationController 
  def square
    render({ :template => "math_template/square" })
  end

  def square_results
    @number = params.fetch("user_square")
    @square = @number.to_f ** 2
    render({ :template => "math_template/square_result"})
  end

  def root
    render({ :template => "math_template/square_root"})
  end

  def root_results
    @number = params.fetch("user_root")
    @root = @number.to_f ** 0.5
    render ({ :template => "math_template/root_results"})
  end

  def payment  
    render ({ :template => "math_template/payment"})
  end 

  def payment_results
    @principal = params.fetch("user_pv").to_f
    @apr = params.fetch("user_apr").to_f
    r = @apr / 12.0 / 100.0
    @years = params.fetch("user_years").to_i
    n = @years * 12.0
    numerator = r * @principal
    denominator = 1.0 - ((1.0 + r) ** -n)
    @payment = numerator / denominator
    render ({ :template => "math_template/payment_result"})
  end
  
  def random
    render ({ :template => "math_template/random"})
  end

  def random_results
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random = rand(@min..@max).to_f
    render ({ :template=> "math_template/random_results"})
  end
end
