# stolen from Hadley Wickam

f(x,y) # is pretty easy to read
f(g(x,y),z) # is a little harder to read

# R let's you pipe objects into arguments of functions with %>%

f(g(x,y),z)

# becomes

x %>%
  g(y) %>%
  f(z)


# here's another example from http://kbroman.org/hipsteR/

round(exp(diff(log(x))), 1)

#becomes

x %>% 
  log() %>%
  diff() %>%
  exp() %>%
  round(1)
  

# if you don't want to pipe into the first argument use a .

2 %>% log(5, base=.)

# is equivalent to

log(5,base=2)
