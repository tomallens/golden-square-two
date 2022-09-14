def make_snippet(string)
  snip = string.split(" ")
  if snip.length < 6 == true
    return snip[0..4].join(' ')
  else
    return snip[0..4].join(' ') << '...'
  end
end