<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Patient;
use App\Model\Nurse;
use App\Model\NurseHistory;
use Brian2694\Toastr\Facades\Toastr;
class PatientController extends Controller
{
    
    public function index()
    {
        $datas=Patient::latest()->paginate(100);

        return view('backend.patient.index',compact('datas'));
        
    }

    public function store(Request $request){


            $month=date('F-Y');
            $date=date('Y-m-d');

            $patientObj=new Patient;

            $patientObj->date=$date;
            $patientObj->month=$month;
            $patientObj->patient_name=$request->patient_name;
            $patientObj->patient_age=$request->patient_age;
            $patientObj->patient_gender=$request->patient_gender;
            $patientObj->patient_mobile=$request->patient_mobile;
            $patientObj->patient_name=$request->patient_name;
            $patientObj->patient_address=$request->patient_address;
            $patientObj->patient_gurdian_name=$request->patient_gurdian_name;
            $patientObj->patient_gurdian_age=$request->patient_gurdian_age;
            $patientObj->patient_gurdian_address=$request->patient_gurdian_address;
            $patientObj->patient_gurdian_nid=$request->patient_gurdian_nid;
            $patientObj->patient_gurdian_boc=$request->patient_gurdian_boc;
            $patientObj->patient_gurdian_passport=$request->patient_gurdian_passport;
            $patientObj->patient_gurdian_mobile=$request->patient_gurdian_mobile;
            $patientObj->total_budget=$request->total_budget;
            $patientObj->nurse_budget=$request->nurse_budget;
            $patientObj->status=0;
            $patientObj->save();


            Toastr::success('Patient Account has been Successfully Created',"Created");
            return redirect()->route('patient.list');
   
  

    }


    public function update(Request $request,$id){

       

        $patientObj=Patient::find($id); 
        $patientObj->patient_name=$request->patient_name;
        $patientObj->patient_age=$request->patient_age;
        $patientObj->patient_gender=$request->patient_gender;
        $patientObj->patient_mobile=$request->patient_mobile;
        $patientObj->patient_name=$request->patient_name;
        $patientObj->patient_address=$request->patient_address;
        $patientObj->patient_gurdian_name=$request->patient_gurdian_name;
        $patientObj->patient_gurdian_age=$request->patient_gurdian_age;
        $patientObj->patient_gurdian_address=$request->patient_gurdian_address;
        $patientObj->patient_gurdian_nid=$request->patient_gurdian_nid;
        $patientObj->patient_gurdian_boc=$request->patient_gurdian_boc;
        $patientObj->patient_gurdian_passport=$request->patient_gurdian_passport;
        $patientObj->patient_gurdian_mobile=$request->patient_gurdian_mobile;
        $patientObj->total_budget=$request->total_budget;
        $patientObj->nurse_budget=$request->nurse_budget;
        $patientObj->status=0;
        $patientObj->save();


        Toastr::info('Patient Account has been Successfully Updated',"Updated");
        return redirect()->route('patient.list');
    }


    public function completedService($id)
    {
        $patientObj=Patient::find($id); 
        $patientObj->status=1;
        $patientObj->save();
        Toastr::success('Patient service has been completed',"completed");
        return redirect()->route('patient.list');
         
    }


    public function assignNurse(){


        $datas=Patient::where('status',0)->latest()->get();
        $nurses=Nurse::latest()->get();

        return view('backend.nurse_assign.index',compact('datas','nurses'));

    }


    public function updateAssignNurse(Request $request,$id){

        $nurse_info=Nurse::find($request->assigned_nurse);

        $Patient_info=Patient::find($id);     
        $Patient_info->assign_nurse_id=$request->assigned_nurse;
        $Patient_info->nurse_name=$nurse_info->name;
        $Patient_info->save();
        Toastr::success('Nurse assignment has been completed',"completed");
        return redirect()->back();


    }
}
