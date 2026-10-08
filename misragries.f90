module misragries
    use, intrinsic :: iso_fortran_env, only: real32, real64, input_unit, output_unit, iostat_end
    implicit none
    private

    integer, parameter :: sp     = real32
    integer, parameter :: dp     = real64
    integer, parameter :: stdin  = input_unit
    integer, parameter :: stdout = output_unit


    type edgecoloring
        integer :: nc                       ! number of colors
        integer :: nedges                   ! number of edges

        integer, allocatable :: edges(:, :) ! edges of graph. 2 x nedges. ith edge = edges(:, i).
                                            ! edges(1, i), edges(2, i) = vertex indices edge i is between.
        integer, allocatable :: colors(:)   ! color of each edge. nedges long. colors(i) = color index of ith edge.
    endtype edgecoloring






endmodule misragries