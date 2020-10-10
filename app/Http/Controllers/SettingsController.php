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

  public function addNewUser(Request $request){


    $request->validate([

      'name'=>'required',
      'mobile_no'=>'required',
      'email'=>'required',
      'address'=>'required',
      'password'=>'required|confirmed'
      ]);
      $requestData=[];
      $requestData=$request->except(['_token','password_confirmation','password']);
      $requestData['password']=bcrypt($request->password);

      // dd($requestData);


      

          $user_obj=User::create($requestData);


          if($user_obj){            
              Toastr::success('User account has been Created','Success');
              return redirect()->back();
           
          }

  }



  public function updateUserInfo(Request $request,$id){


    $request->validate([

      'name'=>'required',
      'mobile_no'=>'required',
      'email'=>'required',
      'address'=>'required',
      
      ]);
      

      // dd($requestData);


      

          $user_obj=User::find($id);
          $user_obj->name=$request->name;
          $user_obj->mobile_no=$request->mobile_no;
          $user_obj->email=$request->email;
          $user_obj->address=$request->address??$user_obj->address;

          if($request->password){
            if($request->password ==$request->password_confirmation){
              $user_obj->password=bcrypt($request->password);
            }else{
              Toastr::warning('Password Dosenot Match','Error');
            }

          }

          $user_obj->save();
          Toastr::info('User account has been Updated','Updated');
              return redirect()->back();
          



  }


  public function deleteUser($id){
    if(\Auth::user()->id==$id){
      Toastr::warning('You are unable to Delete Yourself','Error');
      return redirect()->back();
    }
    $user_obj=User::find($id)->delete();
    Toastr::warning('User account has been Deleted','Deleted');
    return redirect()->back();

  }
}
