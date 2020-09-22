
@extends('backend.app')
@section('title',"Customer  Invoice")
@push('css')

@endpush

@section('content')



                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">UBold</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Extras</a></li>
                                            <li class="breadcrumb-item active">Invoice</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Invoice</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-12">
                                <div class="card-box">
                                    <!-- Logo & title -->
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <div class="auth-logo">
                                                <div class="logo logo-dark">
                                                    <span class="logo-lg">
                                                        <img src="{{asset('backend/assets/images/logo-dark.png')}}" alt="" height="22">
                                                    </span>
                                                </div>
                            
                                                <div class="logo logo-light">
                                                    <span class="logo-lg">
                                                        <img src="{{asset('backend/assets/images/logo-light.png')}}" alt="" height="22">
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                      
                                    </div>
        
        
                                    <div class="row mt-3">
                                        <div class="col-sm-4">
                                            <h6>Billing Address</h6>
                                            <address>
                                                Stanley Jones<br>
                                                795 Folsom Ave, Suite 600<br>
                                                San Francisco, CA 94107<br>
                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                            </address>
                                        </div> <!-- end col -->
        
                                        <div class="col-sm-4">
                                            <h6>Shipping Address</h6>
                                            <address>
                                                Stanley Jones<br>
                                                795 Folsom Ave, Suite 600<br>
                                                San Francisco, CA 94107<br>
                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                            </address>
                                        </div> <!-- end col -->

                                        <div class="col-sm-4">
                                            <h6>Invoice Info</h6>
                                            <address>
                                                Stanley Jones<br>
                                                795 Folsom Ave, Suite 600<br>
                                                San Francisco, CA 94107<br>
                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                            </address>
                                        </div> <!-- end col -->

                                    </div> 
                                    <!-- end row -->
        
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="table-responsive">
                                                <table class="table mt-4 table-centered">
                                                    <thead>
                                                    <tr><th>#</th>
                                                        <th>Item</th>
                                                        <th style="width: 10%">Hours</th>
                                                        <th style="width: 10%">Hours Rate</th>
                                                        <th style="width: 10%" class="text-right">Total</th>
                                                    </tr></thead>
                                                    <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>
                                                            <b>Web Design</b> <br/>
                                                            2 Pages static website - my website
                                                        </td>
                                                        <td>22</td>
                                                        <td>$30</td>
                                                        <td class="text-right">$660.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>
                                                            <b>Software Development</b> <br/>
                                                            Invoice editor software - AB'c Software
                                                        </td>
                                                        <td>112.5</td>
                                                        <td>$35</td>
                                                        <td class="text-right">$3937.50</td>
                                                    </tr>
        
                                                    </tbody>
                                                </table>
                                            </div> <!-- end table-responsive -->
                                        </div> <!-- end col -->
                                    </div>
                                    <!-- end row -->
        
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="clearfix pt-5">
                                                <h6 class="text-muted">Notes:</h6>
        
                                                <small class="text-muted">
                                                    All accounts are to be paid within 7 days from receipt of
                                                    invoice. To be paid by cheque or credit card or direct payment
                                                    online. If account is not paid within 7 days the credits details
                                                    supplied as confirmation of work undertaken will be charged the
                                                    agreed quoted fee noted above.
                                                </small>
                                            </div>
                                        </div> <!-- end col -->
                                        <div class="col-sm-6">
                                            <div class="float-right">
                                                <p><b>Sub-total:</b> <span class="float-right">$4597.50</span></p>
                                                <p><b>Discount (10%):</b> <span class="float-right"> &nbsp;&nbsp;&nbsp; $459.75</span></p>
                                                <h3>$4137.75 USD</h3>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div> <!-- end col -->
                                    </div>
                                    <!-- end row -->
        
                                    <div class="mt-4 mb-1">
                                        <div class="text-right d-print-none">
                                            <a href="javascript:window.print()" class="btn btn-primary waves-effect waves-light"><i class="mdi mdi-printer mr-1"></i> Print</a>
                                            <a href="#" class="btn btn-info waves-effect waves-light">Submit</a>
                                        </div>
                                    </div>
                                </div> <!-- end card-box -->
                            </div> <!-- end col -->
                        </div>
                        <!-- end row --> 
                        
                    </div> <!-- container -->
@endsection


@push('js')



@endpush

