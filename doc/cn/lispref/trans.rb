a= open 'display.texi'

b=a.readlines

c= open 'display_wode.texi', 'w'

for l in b
  if l.start_with? "@" and not l.start_with? "@var"  and not l.start_with? "@code" and not l.start_with? "@pxref" and not l.start_with? "@xref"
    c.write "\n"
    c.write l
  elsif l.start_with? "\n"
    c.write l
  else
    l = l.strip
    c.write l
    if l == ""
      c.write "\n"
    else
      c.write " "
    end
  end
end
