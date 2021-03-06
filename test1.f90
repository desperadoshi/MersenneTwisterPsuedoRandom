program test1
  !
  ! use stdtypes
  use mersenne_twister, only : int32,int64,ieee32,ieee64
  use mersenne_twister, only : mtprng_state
  use mersenne_twister, only : mtprng_init,mtprng_rand_real1,mtprng_rand_real3
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
  r = mtprng_rand_real3(state)
  write(*,3) seed, r
  !
1 format ("With seed number ",i9,", mtprng_rand_real1 generates a random real number: ",f15.13," which is within [0,1]")
3 format ("With seed number ",i9,", mtprng_rand_real3 generates a random real number: ",f15.13," which is within (0,1)")
  !
end program test1
