<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Nurse;
class SalaryController extends Controller
{
    public function index(){
        $datas=Nurse::latest()->get();
        return view('backend.salary.index',compact('datas'));
    }
}
