require 'digest'
require 'active_support/core_ext/string/inflections'
require 'radiator'

class SteemitHelper
  def self.get_recent_post_title
    api = Radiator::Api.new
    api.get_blog('stdout', 0, 1).result.dig(0, 'comment', 'title')
  end

  def self.permlink(title)
    slug = title.parameterize
    slug = slug.empty? ? Digest::SHA256.hexdigest(Time.now.to_i.to_s)[0..6] : slug
    slug.gsub(/[^a-zA-Z0-9-]+/, "-").downcase
  end
  
  def self.write_post(title:, body:, tags: [])
    tx = ::Radiator::Transaction.new({
      wif: ENV["STEEMIT_POSTING_PRIVATE_KEY"]
    })
    tx.operations << {
      type: :comment,
      parent_author: '',
      parent_permlink: tags.first,
      author: 'stdout',
      permlink: permlink(title), # required
      title: title[0...255],
      body: body,
      json_metadata: {
        tags: tags,
        app: "stdout.fm",
        format: 'html'
      }.to_json
    }
    response = tx.process(true)
    # response => "{\n  \"jsonrpc\": \"2.0\",\n  \"result\": {\n    \"id\": \"xxxxxxxxx\",\n    \"block_num\": 200000,\n    \"trx_num\": 8,\n    \"expired\": false\n  },\n  \"id\": 1\n}"
    success = response.error.nil?
    {
      success: success,
      message: success ? '🚀 Success publishing on steemit' : "⚠️  #{response.error.message}"
    }
  end
end