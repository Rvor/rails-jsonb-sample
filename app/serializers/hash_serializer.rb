class HashSerializer
  def self.load(hash)
    (hash || {}).with_indifferent_access
  end

  def self.dump(hash)
    hash.to_json
  end
end
