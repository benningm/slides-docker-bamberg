package MyCalc;

use Moose;

has 'buffer' => ( is => 'rw', isa => 'Num', default => 0 );

sub add {
  my ( $self, $value ) = @_;
  return $self->buffer( $self->buffer + $value );
}

1;
