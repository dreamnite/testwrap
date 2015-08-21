### testbase attributes
node.rm('test_attr', 'testvar') 
override['test_attr']['controlvar']  = 'This value has been changed', ## Control group
override['test_attr']['testvar'] = nil 	## Experimental group. 
													