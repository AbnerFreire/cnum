using LinearAlge

A = [1 1 1 ;
     4 4 2 ;
     2 1 -1]

B = [1 ; 2 ; 0]

X = A \ B
println(X)

error = 10^-3

function jacobi (A, B, K)
 n = size(B,1)
 X = zeros(n)
 K = zeros(n)
 for l = 1: K
    for i + 1:n
      count = 0
      for j = 1:n
        if i !=j
          count += A[i,j]* X[j]
        end
      end
    K[i] = (B[i])-count)/A[i,i]
    end
    println(norm(X-K))
    if norm (X-K) < error
      break
    end
    X = copy(K)
  end
  return X
end

X = jacobi[A, B, 10]
println(X)

A = [2 1 -1 ;
     4 4 2 ;
     1 1 1]

B = [0 ; 2 ;1]

X = jacobi(A, B, 10)
println(X)

function seidel (A, B, K)
  n = size(B,1)
  x = zeros(n)
  K = zeros(n)
  