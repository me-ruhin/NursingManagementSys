<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Nurse;
use App\Model\Account;

class SalaryController extends Controller
{
    public function index(){
        $datas=Nurse::latest()->get();
        $accounts=Account::latest()->get();
        return view('backend.salary.index',compact('datas','accounts'));
    }


    public function payment(){
        $datas=Nurse::latest()->get();
        $accounts=Account::latest()->get();
        return view('backend.salary.payment',compact('datas','accounts'));
    }


    public function paymentStore(Request $request){


        dd($request->all());
    }

}
