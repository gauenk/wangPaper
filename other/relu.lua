require 'torch'
require 'gnuplot'
function relu(x)
   local output = torch.zeros(x:size())

   for i = 1,x:size(1) do
      if x[i] < 0 then
	 output[i] = 0
      else
	 output[i] = x[i]
      end
   end

   return output
end

x = torch.linspace(-10,10,200)



gnuplot.pdffigure('relu.pdf')
gnuplot.plot({'ReLU',x,relu(x),'-'})
gnuplot.axis{-10,10,-1,10}
gnuplot.movelegend('left','top')
gnuplot.plotflush()

