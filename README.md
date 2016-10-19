# net-purgedomain

Adds PURGEDOMAIN to Net::HTTP for domain-level cache purging requests in Varnish.

Installation:

```
gem 'net-purgedomain', '~> 1.0'
```

## Example Use

```
require 'net-purge'

Net::HTTP.start('cacheserver.com') { |http|
    # You can specify any path you want, it's ignored
    request = Net::HTTP::PurgeDomain.new('/')
    response = http.request(request)
    puts response.body # Guru Meditation
}
```

If you'd like to specify a specific domain to purge that's different from your caching server:

```
Net::HTTP.start('cacheserver.com') do |http|
    # You can specify any path you want, it's ignored
    request = Net::HTTP::PurgeDomain.new('/')
    request.initialize_http_header({ "Host" => "domain.to.purge.com" })
    response = http.request(request)
    puts response.body # Guru Meditation
end
```
