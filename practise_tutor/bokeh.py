# Bokeh code I can use later
from bokeh.plotting import figure, output_file, show
from bokeh.io import output_notebook

output_notebook()

btc = ''
eth = ''

p1 = figure(x_axis_type = 'datetime', title = 'Crypto Prices', width = 800)
p1.grid.grid_line_alpha = 0.3
p1.xaxis.axis_label = 'Date'
p1.yaxis.axis_label = 'Price'

p1.line(btc.index, btc['ClosePrice'], color = '#f2a980', legend = 'Bitcoin')
p1.line(btc.index, eth['ClosePrice'], color = '#f2a980', legend = 'Ether')

p1.legend.location = 'top_left'
show(p1)
