program main
  !
  use stdtypes
  use mersenne_twister, only : mtprng_state
  use mersenne_twister, only : mtprng_init,mtprng_rand_real1
  !
  implicit none
  !
  integer(INT32) :: seed
  type(mtprng_state) :: state
  real(IEEE64) :: r
  !
continue
  !
  call system_clock(seed)
  call mtprng_init(seed,state)
  r = mtprng_rand_real1(state)
  write(*,1) seed, r
  !
1 format ("With seed number ",i9,", a random real number is generated: ",f15.13)
  !
end program main
