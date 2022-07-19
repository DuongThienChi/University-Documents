def lu_decomposition(a, n):
    lower = [[0 for x in range(0, n, 1)] for y in range(0, n, 1)]
    upper = [[0 for x in range(0, n, 1)] for y in range(0, n, 1)]

    for i in range(0, n, 1):
        # upper triangular matrix
        for j in range(i, n, 1):
            _sum = 0

            # sum of L[i, k] * U[k, j]
            for k in range(0, i, 1):
                _sum += (lower[i][k] * upper[k][j])

            upper[i][j] = a[i][j] - _sum

        # lower triangular matrix
        for j in range(i, n, 1):
            if i == j:
                lower[i][j] = 1
            else:
                _sum = 0

                # sum of L[j, k] * U[k, i]
                for k in range(0, i, 1):
                    _sum += lower[j][k] * upper[k][i]

                lower[j][i] = int((a[j][i] - _sum) / upper[i][i])

    return lower, upper


def main():
    mat = [[2, -1, -2],
           [-4, 6, 3],
           [-4, -2, 8]]

    l, u = lu_decomposition(mat, 3)

    print(l)
    print(u)


if __name__ == "__main__":
    main()
