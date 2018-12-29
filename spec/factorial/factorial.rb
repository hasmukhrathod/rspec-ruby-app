class Factorial
  def get_factorial(number:)
    if number >= 0
      arr_dp = [1]
      for i in 1..number do
        arr_dp[i] = i * arr_dp[i-1]
      end
      return arr_dp[number]
    else
      return nil
    end  
  end
end