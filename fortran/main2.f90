module types
    type, public :: base
    end type base
end module types

program main
    use :: types
    implicit none
    
    type(base) :: obj
    integer :: i, start, finish, fout, elapsed
    logical :: exists

    call system_clock(start)

    do i = 0, 100000000
        obj = base()
    end do

    call system_clock(finish)

    elapsed = finish - start

    inquire(file="output.txt", exist=exists)

    if (exists) then
        open(unit=fout, file='output.txt', status='old', action='write', position='append')
    else
        open(unit=fout, file="output.txt", status="new", action="write")
    end if

    write(fout, *) elapsed
    close(fout)
end program main