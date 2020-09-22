<?php

namespace App\Http\Controllers;

use App\Model\Customer;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
class CustomerController extends Controller
{
    public function getCustomerList (){

        $datas=Customer::latest()->paginate(20);

            return view('backend.customer.index',compact('datas'));

    }

    public function storeCustomerInfo(Request $request){


    	 $request->validate([

            'customer_name'=>'required',
            'customer_mobile'=>'required|unique:customers,customer_mobile',
            'customer_email'=>'required',
            'customer_address'=>'required',

        ]);

        $requestData=$request->except('_token');

        // dd($requestData);


        Customer::insert($requestData);


         Toastr::success('Customer Account  has been Created',"Created");

            return redirect()->route('customerlist');



    }


    public function update(Request $request,$id){

        $request->validate([

            'customer_name'=>'required',
            'customer_mobile'=>'required',
            'customer_email'=>'required',
            'customer_address'=>'required',

        ]);


        Customer::find($id)->update($request->all());

        Toastr::info('Customer Account  has been Updated',"Updated");

        return redirect()->route('customerlist');


    }


     public function destroy($id)
    {
        Customer::find($id)->delete();


        Toastr::warning('Customer Account  has been Deleted',"Deleted");

        return redirect()->route('customerlist');


    }
}
