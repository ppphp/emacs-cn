a= open 'commands.texi'

b=a.readlines

c= open 'commands_wode.texi', 'w'

for l in b
  if l.start_with? "@"
    c.write l
  else if l.start_with? "\n"
    c.write l
  else
    c.write l.strip
    c.write " "
  end
end
