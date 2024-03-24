program main
    implicit none

    integer :: i, start, finish, fout, elapsed
    logical :: exists

    call system_clock(start)

    do i = 0, 100000000
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
