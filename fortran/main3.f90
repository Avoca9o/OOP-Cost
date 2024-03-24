module types
  implicit none
  private
  public :: base, derived

  type, abstract :: base
  contains
    procedure(iface), deferred :: do_nothing
  end type base

  abstract interface
    subroutine iface(this)
      import base
      class(base), intent(in) :: this
    end subroutine iface
  end interface

  type, extends(base) :: derived
  contains
    procedure :: do_nothing => do_nothing_derived
  end type derived

contains

  subroutine do_nothing_base(this)
    class(base), intent(in) :: this
  end subroutine do_nothing_base

  subroutine do_nothing_derived(this)
    class(derived), intent(in) :: this
  end subroutine do_nothing_derived

end module types

program main
  use types
  implicit none

  class(base), pointer :: base_ptr
  type(derived), target :: derived_obj
  integer :: i, start, finish, fout, elapsed
  logical :: exists

  base_ptr => derived_obj

  call system_clock(start)

  do i = 0, 100000000
    call base_ptr%do_nothing()
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
