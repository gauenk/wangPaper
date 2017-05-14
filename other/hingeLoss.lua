require 'torch'
require 'nn'
require 'gnuplot'

function hinge_loss(x)
   local y = torch.cmax(torch.mul(torch.add(x,-1),-1),0)
   return y
end

x = torch.linspace(-2,2,100)
print(x)
print(x:size())
y = hinge_loss(x)

gnuplot.pdffigure("HingeLoss.pdf")
gnuplot.axis{-2,2,-0.1,3}
gnuplot.plot({"Hinge Loss",x,y,'-'})
gnuplot.plotflush()
