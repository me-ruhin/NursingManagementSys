<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Account;
use App\Model\CustomerHistory;

use Brian2694\Toastr\Facades\Toastr;
class AccountController extends Controller
{
     public function index( )
    {
            $datas=Account::latest()->paginate(10);
 
            return view('backend.account.index',compact('datas'));

    }

     public function Store(Request $request)
    {
        $request->validate([
            'account_name'=>'required'
        ]);

        Account::create($request->all());

        Toastr::success(' Account  has been Created',"Created");

        return redirect()->route('account.list');


    }

    public function update(Request $request,$id)
    {


        $request->validate([
            'account_name'=>'required'
        ]);


        Account::find($id)->update($request->all());

        Toastr::info(' Account  has been Updated',"Updated");

        return redirect()->route('account.list');


    }



    public function destroy($id)
    {




        Account::find($id)->delete();

        Toastr::warning(' Account  has been Deleted',"Deleted");

        return redirect()->route('account.list');


    }


   

}
