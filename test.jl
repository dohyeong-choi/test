x = (1e-20 + 1) - 1;
y = (1e-20) + (1 - 1);
x == y # they are different

println("Machine epsilon ϵ is $(eps(Float64))")
println("Is 1 + ϵ/2 > 1? $(1.0 + eps(Float64)/2 > 1.0)")

println("The smallest representable number larger than 1.0 is $(nextfloat(1.0))")
println("The largest representable number smaller than 1.0 is $(prevfloat(1.0))")

x = 1.2 - 1.1
x == 0.1


deriv_x_squred = function (x, h)

    return (((x+h)^2 - x^2) / h)
end


deriv_x_squred(2,1e-1)
deriv_x_squred(2,1e-12)
deriv_x_squred(2,1e-30)