<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\CommonConfig;
use Brian2694\Toastr\Facades\Toastr;
use App\Model\User;
use Auth; 
class SettingsController extends Controller
{

  public function __construct()
  {
      $this->middleware('auth');
  }

 

  public function editinfo(){

    $item =CommonConfig::latest()->first();

    return view('backend.common_setting.index',compact('item'));

  }

  public function updateInfo(Request $request){
     
    $request->validate([
      'facebook'=>'required',
      'twitter'=>'required',
      'youtube'=>'required',
      'google_map'=>'required',
      'short_description'=>'required',
      'about_us'=>'required',
      'contact_us'=>'required',
    ]);
    $item =CommonConfig::latest()->first();
    $item->facebook=$request->facebook;
    $item->twitter=$request->twitter;
    $item->youtube=$request->youtube;
    $item->google_map=$request->google_map;
    $item->short_description=$request->short_description;
    $item->about_us=$request->about_us;
    $item->contact_us=$request->contact_us;
    $item->save();
    
    Toastr::info('Site Settings has been Updated',"Updated");

    return redirect()->back();
     


  }

  public function getUserList(){

    $datas=User::latest()->paginate(100);

      
    return view('backend.user_list.index',compact('datas'));
  }
}
