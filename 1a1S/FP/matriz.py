# Devolve o número de linhas da matriz M.
def matrows(M):
   return len(M)

# Complete para devolver o número de colunas da matriz M.
def matcols(M):
   col = M[0]
   return len(col)

# Complete a função para devolver uma matriz com m×n zeros.
def matzeros(m, n):
   col = n * [0]
   M = [col] * m   # MODIFY THIS...
   return M

def matzerosTEST(m, n):
    M = matzeros(m, n)
    for line in M:
        line[0][1] = 1   # should change just 1 element!
    return M

# Complete a função para multiplicar a matriz A pela matriz B.
def matmult(A, B):
   assert matcols(A) == matrows(B)
   C = []
   ...
   return C

def matmultTEST(A, B):
   C = matmult(A, B)
   return A, B, C