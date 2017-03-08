#include "weird_validators.h"

VALUE rb_mWeirdValidators;

void
Init_weird_validators(void)
{
  rb_mWeirdValidators = rb_define_module("WeirdValidators");
}
