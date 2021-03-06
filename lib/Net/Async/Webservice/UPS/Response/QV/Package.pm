package Net::Async::Webservice::UPS::Response::QV::Package;
use Moo;
use Types::Standard qw(Str ArrayRef HashRef Bool);
use Net::Async::Webservice::UPS::Types qw(:types);
use Types::DateTime DateTime => { -as => 'DateTimeT' };
use namespace::autoclean;
extends 'Net::Async::Webservice::UPS::Package';

# ABSTRACT: a package inside a Quantum View "manifest" event

=head1 DESCRIPTION

B<INCOMPLETE and UNUSED!>

Object representing the
C<QuantumViewEvents/SubscriptionEvents/SubscriptionFile/Manifest/Package>
elements in the Quantum View response. Attribute descriptions come
from the official UPS documentation.

=for Pod::Coverage
activity_date
earliest_delivery
tracking_number
reference_number
cod_code
cod_currency
cod_value
insured_currency
insured_value
hazardous_materials_code
hold_for_pickup
premium_care

=cut

has activity_date => (
    is => 'ro',
    isa => DateTimeT,
    required => 0,
);

has earliest_delivery => (
    is => 'ro',
    isa => DateTimeT,
    required => 0,
);

has tracking_number => (
    is => 'ro',
    isa => Str,
    required => 0,
);

has reference_number => (
    is => 'ro',
    isa => HashRef,
    required => 0,
);

has cod_code => (
    is => 'ro',
    isa => Str,
    required => 0,
);

has cod_currency => (
    is => 'ro',
    isa => Str,
    required => 0,
);

has cod_value => (
    is => 'ro',
    isa => Measure,
    required => 0,
);

has insured_currency => (
    is => 'ro',
    isa => Str,
    required => 0,
);

has insured_value => (
    is => 'ro',
    isa => Measure,
    required => 0,
);

has hazardous_materials_code => (
    is => 'ro',
    isa => Str,
    required => 0,
);

has hold_for_pickup => (
    is => 'ro',
    isa => Bool,
    required => 0,
);

has premium_care => (
    is => 'ro',
    isa => Bool,
    required => 0,
);

1;
