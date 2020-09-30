<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Callservice;
use App\Model\Account;
use App\Model\Nurse;
use App\Model\AccountHistory;
use App\Model\NurseHistory;
use App\Model\Income;

use Brian2694\Toastr\Facades\Toastr;

class CallServiceController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        $accounts=Account::latest()->get();
        $nurses=Nurse::latest()->get();
        $datas=Callservice::latest('id')->paginate(100);
        return view('backend.call_service.index',compact('datas','accounts','nurses'));
    }

    public function ServiceStore(Request $request){


        // dd($request->all());
         
        $request->validate([

            'client_Name'=>'required',
            'address'=>'required',
            'designation'=>'required',
            'nurse_id'=>'required',
            'nurse_budget'=>'required',
            'notation'=>'required',
            'amount'=>'required',
            'account_name'=>'required'
            

        ]);

   
        $month=date('F-Y');
        $date=date('Y-m-d');
        $nurseInfo=Nurse::find($request->nurse_id);
        $accountInfo=Account::find( $request->account_name);
        $nurseService=new Callservice();
        $nurseService->date=$date;
        $nurseService->month=$month;
        $nurseService->client_name=$request->client_Name;
        $nurseService->address=$request->address;
        $nurseService->designation=$request->designation;
        $nurseService->nurse_name=$nurseInfo->name;
        $nurseService->nurse_id=$request->nurse_id;
        $nurseService->method_name=$accountInfo->account_name; ;
        $nurseService->method_id=$request->account_name;
        $nurseService->amount=$request->amount;
        $nurseService->nurse_budget=$request->nurse_budget;
        $nurseService->notation=$request->notation;
        
        $nurseService->save();


        $accountHistory=new AccountHistory;
       
        $accountHistory->date=$date;
        $accountHistory->month=$month;
        $accountHistory->account_id=$request->account_name; 
        $accountHistory->account_name=$accountInfo->account_name;
        $accountHistory->debit_amount=$request->amount??0;  /* if the Customer pay */  
        $accountHistory->save();  

        /*Account History End here*/
        
        $incomeObj=new Income;
        $incomeObj->date=$date;
        $incomeObj->month=$month;
        $incomeObj->notation="Income from  Oncall Service";
        $incomeObj->category_name="call_service";
        
        $incomeObj->amount=$request->amount??0 ;
        $incomeObj->save();

        $nurseHistoryObj=new NurseHistory;
        $nurseHistoryObj->date=$date;
        $nurseHistoryObj->month=$month;
        $nurseHistoryObj->patient_id=$nurseService->id;
        $nurseHistoryObj->nurse_id=$request->nurse_id;
        $nurseHistoryObj->nurse_name=$nurseInfo->name;
        $nurseHistoryObj->amount=$request->nurse_budget;
        $nurseHistoryObj->save();


        Toastr::success('Call on Service has been successfully added',"completed");

        return redirect()->back();



    }
}
