def print_board(board, n):
    for i in range(n):
        for j in range(n):
            print("Q" if board[i] == j else ".", end=" ")
        print()
def is_safe(board, row, col):
    for i in range(row):
        if board[i] == col or abs(board[i] - col) == abs(i - row):
            return False
    return True
def solve_nqueens(board, row, n):
    if row == n:
        print_board(board, n)
        return True

    for col in range(n):
        if is_safe(board, row, col):
            board[row] = col

            if solve_nqueens(board, row + 1, n):
                return True

            board[row] = -1
    return False
n = int(input("Enter the number of queens: "))
board = [-1] * n

if not solve_nqueens(board, 0, n):
    print("No solution exists")
