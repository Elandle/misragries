submodule(misragries) misragries_color
    implicit none
    contains

        function matrix_to_edges_dp(A) result(E)
            real(dp), intent(in) :: A(:, :)
            integer, allocatable :: E(:, :)

            integer :: m, n, i, j, k, nedges

            m = size(A, 1) ; n = size(A, 2)

            if (m .ne. n) then
                error stop "input matrix must be square"
            endif

            ! Count the number of edges in A.
            ! There is an edge between vertices i and j if A(i, j) or A(j, i) is nonzero.
            nedges = 0
            do j = 2, m
                do i = 1, j-1
                    if ((A(i, j) .ne. 0.0_dp) .or. (A(j, i) .ne. 0.0_dp)) then
                        nedges = nedges + 1
                    endif
                enddo
            enddo

            allocate(E(2, nedges))

            ! Construct edges array.
            ! 
            k = 0
            do j = 2, n
                do i = 1, j-1
                    if ((A(i, j) .ne. 0.0_dp) .or. (A(j, i) .ne. 0.0_dp)) then
                        k = k + 1
                        E(1, k) = i ; E(2, k) = j
                    endif
                enddo
            enddo
        endfunction matrix_to_edges_dp










endsubmodule misragries_color