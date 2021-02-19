a= open 'display.texi'

b=a.readlines

c= open 'display_wode.texi', 'w'

def start(l)
  if l.start_with? "@"
    for s in ["@var", "@code", "@pxref", "@xref", "@samp"]
      if l.start_with? s
        return false
      end
    end
    return true
  end
  return false
end

for l in b
  if start(l)
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
