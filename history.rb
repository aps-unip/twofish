text = "Bem vindo a Auto Escola infinit loop"

def slow
  yield.each_char { |c| print c; $stdout.flush; sleep 0.50}
end

slow do
  text
end