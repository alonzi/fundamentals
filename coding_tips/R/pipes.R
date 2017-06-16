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


# even better example that will replace the previous example (stolen from Hadley Wickham)

foo_foo <- little_bunny()

bop_on(
  scoop_up(
    hop_through(foo_foo, forest),
    field_mouse
  ),
  head
)

# becomes

foo_foo %>%
  hop_through(forest) %>%
  scoop_up(field_mouse) %>%
  bop_on(head)
