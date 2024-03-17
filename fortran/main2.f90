module types
    type, public :: base
    end type base
end module types

program main
    use :: types
    type(base) :: obj
    do i = 1, 100000000
        obj = base()
    end do
end program main