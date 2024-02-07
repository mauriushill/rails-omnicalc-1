class MathController < ApplicationController 
  def home
    render({ :template => "math_template/home" })
  end

  def square
    render({ :template => "math_template/square" })
  end

  def square_results
    render({ :template => "math_template/square_result"})
  end

  def root
    render({ :template => "math_template/square_root"})
  end
end
