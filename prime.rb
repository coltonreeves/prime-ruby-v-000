def sieve(integer)
  primes = (0..integer).to_a
  primes[0] = primes[1] = nil
  counter = 0
  primes.each do |p|
    next unless p
    break if p*p > integer
    counter += 1
    (p*p).step(integer,p) {|m| primes[m] = nil}
  end
  primes.compact
end

def prime?(num)
  sieve(num).include?(num)
end
