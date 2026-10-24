N QUEENS PROBLEM


START

1. Read the number of queens N.
2. Initialize board[N] with -1.

3. FUNCTION IS_SAFE(board, row, col)
      FOR i = 0 TO row - 1
          IF board[i] == col OR
             ABS(board[i] - col) == ABS(i - row)
              RETURN FALSE
          END IF
      END FOR
      RETURN TRUE
   END FUNCTION

4. FUNCTION SOLVE_NQUEENS(board, row, N)
      IF row == N
          PRINT_BOARD(board, N)
          RETURN TRUE
      END IF

      FOR col = 0 TO N - 1
          IF IS_SAFE(board, row, col)
              board[row] = col

              IF SOLVE_NQUEENS(board, row + 1, N)
                  RETURN TRUE
              END IF

              board[row] = -1
          END IF
      END FOR

      RETURN FALSE
   END FUNCTION

5. IF SOLVE_NQUEENS(board, 0, N) == FALSE
      PRINT "No solution exists"
   END IF

STOP
