lambda do |env|
  headers = [
    'HTTP_FORWARDED',
    'HTTP_X_FORWARDED_FOR',
  ]

  agents = [
    'Slack',
    'Hatena',
    'MetaURI',
    'redback',
    'Applebot',
    '360Spider',
    'AppEngine',
    'LivelapBot',
    'PaperLiBot',
    'goo_search',
    'line-poker',
    'Yahoo!Japan',
    'MegaIndex.ru',
    'SkypeUriPreview',
    'ShortLinkTranslate',
    'Gluten Free Crawler',
    'facebookexternalhit',
  ]

  html = [403, {'content-type' => 'text/html; charset=utf-8'}, [<<'HTML']]
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="initial-scale=1">
<meta name="Hatena::Bookmark" content="noindex,nocomment">
<title>Bad Request</title>
</head>
<body>
<p>Malformed HTTP header was detected.</p>
</body>
</html>
HTML

  if env['PATH_INFO'] === '/robots.txt'
    return [399, {}, []]
  end

  headers.each do |name|
    if env.has_key?(name)
      return html
    end
  end

  agent = env['HTTP_USER_AGENT']

  if agent.nil?
    return [399, {}, []]
  end

  agents.each do |name|
    if agent.include?(name)
      return html
    end
  end

  return [399, {}, []]
end
