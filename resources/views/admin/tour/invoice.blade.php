@extends('admin.layout.master')
@section('main_content')
@include('admin.layout.nav')
@include('admin.layout.sidebar')
<div class="main-content">
    <section class="section">
        <div class="section-body">
            <div class="invoice">
                <h3>Invoice No: {{ $booking->invoice_no }}</h3>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <td>Invoice No: </td>
                                <td>{{ $booking->invoice_no }}</td>
                            </tr>
                            <tr>
                                <td>Invoice To: </td>
                                <td>
                                    Name: {{ $booking->user->name }}<br>
                                    Email: {{ $booking->user->email }}<br>
                                    Phone: {{ $booking->user->phone }}
                                </td>
                            </tr>
                            <tr>
                                <td>Invoice From: </td>
                                <td>
                                    Name: {{ Auth::guard('admin')->user()->name }}<br>
                                    Email: {{ Auth::guard('admin')->user()->email }}
                                </td>
                            </tr>
                            <tr>
                                <td>Tour Information: </td>
                                <td>
                                    Start Date: {{ $booking->tour->tour_start_date }}<br>
                                    End Date: {{ $booking->tour->tour_end_date }}<br>
                                </td>
                            </tr>
                            <tr>
                                <td>Package Information: </td>
                                <td>
                                    Name: {{ $booking->package->name }}<br>
                                </td>
                            </tr>
                            <tr>
                                <td>Booking Date: </td>
                                <td>{{ $booking->created_at->format('d M Y') }}</td>
                            </tr>
                            <tr>
                                <td>Payment Method: </td>
                                <td>{{ $booking->payment_method }}</td>
                            </tr>
                            <tr>
                                <td>Payment Status: </td>
                                <td>
                                    @if($booking->payment_status == 'Completed')
                                    Completed
                                    @else
                                    Pending
                                    @endif
                                </td>
                            </tr>
                            <tr>
                                <td>Total Persons: </td>
                                <td>{{ $booking->total_person }}</td>
                            </tr>
                            <tr>
                                <td>Paid Amount: </td>
                                <td>${{ $booking->paid_amount }}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="text-md-right">
                    <a href="javascript:window.print();" class="btn btn-warning btn-icon icon-left text-white print-invoice-button"><i class="fas fa-print"></i> Print</a>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection